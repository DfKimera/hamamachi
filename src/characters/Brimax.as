package characters {
	import engine.Character;

	public class Brimax extends Character {

		[Embed(source="../../assets/portrait_testcharacter.jpg")]
		public static var PORTRAIT_DEFAULT:Class;

		override public function setCharacterInfo():void {
			this.characterName = "Brimax";
			this.setPortraits({
				'default': [PORTRAIT_DEFAULT, false]
			});
		}
	}
}
