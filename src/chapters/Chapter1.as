package chapters {
	import characters.Brimax;
	import characters.Ikari;
	import characters.Khrona;
	import characters.Nodoka;
	import characters.Traveler;

	import engine.visualnovel.Chapter;
	import engine.visualnovel.Event;

	public class Chapter1 extends Chapter {

		public function Chapter1() {

			var self:Chapter = this;

			addEvent(Event.newBackground(this, Assets.BG_BEACH));
			addEvent(Event.newDialog(this, Brimax, "Hey there!"));
			addEvent(Event.newDialog(this, Brimax, "I AM SO ANGRY!", "angry"));
			addEvent(Event.newDialog(this, Brimax, "Fine, I agre!", "convinced"));
			addEvent(Event.newDialog(this, Brimax, "WTF!?", "surprised"));

			addEvent(Event.newBackground(this, Assets.BG_CITY));
			addEvent(Event.newDialog(this, Nodoka, "What's up!"));
			addEvent(Event.newDialog(this, Nodoka, "YAY!", "happy"));
			addEvent(Event.newDialog(this, Nodoka, "Oh damn!", "worried"));

			addEvent(Event.newBackground(this, Assets.BG_BEACH));
			addEvent(Event.newDialog(this, Khrona, "How you're doing?"));
			addEvent(Event.newDialog(this, Khrona, "Oh, fuck!", "damnit"));
			addEvent(Event.newDialog(this, Khrona, "What do we do now?", "worried"));
			addEvent(Event.newDialog(this, Khrona, "YAY!", "happy"));

			addEvent(Event.newBackground(this, Assets.BG_CITY));
			addEvent(Event.newDialog(this, Ikari, "Lets go to the next page?"));
			addEvent(Event.newDialog(this, Ikari, "Rainbows and marshmellows!", "happy"));
			addEvent(Event.newDialog(this, Ikari, "Fuck this shit!", "angry"));

			addEvent(Event.newBackground(this, Assets.BG_BEACH));
			addEvent(Event.newDialog(this, Traveler, "Bitches, I'm the main character!"));
			addEvent(Event.newDialog(this, Traveler, "That's a lot of responsability", "worried"));
			addEvent(Event.newDialog(this, Traveler, "Fuck that, I'm out!", "angry"));


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
