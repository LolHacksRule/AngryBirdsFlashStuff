package §_-fI§
{
   import §_-b5§.DisplayObject;
   import §_-b5§.Stage;
   import §_-b5§.§_-HK§;
   import §_-b5§.§_-Xj§;
   import §_-kc§.§_-L0§;
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
   import starling.events.§_-04§;
   import starling.events.§_-cm§;
   import starling.events.§_-uS§;
   
   public class §_-BI§
   {
      
      private static var §_-go§:§_-BI§;
      
      private static var §_-kJ§:Boolean;
      
      private static var §_-Ad§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-b5§.Stage;
      
      private var §_-ax§:Class;
      
      private var §_-H9§:§_-b5§.DisplayObject;
      
      private var §_-N1§:§_-L0§;
      
      private var §_-BO§:Boolean;
      
      private var §_-uV§:§_-6W§;
      
      private var §_-63§:§_-04§;
      
      private var §_-UJ§:int;
      
      private var §_-m5§:Boolean;
      
      private var §_-f9§:Boolean;
      
      private var §_-BP§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-dL§:flash.display.Stage;
      
      private var §_-Kl§:Sprite;
      
      private var §_-K4§:Context3D;
      
      private var §_-uu§:Dictionary;
      
      private var §_-W3§:int;
      
      private var §_-dB§:Boolean;
      
      private var §_-F0§:Number;
      
      private var §_-wn§:Number;
      
      private var §_-1t§:Number;
      
      private var §_-RI§:Number;
      
      private var §_-oN§:Number;
      
      private var §_-nW§:Number;
      
      private var §_-sm§:Function;
      
      private var §_-aK§:uint;
      
      private var §_-bO§:String;
      
      public function §_-BI§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§_-F0§ = param3.width;
         this.§_-wn§ = param3.height;
         this.§_-1t§ = this.§_-F0§;
         this.§_-RI§ = this.§_-wn§;
         this.§_-oN§ = param2.stageWidth;
         this.§_-nW§ = param2.stageHeight;
         this.§_-ax§ = param1;
         this.mViewPort = param3;
         this.mStage3D = param4;
         this.mStage = new §_-b5§.Stage(param3.width,param3.height,param2.color);
         this.§_-aK§ = param2.color;
         this.§_-dL§ = param2;
         this.§_-63§ = new §_-04§(this.mStage);
         this.§_-N1§ = new §_-L0§();
         this.§_-UJ§ = 0;
         this.§_-m5§ = false;
         this.§_-f9§ = false;
         this.§_-BP§ = getTimer() / 1000;
         this.§_-uu§ = new Dictionary();
         this.§_-uV§ = new §_-6W§();
         if(§_-go§ == null)
         {
            this.§_-IY§();
         }
         var _loc6_:Array = !!Multitouch.supportsTouchEvents ? [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END] : [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
         for each(_loc7_ in _loc6_)
         {
            param2.addEventListener(_loc7_,this.§_-LO§,false,0,true);
         }
         param2.addEventListener(Event.ENTER_FRAME,this.§_-Rf§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-WW§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-WW§,false,0,true);
         param2.addEventListener(Event.RESIZE,this.§_-Tn§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-sp§,false,0,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-Wk§,false,0,true);
         this.mStage3D.visible = false;
         this.§_-bO§ = param5;
      }
      
      public static function get §_-3W§() : int
      {
         return §_-44§.§_-W3§;
      }
      
      public static function get §_-Hp§() : Boolean
      {
         return §_-44§.§_-dB§;
      }
      
      public static function §_-s2§() : Boolean
      {
         return §_-Pw§ != null && §_-Pw§.driverInfo != "Disposed";
      }
      
      public static function get §_-44§() : §_-BI§
      {
         return §_-go§;
      }
      
      public static function get §_-Pw§() : Context3D
      {
         return §_-go§.§_-Pw§;
      }
      
      public static function get §_-CE§() : §_-L0§
      {
         return §_-go§.§_-CE§;
      }
      
      public static function get §_-6k§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-6k§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public function get stage() : §_-b5§.Stage
      {
         return this.mStage;
      }
      
      public function get §_-Zl§() : §_-b5§.DisplayObject
      {
         return this.§_-H9§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-aK§ = param1;
      }
      
      public function §_-Vg§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§_-bO§);
         }
         catch(e:Error)
         {
            §_-dU§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Program3D = null;
         for each(_loc1_ in this.§_-uu§)
         {
            _loc1_.dispose();
         }
         if(this.§_-K4§)
         {
            this.§_-K4§.dispose();
         }
         if(this.§_-63§)
         {
            this.§_-63§.dispose();
         }
      }
      
      private function §_-tM§() : void
      {
         this.§_-K4§ = this.mStage3D.context3D;
         this.§_-K4§.enableErrorChecking = this.§_-f9§;
         this.§_-K4§.setDepthTest(false,Context3DCompareMode.NEVER);
         this.§_-hP§();
         if(this.§_-K4§.driverInfo.indexOf("Software") >= 0)
         {
            this.§_-dB§ = true;
         }
      }
      
      private function §_-zR§() : void
      {
         if(!§_-kJ§)
         {
            §_-HK§.§_-pG§(this);
            §_-Xj§.§_-pG§(this);
            §_-kJ§ = true;
         }
      }
      
      private function §_-fb§() : void
      {
         if(this.§_-H9§ == null)
         {
            this.§_-H9§ = new this.§_-ax§();
         }
         if(this.§_-H9§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-ax§);
         }
         this.mStage.addChild(this.§_-H9§);
      }
      
      private function §_-hP§() : void
      {
         if(this.§_-K4§)
         {
            this.§_-K4§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-UJ§,false);
         }
         this.mStage3D.x = this.mViewPort.x;
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         if(this.§_-K4§ == null || !§_-s2§())
         {
            return;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-BP§;
         this.§_-BP§ = _loc1_;
         this.mStage.§_-XZ§(_loc2_);
         this.§_-N1§.§_-XZ§(_loc2_);
         this.§_-63§.§_-XZ§(_loc2_);
         this.§_-uV§.§_-Iy§(this.mStage.stageWidth,this.mStage.stageHeight);
         this.§_-uV§.§_-oD§(true);
         this.§_-uV§.clear(this.§_-aK§,1);
         this.mStage.render(this.§_-uV§,1);
         if(this.§_-sm§ != null)
         {
            this.§_-sm§();
            this.§_-sm§ = null;
         }
         this.§_-K4§.present();
         this.§_-uV§.§_-hJ§();
      }
      
      public function set §_-Qu§(param1:Function) : void
      {
         this.§_-sm§ = param1;
      }
      
      private function §_-OQ§() : void
      {
         this.§_-Kl§.x = this.mViewPort.x;
         this.§_-Kl§.y = this.mViewPort.y;
         this.§_-Kl§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
         this.§_-Kl§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
         var _loc1_:int = this.§_-Kl§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-Kl§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-dL§.addChild(this.§_-Kl§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-dL§.removeChild(this.§_-Kl§);
         }
      }
      
      private function §_-dU§(param1:String) : void
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
         this.§_-7w§.addChild(_loc2_);
      }
      
      public function §_-IY§() : void
      {
         §_-go§ = this;
      }
      
      public function start() : void
      {
         this.§_-BO§ = true;
         this.mStage3D.visible = true;
      }
      
      public function stop() : void
      {
         this.§_-BO§ = false;
         this.mStage3D.visible = false;
      }
      
      private function §_-Wk§(param1:ErrorEvent) : void
      {
         this.§_-dU§("This application is not correctly embedded (wrong wmode value)");
         throw new Error(param1.errorID,"This application is not correctly embedded (wrong wmode value)");
      }
      
      private function §_-sp§(param1:Event) : void
      {
         ++§_-Ad§;
         this.§_-W3§ = §_-Ad§;
         this.§_-uu§ = new Dictionary();
         §_-kJ§ = false;
         while(this.mStage.numChildren > 0)
         {
            this.mStage.removeChildAt(0);
         }
         this.§_-tM§();
         this.§_-zR§();
         this.§_-fb§();
         this.§_-63§.§_-LA§ = this.§_-m5§;
      }
      
      private function §_-Rf§(param1:Event) : void
      {
         if(this.§_-Kl§)
         {
            this.§_-OQ§();
         }
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§_-BP§;
         if(this.§_-BO§ || _loc3_ > 1)
         {
            this.render();
         }
      }
      
      private function §_-WW§(param1:flash.events.KeyboardEvent) : void
      {
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-Tn§(param1:Event) : void
      {
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         var _loc3_:Number = _loc2_.stageWidth / this.§_-oN§;
         var _loc4_:Number = _loc2_.stageHeight / this.§_-nW§;
         this.mStage.stageWidth = this.§_-1t§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-RI§;
         this.mStage.dispatchEvent(new §_-uS§(Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
      }
      
      public function §_-si§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§_-F0§;
         var _loc4_:Number = param2 / this.§_-wn§;
         this.mStage.stageWidth = this.§_-F0§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-wn§;
         this.§_-1t§ = param1;
         this.§_-RI§ = param2;
         this.mStage.dispatchEvent(new §_-uS§(Event.RESIZE,param1,param2));
      }
      
      public function §_-MV§() : void
      {
         this.§_-si§(this.§_-F0§,this.§_-wn§);
      }
      
      private function §_-LO§(param1:Event) : void
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
                  return §_-cm§.§_-Ye§;
               case MouseEvent.MOUSE_UP:
                  return §_-cm§.§_-R1§;
               case MouseEvent.MOUSE_MOVE:
                  return !!mouseEvent.buttonDown ? §_-cm§.§_-PY§ : §_-cm§.§_-sc§;
               default:
                  return null;
            }
         };
         var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
         {
            switch(param1.type)
            {
               case TouchEvent.TOUCH_BEGIN:
                  return §_-cm§.§_-Ye§;
               case TouchEvent.TOUCH_MOVE:
                  return §_-cm§.§_-PY§;
               case TouchEvent.TOUCH_END:
                  return §_-cm§.§_-R1§;
               default:
                  return null;
            }
         };
         if(!this.§_-BO§)
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
         if((position.x < this.mViewPort.left || position.x >= this.mViewPort.right || position.y < this.mViewPort.top || position.y >= this.mViewPort.bottom) && phase == §_-cm§.§_-Ye§)
         {
            return;
         }
         this.§_-63§.§_-Ll§(touchID,phase,position.x,position.y);
      }
      
      public function §_-e8§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         if(this.§_-uu§.hasOwnProperty(param1))
         {
            throw new Error("Another program with this name is already registered");
         }
         var _loc4_:Program3D;
         (_loc4_ = this.§_-K4§.createProgram()).upload(param2,param3);
         this.§_-uu§[param1] = _loc4_;
      }
      
      public function §_-tF§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-Ew§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-uu§[param1];
         }
      }
      
      public function §_-Ew§(param1:String) : Program3D
      {
         return this.§_-uu§[param1] as Program3D;
      }
      
      public function get §_-MD§() : Boolean
      {
         return this.§_-BO§;
      }
      
      public function get §_-CE§() : §_-L0§
      {
         return this.§_-N1§;
      }
      
      public function get §_-Pw§() : Context3D
      {
         return this.§_-K4§;
      }
      
      public function get §_-LA§() : Boolean
      {
         return this.§_-m5§;
      }
      
      public function set §_-LA§(param1:Boolean) : void
      {
         this.§_-m5§ = param1;
         if(this.§_-K4§)
         {
            this.§_-63§.§_-LA§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-f9§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-f9§ = param1;
         if(this.§_-K4§)
         {
            this.§_-K4§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-WR§() : int
      {
         return this.§_-UJ§;
      }
      
      public function set §_-WR§(param1:int) : void
      {
         this.§_-UJ§ = param1;
         this.§_-hP§();
      }
      
      public function get §_-jP§() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set §_-jP§(param1:Rectangle) : void
      {
         this.mViewPort = param1.clone();
         this.§_-hP§();
      }
      
      public function get §_-7w§() : Sprite
      {
         if(this.§_-Kl§ == null)
         {
            this.§_-Kl§ = new Sprite();
            this.§_-dL§.addChild(this.§_-Kl§);
            this.§_-OQ§();
         }
         return this.§_-Kl§;
      }
   }
}
