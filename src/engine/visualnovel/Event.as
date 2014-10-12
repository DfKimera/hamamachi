package engine.visualnovel {
	import engine.Dialog;

	public class Event {

		public var chapter:Chapter = null;
		public var newPage:Class = null;
		public var newBGM:String = null;
		public var newDialog:Dialog = null;
		public var newQuestion:Question = null;

		public function page(page:Class):Event {
			this.newPage = page;
			return this;
		}

		public function bgm(bgm:String):Event {
			this.newBGM = bgm;
			return this;
		}

		public function dialog(charClass:Class, message:String, expression:String = "default", position:String = "top"):Event {
			this.newDialog = new Dialog(chapter, new charClass, message, expression, position);
			return this;
		}

		public function question(title:String):Question {
			this.newQuestion = new Question(title, Config.QUESTION_POSITION.x, Config.QUESTION_POSITION.y);
			return this.newQuestion;
		}

		public function finish():void {
			if(this.newQuestion) {
				this.chapter.remove(this.newQuestion);
				this.newQuestion.kill();
			}
		}

		public function setChapter(chapter:Chapter):Event {
			this.chapter = chapter;
			return this;
		}

		public static function newPage(chapter:Chapter, page:Class):Event {
			return (new Event()).setChapter(chapter).page(page);
		}

		public static function newBGM(chapter:Chapter, bgm:String):Event {
			return (new Event()).setChapter(chapter).bgm(bgm);
		}

		public static function newDialog(chapter:Chapter, charClass:Class, message:String, expression:String = "default", position:String = "top"):Event {
			return (new Event()).setChapter(chapter).dialog(charClass, message, expression, position);
		}

		public function toString():String {
			return "[Event: page=" + newPage + ", bgm=" + newBGM + ", dialog=" + newDialog + ", question=" + newQuestion + "]";
		}

	}
}
