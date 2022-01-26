package §_-B2§
{
   import §_-MS§.§_-IA§;
   import §_-se§.DisplayObject;
   import §_-se§.Stage;
   import §_-se§.§_-3u§;
   import §_-se§.§_-N§;
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
   import starling.events.§_-KE§;
   import starling.events.§_-cz§;
   import starling.events.§_-rF§;
   
   public class §_-H4§
   {
      
      private static var §_-sW§:§_-H4§;
      
      private static var §_-Ei§:Boolean;
      
      private static var §_-Z§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-se§.Stage;
      
      private var §_-gZ§:Class;
      
      private var §_-Dm§:§_-se§.DisplayObject;
      
      private var §_-NA§:§_-IA§;
      
      private var §_-Di§:Boolean;
      
      private var §_-jF§:§_-Ke§;
      
      private var §_-WM§:§_-cz§;
      
      private var §_-kn§:int;
      
      private var §_-Lz§:Boolean;
      
      private var §_-HW§:Boolean;
      
      private var §_-Gf§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-19§:flash.display.Stage;
      
      private var §_-ke§:Sprite;
      
      private var §_-JN§:Context3D;
      
      private var §_-NO§:Dictionary;
      
      private var §_-RS§:int;
      
      private var §_-EW§:Boolean;
      
      private var §_-G3§:Number;
      
      private var §_-Rd§:Number;
      
      private var §_-06§:Number;
      
      private var §_-Vc§:Number;
      
      private var §_-Ad§:Number;
      
      private var §_-1§:Number;
      
      private var §_-Ew§:Function;
      
      public function §_-H4§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§_-G3§ = viewPort.width;
         this.§_-Rd§ = viewPort.height;
         this.§_-06§ = this.§_-G3§;
         this.§_-Vc§ = this.§_-Rd§;
         this.§_-Ad§ = stage.stageWidth;
         this.§_-1§ = stage.stageHeight;
         this.§_-gZ§ = rootClass;
         this.mViewPort = viewPort;
         this.mStage3D = stage3D;
         this.mStage = new §_-se§.Stage(viewPort.width,viewPort.height,stage.color);
         this.§_-19§ = stage;
         this.§_-WM§ = new §_-cz§(this.mStage);
         this.§_-NA§ = new §_-IA§();
         this.§_-kn§ = 0;
         this.§_-Lz§ = false;
         this.§_-HW§ = false;
         this.§_-Gf§ = getTimer() / 1000;
         this.§_-NO§ = new Dictionary();
         this.§_-jF§ = new §_-Ke§();
         if(§_-sW§ == null)
         {
            this.§_-PR§();
         }
         var touchEventTypes:Array = !!Multitouch.supportsTouchEvents ? [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END] : [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
         for each(touchEventType in touchEventTypes)
         {
            stage.addEventListener(touchEventType,this.§_-jj§,false,0,true);
         }
         stage.addEventListener(Event.ENTER_FRAME,this.§_-C§,false,0,true);
         stage.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-pE§,false,0,true);
         stage.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-pE§,false,0,true);
         stage.addEventListener(Event.RESIZE,this.§_-ne§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-kk§,false,0,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-oU§,false,0,true);
         try
         {
            this.mStage3D.requestContext3D(renderMode);
         }
         catch(e:Error)
         {
            §_-Tg§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public static function get §_-qV§() : int
      {
         return §_-I9§.§_-RS§;
      }
      
      public static function get §_-OR§() : Boolean
      {
         return §_-I9§.§_-EW§;
      }
      
      public static function §_-UE§() : Boolean
      {
         return §_-Eu§ != null && §_-Eu§.driverInfo != "Disposed";
      }
      
      public static function get §_-I9§() : §_-H4§
      {
         return §_-sW§;
      }
      
      public static function get §_-Eu§() : Context3D
      {
         return §_-sW§.§_-Eu§;
      }
      
      public static function get §_-5y§() : §_-IA§
      {
         return §_-sW§.§_-5y§;
      }
      
      public static function get §_-rj§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-rj§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public function get §_-Eg§() : §_-se§.DisplayObject
      {
         return this.§_-Dm§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Program3D = null;
         for each(_loc1_ in this.§_-NO§)
         {
            _loc1_.dispose();
         }
         if(this.§_-JN§)
         {
            this.§_-JN§.dispose();
         }
         if(this.§_-WM§)
         {
            this.§_-WM§.dispose();
         }
      }
      
      private function §_-1h§() : void
      {
         this.§_-JN§ = this.mStage3D.context3D;
         this.§_-JN§.enableErrorChecking = this.§_-HW§;
         this.§_-JN§.setDepthTest(false,Context3DCompareMode.NEVER);
         this.§_-Vy§();
         if(this.§_-JN§.driverInfo.indexOf("Software") >= 0)
         {
            this.§_-EW§ = true;
         }
      }
      
      private function §_-PH§() : void
      {
         if(!§_-Ei§)
         {
            §_-3u§.§_-Id§(this);
            §_-N§.§_-Id§(this);
            §_-Ei§ = true;
         }
      }
      
      private function §_-5N§() : void
      {
         if(this.§_-Dm§ == null)
         {
            this.§_-Dm§ = new this.§_-gZ§();
         }
         if(this.§_-Dm§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-gZ§);
         }
         this.mStage.addChild(this.§_-Dm§);
      }
      
      private function §_-Vy§() : void
      {
         if(this.§_-JN§)
         {
            this.§_-JN§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-kn§,false);
         }
         this.mStage3D.x = this.mViewPort.x;
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         if(this.§_-JN§ == null || !§_-UE§())
         {
            return;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-Gf§;
         this.§_-Gf§ = _loc1_;
         this.mStage.§_-DV§(_loc2_);
         this.§_-NA§.§_-DV§(_loc2_);
         this.§_-WM§.§_-DV§(_loc2_);
         this.§_-jF§.§_-I-§(this.mStage.stageWidth,this.mStage.stageHeight);
         this.§_-jF§.§_-Gg§(true);
         this.§_-jF§.clear(this.mStage.color,1);
         this.mStage.render(this.§_-jF§,1);
         if(this.§_-Ew§ != null)
         {
            this.§_-Ew§();
            this.§_-Ew§ = null;
         }
         this.§_-JN§.present();
         this.§_-jF§.§_-JW§();
      }
      
      public function set §_-PP§(param1:Function) : void
      {
         this.§_-Ew§ = param1;
      }
      
      private function §_-cw§() : void
      {
         this.§_-ke§.x = this.mViewPort.x;
         this.§_-ke§.y = this.mViewPort.y;
         this.§_-ke§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
         this.§_-ke§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
         var _loc1_:int = this.§_-ke§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-ke§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-19§.addChild(this.§_-ke§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-19§.removeChild(this.§_-ke§);
         }
      }
      
      private function §_-Tg§(param1:String) : void
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
         this.§_-Vq§.addChild(_loc2_);
      }
      
      public function §_-PR§() : void
      {
         §_-sW§ = this;
      }
      
      public function start() : void
      {
         this.§_-Di§ = true;
      }
      
      public function stop() : void
      {
         this.§_-Di§ = false;
      }
      
      private function §_-oU§(param1:ErrorEvent) : void
      {
         this.§_-Tg§("This application is not correctly embedded (wrong wmode value)");
         throw new Error(param1.errorID,"This application is not correctly embedded (wrong wmode value)");
      }
      
      private function §_-kk§(param1:Event) : void
      {
         ++§_-Z§;
         this.§_-RS§ = §_-Z§;
         this.§_-NO§ = new Dictionary();
         §_-Ei§ = false;
         while(this.mStage.numChildren > 0)
         {
            this.mStage.removeChildAt(0);
         }
         this.§_-1h§();
         this.§_-PH§();
         this.§_-5N§();
         this.§_-WM§.§_-7j§ = this.§_-Lz§;
      }
      
      private function §_-C§(param1:Event) : void
      {
         if(this.§_-ke§)
         {
            this.§_-cw§();
         }
         if(this.§_-Di§)
         {
            this.render();
         }
      }
      
      private function §_-pE§(param1:flash.events.KeyboardEvent) : void
      {
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-ne§(param1:Event) : void
      {
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         var _loc3_:Number = _loc2_.stageWidth / this.§_-Ad§;
         var _loc4_:Number = _loc2_.stageHeight / this.§_-1§;
         this.mStage.stageWidth = this.§_-06§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-Vc§;
         this.mStage.dispatchEvent(new §_-rF§(Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
      }
      
      public function §_-Od§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§_-G3§;
         var _loc4_:Number = param2 / this.§_-Rd§;
         this.mStage.stageWidth = this.§_-G3§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-Rd§;
         this.§_-06§ = param1;
         this.§_-Vc§ = param2;
         this.mStage.dispatchEvent(new §_-rF§(Event.RESIZE,param1,param2));
      }
      
      public function §_-98§() : void
      {
         this.§_-Od§(this.§_-G3§,this.§_-Rd§);
      }
      
      private function §_-jj§(param1:Event) : void
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
                  return §_-KE§.§_-mI§;
               case MouseEvent.MOUSE_UP:
                  return §_-KE§.§_-w0§;
               case MouseEvent.MOUSE_MOVE:
                  return !!mouseEvent.buttonDown ? §_-KE§.§_-SA§ : §_-KE§.§_-xa§;
               default:
                  return null;
            }
         };
         var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
         {
            switch(param1.type)
            {
               case TouchEvent.TOUCH_BEGIN:
                  return §_-KE§.§_-mI§;
               case TouchEvent.TOUCH_MOVE:
                  return §_-KE§.§_-SA§;
               case TouchEvent.TOUCH_END:
                  return §_-KE§.§_-w0§;
               default:
                  return null;
            }
         };
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
         this.§_-WM§.§_-R3§(touchID,phase,position.x,position.y);
      }
      
      public function §_-6R§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         if(this.§_-NO§.hasOwnProperty(param1))
         {
            throw new Error("Another program with this name is already registered");
         }
         var _loc4_:Program3D;
         (_loc4_ = this.§_-JN§.createProgram()).upload(param2,param3);
         this.§_-NO§[param1] = _loc4_;
      }
      
      public function §_-mF§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-4C§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-NO§[param1];
         }
      }
      
      public function §_-4C§(param1:String) : Program3D
      {
         return this.§_-NO§[param1] as Program3D;
      }
      
      public function get §_-Ny§() : Boolean
      {
         return this.§_-Di§;
      }
      
      public function get §_-5y§() : §_-IA§
      {
         return this.§_-NA§;
      }
      
      public function get §_-Eu§() : Context3D
      {
         return this.§_-JN§;
      }
      
      public function get §_-7j§() : Boolean
      {
         return this.§_-Lz§;
      }
      
      public function set §_-7j§(param1:Boolean) : void
      {
         this.§_-Lz§ = param1;
         if(this.§_-JN§)
         {
            this.§_-WM§.§_-7j§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-HW§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-HW§ = param1;
         if(this.§_-JN§)
         {
            this.§_-JN§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-6o§() : int
      {
         return this.§_-kn§;
      }
      
      public function set §_-6o§(param1:int) : void
      {
         this.§_-kn§ = param1;
         this.§_-Vy§();
      }
      
      public function get viewPort() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set viewPort(param1:Rectangle) : void
      {
         this.mViewPort = param1.clone();
         this.§_-Vy§();
      }
      
      public function get §_-Vq§() : Sprite
      {
         if(this.§_-ke§ == null)
         {
            this.§_-ke§ = new Sprite();
            this.§_-19§.addChild(this.§_-ke§);
            this.§_-cw§();
         }
         return this.§_-ke§;
      }
   }
}
