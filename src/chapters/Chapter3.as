package chapters {

	import engine.ComicScene;
	import engine.visualnovel.Chapter;

	public class Chapter3 extends ComicScene {

		public override function prepare():void {
			pages = [Assets.C801, Assets.C802, Assets.C803];
		}

		override public function onFinish():void {
			Chapter.start(Chapter1);
		}

	}
}
