package characters {
	import engine.Character;

	public class Brimax extends Character {

		[Embed(source="../../assets/brimax/default.png")]
		public static var PORTRAIT_DEFAULT:Class;

		[Embed(source="../../assets/brimax/angry.png")]
		public static var PORTRAIT_ANGRY:Class;

		[Embed(source="../../assets/brimax/convinced.png")]
		public static var PORTRAIT_CONVINCED:Class;

		[Embed(source="../../assets/brimax/surprised.png")]
		public static var PORTRAIT_SURPRISED:Class;

		override public function setCharacterInfo():void {
			this.characterName = "Brimax";
			this.setPortraits({
				'default': [PORTRAIT_DEFAULT, false],
				'angry': [PORTRAIT_ANGRY, false],
				'convinced': [PORTRAIT_CONVINCED, false],
				'surprised': [PORTRAIT_SURPRISED, false]
			});
		}
	}
}
