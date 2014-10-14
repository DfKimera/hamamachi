package chapters {

	import engine.ComicScene;
	import engine.visualnovel.Chapter;

	public class Cutscene2_StartKaiju extends ComicScene {

		public override function prepare():void {
			Game.playMusic("mischevious_master");
			pages = [Assets.C201, Assets.C202, Assets.C203];
		}

		override public function onFinish():void {
			Chapter.start(Chapter1_Kaiju);
		}

	}
}
