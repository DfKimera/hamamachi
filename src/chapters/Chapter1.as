package chapters {
	import characters.Brimax;

	import engine.visualnovel.Chapter;
	import engine.visualnovel.Event;

	public class Chapter1 extends Chapter {

		public function Chapter1() {

			var self:Chapter = this;

			addEvent(Event.newBackground(this, Assets.BG_BEACH));
			addEvent(Event.newDialog(this, Brimax, "Hey there!"));
			addEvent(Event.newDialog(this, Brimax, "How you're doing?"));
			addEvent(Event.newDialog(this, Brimax, "Lets go to the next page?"));
			addEvent(Event.newBackground(this, Assets.BG_CITY).dialog(Brimax, "Wunderbar! Everything seems to be working!", "default", "bottom"));

			addQuestion("Do you like eggs?")
				.addOption("Yes, I do!", function():void {
					addEvent(Event.newDialog(self, Brimax, "Alright, an egg lover!"));
					addEvent(Event.newDialog(self, Brimax, "Fuck yeah eggs!!"));
					nextEvent();
				})
				.addOption("Maybe...", function():void {
					addEvent(Event.newDialog(self, Brimax, "Maybe??? Either you do, or you don't!").background(Assets.BG_BEACH));
					nextEvent();
				})
				.addOption("Hell naw!!", function():void {
					onFinish()
				});
		}

		override public function onFinish():void {
			Chapter.start(Chapter2);
		}

	}
}
