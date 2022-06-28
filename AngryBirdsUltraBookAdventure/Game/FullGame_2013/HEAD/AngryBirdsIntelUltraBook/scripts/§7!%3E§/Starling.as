package §7!>§
{
   import §#!,§.DisplayObject;
   import §#!,§.Stage;
   import §6!J§.Texture;
   import §^n§.Juggler;
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
   import starling.events.§+!R§;
   import starling.events.§?'§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.TouchProcessor;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §6x§:Starling;
      
      private static var §19§:Boolean;
      
      private static var §8!O§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §[;§:§#!,§.Stage;
      
      private var §%"§:Class;
      
      private var §`9§:§#!,§.DisplayObject;
      
      private var §-!C§:Juggler;
      
      private var §1Q§:Boolean;
      
      private var §;F§:Boolean;
      
      private var §4T§:RenderSupport;
      
      private var §!e§:TouchProcessor;
      
      private var §0F§:int;
      
      private var §0n§:Boolean;
      
      private var §[!Z§:Boolean;
      
      private var §5G§:Number;
      
      private var §#^§:Rectangle;
      
      private var §="§:Boolean;
      
      private var §,2§:flash.display.Stage;
      
      private var §var§:Sprite;
      
      private var §6!,§:Context3D;
      
      private var §`6§:Dictionary;
      
      private var §"z§:int;
      
      private var §?!L§:Boolean;
      
      private var §?!^§:Number;
      
      private var §4!1§:Number;
      
      private var §9!>§:Number;
      
      private var §`r§:Number;
      
      private var §2A§:Number;
      
      private var §#'§:Number;
      
      private var § !9§:Function;
      
      private var §>!M§:uint;
      
      private var §5-§:String;
      
      private var §;!;§:Bitmap;
      
      private var §@m§:Boolean = false;
      
      private var §[S§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §"<§:Boolean = false;
      
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
         this.§?!^§ = param3.width;
         this.§4!1§ = param3.height;
         this.§9!>§ = this.§?!^§;
         this.§`r§ = this.§4!1§;
         this.§2A§ = param2.stageWidth;
         this.§#'§ = param2.stageHeight;
         §=!j§ = true;
         this.§^b§();
         this.§%"§ = param1;
         this.§#^§ = param3;
         this.mStage3D = param4;
         this.§[;§ = new §#!,§.Stage(param3.width,param3.height,param2.color);
         this.§,2§ = param2;
         this.§!e§ = new TouchProcessor(this.§[;§);
         this.§-!C§ = new Juggler();
         this.§0F§ = 0;
         this.§0n§ = false;
         this.§[!Z§ = false;
         this.§5G§ = getTimer() / 1000;
         this.§`6§ = new Dictionary();
         for each(_loc6_ in this.§,!^§)
         {
            param2.addEventListener(_loc6_,this.§2c§,false,0,true);
         }
         param2.addEventListener(KeyboardEvent.KEY_DOWN,this.§,X§,false,0,true);
         param2.addEventListener(KeyboardEvent.KEY_UP,this.§,X§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§8!<§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§=!H§,false,1,true);
         this.mStage3D.visible = false;
         this.§&!_§(true);
         this.§>!M§ = param2.color;
         this.§5-§ = param5;
      }
      
      public static function get isSoftware() : Boolean
      {
         if(§7!+§)
         {
            return §7!+§.§?!L§;
         }
         return true;
      }
      
      public static function §!w§() : Boolean
      {
         return §6x§ && (§6x§.§@m§ || §6x§.§6!,§ != null && §6x§.§6!,§.driverInfo != "Disposed");
      }
      
      public static function get §7!+§() : Starling
      {
         return §6x§;
      }
      
      public static function get §5K§() : Juggler
      {
         return Boolean(§6x§) ? §6x§.§5K§ : null;
      }
      
      public static function get §'!"§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §'!"§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §=!j§() : Boolean
      {
         return §19§;
      }
      
      public static function set §=!j§(param1:Boolean) : void
      {
         if(§6x§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §19§ = param1;
      }
      
      public static function §,q§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§7!+§)
         {
            return Texture.§2B§(§7!+§.§6!,§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§6x§.§6!,§)
         {
            §6x§.§6!,§.drawToBitmapData(param1);
         }
         else if(§6x§.§4T§.canvas)
         {
            _loc2_ = §6x§.§4T§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §#n§() : §#!,§.DisplayObject
      {
         return this.§`9§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§>!M§ = param1;
      }
      
      public function get §8!L§() : Number
      {
         return this.§?!^§;
      }
      
      public function get § 9§() : Number
      {
         return this.§4!1§;
      }
      
      public function §77§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§5-§);
         }
         catch(e:Error)
         {
            §?@§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§"<§ = true;
         this.§,2§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,X§,false);
         this.§,2§.removeEventListener(KeyboardEvent.KEY_UP,this.§,X§,false);
         this.mStage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§8!<§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§=!H§,false);
         for each(_loc1_ in this.§,!^§)
         {
            this.§,2§.removeEventListener(_loc1_,this.§2c§,false);
         }
         for each(_loc2_ in this.§`6§)
         {
            _loc2_.dispose();
         }
         if(this.§6!,§)
         {
            this.§6!,§.dispose();
         }
         if(this.§!e§)
         {
            this.§!e§.dispose();
         }
         if(this.§4T§)
         {
            this.§4T§.dispose();
         }
         if(§6x§ == this)
         {
            §6x§ = null;
         }
         if(this.§;!;§ && this.§;!;§.bitmapData)
         {
            this.§;!;§.bitmapData.dispose();
            this.§;!;§.bitmapData = null;
         }
      }
      
      private function §^Q§() : void
      {
         this.§6!,§ = this.mStage3D.context3D;
         this.§`6§ = new Dictionary();
         if(this.§6!,§)
         {
            this.§6!,§.enableErrorChecking = this.§[!Z§;
            if(this.§6!,§.driverInfo.indexOf("Software") >= 0)
            {
               this.§?!L§ = true;
            }
         }
         else
         {
            this.§?!L§ = true;
         }
         this.§=!X§();
      }
      
      private function §3!"§() : void
      {
         if(this.§[;§.numChildren > 0)
         {
            return;
         }
         if(this.§`9§ == null)
         {
            this.§`9§ = new this.§%"§();
         }
         if(this.§`9§ == null)
         {
            throw new Error("Invalid root class: " + this.§%"§);
         }
         this.§[;§.addChild(this.§`9§);
      }
      
      private function §=!X§() : void
      {
         this.§[S§ = true;
         this.mStage3D.x = this.§#^§.x;
         this.mStage3D.y = this.§#^§.y;
      }
      
      private function render() : void
      {
         if(!§!w§())
         {
            return;
         }
         if(this.§[S§)
         {
            if(this.§6!,§)
            {
               this.§6!,§.configureBackBuffer(this.§#^§.width,this.§#^§.height,this.§0F§,false);
            }
            this.§[S§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§5G§;
         this.§5G§ = _loc1_;
         this.§[;§.advanceTime(_loc2_);
         this.§-!C§.advanceTime(_loc2_);
         this.§!e§.advanceTime(_loc2_);
         this.§4T§.native(this.§[;§.stageWidth,this.§[;§.stageHeight);
         this.§4T§.clear(this.§6!,§,this.§>!M§,1);
         this.§4T§.§-!R§(this.§6!,§,this.§"z§);
         this.§[;§.render(this.§4T§,1);
         this.§4T§.§"!§();
         if(this.§ !9§ != null)
         {
            this.§ !9§();
            this.§ !9§ = null;
         }
         this.§4T§.finishRendering(this.§6!,§);
         this.§4T§.§%G§();
      }
      
      public function set §2S§(param1:Function) : void
      {
         this.§ !9§ = param1;
      }
      
      private function §2!&§() : void
      {
         var _loc3_:BitmapData = null;
         this.§var§.x = this.§#^§.x;
         this.§var§.y = this.§#^§.y;
         var _loc1_:int = this.§var§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§var§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§,2§.addChild(this.§var§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§,2§.removeChild(this.§var§);
         }
         if(this.§4T§ && this.§4T§.canvas)
         {
            this.§4T§.setCanvasSize(this.§9!>§,this.§`r§,this.§#^§.width / this.§[;§.stageWidth,this.§#^§.height / this.§[;§.stageHeight);
            _loc3_ = this.§4T§.canvas;
            if(this.§;!;§.bitmapData != _loc3_)
            {
               this.§;!;§.bitmapData = _loc3_;
            }
            if(this.§,2§.getChildIndex(this.§var§) > 0)
            {
               this.§,2§.removeChild(this.§var§);
               this.§,2§.addChildAt(this.§var§,0);
            }
         }
      }
      
      private function §?@§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§[;§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§[;§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§[;§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§]!I§.addChild(_loc2_);
      }
      
      public function §^b§() : void
      {
         §6x§ = this;
      }
      
      public function start() : void
      {
         this.§1Q§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§1Q§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §&!_§(param1:Boolean) : void
      {
         this.§;F§ = param1;
      }
      
      private function §8!F§() : void
      {
         this.§@m§ = true;
         if(this.§;!;§ == null)
         {
            this.§;!;§ = new Bitmap();
            this.§]!I§.addChild(this.§;!;§);
         }
      }
      
      private function §=!H§(param1:ErrorEvent) : void
      {
         this.§8!F§();
         this.mStage3D.dispatchEvent(new flash.events.Event(Event.CONTEXT3D_CREATE));
      }
      
      private function §8!<§(param1:flash.events.Event) : void
      {
         if(this.§"<§)
         {
            return;
         }
         ++§8!O§;
         this.§"z§ = §8!O§;
         if(this.§4T§)
         {
            this.§4T§.dispose();
         }
         if(!Starling.§=!j§ && this.§6!,§)
         {
            this.§?@§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§^b§();
         this.§^Q§();
         this.§3!"§();
         if(this.§6!,§ && this.§?!L§)
         {
            this.mStage3DEnabled = false;
            this.§6!,§ = null;
            this.§8!F§();
         }
         if(this.§6!,§)
         {
            this.§4T§ = new RenderSupport();
         }
         else
         {
            this.§4T§ = new BitmapDataRenderSupport();
            this.§4T§.setCanvasSize(this.§9!>§,this.§`r§,this.§#^§.width / this.§[;§.stageWidth,this.§#^§.height / this.§[;§.stageHeight);
            this.§4T§.clear(null,this.§>!M§);
         }
         this.§!e§.§;!h§ = this.§0n§;
         dispatchEvent(new starling.events.Event(Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§^b§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§5G§;
         if(this.§1Q§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§var§)
         {
            this.§2!&§();
         }
      }
      
      private function §,X§(param1:flash.events.KeyboardEvent) : void
      {
         this.§^b§();
         this.§[;§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§?!^§;
         var _loc5_:Number = param2 / this.§4!1§;
         if(!param3)
         {
            this.§[;§.stageWidth = this.§?!^§ * _loc4_ / _loc5_;
            this.§[;§.stageHeight = this.§4!1§;
         }
         else
         {
            this.§[;§.stageWidth = this.§?!^§;
            this.§[;§.stageHeight = this.§4!1§ * _loc5_ / _loc4_;
         }
         this.§9!>§ = param1;
         this.§`r§ = param2;
         this.§[;§.dispatchEvent(new §+!R§(Event.RESIZE,param1,param2));
      }
      
      public function §,R§() : void
      {
         this.setCanvasSize(this.§?!^§,this.§4!1§);
      }
      
      private function §2c§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§1Q§ || !this.§;F§)
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
               this.§="§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§="§ = false;
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
               _loc5_ = §?'§.§%!7§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §?'§.§2r§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §?'§.§&>§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §?'§.§%!7§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §?'§.§&>§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§="§ ? §?'§.§2r§ : §?'§.§[!_§;
         }
         if((_loc2_ < this.§#^§.left || _loc2_ >= this.§#^§.right || _loc3_ < this.§#^§.top || _loc3_ >= this.§#^§.bottom) && _loc5_ == §?'§.§%!7§)
         {
            return;
         }
         _loc2_ -= this.§#^§.x;
         _loc3_ -= this.§#^§.y;
         this.§!e§.§;k§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §,!^§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §&Q§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§`6§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§6!,§ != null)
         {
            _loc4_ = this.§6!,§.createProgram();
            _loc4_.upload(param2,param3);
            this.§`6§[param1] = _loc4_;
         }
      }
      
      public function §8`§(param1:String) : void
      {
         var _loc2_:Program3D = this.§#+§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§`6§[param1];
         }
      }
      
      public function §#+§(param1:String) : Program3D
      {
         return this.§`6§[param1] as Program3D;
      }
      
      public function § !L§(param1:String) : Boolean
      {
         return param1 in this.§`6§;
      }
      
      public function get §^!i§() : Boolean
      {
         return this.§1Q§;
      }
      
      public function get §5K§() : Juggler
      {
         return this.§-!C§;
      }
      
      public function get §;!h§() : Boolean
      {
         return this.§0n§;
      }
      
      public function set §;!h§(param1:Boolean) : void
      {
         this.§0n§ = param1;
         if(this.§6!,§)
         {
            this.§!e§.§;!h§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§[!Z§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§[!Z§ = param1;
         if(this.§6!,§)
         {
            this.§6!,§.enableErrorChecking = param1;
         }
      }
      
      public function get §6y§() : int
      {
         return this.§0F§;
      }
      
      public function set §6y§(param1:int) : void
      {
         this.§0F§ = param1;
         this.§=!X§();
      }
      
      public function get §#L§() : Rectangle
      {
         return this.§#^§.clone();
      }
      
      public function set §#L§(param1:Rectangle) : void
      {
         this.§#^§ = param1.clone();
         this.§=!X§();
      }
      
      public function get §]!I§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§var§ == null)
         {
            this.§var§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§var§.contextMenu = _loc1_;
            this.§2!&§();
         }
         return this.§var§;
      }
      
      public function get stage() : §#!,§.Stage
      {
         return this.§[;§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §-!8§() : flash.display.Stage
      {
         return this.§,2§;
      }
      
      public function get §']§() : Boolean
      {
         return !this.§@m§;
      }
   }
}
