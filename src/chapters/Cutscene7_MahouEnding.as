package chapters {

	import engine.ComicScene;
	import engine.visualnovel.Chapter;

	public class Cutscene7_MahouEnding extends ComicScene {

		public override function prepare():void {
			Game.playMusic("cross_the_line");
			pages = [Assets.C701, Assets.C702, Assets.C703, Assets.C704, Assets.C705, Assets.C706];
		}

		override public function onFinish():void {
			Game.goToMainMenu();
		}

	}
}
