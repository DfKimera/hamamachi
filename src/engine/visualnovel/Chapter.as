package engine.visualnovel {
	import engine.Cursor;
	import engine.Dialog;
	import engine.Scene;

	import org.flixel.FlxG;

	import org.flixel.FlxSprite;

	public class Chapter extends Scene {

		public var events:Array = [];

		public var currentEvent:Event;
		public var currentQuestion:Question;
		public var currentDialog:Dialog;
		public var currentPage:FlxSprite;

		public var transitioning:Boolean = false;

		public override function create():void {
			super.create();

			currentPage = new FlxSprite(0,0);
			props.add(currentPage);

			nextEvent();
		}

		public function addEvent(event:Event):Chapter {
			events.push(event);
			return this;
		}

		public function addQuestion(title:String):Question {
			var event:Event = (new Event()).setChapter(this);
			var question:Question = event.question(title);

			events.push(event);

			return question;
		}

		public function nextEvent():void {
			if(currentEvent) {
				currentEvent.finish();
			}

			currentQuestion = null;
			currentDialog = null;

			var event:Event = events.shift();

			if(!event) {
				trace("No more events, finished!");
				onFinish();
				return;
			}

			trace("--> Event", event);
			currentEvent = event;

			if(event.newPage != null) { displayPage(event.newPage); }
			if(event.newBGM != null) { Game.playMusic(event.newBGM); }
			if(event.newDialog != null) { displayDialog(event.newDialog); }
			if(event.newQuestion != null) { displayQuestion(event.newQuestion); }
		}

		public function displayPage(newPage:Class):void {
			transitioning = true;
			Utils.fadeOut(currentPage, Config.SCENE_FADE_DELAY, function():void {

				currentPage.loadGraphic(newPage);

				Utils.fadeIn(currentPage, Config.SCENE_FADE_DELAY, function():void {
					transitioning = false;
				});

			});
		}

		public function displayDialog(dialog:Dialog):void {
			if(currentDialog && currentDialog.isActive) {
				currentDialog.kill();
			}

			currentDialog = dialog;
			Dialog.showDialog(dialog);
		}

		public function displayQuestion(question:Question):void {
			if(currentQuestion) {
				currentQuestion.kill();
			}

			currentQuestion = question;
			add(question);
		}

		public function onFinish():void {}

		public override function update():void {
			super.update();

			Cursor.useSkip();

			if(currentQuestion) {
				Cursor.useArrow();
			}

			if(FlxG.keys.justPressed("SPACE") || FlxG.keys.justPressed("ENTER") || FlxG.mouse.justPressed()) {
				if(transitioning) { return; }
				if(currentQuestion) { return; }
				if(currentDialog && currentDialog.isActive && !currentDialog.isCompleted) { return; }

				nextEvent();
			}
		}

		override protected function hasInventoryEnabled():Boolean {
			return false;
		}
	}
}
