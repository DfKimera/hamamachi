package chapters {
	import characters.Brimax;
	import characters.Ikari;
	import characters.Khrona;
	import characters.Nodoka;
	import characters.Traveler;

	import engine.visualnovel.Chapter;
	import engine.visualnovel.Event;

	public class Chapter1_Kaiju extends Chapter {

		public function Chapter1_Kaiju() {

			var self:Chapter = this;

			addEvent(Event.newBackground(this, Assets.BG_BEACH));
			addQuestion("Você avistou monstros na praia, o que quer fazer?")
				.addOption("Se esconder", optHide)
				.addOption("Jogar uma pedra", optThrowStone)
				.addOption("'Ei! Quem são vocês?'", optAsk);

		}

		private function optHide():void {
			StoryLog.scoreNeutral++;
			addEvent(Event.newDialog(this, Brimax, "QUEM ESTÁ AÍ!?", "angry"));
			addEvent(Event.newDialog(this, Traveler, "Eu acabei de chegar nesta cidade, não me machuquem, por favor!", "afraid"));
			addEvent(Event.newDialog(this, Khrona, "Calma! Nós não queremos ferir ninguém."));
			addEvent(Event.newDialog(this, Brimax, "Se não ficarem em nosso caminho!"));
			addEvent(Event.newDialog(this, Traveler, "... o que está acontecendo?"));
			addEvent(Event.newDialog(this, Khrona, "Há milhares de anos fomos exilados para terras além-mar, mas agora finalmente reunimos forças para retornar a onde pertencemos. Só queremos atravessar até além das montanhas, onde é nosso lar.", "worried"));
			askWhatToSay();
			nextEvent();
		}

		private function optThrowStone():void {
			StoryLog.scoreMahou++;
			addEvent(Event.newDialog(this, Brimax, "!?", "angry"));
			addEvent(Event.newDialog(this, Brimax, "MAS O QUE É ISSO!?", "angry"));
			addEvent(Event.newDialog(this, Traveler, "MONSTROS! O que querem aqui??", "angry"));
			addEvent(Event.newDialog(this, Khrona, "Calma! Nós não queremos ferir ninguém."));
			addEvent(Event.newDialog(this, Brimax, "Se não ficarem em nosso caminho!"));
			addEvent(Event.newDialog(this, Traveler, "... o que está acontecendo?"));
			addEvent(Event.newDialog(this, Khrona, "Há milhares de anos fomos exilados para terras além-mar, mas agora finalmente reunimos forças para retornar a onde pertencemos. Só queremos atravessar até além das montanhas, onde é nosso lar.", "worried"));
			askWhatToSay();
			nextEvent();
		}

		private function optAsk():void {
			StoryLog.scoreKaiju++;
			addEvent(Event.newDialog(this, Brimax, "Olhem só o que temos aqui..."));
			addEvent(Event.newDialog(this, Traveler, "Eu acabei de chegar nesta cidade, não me machuquem, por favor!"));
			addEvent(Event.newDialog(this, Khrona, "Calma! Nós não queremos ferir ninguém."));
			addEvent(Event.newDialog(this, Brimax, "Se não ficarem em nosso caminho!"));
			addEvent(Event.newDialog(this, Traveler, "... o que está acontecendo?"));
			addEvent(Event.newDialog(this, Khrona, "Há milhares de anos fomos exilados para terras além-mar, mas agora finalmente reunimos forças para retornar a onde pertencemos. Só queremos atravessar até além das montanhas, onde é nosso lar.", "worried"));
			askWhatToSay();
			nextEvent();
		}

		private function askWhatToSay():void {
			addQuestion("O que você quer responder aos monstros?")
				.addOption("...", optSayNothing)
				.addOption("Mas e os prédios? E a cidade?", optAskAboutCity)
				.addOption("Nossa... que história triste!", optLamentStory);
		}

		private function optSayNothing():void {
			StoryLog.scoreNeutral++;
			finalDialog();
		}

		private function optAskAboutCity():void {
			StoryLog.scoreMahou++;
			finalDialog();
		}

		private function optLamentStory():void {
			StoryLog.scoreKaiju++;
			finalDialog();
		}

		private function finalDialog():void {
			addEvent(Event.newDialog(this, Brimax, "Chega de conversa, vamos resolver isso logo!", "angry"));
			nextEvent();
		}

		override public function onFinish():void {
			Chapter.start(Chapter2);
		}

	}
}
