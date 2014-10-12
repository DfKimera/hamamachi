package characters {
	import engine.Character;

	public class Ikari extends Character {

		[Embed(source="../../assets/ikari/default.png")]
		public static var PORTRAIT_DEFAULT:Class;

		[Embed(source="../../assets/ikari/happy.png")]
		public static var PORTRAIT_HAPPY:Class;

		[Embed(source="../../assets/ikari/angry.png")]
		public static var PORTRAIT_ANGRY:Class;

		override public function setCharacterInfo():void {
			this.characterName = "Ikari";
			this.setPortraits({
				'default': [PORTRAIT_DEFAULT, false],
				'happy': [PORTRAIT_HAPPY, false],
				'angry': [PORTRAIT_ANGRY, false]
			});
		}
	}
}
