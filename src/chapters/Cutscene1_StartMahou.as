package chapters {

	import engine.ComicScene;
	import engine.visualnovel.Chapter;

	public class Cutscene1_StartMahou extends ComicScene {

		public override function prepare():void {
			pages = [Assets.C101, Assets.C102, Assets.C103];
		}

		override public function onFinish():void {
			Chapter.start(Chapter1_Mahou);
		}

	}
}
