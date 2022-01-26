package §_-d5§
{
   import §_-iA§.§_-B-§;
   import §_-vO§.DisplayObject;
   import §_-vO§.Stage;
   import §_-vO§.§_-O9§;
   import §_-vO§.§_-OW§;
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
   import starling.events.§_-6l§;
   import starling.events.§_-KN§;
   import starling.events.§_-de§;
   
   public class §_-6Y§
   {
      
      private static var §_-LG§:§_-6Y§;
      
      private static var §_-pg§:Boolean;
      
      private static var §_-99§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-vO§.Stage;
      
      private var §_-c0§:Class;
      
      private var §_-KJ§:§_-vO§.DisplayObject;
      
      private var §_-KZ§:§_-B-§;
      
      private var §_-y§:Boolean;
      
      private var §_-3s§:§_-F§;
      
      private var §_-Le§:§_-de§;
      
      private var §_-x0§:int;
      
      private var §_-VV§:Boolean;
      
      private var §_-UK§:Boolean;
      
      private var §_-7o§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-Oy§:flash.display.Stage;
      
      private var §_-rv§:Sprite;
      
      private var §_-Kg§:Context3D;
      
      private var §_-2X§:Dictionary;
      
      private var §_-R2§:int;
      
      private var §_-EP§:Boolean;
      
      private var §_-2c§:Number;
      
      private var §_-6B§:Number;
      
      private var §_-PQ§:Number;
      
      private var §_-2F§:Number;
      
      private var §_-nl§:Number;
      
      private var §_-4s§:Number;
      
      private var §_-UI§:Function;
      
      private var §_-Tj§:uint;
      
      public function §_-6Y§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var touchEventType:String = null;
         var rootClass:Class = param1;
         var stage:flash.display.Stage = param2;
         var viewPort:Rectangle = param3;
         var stage3D:Stage3D = param4;
         var renderMode:String = param5;
         super();
         if(stage == null)
         {
            throw new ArgumentError("Stage must not be null");
         }
         if(rootClass == null)
         {
            throw new ArgumentError("Root class must not be null");
         }
         if(viewPort == null)
         {
            viewPort = new Rectangle(0,0,stage.stageWidth,stage.stageHeight);
         }
         if(stage3D == null)
         {
            stage3D = stage.stage3Ds[0];
         }
         this.§_-2c§ = viewPort.width;
         this.§_-6B§ = viewPort.height;
         this.§_-PQ§ = this.§_-2c§;
         this.§_-2F§ = this.§_-6B§;
         this.§_-nl§ = stage.stageWidth;
         this.§_-4s§ = stage.stageHeight;
         this.§_-c0§ = rootClass;
         this.mViewPort = viewPort;
         this.mStage3D = stage3D;
         this.mStage = new §_-vO§.Stage(viewPort.width,viewPort.height,stage.color);
         this.§_-Tj§ = stage.color;
         this.§_-Oy§ = stage;
         this.§_-Le§ = new §_-de§(this.mStage);
         this.§_-KZ§ = new §_-B-§();
         this.§_-x0§ = 0;
         this.§_-VV§ = false;
         this.§_-UK§ = false;
         this.§_-7o§ = getTimer() / 1000;
         this.§_-2X§ = new Dictionary();
         this.§_-3s§ = new §_-F§();
         if(§_-LG§ == null)
         {
            this.include();
         }
         var touchEventTypes:Array = !!Multitouch.supportsTouchEvents ? [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END] : [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
         for each(touchEventType in touchEventTypes)
         {
            stage.addEventListener(touchEventType,this.§_-qI§,false,0,true);
         }
         stage.addEventListener(Event.ENTER_FRAME,this.§_-FW§,false,0,true);
         stage.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-Of§,false,0,true);
         stage.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-Of§,false,0,true);
         stage.addEventListener(Event.RESIZE,this.§_-cA§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-ak§,false,0,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-hg§,false,0,true);
         try
         {
            this.mStage3D.requestContext3D(renderMode);
         }
         catch(e:Error)
         {
            §_-J6§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public static function get §_-X7§() : int
      {
         return §true§.§_-R2§;
      }
      
      public static function get §_-rs§() : Boolean
      {
         return §true§.§_-EP§;
      }
      
      public static function §_-AT§() : Boolean
      {
         return §_-0D§ != null && §_-0D§.driverInfo != "Disposed";
      }
      
      public static function get §true§() : §_-6Y§
      {
         return §_-LG§;
      }
      
      public static function get §_-0D§() : Context3D
      {
         return §_-LG§.§_-0D§;
      }
      
      public static function get §_-7p§() : §_-B-§
      {
         return §_-LG§.§_-7p§;
      }
      
      public static function get §_-HH§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-HH§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public function get stage() : §_-vO§.Stage
      {
         return this.mStage;
      }
      
      public function get §_-nb§() : §_-vO§.DisplayObject
      {
         return this.§_-KJ§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-Tj§ = param1;
      }
      
      public function dispose() : void
      {
         var _loc1_:Program3D = null;
         for each(_loc1_ in this.§_-2X§)
         {
            _loc1_.dispose();
         }
         if(this.§_-Kg§)
         {
            this.§_-Kg§.dispose();
         }
         if(this.§_-Le§)
         {
            this.§_-Le§.dispose();
         }
      }
      
      private function §_-4D§() : void
      {
         this.§_-Kg§ = this.mStage3D.context3D;
         this.§_-Kg§.enableErrorChecking = this.§_-UK§;
         this.§_-Kg§.setDepthTest(false,Context3DCompareMode.NEVER);
         this.§_-7i§();
         if(this.§_-Kg§.driverInfo.indexOf("Software") >= 0)
         {
            this.§_-EP§ = true;
         }
      }
      
      private function §_-RF§() : void
      {
         if(!§_-pg§)
         {
            §_-O9§.§_-Mr§(this);
            §_-OW§.§_-Mr§(this);
            §_-pg§ = true;
         }
      }
      
      private function §_-Bf§() : void
      {
         if(this.§_-KJ§ == null)
         {
            this.§_-KJ§ = new this.§_-c0§();
         }
         if(this.§_-KJ§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-c0§);
         }
         this.mStage.addChild(this.§_-KJ§);
      }
      
      private function §_-7i§() : void
      {
         if(this.§_-Kg§)
         {
            this.§_-Kg§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-x0§,false);
         }
         this.mStage3D.x = this.mViewPort.x;
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         if(this.§_-Kg§ == null || !§_-AT§())
         {
            return;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-7o§;
         this.§_-7o§ = _loc1_;
         this.mStage.§_-An§(_loc2_);
         this.§_-KZ§.§_-An§(_loc2_);
         this.§_-Le§.§_-An§(_loc2_);
         this.§_-3s§.§_-fj§(this.mStage.stageWidth,this.mStage.stageHeight);
         this.§_-3s§.§_-mZ§(true);
         this.§_-3s§.clear(this.§_-Tj§,1);
         this.mStage.render(this.§_-3s§,1);
         if(this.§_-UI§ != null)
         {
            this.§_-UI§();
            this.§_-UI§ = null;
         }
         this.§_-Kg§.present();
         this.§_-3s§.§_-Gf§();
      }
      
      public function set §_-du§(param1:Function) : void
      {
         this.§_-UI§ = param1;
      }
      
      private function §_-NA§() : void
      {
         this.§_-rv§.x = this.mViewPort.x;
         this.§_-rv§.y = this.mViewPort.y;
         this.§_-rv§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
         this.§_-rv§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
         var _loc1_:int = this.§_-rv§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-rv§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-Oy§.addChild(this.§_-rv§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-Oy§.removeChild(this.§_-rv§);
         }
      }
      
      private function §_-J6§(param1:String) : void
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
         this.§_-oU§.addChild(_loc2_);
      }
      
      public function include() : void
      {
         §_-LG§ = this;
      }
      
      public function start() : void
      {
         this.§_-y§ = true;
      }
      
      public function stop() : void
      {
         this.§_-y§ = false;
      }
      
      private function §_-hg§(param1:ErrorEvent) : void
      {
         this.§_-J6§("This application is not correctly embedded (wrong wmode value)");
         throw new Error(param1.errorID,"This application is not correctly embedded (wrong wmode value)");
      }
      
      private function §_-ak§(param1:Event) : void
      {
         ++§_-99§;
         this.§_-R2§ = §_-99§;
         this.§_-2X§ = new Dictionary();
         §_-pg§ = false;
         while(this.mStage.numChildren > 0)
         {
            this.mStage.removeChildAt(0);
         }
         this.§_-4D§();
         this.§_-RF§();
         this.§_-Bf§();
         this.§_-Le§.§_-mY§ = this.§_-VV§;
      }
      
      private function §_-FW§(param1:Event) : void
      {
         if(this.§_-rv§)
         {
            this.§_-NA§();
         }
         if(this.§_-y§)
         {
            this.render();
         }
      }
      
      private function §_-Of§(param1:flash.events.KeyboardEvent) : void
      {
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-cA§(param1:Event) : void
      {
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         var _loc3_:Number = _loc2_.stageWidth / this.§_-nl§;
         var _loc4_:Number = _loc2_.stageHeight / this.§_-4s§;
         this.mStage.stageWidth = this.§_-PQ§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-2F§;
         this.mStage.dispatchEvent(new §_-KN§(Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
      }
      
      public function §_-U-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§_-2c§;
         var _loc4_:Number = param2 / this.§_-6B§;
         this.mStage.stageWidth = this.§_-2c§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-6B§;
         this.§_-PQ§ = param1;
         this.§_-2F§ = param2;
         this.mStage.dispatchEvent(new §_-KN§(Event.RESIZE,param1,param2));
      }
      
      public function §_-W2§() : void
      {
         this.§_-U-§(this.§_-2c§,this.§_-6B§);
      }
      
      private function §_-qI§(param1:Event) : void
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
                  return §_-6l§.§_-N§;
               case MouseEvent.MOUSE_UP:
                  return §_-6l§.§_-oi§;
               case MouseEvent.MOUSE_MOVE:
                  return !!mouseEvent.buttonDown ? §_-6l§.§_-x6§ : §_-6l§.§_-YR§;
               default:
                  return null;
            }
         };
         var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
         {
            switch(param1.type)
            {
               case TouchEvent.TOUCH_BEGIN:
                  return §_-6l§.§_-N§;
               case TouchEvent.TOUCH_MOVE:
                  return §_-6l§.§_-x6§;
               case TouchEvent.TOUCH_END:
                  return §_-6l§.§_-oi§;
               default:
                  return null;
            }
         };
         if(!this.§_-y§)
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
         this.§_-Le§.§_-P-§(touchID,phase,position.x,position.y);
      }
      
      public function §_-TZ§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         if(this.§_-2X§.hasOwnProperty(param1))
         {
            throw new Error("Another program with this name is already registered");
         }
         var _loc4_:Program3D;
         (_loc4_ = this.§_-Kg§.createProgram()).upload(param2,param3);
         this.§_-2X§[param1] = _loc4_;
      }
      
      public function §_-NJ§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-O2§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-2X§[param1];
         }
      }
      
      public function §_-O2§(param1:String) : Program3D
      {
         return this.§_-2X§[param1] as Program3D;
      }
      
      public function get §_-Ek§() : Boolean
      {
         return this.§_-y§;
      }
      
      public function get §_-7p§() : §_-B-§
      {
         return this.§_-KZ§;
      }
      
      public function get §_-0D§() : Context3D
      {
         return this.§_-Kg§;
      }
      
      public function get §_-mY§() : Boolean
      {
         return this.§_-VV§;
      }
      
      public function set §_-mY§(param1:Boolean) : void
      {
         this.§_-VV§ = param1;
         if(this.§_-Kg§)
         {
            this.§_-Le§.§_-mY§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-UK§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-UK§ = param1;
         if(this.§_-Kg§)
         {
            this.§_-Kg§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-Es§() : int
      {
         return this.§_-x0§;
      }
      
      public function set §_-Es§(param1:int) : void
      {
         this.§_-x0§ = param1;
         this.§_-7i§();
      }
      
      public function get viewPort() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set viewPort(param1:Rectangle) : void
      {
         this.mViewPort = param1.clone();
         this.§_-7i§();
      }
      
      public function get §_-oU§() : Sprite
      {
         if(this.§_-rv§ == null)
         {
            this.§_-rv§ = new Sprite();
            this.§_-Oy§.addChild(this.§_-rv§);
            this.§_-NA§();
         }
         return this.§_-rv§;
      }
   }
}
