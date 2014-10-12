package characters {
	import engine.Character;

	public class Nodoka extends Character {

		[Embed(source="../../assets/nodoka/default.png")]
		public static var PORTRAIT_DEFAULT:Class;

		[Embed(source="../../assets/nodoka/happy.png")]
		public static var PORTRAIT_HAPPY:Class;

		[Embed(source="../../assets/nodoka/worried.png")]
		public static var PORTRAIT_WORRIED:Class;

		override public function setCharacterInfo():void {
			this.characterName = "Nodoka";
			this.setPortraits({
				'default': [PORTRAIT_DEFAULT, false],
				'happy': [PORTRAIT_HAPPY, false],
				'worried': [PORTRAIT_WORRIED, false]
			});
		}
	}
}
