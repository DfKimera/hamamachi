package chapters {
	import characters.Brimax;
	import characters.Ikari;
	import characters.Nodoka;
	import characters.Traveler;

	import engine.visualnovel.Chapter;
	import engine.visualnovel.Event;

	public class Chapter1_Mahou extends Chapter {

		public function Chapter1_Mahou() {

			var self:Chapter = this;

			addEvent(Event.newBackground(this, Assets.BG_CITY));
			addQuestion("O que você quer fazer?")
				.addOption("Ignorar", optIgnore)
				.addOption("Correr atrás e devolver broche", optGoAfter)
				.addOption("'Que garota desastrada!'", optTaunt);

		}

		private function optIgnore():void {
			StoryLog.scoreNeutral++;
			optDoNothing();
		}

		private function optTaunt():void {
			StoryLog.scoreKaiju++;
			optDoNothing();
		}

		private function optDoNothing():void {
			addEvent(Event.newDialog(this, Nodoka, "*volta correndo* Ufa! Achei!", "worried"));
			addEvent(Event.newDialog(this, Ikari, "Ei, você! Por que não está no abrigo??", "angry"));
			addEvent(Event.newDialog(this, Traveler, "Eu acabei de chegar na cidade, não sei o que está acontecendo!", "worried"));
			addEvent(Event.newDialog(this, Nodoka, "É uma invasão! Tem monstros na praia!", "worried"));
			addEvent(Event.newDialog(this, Ikari, "E NÓS VAMOS ACABAR COM ELES!", "angry"));
			addEvent(Event.newDialog(this, Nodoka, "Somos as Garotas Mágicas, proteger a cidade é nosso dever!"));
			askWhatToSay();
			nextEvent();
		}

		private function optGoAfter():void {
			StoryLog.scoreMahou++;
			addEvent(Event.newDialog(this, Traveler, "Ei! Você deixou cair seu broche!"));
			addEvent(Event.newDialog(this, Nodoka, "Obrigada!", "happy"));
			addEvent(Event.newDialog(this, Ikari, "Ei, você! Por que não está no abrigo??", "angry"));
			addEvent(Event.newDialog(this, Traveler, "Eu acabei de chegar na cidade, não sei o que está acontecendo!", "worried"));
			addEvent(Event.newDialog(this, Nodoka, "É uma invasão! Tem monstros na praia!", "worried"));
			addEvent(Event.newDialog(this, Ikari, "E NÓS VAMOS ACABAR COM ELES!", "angry"));
			addEvent(Event.newDialog(this, Nodoka, "Somos as Garotas Mágicas, proteger a cidade é nosso dever!"));
			askWhatToSay();
			nextEvent();
		}

		private function askWhatToSay():void {
			addQuestion("O que você quer dizer para as garotas?")
				.addOption("Não seria melhor pensar antes de agir?", optThinkBefore)
				.addOption("É ISSO AÍ!", optCheer)
				.addOption("Mas e se eles forem amigos?", optAskIfFriends);
		}

		private function optThinkBefore():void {
			StoryLog.scoreNeutral++;
			finalDialog();
		}

		private function optCheer():void {
			StoryLog.scoreMahou++;
			finalDialog();
		}

		private function optAskIfFriends():void {
			StoryLog.scoreKaiju++;
			finalDialog();
		}

		private function finalDialog():void {
			addEvent(Event.newDialog(this, Ikari, "Não vamos perder tempo batendo papo, andem logo!", "angry"));
			nextEvent();
		}

		override public function onFinish():void {
			Chapter.start(Chapter2);
		}

	}
}
