package §=!d§
{
   import §"s§.§5"#§;
   import §6s§.Texture;
   import §`!B§.DisplayObject;
   import §`!B§.Stage;
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
   import starling.events.§!!4§;
   import starling.events.§?!c§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^!G§;
   
   public class §5!5§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §#>§:Rectangle;
      
      private static var §<§:Boolean = true;
      
      private static var §=!C§:Boolean;
      
      private static var §;!;§:§5!5§;
      
      private static var §?! §:Boolean;
      
      private static var §#!x§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §`!c§:§`!B§.Stage;
      
      private var §>"!§:Class;
      
      private var §,8§:§`!B§.DisplayObject;
      
      private var §#O§:§5"#§;
      
      private var §5!W§:Boolean;
      
      private var §^!N§:Boolean;
      
      private var §0!r§:§`J§;
      
      private var §'t§:§!!4§;
      
      private var §[!B§:int;
      
      private var §@!D§:Boolean;
      
      private var §5!8§:Boolean;
      
      private var §[!e§:Number;
      
      private var §9!u§:Boolean;
      
      private var §>!k§:flash.display.Stage;
      
      private var § 7§:Sprite;
      
      private var §>!x§:Context3D;
      
      private var §9!_§:Dictionary;
      
      private var §,!p§:int;
      
      private var §+;§:Boolean;
      
      private var §`t§:Number;
      
      private var §1E§:Number;
      
      private var §25§:Number;
      
      private var §5Y§:Number;
      
      private var §7"7§:Number;
      
      private var §5!L§:Number;
      
      private var §0e§:Function;
      
      private var §7!y§:uint;
      
      private var §8!k§:String;
      
      private var §""4§:Bitmap;
      
      private var §'U§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §<W§:Boolean = false;
      
      private var §^!A§:Boolean = false;
      
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
         this.§`t§ = param3.width;
         this.§1E§ = param3.height;
         this.§25§ = this.§`t§;
         this.§5Y§ = this.§1E§;
         this.§7"7§ = param2.stageWidth;
         this.§5!L§ = param2.stageHeight;
         §"!>§ = true;
         this.§7!-§();
         this.§>"!§ = param1;
         §#>§ = param3;
         this.mStage3D = param4;
         this.§`!c§ = new §`!B§.Stage(param3.width,param3.height,param2.color);
         this.§>!k§ = param2;
         this.§'t§ = new §!!4§(this.§`!c§);
         this.§#O§ = new §5"#§();
         this.§[!B§ = 0;
         this.§@!D§ = false;
         this.§5!8§ = false;
         this.§[!e§ = getTimer() / 1000;
         this.§9!_§ = new Dictionary();
         for each(_loc6_ in this.§5@§)
         {
            param2.addEventListener(_loc6_,this.§%"6§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8=§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8=§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§5J§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§>!%§,false,1,true);
         this.mStage3D.visible = false;
         this.§+!g§(true);
         this.§7!y§ = param2.color;
         this.§8!k§ = param5;
      }
      
      public static function get § 4§() : Boolean
      {
         if(§^'§)
         {
            return §^'§.§+;§;
         }
         return true;
      }
      
      public static function §<3§() : Boolean
      {
         return §;!;§ && (§;!;§.§'U§ || §;!;§.§>!x§ != null && §;!;§.§>!x§.driverInfo != "Disposed");
      }
      
      private static function §>k§() : void
      {
         §=!C§ = true;
      }
      
      public static function get §5`§() : Rectangle
      {
         return §#>§.clone();
      }
      
      public static function set §5`§(param1:Rectangle) : void
      {
         §#>§ = param1.clone();
         §>k§();
      }
      
      public static function set §!n§(param1:Boolean) : void
      {
         §<§ = param1;
      }
      
      public static function get §!n§() : Boolean
      {
         return §<§;
      }
      
      public static function get §^'§() : §5!5§
      {
         return §;!;§;
      }
      
      public static function get §>F§() : §5"#§
      {
         return !!§;!;§ ? §;!;§.§>F§ : null;
      }
      
      public static function get §=!$§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §=!$§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §"!>§() : Boolean
      {
         return §?! §;
      }
      
      public static function set §"!>§(param1:Boolean) : void
      {
         if(§;!;§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §?! § = param1;
      }
      
      public static function §5!7§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1.0) : Texture
      {
         if(§^'§)
         {
            return Texture.§3"1§(§^'§.§>!x§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§;!;§.§>!x§)
         {
            §;!;§.§>!x§.drawToBitmapData(param1);
         }
         else if(§;!;§.§0!r§.canvas)
         {
            _loc2_ = §;!;§.§0!r§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §9G§() : §`!B§.DisplayObject
      {
         return this.§,8§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§7!y§ = param1;
      }
      
      public function get §[!R§() : Number
      {
         return this.§`t§;
      }
      
      public function get §1P§() : Number
      {
         return this.§1E§;
      }
      
      public function §4&§() : void
      {
         var contextProfileClass:String = null;
         var requestContext3D:Function = null;
         var moreThanOne:Boolean = false;
         var profile:String = null;
         try
         {
            contextProfileClass = "flash.display3D.Context3DProfile";
            requestContext3D = this.mStage3D.requestContext3D;
            moreThanOne = requestContext3D.length > 1;
            if(moreThanOne)
            {
               profile = !!this.§^!A§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§8!k§,profile);
            }
            else
            {
               requestContext3D(this.§8!k§);
            }
         }
         catch(e:Error)
         {
            §!!p§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§<W§ = true;
         this.§>!k§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8=§,false);
         this.§>!k§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8=§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§5J§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§>!%§,false);
         for each(_loc1_ in this.§5@§)
         {
            this.§>!k§.removeEventListener(_loc1_,this.§%"6§,false);
         }
         for each(_loc2_ in this.§9!_§)
         {
            _loc2_.dispose();
         }
         if(this.§>!x§)
         {
            this.§>!x§.dispose();
         }
         if(this.§'t§)
         {
            this.§'t§.dispose();
         }
         if(this.§0!r§)
         {
            this.§0!r§.dispose();
         }
         if(§;!;§ == this)
         {
            §;!;§ = null;
         }
         if(this.§""4§ && this.§""4§.bitmapData)
         {
            this.§""4§.bitmapData.dispose();
            this.§""4§.bitmapData = null;
         }
      }
      
      private function §9v§() : void
      {
         this.§>!x§ = this.mStage3D.context3D;
         this.§9!_§ = new Dictionary();
         if(this.§>!x§)
         {
            this.§>!x§.enableErrorChecking = this.§5!8§;
            if(this.§>!x§.driverInfo.indexOf("Software") >= 0)
            {
               this.§+;§ = true;
            }
         }
         else
         {
            this.§+;§ = true;
         }
         §>k§();
      }
      
      private function §["1§() : void
      {
         if(this.§`!c§.numChildren > 0)
         {
            return;
         }
         if(this.§,8§ == null)
         {
            this.§,8§ = new this.§>"!§();
         }
         if(this.§,8§ == null)
         {
            throw new Error("Invalid root class: " + this.§>"!§);
         }
         this.§`!c§.addChild(this.§,8§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§>!x§.configureBackBuffer(§#>§.width,§#>§.height,this.§[!B§,false);
            §=!C§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§<3§())
         {
            return;
         }
         if(§=!C§)
         {
            if(this.§>!x§)
            {
               this.mStage3D.x = §#>§.x;
               this.mStage3D.y = §#>§.y;
               this.configureBackBuffer();
               if(§=!C§)
               {
                  return;
               }
               this.setCanvasSize(§#>§.width,§#>§.height);
            }
            else if(this.§""4§)
            {
               §=!C§ = false;
               this.setCanvasSize(§#>§.width,§#>§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§[!e§;
         this.§[!e§ = _loc1_;
         this.§`!c§.advanceTime(_loc2_);
         this.§#O§.advanceTime(_loc2_);
         this.§'t§.advanceTime(_loc2_);
         this.§0!r§.§@!P§(this.§`!c§.stageWidth,this.§`!c§.stageHeight);
         this.§0!r§.clear(this.§>!x§,this.§7!y§,1);
         this.§0!r§.§%D§(this.§>!x§,this.§,!p§);
         this.§`!c§.render(this.§0!r§,1);
         this.§0!r§.§,! §();
         if(this.§0e§ != null)
         {
            this.§0e§();
            this.§0e§ = null;
         }
         this.§0!r§.finishRendering(this.§>!x§);
         this.§0!r§.nextFrame();
      }
      
      public function set §'!w§(param1:Function) : void
      {
         this.§0e§ = param1;
      }
      
      private function §=z§() : void
      {
         var _loc3_:BitmapData = null;
         this.§ 7§.x = §#>§.x;
         this.§ 7§.y = §#>§.y;
         var _loc1_:int = this.§ 7§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§ 7§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§>!k§.addChild(this.§ 7§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§>!k§.removeChild(this.§ 7§);
         }
         if(this.§0!r§ && this.§0!r§.canvas)
         {
            this.§0!r§.setCanvasSize(this.§25§,this.§5Y§,§#>§.width / this.§`!c§.stageWidth,§#>§.height / this.§`!c§.stageHeight);
            _loc3_ = this.§0!r§.canvas;
            if(this.§""4§.bitmapData != _loc3_)
            {
               this.§""4§.bitmapData = _loc3_;
            }
            if(this.§>!k§.getChildIndex(this.§ 7§) > 0)
            {
               this.§>!k§.removeChild(this.§ 7§);
               this.§>!k§.addChildAt(this.§ 7§,0);
            }
         }
      }
      
      private function §!!p§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§`!c§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§`!c§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§`!c§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§<U§.addChild(_loc2_);
      }
      
      public function §7!-§() : void
      {
         §;!;§ = this;
      }
      
      public function start() : void
      {
         this.§5!W§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§5!W§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §+!g§(param1:Boolean) : void
      {
         this.§^!N§ = param1;
      }
      
      private function §=l§() : void
      {
         this.§'U§ = true;
         if(this.§""4§ == null)
         {
            this.§""4§ = new Bitmap();
            this.§<U§.addChild(this.§""4§);
         }
      }
      
      private function §>!%§(param1:ErrorEvent) : void
      {
         this.§=l§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §5J§(param1:flash.events.Event) : void
      {
         if(this.§<W§)
         {
            return;
         }
         if(!this.§^!A§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
         {
            this.§^!A§ = true;
            this.§4&§();
            return;
         }
         ++§#!x§;
         this.§,!p§ = §#!x§;
         if(this.§0!r§)
         {
            this.§0!r§.dispose();
         }
         if(!§5!5§.§"!>§ && this.§>!x§)
         {
            this.§!!p§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§7!-§();
         this.§9v§();
         this.§["1§();
         if(this.§>!x§ && this.§+;§)
         {
            this.mStage3DEnabled = false;
            this.§>!x§ = null;
            this.§=l§();
         }
         if(this.§>!x§)
         {
            this.§0!r§ = new §`J§();
         }
         else
         {
            this.§0!r§ = new §8!x§();
            this.§0!r§.setCanvasSize(this.§25§,this.§5Y§,§#>§.width / this.§`!c§.stageWidth,§#>§.height / this.§`!c§.stageHeight);
            this.§0!r§.clear(null,this.§7!y§);
         }
         this.§'t§.§?!6§ = this.§@!D§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§7!-§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§[!e§;
         if(this.§5!W§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§ 7§)
         {
            this.§=z§();
         }
      }
      
      private function §8=§(param1:flash.events.KeyboardEvent) : void
      {
         this.§7!-§();
         this.§`!c§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§`t§;
         var _loc4_:Number = param2 / this.§1E§;
         if(!§!n§)
         {
            this.§`!c§.stageWidth = this.§`t§ * _loc3_ / _loc4_;
            this.§`!c§.stageHeight = this.§1E§;
         }
         else
         {
            this.§`!c§.stageWidth = this.§`t§;
            this.§`!c§.stageHeight = this.§1E§ * _loc4_ / _loc3_;
         }
         this.§25§ = param1;
         this.§5Y§ = param2;
         this.§`!c§.dispatchEvent(new §?!c§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §>!§() : void
      {
         this.setCanvasSize(this.§`t§,this.§1E§);
      }
      
      private function §%"6§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§5!W§ || !this.§^!N§)
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
               this.§9!u§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§9!u§ = false;
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
               _loc5_ = §^!G§.§]m§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §^!G§.§-H§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §^!G§.§;"0§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §^!G§.§]m§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §^!G§.§;"0§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§9!u§ ? §^!G§.§-H§ : §^!G§.HOVER;
         }
         if((_loc2_ < §#>§.left || _loc2_ >= §#>§.right || _loc3_ < §#>§.top || _loc3_ >= §#>§.bottom) && _loc5_ == §^!G§.§]m§)
         {
            return;
         }
         _loc2_ -= §#>§.x;
         _loc3_ -= §#>§.y;
         this.§'t§.§=!o§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §5@§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §%a§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§9!_§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§>!x§ != null)
         {
            (_loc4_ = this.§>!x§.createProgram()).upload(param2,param3);
            this.§9!_§[param1] = _loc4_;
         }
      }
      
      public function §2I§(param1:String) : void
      {
         var _loc2_:Program3D = this.§1!d§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§9!_§[param1];
         }
      }
      
      public function §1!d§(param1:String) : Program3D
      {
         return this.§9!_§[param1] as Program3D;
      }
      
      public function §1?§(param1:String) : Boolean
      {
         return param1 in this.§9!_§;
      }
      
      public function get §?§() : Boolean
      {
         return this.§5!W§;
      }
      
      public function get §>F§() : §5"#§
      {
         return this.§#O§;
      }
      
      public function get §?!6§() : Boolean
      {
         return this.§@!D§;
      }
      
      public function set §?!6§(param1:Boolean) : void
      {
         this.§@!D§ = param1;
         if(this.§>!x§)
         {
            this.§'t§.§?!6§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§5!8§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§5!8§ = param1;
         if(this.§>!x§)
         {
            this.§>!x§.enableErrorChecking = param1;
         }
      }
      
      public function get §7@§() : int
      {
         return this.§[!B§;
      }
      
      public function set §7@§(param1:int) : void
      {
         this.§[!B§ = param1;
         §>k§();
      }
      
      public function get §<U§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§ 7§ == null)
         {
            this.§ 7§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§ 7§.contextMenu = _loc1_;
            this.§=z§();
         }
         return this.§ 7§;
      }
      
      public function get stage() : §`!B§.Stage
      {
         return this.§`!c§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §7!S§() : flash.display.Stage
      {
         return this.§>!k§;
      }
      
      public function get §#A§() : Boolean
      {
         return !this.§'U§;
      }
   }
}
