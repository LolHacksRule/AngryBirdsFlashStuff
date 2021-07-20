package §_-gY§
{
   import §_-1Q§.§_-WL§;
   import §_-LP§.DisplayObject;
   import §_-LP§.Stage;
   import §_-LP§.§_-19§;
   import §_-LP§.§_-rC§;
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
   import starling.events.§_-5K§;
   import starling.events.§_-Ei§;
   import starling.events.§_-QY§;
   
   public class §_-Vu§
   {
      
      private static var §_-YZ§:§_-Vu§;
      
      private static var §_-tZ§:Boolean;
      
      private static var §_-WM§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-LP§.Stage;
      
      private var §_-1g§:Class;
      
      private var §_-x6§:§_-LP§.DisplayObject;
      
      private var §_-Wo§:§_-WL§;
      
      private var §_-ow§:Boolean;
      
      private var §_-4N§:§_-K6§;
      
      private var §_-qe§:§_-Ei§;
      
      private var §_-Am§:int;
      
      private var §_-cM§:Boolean;
      
      private var §_-E9§:Boolean;
      
      private var §_-e2§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-97§:flash.display.Stage;
      
      private var §_-q4§:Sprite;
      
      private var §_-Dt§:Context3D;
      
      private var §_-EV§:Dictionary;
      
      private var §_-L8§:int;
      
      private var §_-PM§:Boolean;
      
      private var §_-GD§:Number;
      
      private var §_-eD§:Number;
      
      private var set:Number;
      
      private var §_-Iy§:Number;
      
      private var §_-VD§:Number;
      
      private var §_-AE§:Number;
      
      private var §_-M3§:Function;
      
      private var §_-T-§:uint;
      
      private var §_-kx§:String;
      
      public function §_-Vu§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§_-GD§ = param3.width;
         this.§_-eD§ = param3.height;
         this.set = this.§_-GD§;
         this.§_-Iy§ = this.§_-eD§;
         this.§_-VD§ = param2.stageWidth;
         this.§_-AE§ = param2.stageHeight;
         this.§_-1g§ = param1;
         this.mViewPort = param3;
         this.mStage3D = param4;
         this.mStage = new §_-LP§.Stage(param3.width,param3.height,param2.color);
         this.§_-T-§ = param2.color;
         this.§_-97§ = param2;
         this.§_-qe§ = new §_-Ei§(this.mStage);
         this.§_-Wo§ = new §_-WL§();
         this.§_-Am§ = 0;
         this.§_-cM§ = false;
         this.§_-E9§ = false;
         this.§_-e2§ = getTimer() / 1000;
         this.§_-EV§ = new Dictionary();
         this.§_-4N§ = new §_-K6§();
         if(§_-YZ§ == null)
         {
            this.§_-I4§();
         }
         var _loc6_:Array = !!Multitouch.supportsTouchEvents ? [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END] : [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
         for each(_loc7_ in _loc6_)
         {
            param2.addEventListener(_loc7_,this.§_-Bb§,false,0,true);
         }
         param2.addEventListener(Event.ENTER_FRAME,this.§_-Oe§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-6E§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-6E§,false,0,true);
         param2.addEventListener(Event.RESIZE,this.§_-P2§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-2n§,false,0,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-d8§,false,0,true);
         this.mStage3D.visible = false;
         this.§_-kx§ = param5;
      }
      
      public static function get §_-Wf§() : int
      {
         return §_-dq§.§_-L8§;
      }
      
      public static function get §_-wB§() : Boolean
      {
         return §_-dq§.§_-PM§;
      }
      
      public static function §_-5v§() : Boolean
      {
         return §_-ez§ != null && §_-ez§.driverInfo != "Disposed";
      }
      
      public static function get §_-dq§() : §_-Vu§
      {
         return §_-YZ§;
      }
      
      public static function get §_-ez§() : Context3D
      {
         return §_-YZ§.§_-ez§;
      }
      
      public static function get §_-jT§() : §_-WL§
      {
         return §_-YZ§.§_-jT§;
      }
      
      public static function get §_-dn§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-dn§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public function get stage() : §_-LP§.Stage
      {
         return this.mStage;
      }
      
      public function get §_-UN§() : §_-LP§.DisplayObject
      {
         return this.§_-x6§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-T-§ = param1;
      }
      
      public function §_-R0§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§_-kx§);
         }
         catch(e:Error)
         {
            §_-ft§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Program3D = null;
         for each(_loc1_ in this.§_-EV§)
         {
            _loc1_.dispose();
         }
         if(this.§_-Dt§)
         {
            this.§_-Dt§.dispose();
         }
         if(this.§_-qe§)
         {
            this.§_-qe§.dispose();
         }
      }
      
      private function §_-0B§() : void
      {
         this.§_-Dt§ = this.mStage3D.context3D;
         this.§_-Dt§.enableErrorChecking = this.§_-E9§;
         this.§_-Dt§.setDepthTest(false,Context3DCompareMode.NEVER);
         this.§_-EP§();
         if(this.§_-Dt§.driverInfo.indexOf("Software") >= 0)
         {
            this.§_-PM§ = true;
         }
      }
      
      private function §_-gx§() : void
      {
         if(!§_-tZ§)
         {
            §_-rC§.§_-Dk§(this);
            §_-19§.§_-Dk§(this);
            §_-tZ§ = true;
         }
      }
      
      private function §_-g§() : void
      {
         if(this.§_-x6§ == null)
         {
            this.§_-x6§ = new this.§_-1g§();
         }
         if(this.§_-x6§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-1g§);
         }
         this.mStage.addChild(this.§_-x6§);
      }
      
      private function §_-EP§() : void
      {
         if(this.§_-Dt§)
         {
            this.§_-Dt§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-Am§,false);
         }
         this.mStage3D.x = this.mViewPort.x;
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         if(this.§_-Dt§ == null || !§_-5v§())
         {
            return;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-e2§;
         this.§_-e2§ = _loc1_;
         this.mStage.§_-IE§(_loc2_);
         this.§_-Wo§.§_-IE§(_loc2_);
         this.§_-qe§.§_-IE§(_loc2_);
         this.§_-4N§.§_-M1§(this.mStage.stageWidth,this.mStage.stageHeight);
         this.§_-4N§.§_-Nw§(true);
         this.§_-4N§.clear(this.§_-T-§,1);
         this.mStage.render(this.§_-4N§,1);
         if(this.§_-M3§ != null)
         {
            this.§_-M3§();
            this.§_-M3§ = null;
         }
         this.§_-Dt§.present();
         this.§_-4N§.§_-ar§();
      }
      
      public function set §_-bR§(param1:Function) : void
      {
         this.§_-M3§ = param1;
      }
      
      private function §_-6u§() : void
      {
         this.§_-q4§.x = this.mViewPort.x;
         this.§_-q4§.y = this.mViewPort.y;
         this.§_-q4§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
         this.§_-q4§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
         var _loc1_:int = this.§_-q4§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-q4§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-97§.addChild(this.§_-q4§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-97§.removeChild(this.§_-q4§);
         }
      }
      
      private function §_-ft§(param1:String) : void
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
         this.§_-5t§.addChild(_loc2_);
      }
      
      public function §_-I4§() : void
      {
         §_-YZ§ = this;
      }
      
      public function start() : void
      {
         this.§_-ow§ = true;
         this.mStage3D.visible = true;
      }
      
      public function stop() : void
      {
         this.§_-ow§ = false;
         this.mStage3D.visible = false;
      }
      
      private function §_-d8§(param1:ErrorEvent) : void
      {
         this.§_-ft§("This application is not correctly embedded (wrong wmode value)");
         throw new Error(param1.errorID,"This application is not correctly embedded (wrong wmode value)");
      }
      
      private function §_-2n§(param1:Event) : void
      {
         ++§_-WM§;
         this.§_-L8§ = §_-WM§;
         this.§_-EV§ = new Dictionary();
         §_-tZ§ = false;
         while(this.mStage.numChildren > 0)
         {
            this.mStage.removeChildAt(0);
         }
         this.§_-0B§();
         this.§_-gx§();
         this.§_-g§();
         this.§_-qe§.include = this.§_-cM§;
      }
      
      private function §_-Oe§(param1:Event) : void
      {
         if(this.§_-q4§)
         {
            this.§_-6u§();
         }
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§_-e2§;
         if(this.§_-ow§ || _loc3_ > 1)
         {
            this.render();
         }
      }
      
      private function §_-6E§(param1:flash.events.KeyboardEvent) : void
      {
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-P2§(param1:Event) : void
      {
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         var _loc3_:Number = _loc2_.stageWidth / this.§_-VD§;
         var _loc4_:Number = _loc2_.stageHeight / this.§_-AE§;
         this.mStage.stageWidth = this.set * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-Iy§;
         this.mStage.dispatchEvent(new §_-QY§(Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
      }
      
      public function §_-Bq§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§_-GD§;
         var _loc4_:Number = param2 / this.§_-eD§;
         this.mStage.stageWidth = this.§_-GD§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-eD§;
         this.set = param1;
         this.§_-Iy§ = param2;
         this.mStage.dispatchEvent(new §_-QY§(Event.RESIZE,param1,param2));
      }
      
      public function §_-rd§() : void
      {
         this.§_-Bq§(this.§_-GD§,this.§_-eD§);
      }
      
      private function §_-Bb§(param1:Event) : void
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
                  return §_-5K§.§_-RF§;
               case MouseEvent.MOUSE_UP:
                  return §_-5K§.§_-an§;
               case MouseEvent.MOUSE_MOVE:
                  return !!mouseEvent.buttonDown ? §_-5K§.§_-qP§ : §_-5K§.§_-d2§;
               default:
                  return null;
            }
         };
         var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
         {
            switch(param1.type)
            {
               case TouchEvent.TOUCH_BEGIN:
                  return §_-5K§.§_-RF§;
               case TouchEvent.TOUCH_MOVE:
                  return §_-5K§.§_-qP§;
               case TouchEvent.TOUCH_END:
                  return §_-5K§.§_-an§;
               default:
                  return null;
            }
         };
         if(!this.§_-ow§)
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
         if((position.x < this.mViewPort.left || position.x >= this.mViewPort.right || position.y < this.mViewPort.top || position.y >= this.mViewPort.bottom) && phase == §_-5K§.§_-RF§)
         {
            return;
         }
         this.§_-qe§.§_-W5§(touchID,phase,position.x,position.y);
      }
      
      public function §_-fm§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         if(this.§_-EV§.hasOwnProperty(param1))
         {
            throw new Error("Another program with this name is already registered");
         }
         var _loc4_:Program3D;
         (_loc4_ = this.§_-Dt§.createProgram()).upload(param2,param3);
         this.§_-EV§[param1] = _loc4_;
      }
      
      public function §_-bt§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-qm§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-EV§[param1];
         }
      }
      
      public function §_-qm§(param1:String) : Program3D
      {
         return this.§_-EV§[param1] as Program3D;
      }
      
      public function get §_-hQ§() : Boolean
      {
         return this.§_-ow§;
      }
      
      public function get §_-jT§() : §_-WL§
      {
         return this.§_-Wo§;
      }
      
      public function get §_-ez§() : Context3D
      {
         return this.§_-Dt§;
      }
      
      public function get include() : Boolean
      {
         return this.§_-cM§;
      }
      
      public function set include(param1:Boolean) : void
      {
         this.§_-cM§ = param1;
         if(this.§_-Dt§)
         {
            this.§_-qe§.include = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-E9§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-E9§ = param1;
         if(this.§_-Dt§)
         {
            this.§_-Dt§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-IN§() : int
      {
         return this.§_-Am§;
      }
      
      public function set §_-IN§(param1:int) : void
      {
         this.§_-Am§ = param1;
         this.§_-EP§();
      }
      
      public function get §_-cU§() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set §_-cU§(param1:Rectangle) : void
      {
         this.mViewPort = param1.clone();
         this.§_-EP§();
      }
      
      public function get §_-5t§() : Sprite
      {
         if(this.§_-q4§ == null)
         {
            this.§_-q4§ = new Sprite();
            this.§_-97§.addChild(this.§_-q4§);
            this.§_-6u§();
         }
         return this.§_-q4§;
      }
   }
}
