package com.ideas.gui {
    import flash.display.Shape;
    public class ServerLifeIndicator extends Shape {
        public static const WAITING:String = "WAITING";
        public static const CONFIRM:String = "CONFIRM";
        public static const ERROR:String = "ERROR";
        private var _status:String = WAITING;
        public function ServerLifeIndicator() {
            redraw();
        }
        public function get status():String {
            return _status;
        }
        public function set status(value:String):void {
            _status = value;
            redraw();
        }
        public function resize(xx:int, yy:int):void {
            this.x = xx;
            this.y = yy;
        }
        private function redraw():void {
            var color:uint = 0;
            if (_status == WAITING) {
                color = 0xffcc00;
            } else if (_status == CONFIRM) {
                color = 0x00ff00
            } else if (_status == ERROR) {
                color = 0xff0000
            }
            this.graphics.beginFill(color);
            this.graphics.drawRect(1, 1, 4, 4);
            this.graphics.endFill();
        }
    }
}
