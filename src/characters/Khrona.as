package characters {
	import engine.Character;

	public class Khrona extends Character {

		[Embed(source="../../assets/khrona/default.png")]
		public static var PORTRAIT_DEFAULT:Class;

		[Embed(source="../../assets/khrona/damnit.png")]
		public static var PORTRAIT_DAMNIT:Class;

		[Embed(source="../../assets/khrona/worried.png")]
		public static var PORTRAIT_WORRIED:Class;

		[Embed(source="../../assets/khrona/happy.png")]
		public static var PORTRAIT_HAPPY:Class;

		override public function setCharacterInfo():void {
			this.characterName = "Khrona";
			this.setPortraits({
				'default': [PORTRAIT_DEFAULT, false],
				'damnit': [PORTRAIT_DAMNIT, false],
				'worried': [PORTRAIT_WORRIED, false],
				'happy': [PORTRAIT_HAPPY, false]
			});
		}
	}
}
