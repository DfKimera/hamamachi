package chapters {

	import engine.ComicScene;
	import engine.visualnovel.Chapter;

	public class Cutscene5 extends ComicScene {

		public override function prepare():void {
			Game.playMusic("paper_crisis");
			pages = [Assets.C302, Assets.C301, Assets.C503];
		}

		override public function onFinish():void {
			Chapter.start(EndingDecision);
		}

	}
}
