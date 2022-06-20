package §+"6§
{
   import § "7§.§9,§;
   import §<L§.Texture;
   import §]&§.DisplayObject;
   import §]&§.Stage;
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
   import starling.events.§1!Q§;
   import starling.events.§5!f§;
   import starling.events.§9!,§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §5!H§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §4!=§:§5!H§;
      
      private static var §2S§:Boolean;
      
      private static var §<<§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §"""§:§]&§.Stage;
      
      private var §^G§:Class;
      
      private var §[`§:§]&§.DisplayObject;
      
      private var §+!I§:§9,§;
      
      private var §4!C§:Boolean;
      
      private var §&!2§:Boolean;
      
      private var §8!H§:§2!6§;
      
      private var §-v§:§5!f§;
      
      private var §[Z§:int;
      
      private var §9"#§:Boolean;
      
      private var §5"§:Boolean;
      
      private var §5!"§:Number;
      
      private var §?"&§:Rectangle;
      
      private var §<!c§:Boolean;
      
      private var §&h§:flash.display.Stage;
      
      private var §`H§:Sprite;
      
      private var §2!B§:Context3D;
      
      private var § +§:Dictionary;
      
      private var §<!0§:int;
      
      private var §'F§:Boolean;
      
      private var §5!b§:Number;
      
      private var §!s§:Number;
      
      private var §?7§:Number;
      
      private var §9"0§:Number;
      
      private var §?!^§:Number;
      
      private var §`h§:Number;
      
      private var §-!p§:Function;
      
      private var §?!g§:uint;
      
      private var §0!C§:String;
      
      private var §!!s§:Bitmap;
      
      private var §8!v§:Boolean = false;
      
      private var §&!%§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §<!'§:Boolean = false;
      
      public function §5!H§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§5!b§ = param3.width;
         this.§!s§ = param3.height;
         this.§?7§ = this.§5!b§;
         this.§9"0§ = this.§!s§;
         this.§?!^§ = param2.stageWidth;
         this.§`h§ = param2.stageHeight;
         §7"4§ = true;
         this.§1p§();
         this.§^G§ = param1;
         this.§?"&§ = param3;
         this.mStage3D = param4;
         this.§"""§ = new §]&§.Stage(param3.width,param3.height,param2.color);
         this.§&h§ = param2;
         this.§-v§ = new §5!f§(this.§"""§);
         this.§+!I§ = new §9,§();
         this.§[Z§ = 0;
         this.§9"#§ = false;
         this.§5"§ = false;
         this.§5!"§ = getTimer() / 1000;
         this.§ +§ = new Dictionary();
         for each(_loc6_ in this.§%!p§)
         {
            param2.addEventListener(_loc6_,this.§,_§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§,!U§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§,!U§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§0"<§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§7!f§,false,1,true);
         this.mStage3D.visible = false;
         this.§["8§(true);
         this.§?!g§ = param2.color;
         this.§0!C§ = param5;
      }
      
      public static function get §#!l§() : Boolean
      {
         if(§%n§)
         {
            return §%n§.§'F§;
         }
         return true;
      }
      
      public static function include() : Boolean
      {
         return §4!=§ && (§4!=§.§8!v§ || §4!=§.§2!B§ != null && §4!=§.§2!B§.driverInfo != "Disposed");
      }
      
      public static function get §%n§() : §5!H§
      {
         return §4!=§;
      }
      
      public static function get §1f§() : §9,§
      {
         return !!§4!=§ ? §4!=§.§1f§ : null;
      }
      
      public static function get §,"&§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §,"&§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §7"4§() : Boolean
      {
         return §2S§;
      }
      
      public static function set §7"4§(param1:Boolean) : void
      {
         if(§4!=§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §2S§ = param1;
      }
      
      public static function §7"B§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§%n§)
         {
            return Texture.§3"8§(§%n§.§2!B§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§4!=§.§2!B§)
         {
            §4!=§.§2!B§.drawToBitmapData(param1);
         }
         else if(§4!=§.§8!H§.canvas)
         {
            _loc2_ = §4!=§.§8!H§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §16§() : §]&§.DisplayObject
      {
         return this.§[`§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§?!g§ = param1;
      }
      
      public function get §;![§() : Number
      {
         return this.§5!b§;
      }
      
      public function get §3;§() : Number
      {
         return this.§!s§;
      }
      
      public function §'!w§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§0!C§);
         }
         catch(e:Error)
         {
            §]!m§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§<!'§ = true;
         this.§&h§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§,!U§,false);
         this.§&h§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§,!U§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§0"<§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§7!f§,false);
         for each(_loc1_ in this.§%!p§)
         {
            this.§&h§.removeEventListener(_loc1_,this.§,_§,false);
         }
         for each(_loc2_ in this.§ +§)
         {
            _loc2_.dispose();
         }
         if(this.§2!B§)
         {
            this.§2!B§.dispose();
         }
         if(this.§-v§)
         {
            this.§-v§.dispose();
         }
         if(this.§8!H§)
         {
            this.§8!H§.dispose();
         }
         if(§4!=§ == this)
         {
            §4!=§ = null;
         }
         if(this.§!!s§ && this.§!!s§.bitmapData)
         {
            this.§!!s§.bitmapData.dispose();
            this.§!!s§.bitmapData = null;
         }
      }
      
      private function §1!T§() : void
      {
         this.§2!B§ = this.mStage3D.context3D;
         this.§ +§ = new Dictionary();
         if(this.§2!B§)
         {
            this.§2!B§.enableErrorChecking = this.§5"§;
            if(this.§2!B§.driverInfo.indexOf("Software") >= 0)
            {
               this.§'F§ = true;
            }
         }
         else
         {
            this.§'F§ = true;
         }
         this.§`w§();
      }
      
      private function §^"?§() : void
      {
         if(this.§"""§.numChildren > 0)
         {
            return;
         }
         if(this.§[`§ == null)
         {
            this.§[`§ = new this.§^G§();
         }
         if(this.§[`§ == null)
         {
            throw new Error("Invalid root class: " + this.§^G§);
         }
         this.§"""§.addChild(this.§[`§);
      }
      
      private function §`w§() : void
      {
         this.§&!%§ = true;
         this.mStage3D.x = this.§?"&§.x;
         this.mStage3D.y = this.§?"&§.y;
      }
      
      private function render() : void
      {
         if(!include())
         {
            return;
         }
         if(this.§&!%§)
         {
            if(this.§2!B§)
            {
               this.§2!B§.configureBackBuffer(this.§?"&§.width,this.§?"&§.height,this.§[Z§,false);
            }
            this.§&!%§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§5!"§;
         this.§5!"§ = _loc1_;
         this.§"""§.advanceTime(_loc2_);
         this.§+!I§.advanceTime(_loc2_);
         this.§-v§.advanceTime(_loc2_);
         this.§8!H§.§%!k§(this.§"""§.stageWidth,this.§"""§.stageHeight);
         this.§8!H§.clear(this.§2!B§,this.§?!g§,1);
         this.§8!H§.§0x§(this.§2!B§,this.§<!0§);
         this.§"""§.render(this.§8!H§,1);
         this.§8!H§.§1!P§();
         if(this.§-!p§ != null)
         {
            this.§-!p§();
            this.§-!p§ = null;
         }
         this.§8!H§.finishRendering(this.§2!B§);
         this.§8!H§.§5!6§();
      }
      
      public function set §@!&§(param1:Function) : void
      {
         this.§-!p§ = param1;
      }
      
      private function §'"+§() : void
      {
         var _loc3_:BitmapData = null;
         this.§`H§.x = this.§?"&§.x;
         this.§`H§.y = this.§?"&§.y;
         var _loc1_:int = this.§`H§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§`H§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§&h§.addChild(this.§`H§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§&h§.removeChild(this.§`H§);
         }
         if(this.§8!H§ && this.§8!H§.canvas)
         {
            this.§8!H§.setCanvasSize(this.§?7§,this.§9"0§,this.§?"&§.width / this.§"""§.stageWidth,this.§?"&§.height / this.§"""§.stageHeight);
            _loc3_ = this.§8!H§.canvas;
            if(this.§!!s§.bitmapData != _loc3_)
            {
               this.§!!s§.bitmapData = _loc3_;
            }
            if(this.§&h§.getChildIndex(this.§`H§) > 0)
            {
               this.§&h§.removeChild(this.§`H§);
               this.§&h§.addChildAt(this.§`H§,0);
            }
         }
      }
      
      private function §]!m§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§"""§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§"""§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§"""§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§8§.addChild(_loc2_);
      }
      
      public function §1p§() : void
      {
         §4!=§ = this;
      }
      
      public function start() : void
      {
         this.§4!C§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§4!C§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §["8§(param1:Boolean) : void
      {
         this.§&!2§ = param1;
      }
      
      private function §]§() : void
      {
         this.§8!v§ = true;
         if(this.§!!s§ == null)
         {
            this.§!!s§ = new Bitmap();
            this.§8§.addChild(this.§!!s§);
         }
      }
      
      private function §7!f§(param1:ErrorEvent) : void
      {
         this.§]§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §0"<§(param1:flash.events.Event) : void
      {
         if(this.§<!'§)
         {
            return;
         }
         ++§<<§;
         this.§<!0§ = §<<§;
         if(this.§8!H§)
         {
            this.§8!H§.dispose();
         }
         if(!§5!H§.§7"4§ && this.§2!B§)
         {
            this.§]!m§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§1p§();
         this.§1!T§();
         this.§^"?§();
         if(this.§2!B§ && this.§'F§)
         {
            this.mStage3DEnabled = false;
            this.§2!B§ = null;
            this.§]§();
         }
         if(this.§2!B§)
         {
            this.§8!H§ = new §2!6§();
         }
         else
         {
            this.§8!H§ = new §4g§();
            this.§8!H§.setCanvasSize(this.§?7§,this.§9"0§,this.§?"&§.width / this.§"""§.stageWidth,this.§?"&§.height / this.§"""§.stageHeight);
            this.§8!H§.clear(null,this.§?!g§);
         }
         this.§-v§.§2v§ = this.§9"#§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§1p§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§5!"§;
         if(this.§4!C§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§`H§)
         {
            this.§'"+§();
         }
      }
      
      private function §,!U§(param1:flash.events.KeyboardEvent) : void
      {
         this.§1p§();
         this.§"""§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§5!b§;
         var _loc5_:Number = param2 / this.§!s§;
         if(!param3)
         {
            this.§"""§.stageWidth = this.§5!b§ * _loc4_ / _loc5_;
            this.§"""§.stageHeight = this.§!s§;
         }
         else
         {
            this.§"""§.stageWidth = this.§5!b§;
            this.§"""§.stageHeight = this.§!s§ * _loc5_ / _loc4_;
         }
         this.§?7§ = param1;
         this.§9"0§ = param2;
         this.§"""§.dispatchEvent(new §9!,§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §^!Z§() : void
      {
         this.setCanvasSize(this.§5!b§,this.§!s§);
      }
      
      private function §,_§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§4!C§ || !this.§&!2§)
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
               this.§<!c§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§<!c§ = false;
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
               _loc5_ = §1!Q§.§5J§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §1!Q§.§'y§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §1!Q§.§^5§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §1!Q§.§5J§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §1!Q§.§^5§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§<!c§ ? §1!Q§.§'y§ : §1!Q§.§>!2§;
         }
         if((_loc2_ < this.§?"&§.left || _loc2_ >= this.§?"&§.right || _loc3_ < this.§?"&§.top || _loc3_ >= this.§?"&§.bottom) && _loc5_ == §1!Q§.§5J§)
         {
            return;
         }
         _loc2_ -= this.§?"&§.x;
         _loc3_ -= this.§?"&§.y;
         this.§-v§.§2!=§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §%!p§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §[!>§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§ +§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§2!B§ != null)
         {
            (_loc4_ = this.§2!B§.createProgram()).upload(param2,param3);
            this.§ +§[param1] = _loc4_;
         }
      }
      
      public function §!T§(param1:String) : void
      {
         var _loc2_:Program3D = this.§?!a§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§ +§[param1];
         }
      }
      
      public function §?!a§(param1:String) : Program3D
      {
         return this.§ +§[param1] as Program3D;
      }
      
      public function §`"?§(param1:String) : Boolean
      {
         return param1 in this.§ +§;
      }
      
      public function get §]!Z§() : Boolean
      {
         return this.§4!C§;
      }
      
      public function get §1f§() : §9,§
      {
         return this.§+!I§;
      }
      
      public function get §2v§() : Boolean
      {
         return this.§9"#§;
      }
      
      public function set §2v§(param1:Boolean) : void
      {
         this.§9"#§ = param1;
         if(this.§2!B§)
         {
            this.§-v§.§2v§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§5"§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§5"§ = param1;
         if(this.§2!B§)
         {
            this.§2!B§.enableErrorChecking = param1;
         }
      }
      
      public function get §3!t§() : int
      {
         return this.§[Z§;
      }
      
      public function set §3!t§(param1:int) : void
      {
         this.§[Z§ = param1;
         this.§`w§();
      }
      
      public function get §3V§() : Rectangle
      {
         return this.§?"&§.clone();
      }
      
      public function set §3V§(param1:Rectangle) : void
      {
         this.§?"&§ = param1.clone();
         this.§`w§();
      }
      
      public function get §8§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§`H§ == null)
         {
            this.§`H§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§`H§.contextMenu = _loc1_;
            this.§'"+§();
         }
         return this.§`H§;
      }
      
      public function get stage() : §]&§.Stage
      {
         return this.§"""§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §7"7§() : flash.display.Stage
      {
         return this.§&h§;
      }
      
      public function get §6@§() : Boolean
      {
         return !this.§8!v§;
      }
   }
}
