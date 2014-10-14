package chapters {

	import engine.ComicScene;
	import engine.visualnovel.Chapter;

	public class Cutscene6_KaijuEnding extends ComicScene {

		public override function prepare():void {
			Game.playMusic("mischevious_master");
			pages = [Assets.C601, Assets.C602, Assets.C603, Assets.C604, Assets.C605, Assets.C606];
		}

		override public function onFinish():void {
			Game.goToMainMenu();
		}

	}
}
