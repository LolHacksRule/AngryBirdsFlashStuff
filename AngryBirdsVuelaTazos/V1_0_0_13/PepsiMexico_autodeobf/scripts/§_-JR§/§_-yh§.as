package §_-JR§
{
   import §_-9A§.§_-L-§;
   import §_-UX§.DisplayObject;
   import §_-UX§.Stage;
   import §_-UX§.§_-2S§;
   import §_-UX§.§_-go§;
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
   import starling.events.§_-BA§;
   import starling.events.§_-IZ§;
   import starling.events.§in §;
   
   public class §_-yh§
   {
      
      private static var §_-sd§:§_-yh§;
      
      private static var §_-3k§:Boolean;
      
      private static var §_-hm§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-UX§.Stage;
      
      private var §_-FL§:Class;
      
      private var §_-wP§:§_-UX§.DisplayObject;
      
      private var §_-VF§:§_-L-§;
      
      private var §_-RZ§:Boolean;
      
      private var §_-TD§:§_-t2§;
      
      private var §_-mE§:§_-BA§;
      
      private var §_-GT§:int;
      
      private var §_-2X§:Boolean;
      
      private var §_-kb§:Boolean;
      
      private var §_-UR§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-R8§:flash.display.Stage;
      
      private var §_-4D§:Sprite;
      
      private var §_-gA§:Context3D;
      
      private var §_-0M§:Dictionary;
      
      private var §_-Lq§:int;
      
      private var §_-Mq§:Boolean;
      
      private var §_-zR§:Number;
      
      private var §_-0b§:Number;
      
      private var §_-jt§:Number;
      
      private var §_-LF§:Number;
      
      private var §_-HE§:Number;
      
      private var §_-tk§:Number;
      
      private var §_-Vw§:Function;
      
      private var §_-W§:uint;
      
      private var §_-hR§:String;
      
      public function §_-yh§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§_-zR§ = param3.width;
         this.§_-0b§ = param3.height;
         this.§_-jt§ = this.§_-zR§;
         this.§_-LF§ = this.§_-0b§;
         this.§_-HE§ = param2.stageWidth;
         this.§_-tk§ = param2.stageHeight;
         this.§_-FL§ = param1;
         this.mViewPort = param3;
         this.mStage3D = param4;
         this.mStage = new §_-UX§.Stage(param3.width,param3.height,param2.color);
         this.§_-W§ = param2.color;
         this.§_-R8§ = param2;
         this.§_-mE§ = new §_-BA§(this.mStage);
         this.§_-VF§ = new §_-L-§();
         this.§_-GT§ = 0;
         this.§_-2X§ = false;
         this.§_-kb§ = false;
         this.§_-UR§ = getTimer() / 1000;
         this.§_-0M§ = new Dictionary();
         this.§_-TD§ = new §_-t2§();
         if(§_-sd§ == null)
         {
            this.§_-jv§();
         }
         var _loc6_:Array = !!Multitouch.supportsTouchEvents ? [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END] : [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
         for each(_loc7_ in _loc6_)
         {
            param2.addEventListener(_loc7_,this.§_-OU§,false,0,true);
         }
         param2.addEventListener(Event.ENTER_FRAME,this.§_-2f§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-YZ§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-YZ§,false,0,true);
         param2.addEventListener(Event.RESIZE,this.§_-nK§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-qv§,false,0,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-39§,false,0,true);
         this.§_-hR§ = param5;
      }
      
      public static function get §_-9E§() : int
      {
         return §_-1o§.§_-Lq§;
      }
      
      public static function get §_-Yt§() : Boolean
      {
         return §_-1o§.§_-Mq§;
      }
      
      public static function §_-gI§() : Boolean
      {
         return §_-gS§ != null && §_-gS§.driverInfo != "Disposed";
      }
      
      public static function get §_-1o§() : §_-yh§
      {
         return §_-sd§;
      }
      
      public static function get §_-gS§() : Context3D
      {
         return §_-sd§.§_-gS§;
      }
      
      public static function get §_-hY§() : §_-L-§
      {
         return §_-sd§.§_-hY§;
      }
      
      public static function get §_-gt§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-gt§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public function get stage() : §_-UX§.Stage
      {
         return this.mStage;
      }
      
      public function get §_-8N§() : §_-UX§.DisplayObject
      {
         return this.§_-wP§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-W§ = param1;
      }
      
      public function §_-V3§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§_-hR§);
         }
         catch(e:Error)
         {
            §_-Nz§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Program3D = null;
         for each(_loc1_ in this.§_-0M§)
         {
            _loc1_.dispose();
         }
         if(this.§_-gA§)
         {
            this.§_-gA§.dispose();
         }
         if(this.§_-mE§)
         {
            this.§_-mE§.dispose();
         }
      }
      
      private function §_-pe§() : void
      {
         this.§_-gA§ = this.mStage3D.context3D;
         this.§_-gA§.enableErrorChecking = this.§_-kb§;
         this.§_-gA§.setDepthTest(false,Context3DCompareMode.NEVER);
         this.§_-kv§();
         if(this.§_-gA§.driverInfo.indexOf("Software") >= 0)
         {
            this.§_-Mq§ = true;
         }
      }
      
      private function §_-7P§() : void
      {
         if(!§_-3k§)
         {
            §_-go§.§_-P5§(this);
            §_-2S§.§_-P5§(this);
            §_-3k§ = true;
         }
      }
      
      private function §_-Fe§() : void
      {
         if(this.§_-wP§ == null)
         {
            this.§_-wP§ = new this.§_-FL§();
         }
         if(this.§_-wP§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-FL§);
         }
         this.mStage.addChild(this.§_-wP§);
      }
      
      private function §_-kv§() : void
      {
         if(this.§_-gA§)
         {
            this.§_-gA§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-GT§,false);
         }
         this.mStage3D.x = this.mViewPort.x;
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         if(this.§_-gA§ == null || !§_-gI§())
         {
            return;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-UR§;
         this.§_-UR§ = _loc1_;
         this.mStage.§_-rp§(_loc2_);
         this.§_-VF§.§_-rp§(_loc2_);
         this.§_-mE§.§_-rp§(_loc2_);
         this.§_-TD§.§_-eu§(this.mStage.stageWidth,this.mStage.stageHeight);
         this.§_-TD§.§_-E7§(true);
         this.§_-TD§.clear(this.§_-W§,1);
         this.mStage.render(this.§_-TD§,1);
         if(this.§_-Vw§ != null)
         {
            this.§_-Vw§();
            this.§_-Vw§ = null;
         }
         this.§_-gA§.present();
         this.§_-TD§.§_-tS§();
      }
      
      public function set §_-Wf§(param1:Function) : void
      {
         this.§_-Vw§ = param1;
      }
      
      private function §_-pi§() : void
      {
         this.§_-4D§.x = this.mViewPort.x;
         this.§_-4D§.y = this.mViewPort.y;
         this.§_-4D§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
         this.§_-4D§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
         var _loc1_:int = this.§_-4D§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-4D§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-R8§.addChild(this.§_-4D§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-R8§.removeChild(this.§_-4D§);
         }
      }
      
      private function §_-Nz§(param1:String) : void
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
         this.§_-GK§.addChild(_loc2_);
      }
      
      public function §_-jv§() : void
      {
         §_-sd§ = this;
      }
      
      public function start() : void
      {
         this.§_-RZ§ = true;
      }
      
      public function stop() : void
      {
         this.§_-RZ§ = false;
      }
      
      private function §_-39§(param1:ErrorEvent) : void
      {
         this.§_-Nz§("This application is not correctly embedded (wrong wmode value)");
         throw new Error(param1.errorID,"This application is not correctly embedded (wrong wmode value)");
      }
      
      private function §_-qv§(param1:Event) : void
      {
         ++§_-hm§;
         this.§_-Lq§ = §_-hm§;
         this.§_-0M§ = new Dictionary();
         §_-3k§ = false;
         while(this.mStage.numChildren > 0)
         {
            this.mStage.removeChildAt(0);
         }
         this.§_-pe§();
         this.§_-7P§();
         this.§_-Fe§();
         this.§_-mE§.§_-QU§ = this.§_-2X§;
      }
      
      private function §_-2f§(param1:Event) : void
      {
         if(this.§_-4D§)
         {
            this.§_-pi§();
         }
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§_-UR§;
         if(this.§_-RZ§ || _loc3_ > 1)
         {
            this.render();
         }
      }
      
      private function §_-YZ§(param1:flash.events.KeyboardEvent) : void
      {
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-nK§(param1:Event) : void
      {
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         var _loc3_:Number = _loc2_.stageWidth / this.§_-HE§;
         var _loc4_:Number = _loc2_.stageHeight / this.§_-tk§;
         this.mStage.stageWidth = this.§_-jt§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-LF§;
         this.mStage.dispatchEvent(new §in §(Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
      }
      
      public function §_-5E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§_-zR§;
         var _loc4_:Number = param2 / this.§_-0b§;
         this.mStage.stageWidth = this.§_-zR§ * _loc3_ / _loc4_;
         this.mStage.stageHeight = this.§_-0b§;
         this.§_-jt§ = param1;
         this.§_-LF§ = param2;
         this.mStage.dispatchEvent(new §in §(Event.RESIZE,param1,param2));
      }
      
      public function §_-Uk§() : void
      {
         this.§_-5E§(this.§_-zR§,this.§_-0b§);
      }
      
      private function §_-OU§(param1:Event) : void
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
                  return §_-IZ§.§_-cZ§;
               case MouseEvent.MOUSE_UP:
                  return §_-IZ§.§_-b6§;
               case MouseEvent.MOUSE_MOVE:
                  return !!mouseEvent.buttonDown ? §_-IZ§.§_-Wx§ : §_-IZ§.§_-R-§;
               default:
                  return null;
            }
         };
         var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
         {
            switch(param1.type)
            {
               case TouchEvent.TOUCH_BEGIN:
                  return §_-IZ§.§_-cZ§;
               case TouchEvent.TOUCH_MOVE:
                  return §_-IZ§.§_-Wx§;
               case TouchEvent.TOUCH_END:
                  return §_-IZ§.§_-b6§;
               default:
                  return null;
            }
         };
         if(!this.§_-RZ§)
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
         if((position.x < this.mViewPort.left || position.x >= this.mViewPort.right || position.y < this.mViewPort.top || position.y >= this.mViewPort.bottom) && phase == §_-IZ§.§_-cZ§)
         {
            return;
         }
         this.§_-mE§.§_-et§(touchID,phase,position.x,position.y);
      }
      
      public function §_-ce§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         if(this.§_-0M§.hasOwnProperty(param1))
         {
            throw new Error("Another program with this name is already registered");
         }
         var _loc4_:Program3D;
         (_loc4_ = this.§_-gA§.createProgram()).upload(param2,param3);
         this.§_-0M§[param1] = _loc4_;
      }
      
      public function §_-OD§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-F8§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-0M§[param1];
         }
      }
      
      public function §_-F8§(param1:String) : Program3D
      {
         return this.§_-0M§[param1] as Program3D;
      }
      
      public function get §_-Mr§() : Boolean
      {
         return this.§_-RZ§;
      }
      
      public function get §_-hY§() : §_-L-§
      {
         return this.§_-VF§;
      }
      
      public function get §_-gS§() : Context3D
      {
         return this.§_-gA§;
      }
      
      public function get §_-QU§() : Boolean
      {
         return this.§_-2X§;
      }
      
      public function set §_-QU§(param1:Boolean) : void
      {
         this.§_-2X§ = param1;
         if(this.§_-gA§)
         {
            this.§_-mE§.§_-QU§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-kb§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-kb§ = param1;
         if(this.§_-gA§)
         {
            this.§_-gA§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-fh§() : int
      {
         return this.§_-GT§;
      }
      
      public function set §_-fh§(param1:int) : void
      {
         this.§_-GT§ = param1;
         this.§_-kv§();
      }
      
      public function get §_-F9§() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set §_-F9§(param1:Rectangle) : void
      {
         this.mViewPort = param1.clone();
         this.§_-kv§();
      }
      
      public function get §_-GK§() : Sprite
      {
         if(this.§_-4D§ == null)
         {
            this.§_-4D§ = new Sprite();
            this.§_-R8§.addChild(this.§_-4D§);
            this.§_-pi§();
         }
         return this.§_-4D§;
      }
   }
}
