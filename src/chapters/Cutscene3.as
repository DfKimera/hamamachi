package chapters {

	import engine.ComicScene;
	import engine.visualnovel.Chapter;

	public class Cutscene3 extends ComicScene {

		public override function prepare():void {
			pages = [Assets.C301, Assets.C302, Assets.C303, Assets.C503];
		}

		override public function onFinish():void {
			Chapter.start(EndingDecision);
		}

	}
}
