package §0P§
{
   import §2!9§.Juggler;
   import §6!7§.DisplayObject;
   import §6!7§.Stage;
   import §7i§.Texture;
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
   import starling.events.§!!j§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.TouchProcessor;
   import starling.events.§`R§;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §1!;§:Starling;
      
      private static var §%n§:Boolean;
      
      private static var §[r§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §'!'§:§6!7§.Stage;
      
      private var §23§:Class;
      
      private var §6J§:§6!7§.DisplayObject;
      
      private var §7!-§:Juggler;
      
      private var §^!%§:Boolean;
      
      private var §6'§:Boolean;
      
      private var §@!6§:RenderSupport;
      
      private var §=L§:TouchProcessor;
      
      private var §'!§:int;
      
      private var §+`§:Boolean;
      
      private var §#'§:Boolean;
      
      private var §8H§:Number;
      
      private var §>!0§:Rectangle;
      
      private var §<T§:Boolean;
      
      private var §"5§:flash.display.Stage;
      
      private var §@p§:Sprite;
      
      private var §"W§:Context3D;
      
      private var §!h§:Dictionary;
      
      private var §[!<§:int;
      
      private var §"[§:Boolean;
      
      private var § each§:Number;
      
      private var §4F§:Number;
      
      private var §@M§:Number;
      
      private var §>k§:Number;
      
      private var §[!T§:Number;
      
      private var §=!-§:Number;
      
      private var § Q§:Function;
      
      private var §1!T§:uint;
      
      private var §]1§:String;
      
      private var §+z§:Bitmap;
      
      private var §6@§:Boolean = false;
      
      private var §-d§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §@!;§:Boolean = false;
      
      public function Starling(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§ each§ = param3.width;
         this.§4F§ = param3.height;
         this.§@M§ = this.§ each§;
         this.§>k§ = this.§4F§;
         this.§[!T§ = param2.stageWidth;
         this.§=!-§ = param2.stageHeight;
         §>!f§ = true;
         this.§5t§();
         this.§23§ = param1;
         this.§>!0§ = param3;
         this.mStage3D = param4;
         this.§'!'§ = new §6!7§.Stage(param3.width,param3.height,param2.color);
         this.§"5§ = param2;
         this.§=L§ = new TouchProcessor(this.§'!'§);
         this.§7!-§ = new Juggler();
         this.§'!§ = 0;
         this.§+`§ = false;
         this.§#'§ = false;
         this.§8H§ = getTimer() / 1000;
         this.§!h§ = new Dictionary();
         for each(_loc6_ in this.§,a§)
         {
            param2.addEventListener(_loc6_,this.§%&§,false,0,true);
         }
         param2.addEventListener(KeyboardEvent.KEY_DOWN,this.§,!^§,false,0,true);
         param2.addEventListener(KeyboardEvent.KEY_UP,this.§,!^§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§[D§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§0!i§,false,1,true);
         this.mStage3D.visible = false;
         this.§`&§(true);
         this.§1!T§ = param2.color;
         this.§]1§ = param5;
      }
      
      public static function get isSoftware() : Boolean
      {
         if(§!!F§)
         {
            return §!!F§.§"[§;
         }
         return true;
      }
      
      public static function §84§() : Boolean
      {
         return §1!;§ && (§1!;§.§6@§ || §1!;§.§"W§ != null && §1!;§.§"W§.driverInfo != "Disposed");
      }
      
      public static function get §!!F§() : Starling
      {
         return §1!;§;
      }
      
      public static function get §1!e§() : Juggler
      {
         return Boolean(§1!;§) ? §1!;§.§1!e§ : null;
      }
      
      public static function get §;z§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;z§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §>!f§() : Boolean
      {
         return §%n§;
      }
      
      public static function set §>!f§(param1:Boolean) : void
      {
         if(§1!;§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §%n§ = param1;
      }
      
      public static function §0!2§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§!!F§)
         {
            return Texture.§8v§(§!!F§.§"W§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§1!;§.§"W§)
         {
            §1!;§.§"W§.drawToBitmapData(param1);
         }
         else if(§1!;§.§@!6§.canvas)
         {
            _loc2_ = §1!;§.§@!6§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §"!8§() : §6!7§.DisplayObject
      {
         return this.§6J§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§1!T§ = param1;
      }
      
      public function get §#8§() : Number
      {
         return this.§ each§;
      }
      
      public function get §#!d§() : Number
      {
         return this.§4F§;
      }
      
      public function §%C§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§]1§);
         }
         catch(e:Error)
         {
            §[R§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§@!;§ = true;
         this.§"5§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,!^§,false);
         this.§"5§.removeEventListener(KeyboardEvent.KEY_UP,this.§,!^§,false);
         this.mStage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§[D§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§0!i§,false);
         for each(_loc1_ in this.§,a§)
         {
            this.§"5§.removeEventListener(_loc1_,this.§%&§,false);
         }
         for each(_loc2_ in this.§!h§)
         {
            _loc2_.dispose();
         }
         if(this.§"W§)
         {
            this.§"W§.dispose();
         }
         if(this.§=L§)
         {
            this.§=L§.dispose();
         }
         if(this.§@!6§)
         {
            this.§@!6§.dispose();
         }
         if(§1!;§ == this)
         {
            §1!;§ = null;
         }
         if(this.§+z§ && this.§+z§.bitmapData)
         {
            this.§+z§.bitmapData.dispose();
            this.§+z§.bitmapData = null;
         }
      }
      
      private function §!1§() : void
      {
         this.§"W§ = this.mStage3D.context3D;
         this.§!h§ = new Dictionary();
         if(this.§"W§)
         {
            this.§"W§.enableErrorChecking = this.§#'§;
            if(this.§"W§.driverInfo.indexOf("Software") >= 0)
            {
               this.§"[§ = true;
            }
         }
         else
         {
            this.§"[§ = true;
         }
         this.§^k§();
      }
      
      private function §2!D§() : void
      {
         if(this.§'!'§.numChildren > 0)
         {
            return;
         }
         if(this.§6J§ == null)
         {
            this.§6J§ = new this.§23§();
         }
         if(this.§6J§ == null)
         {
            throw new Error("Invalid root class: " + this.§23§);
         }
         this.§'!'§.addChild(this.§6J§);
      }
      
      private function §^k§() : void
      {
         this.§-d§ = true;
         this.mStage3D.x = this.§>!0§.x;
         this.mStage3D.y = this.§>!0§.y;
      }
      
      private function render() : void
      {
         if(!§84§())
         {
            return;
         }
         if(this.§-d§)
         {
            if(this.§"W§)
            {
               this.§"W§.configureBackBuffer(this.§>!0§.width,this.§>!0§.height,this.§'!§,false);
            }
            this.§-d§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§8H§;
         this.§8H§ = _loc1_;
         this.§'!'§.advanceTime(_loc2_);
         this.§7!-§.advanceTime(_loc2_);
         this.§=L§.advanceTime(_loc2_);
         this.§@!6§.§-!]§(this.§'!'§.stageWidth,this.§'!'§.stageHeight);
         this.§@!6§.clear(this.§"W§,this.§1!T§,1);
         this.§@!6§.§8!S§(this.§"W§,this.§[!<§);
         this.§'!'§.render(this.§@!6§,1);
         this.§@!6§.§2^§();
         if(this.§ Q§ != null)
         {
            this.§ Q§();
            this.§ Q§ = null;
         }
         this.§@!6§.finishRendering(this.§"W§);
         this.§@!6§.§'!#§();
      }
      
      public function set §+!f§(param1:Function) : void
      {
         this.§ Q§ = param1;
      }
      
      private function §`E§() : void
      {
         var _loc3_:BitmapData = null;
         this.§@p§.x = this.§>!0§.x;
         this.§@p§.y = this.§>!0§.y;
         var _loc1_:int = this.§@p§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@p§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§"5§.addChild(this.§@p§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§"5§.removeChild(this.§@p§);
         }
         if(this.§@!6§ && this.§@!6§.canvas)
         {
            this.§@!6§.setCanvasSize(this.§@M§,this.§>k§,this.§>!0§.width / this.§'!'§.stageWidth,this.§>!0§.height / this.§'!'§.stageHeight);
            _loc3_ = this.§@!6§.canvas;
            if(this.§+z§.bitmapData != _loc3_)
            {
               this.§+z§.bitmapData = _loc3_;
            }
            if(this.§"5§.getChildIndex(this.§@p§) > 0)
            {
               this.§"5§.removeChild(this.§@p§);
               this.§"5§.addChildAt(this.§@p§,0);
            }
         }
      }
      
      private function §[R§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§'!'§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§'!'§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§'!'§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§[!F§.addChild(_loc2_);
      }
      
      public function §5t§() : void
      {
         §1!;§ = this;
      }
      
      public function start() : void
      {
         this.§^!%§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§^!%§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §`&§(param1:Boolean) : void
      {
         this.§6'§ = param1;
      }
      
      private function §,%§() : void
      {
         this.§6@§ = true;
         if(this.§+z§ == null)
         {
            this.§+z§ = new Bitmap();
            this.§[!F§.addChild(this.§+z§);
         }
      }
      
      private function §0!i§(param1:ErrorEvent) : void
      {
         this.§,%§();
         this.mStage3D.dispatchEvent(new flash.events.Event(Event.CONTEXT3D_CREATE));
      }
      
      private function §[D§(param1:flash.events.Event) : void
      {
         if(this.§@!;§)
         {
            return;
         }
         ++§[r§;
         this.§[!<§ = §[r§;
         if(this.§@!6§)
         {
            this.§@!6§.dispose();
         }
         if(!Starling.§>!f§ && this.§"W§)
         {
            this.§[R§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§5t§();
         this.§!1§();
         this.§2!D§();
         if(this.§"W§ && this.§"[§)
         {
            this.mStage3DEnabled = false;
            this.§"W§ = null;
            this.§,%§();
         }
         if(this.§"W§)
         {
            this.§@!6§ = new RenderSupport();
         }
         else
         {
            this.§@!6§ = new BitmapDataRenderSupport();
            this.§@!6§.setCanvasSize(this.§@M§,this.§>k§,this.§>!0§.width / this.§'!'§.stageWidth,this.§>!0§.height / this.§'!'§.stageHeight);
            this.§@!6§.clear(null,this.§1!T§);
         }
         this.§=L§.§]?§ = this.§+`§;
         dispatchEvent(new starling.events.Event(Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§5t§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§8H§;
         if(this.§^!%§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§@p§)
         {
            this.§`E§();
         }
      }
      
      private function §,!^§(param1:flash.events.KeyboardEvent) : void
      {
         this.§5t§();
         this.§'!'§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§ each§;
         var _loc5_:Number = param2 / this.§4F§;
         if(!param3)
         {
            this.§'!'§.stageWidth = this.§ each§ * _loc4_ / _loc5_;
            this.§'!'§.stageHeight = this.§4F§;
         }
         else
         {
            this.§'!'§.stageWidth = this.§ each§;
            this.§'!'§.stageHeight = this.§4F§ * _loc5_ / _loc4_;
         }
         this.§@M§ = param1;
         this.§>k§ = param2;
         this.§'!'§.dispatchEvent(new §`R§(Event.RESIZE,param1,param2));
      }
      
      public function § !#§() : void
      {
         this.setCanvasSize(this.§ each§,this.§4F§);
      }
      
      private function §%&§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§^!%§ || !this.§6'§)
         {
            return;
         }
         if(param1 is MouseEvent)
         {
            _loc6_ = param1 as MouseEvent;
            _loc2_ = _loc6_.stageX;
            _loc3_ = _loc6_.stageY;
            _loc4_ = 0;
            if(param1.type == MouseEvent.MOUSE_DOWN)
            {
               this.§<T§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§<T§ = false;
            }
         }
         else
         {
            _loc7_ = param1 as TouchEvent;
            _loc2_ = _loc7_.stageX;
            _loc3_ = _loc7_.stageY;
            _loc4_ = _loc7_.touchPointID;
         }
         switch(param1.type)
         {
            case TouchEvent.TOUCH_BEGIN:
               _loc5_ = §!!j§.§ 0§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §!!j§.§4!^§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §!!j§.§?c§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §!!j§.§ 0§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §!!j§.§?c§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§<T§ ? §!!j§.§4!^§ : §!!j§.§^!R§;
         }
         if((_loc2_ < this.§>!0§.left || _loc2_ >= this.§>!0§.right || _loc3_ < this.§>!0§.top || _loc3_ >= this.§>!0§.bottom) && _loc5_ == §!!j§.§ 0§)
         {
            return;
         }
         _loc2_ -= this.§>!0§.x;
         _loc3_ -= this.§>!0§.y;
         this.§=L§.§]!<§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §,a§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §1_§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§!h§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§"W§ != null)
         {
            _loc4_ = this.§"W§.createProgram();
            _loc4_.upload(param2,param3);
            this.§!h§[param1] = _loc4_;
         }
      }
      
      public function §`!Z§(param1:String) : void
      {
         var _loc2_:Program3D = this.§9!J§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§!h§[param1];
         }
      }
      
      public function §9!J§(param1:String) : Program3D
      {
         return this.§!h§[param1] as Program3D;
      }
      
      public function §8V§(param1:String) : Boolean
      {
         return param1 in this.§!h§;
      }
      
      public function get §#;§() : Boolean
      {
         return this.§^!%§;
      }
      
      public function get §1!e§() : Juggler
      {
         return this.§7!-§;
      }
      
      public function get §]?§() : Boolean
      {
         return this.§+`§;
      }
      
      public function set §]?§(param1:Boolean) : void
      {
         this.§+`§ = param1;
         if(this.§"W§)
         {
            this.§=L§.§]?§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§#'§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§#'§ = param1;
         if(this.§"W§)
         {
            this.§"W§.enableErrorChecking = param1;
         }
      }
      
      public function get § T§() : int
      {
         return this.§'!§;
      }
      
      public function set § T§(param1:int) : void
      {
         this.§'!§ = param1;
         this.§^k§();
      }
      
      public function get §8l§() : Rectangle
      {
         return this.§>!0§.clone();
      }
      
      public function set §8l§(param1:Rectangle) : void
      {
         this.§>!0§ = param1.clone();
         this.§^k§();
      }
      
      public function get §[!F§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§@p§ == null)
         {
            this.§@p§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§@p§.contextMenu = _loc1_;
            this.§`E§();
         }
         return this.§@p§;
      }
      
      public function get stage() : §6!7§.Stage
      {
         return this.§'!'§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §"2§() : flash.display.Stage
      {
         return this.§"5§;
      }
      
      public function get §[E§() : Boolean
      {
         return !this.§6@§;
      }
   }
}
