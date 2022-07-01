package §%!j§
{
   import §"&§.§8p§;
   import §+!-§.DisplayObject;
   import §+!-§.Stage;
   import §0!%§.Texture;
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
   import starling.events.§ " §;
   import starling.events.§-!#§;
   import starling.events.§8$§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §%K§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §-A§:§%K§;
      
      private static var §`!'§:Boolean;
      
      private static var §4S§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §0"§:§+!-§.Stage;
      
      private var §-!8§:Class;
      
      private var §>!O§:§+!-§.DisplayObject;
      
      private var §2#§:§8p§;
      
      private var §'!>§:Boolean;
      
      private var §case §:Boolean;
      
      private var §<B§:§&Y§;
      
      private var §'8§:§ " §;
      
      private var §0!x§:int;
      
      private var §[!v§:Boolean;
      
      private var §%!L§:Boolean;
      
      private var §;9§:Number;
      
      private var §6&§:Rectangle;
      
      private var § 4§:Boolean;
      
      private var §1"0§:flash.display.Stage;
      
      private var §=+§:Sprite;
      
      private var §[U§:Context3D;
      
      private var §@'§:Dictionary;
      
      private var §]!§:int;
      
      private var §<7§:Boolean;
      
      private var §!D§:Number;
      
      private var §>2§:Number;
      
      private var § !d§:Number;
      
      private var §1M§:Number;
      
      private var §@w§:Number;
      
      private var §-!!§:Number;
      
      private var §+H§:Function;
      
      private var §?3§:uint;
      
      private var §'W§:String;
      
      private var §0f§:Bitmap;
      
      private var §]l§:Boolean = false;
      
      private var §@L§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §&!7§:Boolean = false;
      
      public function §%K§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§!D§ = param3.width;
         this.§>2§ = param3.height;
         this.§ !d§ = this.§!D§;
         this.§1M§ = this.§>2§;
         this.§@w§ = param2.stageWidth;
         this.§-!!§ = param2.stageHeight;
         §!!S§ = true;
         this.§^7§();
         this.§-!8§ = param1;
         this.§6&§ = param3;
         this.mStage3D = param4;
         this.§0"§ = new §+!-§.Stage(param3.width,param3.height,param2.color);
         this.§1"0§ = param2;
         this.§'8§ = new § " §(this.§0"§);
         this.§2#§ = new §8p§();
         this.§0!x§ = 0;
         this.§[!v§ = false;
         this.§%!L§ = false;
         this.§;9§ = getTimer() / 1000;
         this.§@'§ = new Dictionary();
         for each(_loc6_ in this.§=!Z§)
         {
            param2.addEventListener(_loc6_,this.§1!f§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§2!^§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§2!^§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ !m§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§-!I§,false,1,true);
         this.mStage3D.visible = false;
         this.§1!>§(true);
         this.§?3§ = param2.color;
         this.§'W§ = param5;
      }
      
      public static function get §%!R§() : Boolean
      {
         if(§`9§)
         {
            return §`9§.§<7§;
         }
         return true;
      }
      
      public static function §,!>§() : Boolean
      {
         return §-A§ && (§-A§.§]l§ || §-A§.§[U§ != null && §-A§.§[U§.driverInfo != "Disposed");
      }
      
      public static function get §`9§() : §%K§
      {
         return §-A§;
      }
      
      public static function get §^!d§() : §8p§
      {
         return !!§-A§ ? §-A§.§^!d§ : null;
      }
      
      public static function get § var§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set § var§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §!!S§() : Boolean
      {
         return §`!'§;
      }
      
      public static function set §!!S§(param1:Boolean) : void
      {
         if(§-A§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §`!'§ = param1;
      }
      
      public static function §1q§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§`9§)
         {
            return Texture.§7!7§(§`9§.§[U§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§-A§.§[U§)
         {
            §-A§.§[U§.drawToBitmapData(param1);
         }
         else if(§-A§.§<B§.canvas)
         {
            _loc2_ = §-A§.§<B§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §'"6§() : §+!-§.DisplayObject
      {
         return this.§>!O§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§?3§ = param1;
      }
      
      public function get §+!6§() : Number
      {
         return this.§!D§;
      }
      
      public function get §-!d§() : Number
      {
         return this.§>2§;
      }
      
      public function §0!@§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§'W§);
         }
         catch(e:Error)
         {
            §0!e§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§&!7§ = true;
         this.§1"0§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§2!^§,false);
         this.§1"0§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§2!^§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ !m§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§-!I§,false);
         for each(_loc1_ in this.§=!Z§)
         {
            this.§1"0§.removeEventListener(_loc1_,this.§1!f§,false);
         }
         for each(_loc2_ in this.§@'§)
         {
            _loc2_.dispose();
         }
         if(this.§[U§)
         {
            this.§[U§.dispose();
         }
         if(this.§'8§)
         {
            this.§'8§.dispose();
         }
         if(this.§<B§)
         {
            this.§<B§.dispose();
         }
         if(§-A§ == this)
         {
            §-A§ = null;
         }
         if(this.§0f§ && this.§0f§.bitmapData)
         {
            this.§0f§.bitmapData.dispose();
            this.§0f§.bitmapData = null;
         }
      }
      
      private function §with§() : void
      {
         this.§[U§ = this.mStage3D.context3D;
         this.§@'§ = new Dictionary();
         if(this.§[U§)
         {
            this.§[U§.enableErrorChecking = this.§%!L§;
            if(this.§[U§.driverInfo.indexOf("Software") >= 0)
            {
               this.§<7§ = true;
            }
         }
         else
         {
            this.§<7§ = true;
         }
         this.§9S§();
      }
      
      private function §`W§() : void
      {
         if(this.§0"§.numChildren > 0)
         {
            return;
         }
         if(this.§>!O§ == null)
         {
            this.§>!O§ = new this.§-!8§();
         }
         if(this.§>!O§ == null)
         {
            throw new Error("Invalid root class: " + this.§-!8§);
         }
         this.§0"§.addChild(this.§>!O§);
      }
      
      private function §9S§() : void
      {
         this.§@L§ = true;
         this.mStage3D.x = this.§6&§.x;
         this.mStage3D.y = this.§6&§.y;
      }
      
      private function render() : void
      {
         if(!§,!>§())
         {
            return;
         }
         if(this.§@L§)
         {
            if(this.§[U§)
            {
               this.§[U§.configureBackBuffer(this.§6&§.width,this.§6&§.height,this.§0!x§,false);
            }
            this.§@L§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§;9§;
         this.§;9§ = _loc1_;
         this.§0"§.advanceTime(_loc2_);
         this.§2#§.advanceTime(_loc2_);
         this.§'8§.advanceTime(_loc2_);
         this.§<B§.§`!M§(this.§0"§.stageWidth,this.§0"§.stageHeight);
         this.§<B§.clear(this.§[U§,this.§?3§,1);
         this.§<B§.§+"+§(this.§[U§,this.§]!§);
         this.§0"§.render(this.§<B§,1);
         this.§<B§.§0"6§();
         if(this.§+H§ != null)
         {
            this.§+H§();
            this.§+H§ = null;
         }
         this.§<B§.finishRendering(this.§[U§);
         this.§<B§.§<Q§();
      }
      
      public function set §>"§(param1:Function) : void
      {
         this.§+H§ = param1;
      }
      
      private function §[X§() : void
      {
         var _loc3_:BitmapData = null;
         this.§=+§.x = this.§6&§.x;
         this.§=+§.y = this.§6&§.y;
         var _loc1_:int = this.§=+§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§=+§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§1"0§.addChild(this.§=+§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§1"0§.removeChild(this.§=+§);
         }
         if(this.§<B§ && this.§<B§.canvas)
         {
            this.§<B§.setCanvasSize(this.§ !d§,this.§1M§,this.§6&§.width / this.§0"§.stageWidth,this.§6&§.height / this.§0"§.stageHeight);
            _loc3_ = this.§<B§.canvas;
            if(this.§0f§.bitmapData != _loc3_)
            {
               this.§0f§.bitmapData = _loc3_;
            }
            if(this.§1"0§.getChildIndex(this.§=+§) > 0)
            {
               this.§1"0§.removeChild(this.§=+§);
               this.§1"0§.addChildAt(this.§=+§,0);
            }
         }
      }
      
      private function §0!e§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§0"§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§0"§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§0"§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§7!H§.addChild(_loc2_);
      }
      
      public function §^7§() : void
      {
         §-A§ = this;
      }
      
      public function start() : void
      {
         this.§'!>§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§'!>§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §1!>§(param1:Boolean) : void
      {
         this.§case § = param1;
      }
      
      private function §-;§() : void
      {
         this.§]l§ = true;
         if(this.§0f§ == null)
         {
            this.§0f§ = new Bitmap();
            this.§7!H§.addChild(this.§0f§);
         }
      }
      
      private function §-!I§(param1:ErrorEvent) : void
      {
         this.§-;§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function § !m§(param1:flash.events.Event) : void
      {
         if(this.§&!7§)
         {
            return;
         }
         ++§4S§;
         this.§]!§ = §4S§;
         if(this.§<B§)
         {
            this.§<B§.dispose();
         }
         if(!§%K§.§!!S§ && this.§[U§)
         {
            this.§0!e§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§^7§();
         this.§with§();
         this.§`W§();
         if(this.§[U§ && this.§<7§)
         {
            this.mStage3DEnabled = false;
            this.§[U§ = null;
            this.§-;§();
         }
         if(this.§[U§)
         {
            this.§<B§ = new §&Y§();
         }
         else
         {
            this.§<B§ = new § j§();
            this.§<B§.setCanvasSize(this.§ !d§,this.§1M§,this.§6&§.width / this.§0"§.stageWidth,this.§6&§.height / this.§0"§.stageHeight);
            this.§<B§.clear(null,this.§?3§);
         }
         this.§'8§.§;r§ = this.§[!v§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§^7§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§;9§;
         if(this.§'!>§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§=+§)
         {
            this.§[X§();
         }
      }
      
      private function §2!^§(param1:flash.events.KeyboardEvent) : void
      {
         this.§^7§();
         this.§0"§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§!D§;
         var _loc5_:Number = param2 / this.§>2§;
         if(!param3)
         {
            this.§0"§.stageWidth = this.§!D§ * _loc4_ / _loc5_;
            this.§0"§.stageHeight = this.§>2§;
         }
         else
         {
            this.§0"§.stageWidth = this.§!D§;
            this.§0"§.stageHeight = this.§>2§ * _loc5_ / _loc4_;
         }
         this.§ !d§ = param1;
         this.§1M§ = param2;
         this.§0"§.dispatchEvent(new §8$§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §8I§() : void
      {
         this.setCanvasSize(this.§!D§,this.§>2§);
      }
      
      private function §1!f§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§'!>§ || !this.§case §)
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
               this.§ 4§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§ 4§ = false;
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
               _loc5_ = §-!#§.§-""§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §-!#§.§8!U§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §-!#§.§&i§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §-!#§.§-""§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §-!#§.§&i§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§ 4§ ? §-!#§.§8!U§ : §-!#§.§#-§;
         }
         if((_loc2_ < this.§6&§.left || _loc2_ >= this.§6&§.right || _loc3_ < this.§6&§.top || _loc3_ >= this.§6&§.bottom) && _loc5_ == §-!#§.§-""§)
         {
            return;
         }
         _loc2_ -= this.§6&§.x;
         _loc3_ -= this.§6&§.y;
         this.§'8§.§!!c§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §=!Z§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §7!c§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§@'§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§[U§ != null)
         {
            (_loc4_ = this.§[U§.createProgram()).upload(param2,param3);
            this.§@'§[param1] = _loc4_;
         }
      }
      
      public function §<!c§(param1:String) : void
      {
         var _loc2_:Program3D = this.§^"9§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§@'§[param1];
         }
      }
      
      public function §^"9§(param1:String) : Program3D
      {
         return this.§@'§[param1] as Program3D;
      }
      
      public function §?!W§(param1:String) : Boolean
      {
         return param1 in this.§@'§;
      }
      
      public function get §#L§() : Boolean
      {
         return this.§'!>§;
      }
      
      public function get §^!d§() : §8p§
      {
         return this.§2#§;
      }
      
      public function get §;r§() : Boolean
      {
         return this.§[!v§;
      }
      
      public function set §;r§(param1:Boolean) : void
      {
         this.§[!v§ = param1;
         if(this.§[U§)
         {
            this.§'8§.§;r§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§%!L§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§%!L§ = param1;
         if(this.§[U§)
         {
            this.§[U§.enableErrorChecking = param1;
         }
      }
      
      public function get §>>§() : int
      {
         return this.§0!x§;
      }
      
      public function set §>>§(param1:int) : void
      {
         this.§0!x§ = param1;
         this.§9S§();
      }
      
      public function get §<!J§() : Rectangle
      {
         return this.§6&§.clone();
      }
      
      public function set §<!J§(param1:Rectangle) : void
      {
         this.§6&§ = param1.clone();
         this.§9S§();
      }
      
      public function get §7!H§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§=+§ == null)
         {
            this.§=+§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§=+§.contextMenu = _loc1_;
            this.§[X§();
         }
         return this.§=+§;
      }
      
      public function get stage() : §+!-§.Stage
      {
         return this.§0"§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §+!l§() : flash.display.Stage
      {
         return this.§1"0§;
      }
      
      public function get §8"1§() : Boolean
      {
         return !this.§]l§;
      }
   }
}
