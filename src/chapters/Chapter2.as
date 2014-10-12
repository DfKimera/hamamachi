package chapters {
	import characters.Brimax;

	import engine.visualnovel.Chapter;
	import engine.visualnovel.Event;

	public class Chapter2 extends Chapter {

		public function Chapter2() {

			var self:Chapter = this;

			addEvent(Event.newBackground(this, Assets.BG_BEACH).dialog(Brimax, "Welcome to chapter 2!"));
			addEvent(Event.newDialog(this, Brimax, "This is just an in-betweener!"));
		}

		override public function onFinish():void {
			Chapter.start(Chapter3);
		}

	}
}
