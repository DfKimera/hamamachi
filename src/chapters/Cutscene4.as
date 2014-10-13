package chapters {

	import engine.ComicScene;
	import engine.visualnovel.Chapter;

	public class Cutscene4 extends ComicScene {

		public override function prepare():void {
			pages = [Assets.C401, Assets.C301, Assets.C403, Assets.C503];
		}

		override public function onFinish():void {
			Chapter.start(EndingDecision);
		}

	}
}
