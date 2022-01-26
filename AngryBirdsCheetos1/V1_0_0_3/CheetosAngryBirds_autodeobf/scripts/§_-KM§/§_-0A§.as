package §_-KM§
{
   import §_-aD§.§_-nW§;
   import §_-dY§.§_-00e§;
   import §_-i9§.Texture;
   import §case §.DisplayObject;
   import §case §.Stage;
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
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§_-NE§;
   import starling.events.§_-fL§;
   import starling.events.§_-xN§;
   
   public class §_-0A§ extends EventDispatcher implements §_-nW§
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §_-fj§:§_-0A§;
      
      private static var §_-xC§:Boolean;
      
      private static var §_-T1§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §_-aX§:§case §.Stage;
      
      private var §_-i3§:Class;
      
      private var §_-00t§:§case §.DisplayObject;
      
      private var §_-ZM§:§_-00e§;
      
      private var §_-3g§:Boolean;
      
      private var §_-RU§:Boolean;
      
      private var §_-Lq§:§_-H9§;
      
      private var §_-8b§:§_-fL§;
      
      private var §_-3U§:int;
      
      private var §_-Dh§:Boolean;
      
      private var §_-yk§:Boolean;
      
      private var §_-Hp§:Number;
      
      private var §_-SK§:Rectangle;
      
      private var §_-yi§:Boolean;
      
      private var §_-GB§:flash.display.Stage;
      
      private var §_-hD§:Sprite;
      
      private var §_-M6§:Context3D;
      
      private var §_-IS§:Dictionary;
      
      private var §_-kl§:int;
      
      private var §_-Kj§:Boolean;
      
      private var §_-2Y§:Number;
      
      private var §_-dq§:Number;
      
      private var §_-4§:Number;
      
      private var §each §:Number;
      
      private var §_-Nq§:Number;
      
      private var §_-00G§:Number;
      
      private var §_-0-S§:Function;
      
      private var §_-iw§:uint;
      
      private var §_-DP§:String;
      
      private var §_-B1§:Bitmap;
      
      private var §_-iv§:Boolean = false;
      
      private var §_-gD§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §_-mc§:Boolean = false;
      
      public function §_-0A§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§_-2Y§ = param3.width;
         this.§_-dq§ = param3.height;
         this.§_-4§ = this.§_-2Y§;
         this.§each § = this.§_-dq§;
         this.§_-Nq§ = param2.stageWidth;
         this.§_-00G§ = param2.stageHeight;
         §_-CZ§ = true;
         this.§_-Di§();
         this.§_-i3§ = param1;
         this.§_-SK§ = param3;
         this.mStage3D = param4;
         this.§_-aX§ = new §case §.Stage(param3.width,param3.height,param2.color);
         this.§_-GB§ = param2;
         this.§_-8b§ = new §_-fL§(this.§_-aX§);
         this.§_-ZM§ = new §_-00e§();
         this.§_-3U§ = 0;
         this.§_-Dh§ = false;
         this.§_-yk§ = false;
         this.§_-Hp§ = getTimer() / 1000;
         this.§_-IS§ = new Dictionary();
         for each(_loc6_ in this.§_-L5§)
         {
            param2.addEventListener(_loc6_,this.§_-xA§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-VV§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-VV§,false,0,true);
         param2.addEventListener(flash.events.Event.RESIZE,this.§_-009§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§_-DW§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-mH§,false,1,true);
         this.mStage3D.visible = false;
         this.§_-kw§(true);
         this.§_-DP§ = param5;
      }
      
      public static function get §_-lj§() : Boolean
      {
         if(§_-bz§)
         {
            return §_-bz§.§_-Kj§;
         }
         return true;
      }
      
      public static function §_-bT§() : Boolean
      {
         return §_-fj§ && (§_-fj§.§_-iv§ || §_-fj§.§_-M6§ != null && §_-fj§.§_-M6§.driverInfo != "Disposed");
      }
      
      public static function get §_-bz§() : §_-0A§
      {
         return §_-fj§;
      }
      
      public static function get §with§() : §_-00e§
      {
         return !!§_-fj§ ? §_-fj§.§with§ : null;
      }
      
      public static function get §_-av§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-av§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §_-CZ§() : Boolean
      {
         return §_-xC§;
      }
      
      public static function set §_-CZ§(param1:Boolean) : void
      {
         if(§_-fj§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §_-xC§ = param1;
      }
      
      public static function §_-yP§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§_-bz§)
         {
            return Texture.§_-qA§(§_-bz§.§_-M6§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§_-fj§.§_-M6§)
         {
            §_-fj§.§_-M6§.drawToBitmapData(param1);
         }
         else if(§_-fj§.§_-Lq§.canvas)
         {
            _loc2_ = §_-fj§.§_-Lq§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §_-Ca§() : §case §.DisplayObject
      {
         return this.§_-00t§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-iw§ = param1;
      }
      
      public function get §_-Sb§() : Number
      {
         return this.§_-2Y§;
      }
      
      public function get §_-13§() : Number
      {
         return this.§_-dq§;
      }
      
      public function §_-IC§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§_-DP§);
         }
         catch(e:Error)
         {
            §_-pa§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§_-mc§ = true;
         this.§_-GB§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-VV§,false);
         this.§_-GB§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-VV§,false);
         this.§_-GB§.removeEventListener(flash.events.Event.RESIZE,this.§_-009§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§_-DW§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§_-mH§,false);
         for each(_loc1_ in this.§_-L5§)
         {
            this.§_-GB§.removeEventListener(_loc1_,this.§_-xA§,false);
         }
         for each(_loc2_ in this.§_-IS§)
         {
            _loc2_.dispose();
         }
         if(this.§_-M6§)
         {
            this.§_-M6§.dispose();
         }
         if(this.§_-8b§)
         {
            this.§_-8b§.dispose();
         }
         if(this.§_-Lq§)
         {
            this.§_-Lq§.dispose();
         }
         if(§_-fj§ == this)
         {
            §_-fj§ = null;
         }
         if(this.§_-B1§ && this.§_-B1§.bitmapData)
         {
            this.§_-B1§.bitmapData.dispose();
            this.§_-B1§.bitmapData = null;
         }
      }
      
      private function §_-P5§() : void
      {
         this.§_-M6§ = this.mStage3D.context3D;
         this.§_-IS§ = new Dictionary();
         if(this.§_-M6§)
         {
            this.§_-M6§.enableErrorChecking = this.§_-yk§;
            if(this.§_-M6§.driverInfo.indexOf("Software") >= 0)
            {
               this.§_-Kj§ = true;
            }
         }
         else
         {
            this.§_-Kj§ = true;
         }
         this.§_-5W§();
      }
      
      private function §_-Aa§() : void
      {
         if(this.§_-aX§.numChildren > 0)
         {
            return;
         }
         if(this.§_-00t§ == null)
         {
            this.§_-00t§ = new this.§_-i3§();
         }
         if(this.§_-00t§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-i3§);
         }
         this.§_-aX§.addChild(this.§_-00t§);
      }
      
      private function §_-5W§() : void
      {
         this.§_-gD§ = true;
         this.mStage3D.x = this.§_-SK§.x;
         this.mStage3D.y = this.§_-SK§.y;
      }
      
      private function render() : void
      {
         if(!§_-bT§())
         {
            return;
         }
         if(this.§_-gD§)
         {
            if(this.§_-M6§)
            {
               this.§_-M6§.configureBackBuffer(this.§_-SK§.width,this.§_-SK§.height,this.§_-3U§,false);
            }
            this.§_-gD§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-Hp§;
         this.§_-Hp§ = _loc1_;
         this.§_-aX§.advanceTime(_loc2_);
         this.§_-ZM§.advanceTime(_loc2_);
         this.§_-8b§.advanceTime(_loc2_);
         this.§_-Lq§.§_-1u§(this.§_-aX§.stageWidth,this.§_-aX§.stageHeight);
         this.§_-Lq§.clear(this.§_-M6§,this.§_-iw§,1);
         this.§_-Lq§.§_-k8§(this.§_-M6§,this.§_-kl§);
         this.§_-aX§.render(this.§_-Lq§,1);
         this.§_-Lq§.§_-Pd§();
         if(this.§_-0-S§ != null)
         {
            this.§_-0-S§();
            this.§_-0-S§ = null;
         }
         this.§_-Lq§.finishRendering(this.§_-M6§);
         this.§_-Lq§.§_-ld§();
      }
      
      public function set §_-Ky§(param1:Function) : void
      {
         this.§_-0-S§ = param1;
      }
      
      private function §_-ce§() : void
      {
         var _loc3_:BitmapData = null;
         this.§_-hD§.x = this.§_-SK§.x;
         this.§_-hD§.y = this.§_-SK§.y;
         var _loc1_:int = this.§_-hD§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-hD§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-GB§.addChild(this.§_-hD§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-GB§.removeChild(this.§_-hD§);
         }
         if(this.§_-Lq§ && this.§_-Lq§.canvas)
         {
            this.§_-Lq§.setCanvasSize(this.§_-4§,this.§each §,this.§_-SK§.width / this.§_-aX§.stageWidth,this.§_-SK§.height / this.§_-aX§.stageHeight);
            _loc3_ = this.§_-Lq§.canvas;
            if(this.§_-B1§.bitmapData != _loc3_)
            {
               this.§_-B1§.bitmapData = _loc3_;
            }
            if(this.§_-GB§.getChildIndex(this.§_-hD§) > 0)
            {
               this.§_-GB§.removeChild(this.§_-hD§);
               this.§_-GB§.addChildAt(this.§_-hD§,0);
            }
         }
      }
      
      private function §_-pa§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§_-aX§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§_-aX§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§_-aX§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§_-Gr§.addChild(_loc2_);
      }
      
      public function §_-Di§() : void
      {
         §_-fj§ = this;
      }
      
      public function start() : void
      {
         this.§_-3g§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§_-3g§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §_-kw§(param1:Boolean) : void
      {
         this.§_-RU§ = param1;
      }
      
      private function §_-0Q§() : void
      {
         this.§_-iv§ = true;
         if(this.§_-B1§ == null)
         {
            this.§_-B1§ = new Bitmap();
            this.§_-Gr§.addChild(this.§_-B1§);
         }
      }
      
      private function §_-mH§(param1:ErrorEvent) : void
      {
         this.§_-0Q§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §_-DW§(param1:flash.events.Event) : void
      {
         if(this.§_-mc§)
         {
            return;
         }
         ++§_-T1§;
         this.§_-kl§ = §_-T1§;
         if(this.§_-Lq§)
         {
            this.§_-Lq§.dispose();
         }
         if(!§_-0A§.§_-CZ§ && this.§_-M6§)
         {
            this.§_-pa§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§_-Di§();
         this.§_-P5§();
         this.§_-Aa§();
         if(this.§_-M6§ && this.§_-Kj§)
         {
            this.mStage3DEnabled = false;
            this.§_-M6§ = null;
            this.§_-0Q§();
         }
         if(this.§_-M6§)
         {
            this.§_-Lq§ = new §_-H9§();
         }
         else
         {
            this.§_-Lq§ = new §_-T3§();
            this.§_-Lq§.setCanvasSize(this.§_-4§,this.§each §,this.§_-SK§.width / this.§_-aX§.stageWidth,this.§_-SK§.height / this.§_-aX§.stageHeight);
            this.§_-Lq§.clear(null,this.§_-iw§);
         }
         this.§_-8b§.§_-B9§ = this.§_-Dh§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §_-qE§() : void
      {
         this.§_-Di§();
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-Hp§;
         if(this.§_-3g§ || _loc2_ > 1)
         {
            this.render();
         }
         if(this.§_-hD§)
         {
            this.§_-ce§();
         }
      }
      
      private function §_-VV§(param1:flash.events.KeyboardEvent) : void
      {
         this.§_-Di§();
         this.§_-aX§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-009§(param1:flash.events.Event) : void
      {
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         this.§_-aX§.dispatchEvent(new §_-xN§(flash.events.Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§_-2Y§;
         var _loc5_:Number = param2 / this.§_-dq§;
         if(!param3)
         {
            this.§_-aX§.stageWidth = this.§_-2Y§ * _loc4_ / _loc5_;
            this.§_-aX§.stageHeight = this.§_-dq§;
         }
         else
         {
            this.§_-aX§.stageWidth = this.§_-2Y§;
            this.§_-aX§.stageHeight = this.§_-dq§ * _loc5_ / _loc4_;
         }
         this.§_-4§ = param1;
         this.§each § = param2;
         this.§_-aX§.dispatchEvent(new §_-xN§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §_-VI§() : void
      {
         this.setCanvasSize(this.§_-2Y§,this.§_-dq§);
      }
      
      private function §_-xA§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§_-3g§ || !this.§_-RU§)
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
               this.§_-yi§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§_-yi§ = false;
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
               _loc5_ = §_-NE§.§_-vw§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §_-NE§.§_-L2§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §_-NE§.§_-7A§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §_-NE§.§_-vw§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §_-NE§.§_-7A§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§_-yi§ ? §_-NE§.§_-L2§ : §_-NE§.§_-eT§;
         }
         if((_loc2_ < this.§_-SK§.left || _loc2_ >= this.§_-SK§.right || _loc3_ < this.§_-SK§.top || _loc3_ >= this.§_-SK§.bottom) && _loc5_ == §_-NE§.§_-vw§)
         {
            return;
         }
         _loc2_ -= this.§_-SK§.x;
         _loc3_ -= this.§_-SK§.y;
         this.§_-8b§.§_-0f§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §_-L5§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §_-hg§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§_-IS§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§_-M6§ != null)
         {
            (_loc4_ = this.§_-M6§.createProgram()).upload(param2,param3);
            this.§_-IS§[param1] = _loc4_;
         }
      }
      
      public function §_-Ia§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-0-w§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-IS§[param1];
         }
      }
      
      public function §_-0-w§(param1:String) : Program3D
      {
         return this.§_-IS§[param1] as Program3D;
      }
      
      public function §_-oX§(param1:String) : Boolean
      {
         return param1 in this.§_-IS§;
      }
      
      public function get §_-2U§() : Boolean
      {
         return this.§_-3g§;
      }
      
      public function get §with§() : §_-00e§
      {
         return this.§_-ZM§;
      }
      
      public function get §_-B9§() : Boolean
      {
         return this.§_-Dh§;
      }
      
      public function set §_-B9§(param1:Boolean) : void
      {
         this.§_-Dh§ = param1;
         if(this.§_-M6§)
         {
            this.§_-8b§.§_-B9§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-yk§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-yk§ = param1;
         if(this.§_-M6§)
         {
            this.§_-M6§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-yl§() : int
      {
         return this.§_-3U§;
      }
      
      public function set §_-yl§(param1:int) : void
      {
         this.§_-3U§ = param1;
         this.§_-5W§();
      }
      
      public function get §_-Nw§() : Rectangle
      {
         return this.§_-SK§.clone();
      }
      
      public function set §_-Nw§(param1:Rectangle) : void
      {
         this.§_-SK§ = param1.clone();
         this.§_-5W§();
      }
      
      public function get §_-Gr§() : Sprite
      {
         if(this.§_-hD§ == null)
         {
            this.§_-hD§ = new Sprite();
            this.§_-ce§();
         }
         return this.§_-hD§;
      }
      
      public function get stage() : §case §.Stage
      {
         return this.§_-aX§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §_-My§() : flash.display.Stage
      {
         return this.§_-GB§;
      }
      
      public function get §_-0--§() : Boolean
      {
         return !this.§_-iv§;
      }
   }
}
