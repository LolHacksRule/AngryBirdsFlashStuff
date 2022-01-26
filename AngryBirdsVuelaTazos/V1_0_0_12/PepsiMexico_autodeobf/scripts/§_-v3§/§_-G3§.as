package §_-v3§
{
   import §_-pF§.DisplayObject;
   import §_-pF§.Stage;
   import §_-pF§.§_-b3§;
   import §_-pF§.§_-gY§;
   import §_-qn§.§_-9Y§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DCompareMode;
   import flash.display3D.Program3D;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import starling.events.KeyboardEvent;
   import starling.events.§_-2b§;
   import starling.events.§_-J4§;
   import starling.events.§_-WM§;
   
   public class §_-G3§
   {
      
      private static var §_-Ry§:§_-G3§;
      
      private static var §_-FR§:Boolean;
      
      private static var §_-o§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-pF§.Stage;
      
      private var §_-Gj§:Class;
      
      private var §_-v1§:§_-pF§.DisplayObject;
      
      private var §_-W5§:§_-9Y§;
      
      private var §_-ju§:Boolean;
      
      private var §_-2§:§_-L4§;
      
      private var §var §:§_-WM§;
      
      private var §_-rJ§:int;
      
      private var §_-Ij§:Boolean;
      
      private var §_-hT§:Boolean;
      
      private var §_-p-§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-f9§:flash.display.Stage;
      
      private var §_-I6§:Sprite;
      
      private var §_-6A§:Context3D;
      
      private var §_-8l§:Dictionary;
      
      private var §_-bv§:int;
      
      private var §_-fu§:Boolean;
      
      private var §_-YF§:Number;
      
      private var §_-Jz§:Number;
      
      private var §_-ew§:Number;
      
      private var §_-qf§:Number;
      
      private var §_-iO§:Number;
      
      private var §_-7p§:Number;
      
      private var §_-qv§:Function;
      
      private var §_-us§:uint;
      
      private var §_-m7§:String;
      
      public function §_-G3§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc7_:String = null;
         super();
         if(param2 == null)
         {
            throw new ArgumentError("Stage must not be null");
         }
         if(param1 == null)
         {
            throw new ArgumentError("Root class must not be null");
         }
         if(param3 == null)
         {
            param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
         }
         if(param4 == null)
         {
            param4 = param2.stage3Ds[0];
         }
         this.§_-YF§ = param3.width;
         this.§_-Jz§ = param3.height;
         this.§_-ew§ = this.§_-YF§;
         this.§_-qf§ = this.§_-Jz§;
         this.§_-iO§ = param2.stageWidth;
         this.§_-7p§ = param2.stageHeight;
         this.§_-Gj§ = param1;
         this.mViewPort = param3;
         this.mStage3D = param4;
         this.mStage = new §_-pF§.Stage(param3.width,param3.height,param2.color);
         this.§_-us§ = param2.color;
         this.§_-f9§ = param2;
         this.§var § = new §_-WM§(this.mStage);
         this.§_-W5§ = new §_-9Y§();
         this.§_-rJ§ = 0;
         this.§_-Ij§ = false;
         this.§_-hT§ = false;
         this.§_-p-§ = getTimer() / 1000;
         this.§_-8l§ = new Dictionary();
         this.§_-2§ = new §_-L4§();
         if(§_-Ry§ == null)
         {
            this.§_-4j§();
         }
         var _loc6_:Array = !!Multitouch.supportsTouchEvents ? [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END] : [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
         for each(_loc7_ in _loc6_)
         {
            param2.addEventListener(_loc7_,this.§_-HY§,false,0,true);
         }
         param2.addEventListener(Event.ENTER_FRAME,this.§_-Yx§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-HZ§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-HZ§,false,0,true);
         param2.addEventListener(Event.RESIZE,this.§_-IS§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-an§,false,0,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-3X§,false,0,true);
         this.§_-m7§ = param5;
      }
      
      public static function get §_-LJ§() : int
      {
         return §_-9S§.§_-bv§;
      }
      
      public static function get §_-ou§() : Boolean
      {
         return §_-9S§.§_-fu§;
      }
      
      public static function §_-HS§() : Boolean
      {
         return §_-FH§ != null && §_-FH§.driverInfo != "Disposed";
      }
      
      public static function get §_-9S§() : §_-G3§
      {
         return §_-Ry§;
      }
      
      public static function get §_-FH§() : Context3D
      {
         return §_-Ry§.§_-FH§;
      }
      
      public static function get §_-gw§() : §_-9Y§
      {
         return §_-Ry§.§_-gw§;
      }
      
      public static function get §_-U5§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-U5§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public function get stage() : §_-pF§.Stage
      {
         return this.mStage;
      }
      
      public function get §_-5V§() : §_-pF§.DisplayObject
      {
         return this.§_-v1§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-us§ = param1;
      }
      
      public function §_-Mt§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§_-m7§);
         }
         catch(e:Error)
         {
            §_-5l§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Program3D = null;
         for each(_loc1_ in this.§_-8l§)
         {
            _loc1_.dispose();
         }
         if(this.§_-6A§)
         {
            this.§_-6A§.dispose();
         }
         if(this.§var §)
         {
            this.§var §.dispose();
         }
      }
      
      private function §_-r1§() : void
      {
         this.§_-6A§ = this.mStage3D.context3D;
         this.§_-6A§.enableErrorChecking = this.§_-hT§;
         this.§_-6A§.setDepthTest(false,Context3DCompareMode.NEVER);
         this.§_-Lk§();
         if(this.§_-6A§.driverInfo.indexOf("Software") >= 0)
         {
            this.§_-fu§ = true;
         }
      }
      
      private function §_-JC§() : void
      {
         if(!§_-FR§)
         {
            §_-b3§.§_-ML§(this);
            §_-gY§.§_-ML§(this);
            §_-FR§ = true;
         }
      }
      
      private function §_-3P§() : void
      {
         if(this.§_-v1§ == null)
         {
            this.§_-v1§ = new this.§_-Gj§();
         }
         if(this.§_-v1§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-Gj§);
         }
         this.mStage.addChild(this.§_-v1§);
      }
      
      private function §_-Lk§() : void
      {
         if(this.§_-6A§)
         {
            this.§_-6A§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-rJ§,false);
         }
         this.mStage3D.x = this.mViewPort.x;
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         if(this.§_-6A§ == null || !§_-HS§())
         {
            return;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-p-§;
         this.§_-p-§ = _loc1_;
         this.mStage.§_-CR§(_loc2_);
         this.§_-W5§.§_-CR§(_loc2_);
         this.§var §.§_-CR§(_loc2_);
         this.§_-2§.§_-iS§(this.mStage.stageWidth,this.mStage.stageHeight);
         this.§_-2§.§_-Wz§(true);
         this.§_-2§.clear(this.§_-us§,1);
         this.mStage.render(this.§_-2§,1);
         if(this.§_-qv§ != null)
         {
            this.§_-qv§();
            this.§_-qv§ = null;
         }
         this.§_-6A§.present();
         this.§_-2§.§_-st§();
      }
      
      public function set §_-P5§(param1:Function) : void
      {
         this.§_-qv§ = param1;
      }
      
      private function §_-Ot§() : void
      {
         this.§_-I6§.x = this.mViewPort.x;
         this.§_-I6§.y = this.mViewPort.y;
         this.§_-I6§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
         this.§_-I6§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
         var _loc1_:int = this.§_-I6§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-I6§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-f9§.addChild(this.§_-I6§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-f9§.removeChild(this.§_-I6§);
         }
      }
      
      private function §_-5l§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.mStage.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.mStage.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.mStage.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§_-i4§.addChild(_loc2_);
      }
      
      public function §_-4j§() : void
      {
         §_-Ry§ = this;
      }
      
      public function start() : void
      {
         this.§_-ju§ = true;
      }
      
      public function stop() : void
      {
         this.§_-ju§ = false;
      }
      
      private function §_-3X§(param1:ErrorEvent) : void
      {
         this.§_-5l§("This application is not correctly embedded (wrong wmode value)");
         throw new Error(param1.errorID,"This application is not correctly embedded (wrong wmode value)");
      }
      
      private function §_-an§(param1:Event) : void
      {
         ++§_-o§;
         this.§_-bv§ = §_-o§;
         this.§_-8l§ = new Dictionary();
         §_-FR§ = false;
         while(this.mStage.numChildren > 0)
         {
            this.mStage.removeChildAt(0);
         }
         this.§_-r1§();
         this.§_-JC§();
         this.§_-3P§();
         this.§var §.§_-DJ§ = this.§_-Ij§;
      }
      
      private function §_-Yx§(param1:Event) : void
      {
         if(this.§_-I6§)
         {
            this.§_-Ot§();
         }
         if(this.§_-ju§)
         {
            this.render();
         }
      }
      
      private function §_-HZ§(param1:flash.events.KeyboardEvent) : void
      {
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-IS§(param1:Event) : void
      {
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         var _loc3_:Number = _loc2_.stageWidth / this.§_-iO§;
         var _loc4_:Number = _loc2_.stageHeight / this.§_-7p§;
         this.mStage.stageWidth = this.§_-ew§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-qf§;
         this.mStage.dispatchEvent(new §_-J4§(Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
      }
      
      public function §_-mW§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§_-YF§;
         var _loc4_:Number = param2 / this.§_-Jz§;
         this.mStage.stageWidth = this.§_-YF§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-Jz§;
         this.§_-ew§ = param1;
         this.§_-qf§ = param2;
         this.mStage.dispatchEvent(new §_-J4§(Event.RESIZE,param1,param2));
      }
      
      public function §_-ee§() : void
      {
         this.§_-mW§(this.§_-YF§,this.§_-Jz§);
      }
      
      private function §_-HY§(param1:Event) : void
      {
         var position:Point = null;
         var phase:String = null;
         var touchID:int = 0;
         var mouseEvent:MouseEvent = null;
         var touchEvent:TouchEvent = null;
         var event:Event = param1;
         var convertPosition:Function = function(param1:Point):Point
         {
            return new Point(param1.x - mViewPort.x + mViewPort.width / mStage.stageWidth,param1.y - mViewPort.y + mViewPort.height / mStage.stageHeight);
         };
         var getPhaseFromMouseEvent:Function = function(param1:MouseEvent):String
         {
            switch(param1.type)
            {
               case MouseEvent.MOUSE_DOWN:
                  return §_-2b§.§_-tD§;
               case MouseEvent.MOUSE_UP:
                  return §_-2b§.§_-ZD§;
               case MouseEvent.MOUSE_MOVE:
                  return !!mouseEvent.buttonDown ? §_-2b§.§_-SR§ : §_-2b§.§_-2h§;
               default:
                  return null;
            }
         };
         var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
         {
            switch(param1.type)
            {
               case TouchEvent.TOUCH_BEGIN:
                  return §_-2b§.§_-tD§;
               case TouchEvent.TOUCH_MOVE:
                  return §_-2b§.§_-SR§;
               case TouchEvent.TOUCH_END:
                  return §_-2b§.§_-ZD§;
               default:
                  return null;
            }
         };
         if(!this.§_-ju§)
         {
            return;
         }
         if(event is MouseEvent)
         {
            mouseEvent = event as MouseEvent;
            position = convertPosition(new Point(mouseEvent.stageX,mouseEvent.stageY));
            phase = getPhaseFromMouseEvent(mouseEvent);
            touchID = 0;
         }
         else
         {
            touchEvent = event as TouchEvent;
            position = convertPosition(new Point(touchEvent.stageX,touchEvent.stageY));
            phase = getPhaseFromTouchEvent(touchEvent);
            touchID = touchEvent.touchPointID;
         }
         if(position.x < this.mViewPort.left || position.x >= this.mViewPort.right || position.y < this.mViewPort.top || position.y >= this.mViewPort.bottom)
         {
            return;
         }
         this.§var §.§_-p1§(touchID,phase,position.x,position.y);
      }
      
      public function §_-ar§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         if(this.§_-8l§.hasOwnProperty(param1))
         {
            throw new Error("Another program with this name is already registered");
         }
         var _loc4_:Program3D;
         (_loc4_ = this.§_-6A§.createProgram()).upload(param2,param3);
         this.§_-8l§[param1] = _loc4_;
      }
      
      public function §_-9w§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-nf§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-8l§[param1];
         }
      }
      
      public function §_-nf§(param1:String) : Program3D
      {
         return this.§_-8l§[param1] as Program3D;
      }
      
      public function get §_-Hn§() : Boolean
      {
         return this.§_-ju§;
      }
      
      public function get §_-gw§() : §_-9Y§
      {
         return this.§_-W5§;
      }
      
      public function get §_-FH§() : Context3D
      {
         return this.§_-6A§;
      }
      
      public function get §_-DJ§() : Boolean
      {
         return this.§_-Ij§;
      }
      
      public function set §_-DJ§(param1:Boolean) : void
      {
         this.§_-Ij§ = param1;
         if(this.§_-6A§)
         {
            this.§var §.§_-DJ§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-hT§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-hT§ = param1;
         if(this.§_-6A§)
         {
            this.§_-6A§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-9e§() : int
      {
         return this.§_-rJ§;
      }
      
      public function set §_-9e§(param1:int) : void
      {
         this.§_-rJ§ = param1;
         this.§_-Lk§();
      }
      
      public function get §_-I-§() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set §_-I-§(param1:Rectangle) : void
      {
         this.mViewPort = param1.clone();
         this.§_-Lk§();
      }
      
      public function get §_-i4§() : Sprite
      {
         if(this.§_-I6§ == null)
         {
            this.§_-I6§ = new Sprite();
            this.§_-f9§.addChild(this.§_-I6§);
            this.§_-Ot§();
         }
         return this.§_-I6§;
      }
   }
}
