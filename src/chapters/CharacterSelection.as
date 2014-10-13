package chapters {

	import engine.visualnovel.Chapter;

	public class CharacterSelection extends Chapter {

		public function CharacterSelection() {

			var self:Chapter = this;

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
