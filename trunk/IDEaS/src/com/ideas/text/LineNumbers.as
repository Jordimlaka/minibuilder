package com.ideas.text {
	import com.ideas.data.DataHolder;
	import flash.text.TextField;
	import flash.text.TextFormat;
	public class LineNumbers extends TextField {
		private var numbersFormat:TextFormat;
		private var _numbersWidth:Number = 0;
		public function LineNumbers() {
			numbersFormat = new TextFormat(DataHolder.mainFont.fontName, DataHolder.fontSize, 0xaaaaaa);
			this.selectable = false;
			this.embedFonts = true;
		}
		public function get numbersWidth():Number {
			return _numbersWidth;
		}
		public function updateDefaultFormat():void {
			this.defaultTextFormat = this.numbersFormat;
		}
		public function setFontSize():void {
			numbersFormat.size = DataHolder.fontSize;
			updateDefaultFormat();
		}
		public function getTextWidth():Boolean {
			if (_numbersWidth != textWidth + 2) {
				_numbersWidth = textWidth + 2;
				return true;
			}
			return false;
		}
	}
}
