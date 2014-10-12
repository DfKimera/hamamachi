package chapters {
	import characters.Brimax;

	import engine.visualnovel.Chapter;
	import engine.visualnovel.Event;

	public class Chapter1 extends Chapter {

		[Embed(source="../../assets/intro_1.jpg")] public static var PAGE1:Class;
		[Embed(source="../../assets/intro_2.jpg")] public static var PAGE2:Class;
		[Embed(source="../../assets/intro_3.jpg")] public static var PAGE3:Class;

		public function Chapter1() {

			var self:Chapter = this;

			addEvent(Event.newPage(this, PAGE1).dialog(Brimax, "Hey there!"));
			addEvent(Event.newDialog(this, Brimax, "How you're doing?"));
			addEvent(Event.newDialog(this, Brimax, "Lets go to the next page?"));
			addEvent(Event.newPage(this, PAGE2));
			addEvent(Event.newDialog(this, Brimax, "Wunderbar! Everything seems to be working!", "default", "bottom"));

			addQuestion("Do you like eggs?")
				.addOption("Yes, I do!", function():void {
					addEvent(Event.newDialog(self, Brimax, "Alright, an egg lover!"));
					addEvent(Event.newDialog(self, Brimax, "Fuck yeah eggs!!"));
					nextEvent();
				})
				.addOption("Maybe...", function():void {
					addEvent(Event.newDialog(self, Brimax, "Maybe??? Either you do, or you don't!").page(PAGE3));
					nextEvent();
				})
				.addOption("Hell naw!!", function():void {
					addEvent(Event.newPage(self, PAGE3));
					nextEvent();
				});
		}

		override public function onFinish():void {
			trace("END OF STORY!");
		}

	}
}
