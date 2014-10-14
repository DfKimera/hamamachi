package chapters {

	import engine.visualnovel.Chapter;

	public class CharacterSelection extends Chapter {

		public function CharacterSelection() {

			var self:Chapter = this;

			Game.playMusic("unlikely_hero");

			StoryLog.scoreKaiju = 0;
			StoryLog.scoreMahou = 0;
			StoryLog.scoreNeutral = 0;

			addQuestion("Selecione um personagem:")
				.addOption("Monstros", function():void {
					Chapter.start(Cutscene2_StartKaiju);
				})
				.addOption("Garotas mágicas", function():void {
					Chapter.start(Cutscene1_StartMahou);
				})
		}

		override public function onFinish():void {

		}

	}
}
