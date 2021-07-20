package §&L§
{
   import §!!S§.Texture;
   import §6!;§.DisplayObject;
   import §6!;§.Stage;
   import §?h§.§]!=§;
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
   import starling.events.§5z§;
   import starling.events.§;!#§;
   import starling.events.§<!_§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §?]§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §3!R§:§?]§;
      
      private static var §06§:Boolean;
      
      private static var §'!M§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §"!J§:§6!;§.Stage;
      
      private var §[U§:Class;
      
      private var §5K§:§6!;§.DisplayObject;
      
      private var §7X§:§]!=§;
      
      private var §4[§:Boolean;
      
      private var §31§:Boolean;
      
      private var §7k§:§'I§;
      
      private var §%i§:§<!_§;
      
      private var §>!"§:int;
      
      private var §6A§:Boolean;
      
      private var §'^§:Boolean;
      
      private var §-!^§:Number;
      
      private var §3X§:Rectangle;
      
      private var §4!W§:Boolean;
      
      private var §?!K§:flash.display.Stage;
      
      private var §<p§:Sprite;
      
      private var §2d§:Context3D;
      
      private var §'!-§:Dictionary;
      
      private var §<§:int;
      
      private var §1!N§:Boolean;
      
      private var §0S§:Number;
      
      private var §"S§:Number;
      
      private var §?!M§:Number;
      
      private var §#-§:Number;
      
      private var §[@§:Number;
      
      private var §8!7§:Number;
      
      private var §->§:Function;
      
      private var §'!?§:uint;
      
      private var §#f§:String;
      
      private var §"!]§:Bitmap;
      
      private var §9!J§:Boolean = false;
      
      private var §?d§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §9!I§:Boolean = false;
      
      public function §?]§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§0S§ = param3.width;
         this.§"S§ = param3.height;
         this.§?!M§ = this.§0S§;
         this.§#-§ = this.§"S§;
         this.§[@§ = param2.stageWidth;
         this.§8!7§ = param2.stageHeight;
         §#!0§ = true;
         this.§?^§();
         this.§[U§ = param1;
         this.§3X§ = param3;
         this.mStage3D = param4;
         this.§"!J§ = new §6!;§.Stage(param3.width,param3.height,param2.color);
         this.§?!K§ = param2;
         this.§%i§ = new §<!_§(this.§"!J§);
         this.§7X§ = new §]!=§();
         this.§>!"§ = 0;
         this.§6A§ = false;
         this.§'^§ = false;
         this.§-!^§ = getTimer() / 1000;
         this.§'!-§ = new Dictionary();
         for each(_loc6_ in this.§1s§)
         {
            param2.addEventListener(_loc6_,this.§[!Y§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0!`§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0!`§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§7!g§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§;?§,false,1,true);
         this.mStage3D.visible = false;
         this.§]!M§(true);
         this.§'!?§ = param2.color;
         this.§#f§ = param5;
      }
      
      public static function get §7!T§() : Boolean
      {
         if(§`!H§)
         {
            return §`!H§.§1!N§;
         }
         return true;
      }
      
      public static function §-?§() : Boolean
      {
         return §3!R§ && (§3!R§.§9!J§ || §3!R§.§2d§ != null && §3!R§.§2d§.driverInfo != "Disposed");
      }
      
      public static function get §`!H§() : §?]§
      {
         return §3!R§;
      }
      
      public static function get §+!9§() : §]!=§
      {
         return !!§3!R§ ? §3!R§.§+!9§ : null;
      }
      
      public static function get §0d§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §0d§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §#!0§() : Boolean
      {
         return §06§;
      }
      
      public static function set §#!0§(param1:Boolean) : void
      {
         if(§3!R§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §06§ = param1;
      }
      
      public static function §&G§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§`!H§)
         {
            return Texture.§<!T§(§`!H§.§2d§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§3!R§.§2d§)
         {
            §3!R§.§2d§.drawToBitmapData(param1);
         }
         else if(§3!R§.§7k§.canvas)
         {
            _loc2_ = §3!R§.§7k§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §9!C§() : §6!;§.DisplayObject
      {
         return this.§5K§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§'!?§ = param1;
      }
      
      public function get §3-§() : Number
      {
         return this.§0S§;
      }
      
      public function get §get §() : Number
      {
         return this.§"S§;
      }
      
      public function §>!!§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§#f§);
         }
         catch(e:Error)
         {
            §'G§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§9!I§ = true;
         this.§?!K§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0!`§,false);
         this.§?!K§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0!`§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§7!g§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§;?§,false);
         for each(_loc1_ in this.§1s§)
         {
            this.§?!K§.removeEventListener(_loc1_,this.§[!Y§,false);
         }
         for each(_loc2_ in this.§'!-§)
         {
            _loc2_.dispose();
         }
         if(this.§2d§)
         {
            this.§2d§.dispose();
         }
         if(this.§%i§)
         {
            this.§%i§.dispose();
         }
         if(this.§7k§)
         {
            this.§7k§.dispose();
         }
         if(§3!R§ == this)
         {
            §3!R§ = null;
         }
         if(this.§"!]§ && this.§"!]§.bitmapData)
         {
            this.§"!]§.bitmapData.dispose();
            this.§"!]§.bitmapData = null;
         }
      }
      
      private function §!!'§() : void
      {
         this.§2d§ = this.mStage3D.context3D;
         this.§'!-§ = new Dictionary();
         if(this.§2d§)
         {
            this.§2d§.enableErrorChecking = this.§'^§;
            if(this.§2d§.driverInfo.indexOf("Software") >= 0)
            {
               this.§1!N§ = true;
            }
         }
         else
         {
            this.§1!N§ = true;
         }
         this.§-!J§();
      }
      
      private function §=!c§() : void
      {
         if(this.§"!J§.numChildren > 0)
         {
            return;
         }
         if(this.§5K§ == null)
         {
            this.§5K§ = new this.§[U§();
         }
         if(this.§5K§ == null)
         {
            throw new Error("Invalid root class: " + this.§[U§);
         }
         this.§"!J§.addChild(this.§5K§);
      }
      
      private function §-!J§() : void
      {
         this.§?d§ = true;
         this.mStage3D.x = this.§3X§.x;
         this.mStage3D.y = this.§3X§.y;
      }
      
      private function render() : void
      {
         if(!§-?§())
         {
            return;
         }
         if(this.§?d§)
         {
            if(this.§2d§)
            {
               this.§2d§.configureBackBuffer(this.§3X§.width,this.§3X§.height,this.§>!"§,false);
            }
            this.§?d§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§-!^§;
         this.§-!^§ = _loc1_;
         this.§"!J§.advanceTime(_loc2_);
         this.§7X§.advanceTime(_loc2_);
         this.§%i§.advanceTime(_loc2_);
         this.§7k§.§`!U§(this.§"!J§.stageWidth,this.§"!J§.stageHeight);
         this.§7k§.clear(this.§2d§,this.§'!?§,1);
         this.§7k§.§!!+§(this.§2d§,this.§<§);
         this.§"!J§.render(this.§7k§,1);
         this.§7k§.§`w§();
         if(this.§->§ != null)
         {
            this.§->§();
            this.§->§ = null;
         }
         this.§7k§.finishRendering(this.§2d§);
         this.§7k§.§4M§();
      }
      
      public function set §!]§(param1:Function) : void
      {
         this.§->§ = param1;
      }
      
      private function §'D§() : void
      {
         var _loc3_:BitmapData = null;
         this.§<p§.x = this.§3X§.x;
         this.§<p§.y = this.§3X§.y;
         var _loc1_:int = this.§<p§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§<p§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§?!K§.addChild(this.§<p§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§?!K§.removeChild(this.§<p§);
         }
         if(this.§7k§ && this.§7k§.canvas)
         {
            this.§7k§.setCanvasSize(this.§?!M§,this.§#-§,this.§3X§.width / this.§"!J§.stageWidth,this.§3X§.height / this.§"!J§.stageHeight);
            _loc3_ = this.§7k§.canvas;
            if(this.§"!]§.bitmapData != _loc3_)
            {
               this.§"!]§.bitmapData = _loc3_;
            }
            if(this.§?!K§.getChildIndex(this.§<p§) > 0)
            {
               this.§?!K§.removeChild(this.§<p§);
               this.§?!K§.addChildAt(this.§<p§,0);
            }
         }
      }
      
      private function §'G§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§"!J§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§"!J§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§"!J§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§]h§.addChild(_loc2_);
      }
      
      public function §?^§() : void
      {
         §3!R§ = this;
      }
      
      public function start() : void
      {
         this.§4[§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§4[§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §]!M§(param1:Boolean) : void
      {
         this.§31§ = param1;
      }
      
      private function §`I§() : void
      {
         this.§9!J§ = true;
         if(this.§"!]§ == null)
         {
            this.§"!]§ = new Bitmap();
            this.§]h§.addChild(this.§"!]§);
         }
      }
      
      private function §;?§(param1:ErrorEvent) : void
      {
         this.§`I§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §7!g§(param1:flash.events.Event) : void
      {
         if(this.§9!I§)
         {
            return;
         }
         ++§'!M§;
         this.§<§ = §'!M§;
         if(this.§7k§)
         {
            this.§7k§.dispose();
         }
         if(!§?]§.§#!0§ && this.§2d§)
         {
            this.§'G§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§?^§();
         this.§!!'§();
         this.§=!c§();
         if(this.§2d§ && this.§1!N§)
         {
            this.mStage3DEnabled = false;
            this.§2d§ = null;
            this.§`I§();
         }
         if(this.§2d§)
         {
            this.§7k§ = new §'I§();
         }
         else
         {
            this.§7k§ = new §'N§();
            this.§7k§.setCanvasSize(this.§?!M§,this.§#-§,this.§3X§.width / this.§"!J§.stageWidth,this.§3X§.height / this.§"!J§.stageHeight);
            this.§7k§.clear(null,this.§'!?§);
         }
         this.§%i§.simulateMultitouch = this.§6A§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §+A§(param1:flash.events.Event) : void
      {
         this.§?^§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§-!^§;
         if(this.§4[§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§<p§)
         {
            this.§'D§();
         }
      }
      
      private function §0!`§(param1:flash.events.KeyboardEvent) : void
      {
         this.§?^§();
         this.§"!J§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§0S§;
         var _loc5_:Number = param2 / this.§"S§;
         if(!param3)
         {
            this.§"!J§.stageWidth = this.§0S§ * _loc4_ / _loc5_;
            this.§"!J§.stageHeight = this.§"S§;
         }
         else
         {
            this.§"!J§.stageWidth = this.§0S§;
            this.§"!J§.stageHeight = this.§"S§ * _loc5_ / _loc4_;
         }
         this.§?!M§ = param1;
         this.§#-§ = param2;
         this.§"!J§.dispatchEvent(new §5z§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §?!X§() : void
      {
         this.setCanvasSize(this.§0S§,this.§"S§);
      }
      
      private function §[!Y§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§4[§ || !this.§31§)
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
               this.§4!W§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§4!W§ = false;
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
               _loc5_ = §;!#§.§[Q§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §;!#§.§^?§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §;!#§.§2c§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §;!#§.§[Q§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §;!#§.§2c§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§4!W§ ? §;!#§.§^?§ : §;!#§.§5Y§;
         }
         if((_loc2_ < this.§3X§.left || _loc2_ >= this.§3X§.right || _loc3_ < this.§3X§.top || _loc3_ >= this.§3X§.bottom) && _loc5_ == §;!#§.§[Q§)
         {
            return;
         }
         _loc2_ -= this.§3X§.x;
         _loc3_ -= this.§3X§.y;
         this.§%i§.§?!F§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §1s§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §3!F§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§'!-§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§2d§ != null)
         {
            (_loc4_ = this.§2d§.createProgram()).upload(param2,param3);
            this.§'!-§[param1] = _loc4_;
         }
      }
      
      public function §>e§(param1:String) : void
      {
         var _loc2_:Program3D = this.§&5§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§'!-§[param1];
         }
      }
      
      public function §&5§(param1:String) : Program3D
      {
         return this.§'!-§[param1] as Program3D;
      }
      
      public function §6!Q§(param1:String) : Boolean
      {
         return param1 in this.§'!-§;
      }
      
      public function get §@!G§() : Boolean
      {
         return this.§4[§;
      }
      
      public function get §+!9§() : §]!=§
      {
         return this.§7X§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§6A§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§6A§ = param1;
         if(this.§2d§)
         {
            this.§%i§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§'^§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§'^§ = param1;
         if(this.§2d§)
         {
            this.§2d§.enableErrorChecking = param1;
         }
      }
      
      public function get §4<§() : int
      {
         return this.§>!"§;
      }
      
      public function set §4<§(param1:int) : void
      {
         this.§>!"§ = param1;
         this.§-!J§();
      }
      
      public function get §-y§() : Rectangle
      {
         return this.§3X§.clone();
      }
      
      public function set §-y§(param1:Rectangle) : void
      {
         this.§3X§ = param1.clone();
         this.§-!J§();
      }
      
      public function get §]h§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§<p§ == null)
         {
            this.§<p§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§<p§.contextMenu = _loc1_;
            this.§'D§();
         }
         return this.§<p§;
      }
      
      public function get stage() : §6!;§.Stage
      {
         return this.§"!J§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §`B§() : flash.display.Stage
      {
         return this.§?!K§;
      }
      
      public function get §?k§() : Boolean
      {
         return !this.§9!J§;
      }
   }
}
