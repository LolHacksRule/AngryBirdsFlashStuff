package §_-0Ea§
{
   import §_-Nq§.§_-RO§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Stage;
   import §_-z4§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.errors.IllegalOperationError;
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
   import flash.ui.ContextMenu;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§_-5E§;
   import starling.events.§_-HA§;
   import starling.events.§_-tW§;
   
   public class §_-AY§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §_-AO§:§_-AY§;
      
      private static var §_-mW§:Boolean;
      
      private static var §_-Q7§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §_-qN§:§_-uY§.Stage;
      
      private var §_-02e§:Class;
      
      private var §_-00B§:§_-uY§.DisplayObject;
      
      private var §_-mY§:§_-RO§;
      
      private var §_-Le§:Boolean;
      
      private var §_-u2§:Boolean;
      
      private var §_-xD§:§_-zM§;
      
      private var §_-WY§:§_-5E§;
      
      private var §_-4M§:int;
      
      private var §_-Sg§:Boolean;
      
      private var §_-05i§:Boolean;
      
      private var §_-tZ§:Number;
      
      private var §_-1s§:Rectangle;
      
      private var §else§:Boolean;
      
      private var §_-07F§:flash.display.Stage;
      
      private var §_-02N§:Sprite;
      
      private var §_-pr§:Context3D;
      
      private var §_-00j§:Dictionary;
      
      private var §_-zY§:int;
      
      private var §_-nL§:Boolean;
      
      private var §_-09§:Number;
      
      private var §_-Cx§:Number;
      
      private var §_-ka§:Number;
      
      private var §_-Aa§:Number;
      
      private var §_-vq§:Number;
      
      private var §_-1Z§:Number;
      
      private var §_-7s§:Function;
      
      private var §_-Un§:uint;
      
      private var §_-Kc§:String;
      
      private var §_-NI§:Bitmap;
      
      private var §_-VR§:Boolean = false;
      
      private var §_-03r§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §_-W4§:Boolean = false;
      
      public function §_-AY§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc6_:String = null;
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
         this.§_-09§ = param3.width;
         this.§_-Cx§ = param3.height;
         this.§_-ka§ = this.§_-09§;
         this.§_-Aa§ = this.§_-Cx§;
         this.§_-vq§ = param2.stageWidth;
         this.§_-1Z§ = param2.stageHeight;
         §_-B4§ = true;
         this.§_-0D§();
         this.§_-02e§ = param1;
         this.§_-1s§ = param3;
         this.mStage3D = param4;
         this.§_-qN§ = new §_-uY§.Stage(param3.width,param3.height,param2.color);
         this.§_-07F§ = param2;
         this.§_-WY§ = new §_-5E§(this.§_-qN§);
         this.§_-mY§ = new §_-RO§();
         this.§_-4M§ = 0;
         this.§_-Sg§ = false;
         this.§_-05i§ = false;
         this.§_-tZ§ = getTimer() / 1000;
         this.§_-00j§ = new Dictionary();
         for each(_loc6_ in this.§_-ig§)
         {
            param2.addEventListener(_loc6_,this.§_-04d§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-00r§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-00r§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§_-Hs§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-Pf§,false,1,true);
         this.mStage3D.visible = false;
         this.§_-fQ§(true);
         this.§_-Un§ = param2.color;
         this.§_-Kc§ = param5;
      }
      
      public static function get §_-H3§() : Boolean
      {
         if(§_-un§)
         {
            return §_-un§.§_-nL§;
         }
         return true;
      }
      
      public static function §_-Ow§() : Boolean
      {
         return §_-AO§ && (§_-AO§.§_-VR§ || §_-AO§.§_-pr§ != null && §_-AO§.§_-pr§.driverInfo != "Disposed");
      }
      
      public static function get §_-un§() : §_-AY§
      {
         return §_-AO§;
      }
      
      public static function get §_-CK§() : §_-RO§
      {
         return !!§_-AO§ ? §_-AO§.§_-CK§ : null;
      }
      
      public static function get §_-re§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-re§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §_-B4§() : Boolean
      {
         return §_-mW§;
      }
      
      public static function set §_-B4§(param1:Boolean) : void
      {
         if(§_-AO§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §_-mW§ = param1;
      }
      
      public static function §_-0-D§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§_-un§)
         {
            return Texture.§_-06W§(§_-un§.§_-pr§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§_-AO§.§_-pr§)
         {
            §_-AO§.§_-pr§.drawToBitmapData(param1);
         }
         else if(§_-AO§.§_-xD§.canvas)
         {
            _loc2_ = §_-AO§.§_-xD§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §_-Uz§() : §_-uY§.DisplayObject
      {
         return this.§_-00B§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-Un§ = param1;
      }
      
      public function get §_-0-8§() : Number
      {
         return this.§_-09§;
      }
      
      public function get §_-03j§() : Number
      {
         return this.§_-Cx§;
      }
      
      public function §_-uN§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§_-Kc§);
         }
         catch(e:Error)
         {
            §_-c7§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§_-W4§ = true;
         this.§_-07F§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-00r§,false);
         this.§_-07F§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-00r§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§_-Hs§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§_-Pf§,false);
         for each(_loc1_ in this.§_-ig§)
         {
            this.§_-07F§.removeEventListener(_loc1_,this.§_-04d§,false);
         }
         for each(_loc2_ in this.§_-00j§)
         {
            _loc2_.dispose();
         }
         if(this.§_-pr§)
         {
            this.§_-pr§.dispose();
         }
         if(this.§_-WY§)
         {
            this.§_-WY§.dispose();
         }
         if(this.§_-xD§)
         {
            this.§_-xD§.dispose();
         }
         if(§_-AO§ == this)
         {
            §_-AO§ = null;
         }
         if(this.§_-NI§ && this.§_-NI§.bitmapData)
         {
            this.§_-NI§.bitmapData.dispose();
            this.§_-NI§.bitmapData = null;
         }
      }
      
      private function §_-1r§() : void
      {
         this.§_-pr§ = this.mStage3D.context3D;
         this.§_-00j§ = new Dictionary();
         if(this.§_-pr§)
         {
            this.§_-pr§.enableErrorChecking = this.§_-05i§;
            if(this.§_-pr§.driverInfo.indexOf("Software") >= 0)
            {
               this.§_-nL§ = true;
            }
         }
         else
         {
            this.§_-nL§ = true;
         }
         this.§_-Rm§();
      }
      
      private function §_-5f§() : void
      {
         if(this.§_-qN§.numChildren > 0)
         {
            return;
         }
         if(this.§_-00B§ == null)
         {
            this.§_-00B§ = new this.§_-02e§();
         }
         if(this.§_-00B§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-02e§);
         }
         this.§_-qN§.addChild(this.§_-00B§);
      }
      
      private function §_-Rm§() : void
      {
         this.§_-03r§ = true;
         this.mStage3D.x = this.§_-1s§.x;
         this.mStage3D.y = this.§_-1s§.y;
      }
      
      private function render() : void
      {
         if(!§_-Ow§())
         {
            return;
         }
         if(this.§_-03r§)
         {
            if(this.§_-pr§)
            {
               this.§_-pr§.configureBackBuffer(this.§_-1s§.width,this.§_-1s§.height,this.§_-4M§,false);
            }
            this.§_-03r§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-tZ§;
         this.§_-tZ§ = _loc1_;
         this.§_-qN§.advanceTime(_loc2_);
         this.§_-mY§.advanceTime(_loc2_);
         this.§_-WY§.advanceTime(_loc2_);
         this.§_-xD§.§_-hh§(this.§_-qN§.stageWidth,this.§_-qN§.stageHeight);
         this.§_-xD§.clear(this.§_-pr§,this.§_-Un§,1);
         this.§_-xD§.§_-l7§(this.§_-pr§,this.§_-zY§);
         this.§_-qN§.render(this.§_-xD§,1);
         this.§_-xD§.§_-oR§();
         if(this.§_-7s§ != null)
         {
            this.§_-7s§();
            this.§_-7s§ = null;
         }
         this.§_-xD§.finishRendering(this.§_-pr§);
         this.§_-xD§.§_-zz§();
      }
      
      public function set §_-NL§(param1:Function) : void
      {
         this.§_-7s§ = param1;
      }
      
      private function §_-ui§() : void
      {
         var _loc3_:BitmapData = null;
         this.§_-02N§.x = this.§_-1s§.x;
         this.§_-02N§.y = this.§_-1s§.y;
         var _loc1_:int = this.§_-02N§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-02N§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-07F§.addChild(this.§_-02N§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-07F§.removeChild(this.§_-02N§);
         }
         if(this.§_-xD§ && this.§_-xD§.canvas)
         {
            this.§_-xD§.setCanvasSize(this.§_-ka§,this.§_-Aa§,this.§_-1s§.width / this.§_-qN§.stageWidth,this.§_-1s§.height / this.§_-qN§.stageHeight);
            _loc3_ = this.§_-xD§.canvas;
            if(this.§_-NI§.bitmapData != _loc3_)
            {
               this.§_-NI§.bitmapData = _loc3_;
            }
            if(this.§_-07F§.getChildIndex(this.§_-02N§) > 0)
            {
               this.§_-07F§.removeChild(this.§_-02N§);
               this.§_-07F§.addChildAt(this.§_-02N§,0);
            }
         }
      }
      
      private function §_-c7§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§_-qN§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§_-qN§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§_-qN§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§_-gX§.addChild(_loc2_);
      }
      
      public function §_-0D§() : void
      {
         §_-AO§ = this;
      }
      
      public function start() : void
      {
         this.§_-Le§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§_-Le§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §_-fQ§(param1:Boolean) : void
      {
         this.§_-u2§ = param1;
      }
      
      private function §_-Bh§() : void
      {
         this.§_-VR§ = true;
         if(this.§_-NI§ == null)
         {
            this.§_-NI§ = new Bitmap();
            this.§_-gX§.addChild(this.§_-NI§);
         }
      }
      
      private function §_-Pf§(param1:ErrorEvent) : void
      {
         this.§_-Bh§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §_-Hs§(param1:flash.events.Event) : void
      {
         if(this.§_-W4§)
         {
            return;
         }
         ++§_-Q7§;
         this.§_-zY§ = §_-Q7§;
         if(this.§_-xD§)
         {
            this.§_-xD§.dispose();
         }
         if(!§_-AY§.§_-B4§ && this.§_-pr§)
         {
            this.§_-c7§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§_-0D§();
         this.§_-1r§();
         this.§_-5f§();
         if(this.§_-pr§ && this.§_-nL§)
         {
            this.mStage3DEnabled = false;
            this.§_-pr§ = null;
            this.§_-Bh§();
         }
         if(this.§_-pr§)
         {
            this.§_-xD§ = new §_-zM§();
         }
         else
         {
            this.§_-xD§ = new §_-rZ§();
            this.§_-xD§.setCanvasSize(this.§_-ka§,this.§_-Aa§,this.§_-1s§.width / this.§_-qN§.stageWidth,this.§_-1s§.height / this.§_-qN§.stageHeight);
            this.§_-xD§.clear(null,this.§_-Un§);
         }
         this.§_-WY§.§_-0J§ = this.§_-Sg§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§_-0D§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§_-tZ§;
         if(this.§_-Le§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§_-02N§)
         {
            this.§_-ui§();
         }
      }
      
      private function §_-00r§(param1:flash.events.KeyboardEvent) : void
      {
         this.§_-0D§();
         this.§_-qN§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§_-09§;
         var _loc5_:Number = param2 / this.§_-Cx§;
         if(!param3)
         {
            this.§_-qN§.stageWidth = this.§_-09§ * _loc4_ / _loc5_;
            this.§_-qN§.stageHeight = this.§_-Cx§;
         }
         else
         {
            this.§_-qN§.stageWidth = this.§_-09§;
            this.§_-qN§.stageHeight = this.§_-Cx§ * _loc5_ / _loc4_;
         }
         this.§_-ka§ = param1;
         this.§_-Aa§ = param2;
         this.§_-qN§.dispatchEvent(new §_-HA§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §_-P7§() : void
      {
         this.setCanvasSize(this.§_-09§,this.§_-Cx§);
      }
      
      private function §_-04d§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§_-Le§ || !this.§_-u2§)
         {
            return;
         }
         if(param1 is MouseEvent)
         {
            _loc2_ = (_loc6_ = param1 as MouseEvent).stageX;
            _loc3_ = _loc6_.stageY;
            _loc4_ = 0;
            if(param1.type == MouseEvent.MOUSE_DOWN)
            {
               this.§else§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§else§ = false;
            }
         }
         else
         {
            _loc2_ = (_loc7_ = param1 as TouchEvent).stageX;
            _loc3_ = _loc7_.stageY;
            _loc4_ = _loc7_.touchPointID;
         }
         switch(param1.type)
         {
            case TouchEvent.TOUCH_BEGIN:
               _loc5_ = §_-tW§.§_-h4§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §_-tW§.§_-Ua§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §_-tW§.§_-0Cc§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §_-tW§.§_-h4§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §_-tW§.§_-0Cc§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§else§ ? §_-tW§.§_-Ua§ : §_-tW§.§for §;
         }
         if((_loc2_ < this.§_-1s§.left || _loc2_ >= this.§_-1s§.right || _loc3_ < this.§_-1s§.top || _loc3_ >= this.§_-1s§.bottom) && _loc5_ == §_-tW§.§_-h4§)
         {
            return;
         }
         _loc2_ -= this.§_-1s§.x;
         _loc3_ -= this.§_-1s§.y;
         this.§_-WY§.§_-f1§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §_-ig§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §_-XF§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§_-00j§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§_-pr§ != null)
         {
            (_loc4_ = this.§_-pr§.createProgram()).upload(param2,param3);
            this.§_-00j§[param1] = _loc4_;
         }
      }
      
      public function §_-wI§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-NB§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-00j§[param1];
         }
      }
      
      public function §_-NB§(param1:String) : Program3D
      {
         return this.§_-00j§[param1] as Program3D;
      }
      
      public function §_-TJ§(param1:String) : Boolean
      {
         return param1 in this.§_-00j§;
      }
      
      public function get §_-lx§() : Boolean
      {
         return this.§_-Le§;
      }
      
      public function get §_-CK§() : §_-RO§
      {
         return this.§_-mY§;
      }
      
      public function get §_-0J§() : Boolean
      {
         return this.§_-Sg§;
      }
      
      public function set §_-0J§(param1:Boolean) : void
      {
         this.§_-Sg§ = param1;
         if(this.§_-pr§)
         {
            this.§_-WY§.§_-0J§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-05i§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-05i§ = param1;
         if(this.§_-pr§)
         {
            this.§_-pr§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-SU§() : int
      {
         return this.§_-4M§;
      }
      
      public function set §_-SU§(param1:int) : void
      {
         this.§_-4M§ = param1;
         this.§_-Rm§();
      }
      
      public function get §_-Lj§() : Rectangle
      {
         return this.§_-1s§.clone();
      }
      
      public function set §_-Lj§(param1:Rectangle) : void
      {
         this.§_-1s§ = param1.clone();
         this.§_-Rm§();
      }
      
      public function get §_-gX§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§_-02N§ == null)
         {
            this.§_-02N§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§_-02N§.contextMenu = _loc1_;
            this.§_-ui§();
         }
         return this.§_-02N§;
      }
      
      public function get stage() : §_-uY§.Stage
      {
         return this.§_-qN§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §_-005§() : flash.display.Stage
      {
         return this.§_-07F§;
      }
      
      public function get §_-M7§() : Boolean
      {
         return !this.§_-VR§;
      }
   }
}
