package §>Q§
{
   import § !9§.Texture;
   import §=R§.§'!U§;
   import §[=§.DisplayObject;
   import §[=§.Stage;
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
   import starling.events.§!!$§;
   import starling.events.§9A§;
   import starling.events.§9T§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §5!5§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §6#§:§5!5§;
      
      private static var §<A§:Boolean;
      
      private static var §7!Y§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §8I§:§[=§.Stage;
      
      private var § !K§:Class;
      
      private var §]Z§:§[=§.DisplayObject;
      
      private var § e§:§'!U§;
      
      private var §]!=§:Boolean;
      
      private var §"X§:Boolean;
      
      private var §@!a§:§<!%§;
      
      private var §'!T§:§!!$§;
      
      private var §-!G§:int;
      
      private var §3!S§:Boolean;
      
      private var §!T§:Boolean;
      
      private var §07§:Number;
      
      private var §>B§:Rectangle;
      
      private var § C§:Boolean;
      
      private var §const§:flash.display.Stage;
      
      private var §8Y§:Sprite;
      
      private var §49§:Context3D;
      
      private var §3!Y§:Dictionary;
      
      private var § !%§:int;
      
      private var §%!d§:Boolean;
      
      private var §0M§:Number;
      
      private var §40§:Number;
      
      private var §2!B§:Number;
      
      private var §@8§:Number;
      
      private var §!b§:Number;
      
      private var §?!6§:Number;
      
      private var §with§:Function;
      
      private var §=![§:uint;
      
      private var §<;§:String;
      
      private var §<6§:Bitmap;
      
      private var §<d§:Boolean = false;
      
      private var §7j§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §"v§:Boolean = false;
      
      public function §5!5§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§0M§ = param3.width;
         this.§40§ = param3.height;
         this.§2!B§ = this.§0M§;
         this.§@8§ = this.§40§;
         this.§!b§ = param2.stageWidth;
         this.§?!6§ = param2.stageHeight;
         §#b§ = true;
         this.§6!W§();
         this.§ !K§ = param1;
         this.§>B§ = param3;
         this.mStage3D = param4;
         this.§8I§ = new §[=§.Stage(param3.width,param3.height,param2.color);
         this.§const§ = param2;
         this.§'!T§ = new §!!$§(this.§8I§);
         this.§ e§ = new §'!U§();
         this.§-!G§ = 0;
         this.§3!S§ = false;
         this.§!T§ = false;
         this.§07§ = getTimer() / 1000;
         this.§3!Y§ = new Dictionary();
         for each(_loc6_ in this.§0T§)
         {
            param2.addEventListener(_loc6_,this.§7S§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[k§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[k§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§?!D§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§[!_§,false,1,true);
         this.mStage3D.visible = false;
         this.§9!K§(true);
         this.§=![§ = param2.color;
         this.§<;§ = param5;
      }
      
      public static function get §-!+§() : Boolean
      {
         if(§5F§)
         {
            return §5F§.§%!d§;
         }
         return true;
      }
      
      public static function override() : Boolean
      {
         return §6#§ && (§6#§.§<d§ || §6#§.§49§ != null && §6#§.§49§.driverInfo != "Disposed");
      }
      
      public static function get §5F§() : §5!5§
      {
         return §6#§;
      }
      
      public static function get §!J§() : §'!U§
      {
         return !!§6#§ ? §6#§.§!J§ : null;
      }
      
      public static function get §?d§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §?d§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §#b§() : Boolean
      {
         return §<A§;
      }
      
      public static function set §#b§(param1:Boolean) : void
      {
         if(§6#§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §<A§ = param1;
      }
      
      public static function § ! §(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§5F§)
         {
            return Texture.§-_§(§5F§.§49§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§6#§.§49§)
         {
            §6#§.§49§.drawToBitmapData(param1);
         }
         else if(§6#§.§@!a§.canvas)
         {
            _loc2_ = §6#§.§@!a§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §5C§() : §[=§.DisplayObject
      {
         return this.§]Z§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§=![§ = param1;
      }
      
      public function get §"!%§() : Number
      {
         return this.§0M§;
      }
      
      public function get §;H§() : Number
      {
         return this.§40§;
      }
      
      public function §[x§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§<;§);
         }
         catch(e:Error)
         {
            §8!1§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§"v§ = true;
         this.§const§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[k§,false);
         this.§const§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[k§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§?!D§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§[!_§,false);
         for each(_loc1_ in this.§0T§)
         {
            this.§const§.removeEventListener(_loc1_,this.§7S§,false);
         }
         for each(_loc2_ in this.§3!Y§)
         {
            _loc2_.dispose();
         }
         if(this.§49§)
         {
            this.§49§.dispose();
         }
         if(this.§'!T§)
         {
            this.§'!T§.dispose();
         }
         if(this.§@!a§)
         {
            this.§@!a§.dispose();
         }
         if(§6#§ == this)
         {
            §6#§ = null;
         }
         if(this.§<6§ && this.§<6§.bitmapData)
         {
            this.§<6§.bitmapData.dispose();
            this.§<6§.bitmapData = null;
         }
      }
      
      private function §+!Q§() : void
      {
         this.§49§ = this.mStage3D.context3D;
         this.§3!Y§ = new Dictionary();
         if(this.§49§)
         {
            this.§49§.enableErrorChecking = this.§!T§;
            if(this.§49§.driverInfo.indexOf("Software") >= 0)
            {
               this.§%!d§ = true;
            }
         }
         else
         {
            this.§%!d§ = true;
         }
         this.§6L§();
      }
      
      private function §]4§() : void
      {
         if(this.§8I§.numChildren > 0)
         {
            return;
         }
         if(this.§]Z§ == null)
         {
            this.§]Z§ = new this.§ !K§();
         }
         if(this.§]Z§ == null)
         {
            throw new Error("Invalid root class: " + this.§ !K§);
         }
         this.§8I§.addChild(this.§]Z§);
      }
      
      private function §6L§() : void
      {
         this.§7j§ = true;
         this.mStage3D.x = this.§>B§.x;
         this.mStage3D.y = this.§>B§.y;
      }
      
      private function render() : void
      {
         if(!override())
         {
            return;
         }
         if(this.§7j§)
         {
            if(this.§49§)
            {
               this.§49§.configureBackBuffer(this.§>B§.width,this.§>B§.height,this.§-!G§,false);
            }
            this.§7j§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§07§;
         this.§07§ = _loc1_;
         this.§8I§.advanceTime(_loc2_);
         this.§ e§.advanceTime(_loc2_);
         this.§'!T§.advanceTime(_loc2_);
         this.§@!a§.§ !-§(this.§8I§.stageWidth,this.§8I§.stageHeight);
         this.§@!a§.clear(this.§49§,this.§=![§,1);
         this.§@!a§.§3!^§(this.§49§,this.§ !%§);
         this.§8I§.render(this.§@!a§,1);
         this.§@!a§.§"$§();
         if(this.§with§ != null)
         {
            this.§with§();
            this.§with§ = null;
         }
         this.§@!a§.finishRendering(this.§49§);
         this.§@!a§.§ !A§();
      }
      
      public function set §21§(param1:Function) : void
      {
         this.§with§ = param1;
      }
      
      private function §76§() : void
      {
         var _loc3_:BitmapData = null;
         this.§8Y§.x = this.§>B§.x;
         this.§8Y§.y = this.§>B§.y;
         var _loc1_:int = this.§8Y§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§8Y§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§const§.addChild(this.§8Y§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§const§.removeChild(this.§8Y§);
         }
         if(this.§@!a§ && this.§@!a§.canvas)
         {
            this.§@!a§.setCanvasSize(this.§2!B§,this.§@8§,this.§>B§.width / this.§8I§.stageWidth,this.§>B§.height / this.§8I§.stageHeight);
            _loc3_ = this.§@!a§.canvas;
            if(this.§<6§.bitmapData != _loc3_)
            {
               this.§<6§.bitmapData = _loc3_;
            }
            if(this.§const§.getChildIndex(this.§8Y§) > 0)
            {
               this.§const§.removeChild(this.§8Y§);
               this.§const§.addChildAt(this.§8Y§,0);
            }
         }
      }
      
      private function §8!1§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§8I§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§8I§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§8I§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§']§.addChild(_loc2_);
      }
      
      public function §6!W§() : void
      {
         §6#§ = this;
      }
      
      public function start() : void
      {
         this.§]!=§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§]!=§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §9!K§(param1:Boolean) : void
      {
         this.§"X§ = param1;
      }
      
      private function §"!X§() : void
      {
         this.§<d§ = true;
         if(this.§<6§ == null)
         {
            this.§<6§ = new Bitmap();
            this.§']§.addChild(this.§<6§);
         }
      }
      
      private function §[!_§(param1:ErrorEvent) : void
      {
         this.§"!X§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §?!D§(param1:flash.events.Event) : void
      {
         if(this.§"v§)
         {
            return;
         }
         ++§7!Y§;
         this.§ !%§ = §7!Y§;
         if(this.§@!a§)
         {
            this.§@!a§.dispose();
         }
         if(!§5!5§.§#b§ && this.§49§)
         {
            this.§8!1§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§6!W§();
         this.§+!Q§();
         this.§]4§();
         if(this.§49§ && this.§%!d§)
         {
            this.mStage3DEnabled = false;
            this.§49§ = null;
            this.§"!X§();
         }
         if(this.§49§)
         {
            this.§@!a§ = new §<!%§();
         }
         else
         {
            this.§@!a§ = new §@!W§();
            this.§@!a§.setCanvasSize(this.§2!B§,this.§@8§,this.§>B§.width / this.§8I§.stageWidth,this.§>B§.height / this.§8I§.stageHeight);
            this.§@!a§.clear(null,this.§=![§);
         }
         this.§'!T§.simulateMultitouch = this.§3!S§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §3Y§(param1:flash.events.Event) : void
      {
         this.§6!W§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§07§;
         if(this.§]!=§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§8Y§)
         {
            this.§76§();
         }
      }
      
      private function §[k§(param1:flash.events.KeyboardEvent) : void
      {
         this.§6!W§();
         this.§8I§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§0M§;
         var _loc5_:Number = param2 / this.§40§;
         if(!param3)
         {
            this.§8I§.stageWidth = this.§0M§ * _loc4_ / _loc5_;
            this.§8I§.stageHeight = this.§40§;
         }
         else
         {
            this.§8I§.stageWidth = this.§0M§;
            this.§8I§.stageHeight = this.§40§ * _loc5_ / _loc4_;
         }
         this.§2!B§ = param1;
         this.§@8§ = param2;
         this.§8I§.dispatchEvent(new §9A§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §9U§() : void
      {
         this.setCanvasSize(this.§0M§,this.§40§);
      }
      
      private function §7S§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§]!=§ || !this.§"X§)
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
               this.§ C§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§ C§ = false;
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
               _loc5_ = §9T§.§-0§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §9T§.§!!d§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §9T§.§"d§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §9T§.§-0§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §9T§.§"d§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§ C§ ? §9T§.§!!d§ : §9T§.§9,§;
         }
         if((_loc2_ < this.§>B§.left || _loc2_ >= this.§>B§.right || _loc3_ < this.§>B§.top || _loc3_ >= this.§>B§.bottom) && _loc5_ == §9T§.§-0§)
         {
            return;
         }
         _loc2_ -= this.§>B§.x;
         _loc3_ -= this.§>B§.y;
         this.§'!T§.§,!S§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §0T§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §;-§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§3!Y§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§49§ != null)
         {
            (_loc4_ = this.§49§.createProgram()).upload(param2,param3);
            this.§3!Y§[param1] = _loc4_;
         }
      }
      
      public function §2[§(param1:String) : void
      {
         var _loc2_:Program3D = this.§,t§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§3!Y§[param1];
         }
      }
      
      public function §,t§(param1:String) : Program3D
      {
         return this.§3!Y§[param1] as Program3D;
      }
      
      public function §8P§(param1:String) : Boolean
      {
         return param1 in this.§3!Y§;
      }
      
      public function get §86§() : Boolean
      {
         return this.§]!=§;
      }
      
      public function get §!J§() : §'!U§
      {
         return this.§ e§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§3!S§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§3!S§ = param1;
         if(this.§49§)
         {
            this.§'!T§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§!T§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§!T§ = param1;
         if(this.§49§)
         {
            this.§49§.enableErrorChecking = param1;
         }
      }
      
      public function get §4_§() : int
      {
         return this.§-!G§;
      }
      
      public function set §4_§(param1:int) : void
      {
         this.§-!G§ = param1;
         this.§6L§();
      }
      
      public function get §;S§() : Rectangle
      {
         return this.§>B§.clone();
      }
      
      public function set §;S§(param1:Rectangle) : void
      {
         this.§>B§ = param1.clone();
         this.§6L§();
      }
      
      public function get §']§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§8Y§ == null)
         {
            this.§8Y§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§8Y§.contextMenu = _loc1_;
            this.§76§();
         }
         return this.§8Y§;
      }
      
      public function get stage() : §[=§.Stage
      {
         return this.§8I§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §=!H§() : flash.display.Stage
      {
         return this.§const§;
      }
      
      public function get § a§() : Boolean
      {
         return !this.§<d§;
      }
   }
}
