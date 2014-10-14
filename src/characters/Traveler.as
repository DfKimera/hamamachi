package characters {
	import engine.Character;

	public class Traveler extends Character {

		[Embed(source="../../assets/traveler/default.png")]
		public static var PORTRAIT_DEFAULT:Class;

		[Embed(source="../../assets/traveler/worried.png")]
		public static var PORTRAIT_WORRIED:Class;

		[Embed(source="../../assets/traveler/angry.png")]
		public static var PORTRAIT_ANGRY:Class;

		override public function setCharacterInfo():void {
			this.characterName = "Viajante";
			this.setPortraits({
				'default': [PORTRAIT_DEFAULT, false],
				'worried': [PORTRAIT_WORRIED, false],
				'angry': [PORTRAIT_ANGRY, false]
			});
		}
	}
}
