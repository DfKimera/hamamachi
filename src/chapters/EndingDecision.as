package chapters {
	import engine.visualnovel.Chapter;
	import engine.visualnovel.Event;
	import engine.visualnovel.Question;

	public class EndingDecision extends Chapter {

		public function EndingDecision() {

			addEvent(Event.newBackground(this, Assets.BG_CHOICE).loadNext());
			var question:Question = addQuestion("Qual é seu pensamento?");
			question.addOption("Eu tenho uma solução", optSolution);

			var mahouVictory:Boolean = StoryLog.scoreMahou == 2 || (StoryLog.scoreMahou == 1 && StoryLog.scoreNeutral == 1);
			var kaijuVictory:Boolean = StoryLog.scoreKaiju == 2 || (StoryLog.scoreKaiju == 1 && StoryLog.scoreNeutral == 1);

			if(mahouVictory || (!mahouVictory && !kaijuVictory)) {
				question.addOption("Não vou deixar a cidade ser destruída", optHelpCity);
			}

			if(kaijuVictory || (!mahouVictory && !kaijuVictory)) {
				question.addOption("Não estou gostando do jeito dessas guerreiras mágicas. Não posso deixá-las no comando.", optPreventMahou);
			}
		}

		private function optSolution():void {
			Chapter.start(Cutscene8_NeutralEnding);
		}

		private function optHelpCity():void {
			Chapter.start(Cutscene7_MahouEnding);
		}

		private function optPreventMahou():void {
			Chapter.start(Cutscene6_KaijuEnding);
		}
	}
}
