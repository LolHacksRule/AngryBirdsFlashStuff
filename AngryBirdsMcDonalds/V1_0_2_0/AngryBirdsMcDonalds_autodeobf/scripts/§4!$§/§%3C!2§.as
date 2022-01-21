package §4!$§
{
   import §",§.Texture;
   import §5x§.DisplayObject;
   import §5x§.Stage;
   import §]d§.§@Z§;
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
   import starling.events.§6!Y§;
   import starling.events.§?I§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^f§;
   
   public class §<!2§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §^[§:§<!2§;
      
      private static var §8t§:Boolean;
      
      private static var §3!E§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §#Z§:§5x§.Stage;
      
      private var §"3§:Class;
      
      private var §7!M§:§5x§.DisplayObject;
      
      private var §^R§:§@Z§;
      
      private var §!!L§:Boolean;
      
      private var §;!A§:Boolean;
      
      private var §?!4§:§]!f§;
      
      private var §=!7§:§^f§;
      
      private var §=!m§:int;
      
      private var §7]§:Boolean;
      
      private var §get §:Boolean;
      
      private var §7+§:Number;
      
      private var §2!l§:Rectangle;
      
      private var §]`§:Boolean;
      
      private var §[k§:flash.display.Stage;
      
      private var §4!m§:Sprite;
      
      private var §;!P§:Context3D;
      
      private var §@!H§:Dictionary;
      
      private var §5!6§:int;
      
      private var §;!B§:Boolean;
      
      private var §;w§:Number;
      
      private var §@&§:Number;
      
      private var §2J§:Number;
      
      private var §"!-§:Number;
      
      private var §"y§:Number;
      
      private var §@!h§:Number;
      
      private var §=I§:Function;
      
      private var §=s§:uint;
      
      private var §1!<§:String;
      
      private var §@!M§:Bitmap;
      
      private var §!!%§:Boolean = false;
      
      private var §;m§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §'4§:Boolean = false;
      
      public function §<!2§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§;w§ = param3.width;
         this.§@&§ = param3.height;
         this.§2J§ = this.§;w§;
         this.§"!-§ = this.§@&§;
         this.§"y§ = param2.stageWidth;
         this.§@!h§ = param2.stageHeight;
         §+X§ = true;
         this.§`w§();
         this.§"3§ = param1;
         this.§2!l§ = param3;
         this.mStage3D = param4;
         this.§#Z§ = new §5x§.Stage(param3.width,param3.height,param2.color);
         this.§[k§ = param2;
         this.§=!7§ = new §^f§(this.§#Z§);
         this.§^R§ = new §@Z§();
         this.§=!m§ = 0;
         this.§7]§ = false;
         this.§get § = false;
         this.§7+§ = getTimer() / 1000;
         this.§@!H§ = new Dictionary();
         for each(_loc6_ in this.§7!3§)
         {
            param2.addEventListener(_loc6_,this.§4=§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§;j§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§;j§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&>§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§=!Y§,false,1,true);
         this.mStage3D.visible = false;
         this.§,c§(true);
         this.§=s§ = param2.color;
         this.§1!<§ = param5;
      }
      
      public static function get § !p§() : Boolean
      {
         if(§[!]§)
         {
            return §[!]§.§;!B§;
         }
         return true;
      }
      
      public static function §>f§() : Boolean
      {
         return §^[§ && (§^[§.§!!%§ || §^[§.§;!P§ != null && §^[§.§;!P§.driverInfo != "Disposed");
      }
      
      public static function get §[!]§() : §<!2§
      {
         return §^[§;
      }
      
      public static function get §!K§() : §@Z§
      {
         return !!§^[§ ? §^[§.§!K§ : null;
      }
      
      public static function get §#!d§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §#!d§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §+X§() : Boolean
      {
         return §8t§;
      }
      
      public static function set §+X§(param1:Boolean) : void
      {
         if(§^[§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §8t§ = param1;
      }
      
      public static function § else§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§[!]§)
         {
            return Texture.§7N§(§[!]§.§;!P§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§^[§.§;!P§)
         {
            §^[§.§;!P§.drawToBitmapData(param1);
         }
         else if(§^[§.§?!4§.canvas)
         {
            _loc2_ = §^[§.§?!4§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §5!'§() : §5x§.DisplayObject
      {
         return this.§7!M§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§=s§ = param1;
      }
      
      public function get §'!e§() : Number
      {
         return this.§;w§;
      }
      
      public function get §?!n§() : Number
      {
         return this.§@&§;
      }
      
      public function §[!W§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§1!<§);
         }
         catch(e:Error)
         {
            §0%§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§'4§ = true;
         this.§[k§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§;j§,false);
         this.§[k§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§;j§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&>§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§=!Y§,false);
         for each(_loc1_ in this.§7!3§)
         {
            this.§[k§.removeEventListener(_loc1_,this.§4=§,false);
         }
         for each(_loc2_ in this.§@!H§)
         {
            _loc2_.dispose();
         }
         if(this.§;!P§)
         {
            this.§;!P§.dispose();
         }
         if(this.§=!7§)
         {
            this.§=!7§.dispose();
         }
         if(this.§?!4§)
         {
            this.§?!4§.dispose();
         }
         if(§^[§ == this)
         {
            §^[§ = null;
         }
         if(this.§@!M§ && this.§@!M§.bitmapData)
         {
            this.§@!M§.bitmapData.dispose();
            this.§@!M§.bitmapData = null;
         }
      }
      
      private function §+H§() : void
      {
         this.§;!P§ = this.mStage3D.context3D;
         this.§@!H§ = new Dictionary();
         if(this.§;!P§)
         {
            this.§;!P§.enableErrorChecking = this.§get §;
            if(this.§;!P§.driverInfo.indexOf("Software") >= 0)
            {
               this.§;!B§ = true;
            }
         }
         else
         {
            this.§;!B§ = true;
         }
         this.§+!]§();
      }
      
      private function §&!6§() : void
      {
         if(this.§#Z§.numChildren > 0)
         {
            return;
         }
         if(this.§7!M§ == null)
         {
            this.§7!M§ = new this.§"3§();
         }
         if(this.§7!M§ == null)
         {
            throw new Error("Invalid root class: " + this.§"3§);
         }
         this.§#Z§.addChild(this.§7!M§);
      }
      
      private function §+!]§() : void
      {
         this.§;m§ = true;
         this.mStage3D.x = this.§2!l§.x;
         this.mStage3D.y = this.§2!l§.y;
      }
      
      private function render() : void
      {
         if(!§>f§())
         {
            return;
         }
         if(this.§;m§)
         {
            if(this.§;!P§)
            {
               this.§;!P§.configureBackBuffer(this.§2!l§.width,this.§2!l§.height,this.§=!m§,false);
            }
            this.§;m§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§7+§;
         this.§7+§ = _loc1_;
         this.§#Z§.advanceTime(_loc2_);
         this.§^R§.advanceTime(_loc2_);
         this.§=!7§.advanceTime(_loc2_);
         this.§?!4§.§!U§(this.§#Z§.stageWidth,this.§#Z§.stageHeight);
         this.§?!4§.clear(this.§;!P§,this.§=s§,1);
         this.§?!4§.§75§(this.§;!P§,this.§5!6§);
         this.§#Z§.render(this.§?!4§,1);
         this.§?!4§.§#D§();
         if(this.§=I§ != null)
         {
            this.§=I§();
            this.§=I§ = null;
         }
         this.§?!4§.finishRendering(this.§;!P§);
         this.§?!4§.§^!%§();
      }
      
      public function set §&k§(param1:Function) : void
      {
         this.§=I§ = param1;
      }
      
      private function §,+§() : void
      {
         var _loc3_:BitmapData = null;
         this.§4!m§.x = this.§2!l§.x;
         this.§4!m§.y = this.§2!l§.y;
         var _loc1_:int = this.§4!m§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§4!m§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§[k§.addChild(this.§4!m§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§[k§.removeChild(this.§4!m§);
         }
         if(this.§?!4§ && this.§?!4§.canvas)
         {
            this.§?!4§.setCanvasSize(this.§2J§,this.§"!-§,this.§2!l§.width / this.§#Z§.stageWidth,this.§2!l§.height / this.§#Z§.stageHeight);
            _loc3_ = this.§?!4§.canvas;
            if(this.§@!M§.bitmapData != _loc3_)
            {
               this.§@!M§.bitmapData = _loc3_;
            }
            if(this.§[k§.getChildIndex(this.§4!m§) > 0)
            {
               this.§[k§.removeChild(this.§4!m§);
               this.§[k§.addChildAt(this.§4!m§,0);
            }
         }
      }
      
      private function §0%§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§#Z§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§#Z§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§#Z§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§9C§.addChild(_loc2_);
      }
      
      public function §`w§() : void
      {
         §^[§ = this;
      }
      
      public function start() : void
      {
         this.§!!L§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§!!L§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §,c§(param1:Boolean) : void
      {
         this.§;!A§ = param1;
      }
      
      private function §2O§() : void
      {
         this.§!!%§ = true;
         if(this.§@!M§ == null)
         {
            this.§@!M§ = new Bitmap();
            this.§9C§.addChild(this.§@!M§);
         }
      }
      
      private function §=!Y§(param1:ErrorEvent) : void
      {
         this.§2O§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §&>§(param1:flash.events.Event) : void
      {
         if(this.§'4§)
         {
            return;
         }
         ++§3!E§;
         this.§5!6§ = §3!E§;
         if(this.§?!4§)
         {
            this.§?!4§.dispose();
         }
         if(!§<!2§.§+X§ && this.§;!P§)
         {
            this.§0%§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§`w§();
         this.§+H§();
         this.§&!6§();
         if(this.§;!P§ && this.§;!B§)
         {
            this.mStage3DEnabled = false;
            this.§;!P§ = null;
            this.§2O§();
         }
         if(this.§;!P§)
         {
            this.§?!4§ = new §]!f§();
         }
         else
         {
            this.§?!4§ = new §'!-§();
            this.§?!4§.setCanvasSize(this.§2J§,this.§"!-§,this.§2!l§.width / this.§#Z§.stageWidth,this.§2!l§.height / this.§#Z§.stageHeight);
            this.§?!4§.clear(null,this.§=s§);
         }
         this.§=!7§.simulateMultitouch = this.§7]§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §<'§(param1:flash.events.Event) : void
      {
         this.§`w§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§7+§;
         if(this.§!!L§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§4!m§)
         {
            this.§,+§();
         }
      }
      
      private function §;j§(param1:flash.events.KeyboardEvent) : void
      {
         this.§`w§();
         this.§#Z§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§;w§;
         var _loc5_:Number = param2 / this.§@&§;
         if(!param3)
         {
            this.§#Z§.stageWidth = this.§;w§ * _loc4_ / _loc5_;
            this.§#Z§.stageHeight = this.§@&§;
         }
         else
         {
            this.§#Z§.stageWidth = this.§;w§;
            this.§#Z§.stageHeight = this.§@&§ * _loc5_ / _loc4_;
         }
         this.§2J§ = param1;
         this.§"!-§ = param2;
         this.§#Z§.dispatchEvent(new §6!Y§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §@!d§() : void
      {
         this.setCanvasSize(this.§;w§,this.§@&§);
      }
      
      private function §4=§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§!!L§ || !this.§;!A§)
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
               this.§]`§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§]`§ = false;
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
               _loc5_ = §?I§.§1!^§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §?I§.§'i§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §?I§.§%!G§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §?I§.§1!^§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §?I§.§%!G§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§]`§ ? §?I§.§'i§ : §?I§.§#!N§;
         }
         if((_loc2_ < this.§2!l§.left || _loc2_ >= this.§2!l§.right || _loc3_ < this.§2!l§.top || _loc3_ >= this.§2!l§.bottom) && _loc5_ == §?I§.§1!^§)
         {
            return;
         }
         _loc2_ -= this.§2!l§.x;
         _loc3_ -= this.§2!l§.y;
         this.§=!7§.§>^§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §7!3§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §4!_§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§@!H§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§;!P§ != null)
         {
            (_loc4_ = this.§;!P§.createProgram()).upload(param2,param3);
            this.§@!H§[param1] = _loc4_;
         }
      }
      
      public function §<!C§(param1:String) : void
      {
         var _loc2_:Program3D = this.§#d§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§@!H§[param1];
         }
      }
      
      public function §#d§(param1:String) : Program3D
      {
         return this.§@!H§[param1] as Program3D;
      }
      
      public function §+A§(param1:String) : Boolean
      {
         return param1 in this.§@!H§;
      }
      
      public function get §!!#§() : Boolean
      {
         return this.§!!L§;
      }
      
      public function get §!K§() : §@Z§
      {
         return this.§^R§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§7]§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§7]§ = param1;
         if(this.§;!P§)
         {
            this.§=!7§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§get §;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§get § = param1;
         if(this.§;!P§)
         {
            this.§;!P§.enableErrorChecking = param1;
         }
      }
      
      public function get §`G§() : int
      {
         return this.§=!m§;
      }
      
      public function set §`G§(param1:int) : void
      {
         this.§=!m§ = param1;
         this.§+!]§();
      }
      
      public function get §%!l§() : Rectangle
      {
         return this.§2!l§.clone();
      }
      
      public function set §%!l§(param1:Rectangle) : void
      {
         this.§2!l§ = param1.clone();
         this.§+!]§();
      }
      
      public function get §9C§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§4!m§ == null)
         {
            this.§4!m§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§4!m§.contextMenu = _loc1_;
            this.§,+§();
         }
         return this.§4!m§;
      }
      
      public function get stage() : §5x§.Stage
      {
         return this.§#Z§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §6N§() : flash.display.Stage
      {
         return this.§[k§;
      }
      
      public function get §1b§() : Boolean
      {
         return !this.§!!%§;
      }
   }
}
