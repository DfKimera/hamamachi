package chapters {
	import engine.visualnovel.Chapter;
	import engine.visualnovel.Event;
	import engine.visualnovel.Question;

	public class Chapter2 extends Chapter {
		public function Chapter2() {

			var self:Chapter = this;

			addEvent(Event.newBackground(this, Assets.BG_COAST));

			if(StoryLog.scoreMahou == 2 || (StoryLog.scoreMahou == 1 && StoryLog.scoreNeutral == 1)) {
				Chapter.start(Cutscene4);
			} else if(StoryLog.scoreKaiju == 2 || (StoryLog.scoreKaiju == 1 && StoryLog.scoreNeutral == 1)) {
				Chapter.start(Cutscene5);
			} else {
				Chapter.start(Cutscene3);
			}

		}

	}
}
