package §<&§
{
   import §'!9§.DisplayObject;
   import §'!9§.Stage;
   import §<!o§.§;e§;
   import §^!+§.Texture;
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
   import starling.events.§&!h§;
   import starling.events.§,f§;
   import starling.events.§;@§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §^b§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §=z§:§^b§;
      
      private static var §8b§:Boolean;
      
      private static var §!!`§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §;p§:§'!9§.Stage;
      
      private var §"!e§:Class;
      
      private var §>c§:§'!9§.DisplayObject;
      
      private var §-2§:§;e§;
      
      private var §08§:Boolean;
      
      private var §2!'§:Boolean;
      
      private var §!!P§:§`K§;
      
      private var § >§:§&!h§;
      
      private var §"l§:int;
      
      private var §9c§:Boolean;
      
      private var §&!J§:Boolean;
      
      private var §,!e§:Number;
      
      private var §&!D§:Rectangle;
      
      private var §@T§:Boolean;
      
      private var §&L§:flash.display.Stage;
      
      private var §'!u§:Sprite;
      
      private var §1U§:Context3D;
      
      private var §#s§:Dictionary;
      
      private var §3s§:int;
      
      private var §%Z§:Boolean;
      
      private var §1!J§:Number;
      
      private var §86§:Number;
      
      private var §-m§:Number;
      
      private var §#'§:Number;
      
      private var §3!C§:Number;
      
      private var §]!T§:Number;
      
      private var §8C§:Function;
      
      private var §%!v§:uint;
      
      private var §?W§:String;
      
      private var §>R§:Bitmap;
      
      private var §8D§:Boolean = false;
      
      private var §6B§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §+!Y§:Boolean = false;
      
      public function §^b§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§1!J§ = param3.width;
         this.§86§ = param3.height;
         this.§-m§ = this.§1!J§;
         this.§#'§ = this.§86§;
         this.§3!C§ = param2.stageWidth;
         this.§]!T§ = param2.stageHeight;
         §16§ = true;
         this.§4!k§();
         this.§"!e§ = param1;
         this.§&!D§ = param3;
         this.mStage3D = param4;
         this.§;p§ = new §'!9§.Stage(param3.width,param3.height,param2.color);
         this.§&L§ = param2;
         this.§ >§ = new §&!h§(this.§;p§);
         this.§-2§ = new §;e§();
         this.§"l§ = 0;
         this.§9c§ = false;
         this.§&!J§ = false;
         this.§,!e§ = getTimer() / 1000;
         this.§#s§ = new Dictionary();
         for each(_loc6_ in this.§#b§)
         {
            param2.addEventListener(_loc6_,this.§0,§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0!4§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0!4§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!!X§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§]!d§,false,1,true);
         this.mStage3D.visible = false;
         this.§6!a§(true);
         this.§%!v§ = param2.color;
         this.§?W§ = param5;
      }
      
      public static function get §7h§() : Boolean
      {
         if(§9E§)
         {
            return §9E§.§%Z§;
         }
         return true;
      }
      
      public static function §@@§() : Boolean
      {
         return §=z§ && (§=z§.§8D§ || §=z§.§1U§ != null && §=z§.§1U§.driverInfo != "Disposed");
      }
      
      public static function get §9E§() : §^b§
      {
         return §=z§;
      }
      
      public static function get §&#§() : §;e§
      {
         return !!§=z§ ? §=z§.§&#§ : null;
      }
      
      public static function get §2!J§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §2!J§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §16§() : Boolean
      {
         return §8b§;
      }
      
      public static function set §16§(param1:Boolean) : void
      {
         if(§=z§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §8b§ = param1;
      }
      
      public static function §;!;§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§9E§)
         {
            return Texture.§>x§(§9E§.§1U§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§=z§.§1U§)
         {
            §=z§.§1U§.drawToBitmapData(param1);
         }
         else if(§=z§.§!!P§.canvas)
         {
            _loc2_ = §=z§.§!!P§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §=q§() : §'!9§.DisplayObject
      {
         return this.§>c§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§%!v§ = param1;
      }
      
      public function get §%!m§() : Number
      {
         return this.§1!J§;
      }
      
      public function get §`+§() : Number
      {
         return this.§86§;
      }
      
      public function §#[§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§?W§);
         }
         catch(e:Error)
         {
            § !u§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§+!Y§ = true;
         this.§&L§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0!4§,false);
         this.§&L§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0!4§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!!X§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§]!d§,false);
         for each(_loc1_ in this.§#b§)
         {
            this.§&L§.removeEventListener(_loc1_,this.§0,§,false);
         }
         for each(_loc2_ in this.§#s§)
         {
            _loc2_.dispose();
         }
         if(this.§1U§)
         {
            this.§1U§.dispose();
         }
         if(this.§ >§)
         {
            this.§ >§.dispose();
         }
         if(this.§!!P§)
         {
            this.§!!P§.dispose();
         }
         if(§=z§ == this)
         {
            §=z§ = null;
         }
         if(this.§>R§ && this.§>R§.bitmapData)
         {
            this.§>R§.bitmapData.dispose();
            this.§>R§.bitmapData = null;
         }
      }
      
      private function §]!w§() : void
      {
         this.§1U§ = this.mStage3D.context3D;
         this.§#s§ = new Dictionary();
         if(this.§1U§)
         {
            this.§1U§.enableErrorChecking = this.§&!J§;
            if(this.§1U§.driverInfo.indexOf("Software") >= 0)
            {
               this.§%Z§ = true;
            }
         }
         else
         {
            this.§%Z§ = true;
         }
         this.§=#§();
      }
      
      private function §?!C§() : void
      {
         if(this.§;p§.numChildren > 0)
         {
            return;
         }
         if(this.§>c§ == null)
         {
            this.§>c§ = new this.§"!e§();
         }
         if(this.§>c§ == null)
         {
            throw new Error("Invalid root class: " + this.§"!e§);
         }
         this.§;p§.addChild(this.§>c§);
      }
      
      private function §=#§() : void
      {
         this.§6B§ = true;
         this.mStage3D.x = this.§&!D§.x;
         this.mStage3D.y = this.§&!D§.y;
      }
      
      private function render() : void
      {
         if(!§@@§())
         {
            return;
         }
         if(this.§6B§)
         {
            if(this.§1U§)
            {
               this.§1U§.configureBackBuffer(this.§&!D§.width,this.§&!D§.height,this.§"l§,false);
            }
            this.§6B§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§,!e§;
         this.§,!e§ = _loc1_;
         this.§;p§.advanceTime(_loc2_);
         this.§-2§.advanceTime(_loc2_);
         this.§ >§.advanceTime(_loc2_);
         this.§!!P§.§ !T§(this.§;p§.stageWidth,this.§;p§.stageHeight);
         this.§!!P§.clear(this.§1U§,this.§%!v§,1);
         this.§!!P§.§6#§(this.§1U§,this.§3s§);
         this.§;p§.render(this.§!!P§,1);
         this.§!!P§.§!r§();
         if(this.§8C§ != null)
         {
            this.§8C§();
            this.§8C§ = null;
         }
         this.§!!P§.finishRendering(this.§1U§);
         this.§!!P§.§[!P§();
      }
      
      public function set §1E§(param1:Function) : void
      {
         this.§8C§ = param1;
      }
      
      private function §!!e§() : void
      {
         var _loc3_:BitmapData = null;
         this.§'!u§.x = this.§&!D§.x;
         this.§'!u§.y = this.§&!D§.y;
         var _loc1_:int = this.§'!u§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§'!u§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§&L§.addChild(this.§'!u§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§&L§.removeChild(this.§'!u§);
         }
         if(this.§!!P§ && this.§!!P§.canvas)
         {
            this.§!!P§.setCanvasSize(this.§-m§,this.§#'§,this.§&!D§.width / this.§;p§.stageWidth,this.§&!D§.height / this.§;p§.stageHeight);
            _loc3_ = this.§!!P§.canvas;
            if(this.§>R§.bitmapData != _loc3_)
            {
               this.§>R§.bitmapData = _loc3_;
            }
            if(this.§&L§.getChildIndex(this.§'!u§) > 0)
            {
               this.§&L§.removeChild(this.§'!u§);
               this.§&L§.addChildAt(this.§'!u§,0);
            }
         }
      }
      
      private function § !u§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§;p§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§;p§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§;p§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§^!W§.addChild(_loc2_);
      }
      
      public function §4!k§() : void
      {
         §=z§ = this;
      }
      
      public function start() : void
      {
         this.§08§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§08§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §6!a§(param1:Boolean) : void
      {
         this.§2!'§ = param1;
      }
      
      private function §6!r§() : void
      {
         this.§8D§ = true;
         if(this.§>R§ == null)
         {
            this.§>R§ = new Bitmap();
            this.§^!W§.addChild(this.§>R§);
         }
      }
      
      private function §]!d§(param1:ErrorEvent) : void
      {
         this.§6!r§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §!!X§(param1:flash.events.Event) : void
      {
         if(this.§+!Y§)
         {
            return;
         }
         ++§!!`§;
         this.§3s§ = §!!`§;
         if(this.§!!P§)
         {
            this.§!!P§.dispose();
         }
         if(!§^b§.§16§ && this.§1U§)
         {
            this.§ !u§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§4!k§();
         this.§]!w§();
         this.§?!C§();
         if(this.§1U§ && this.§%Z§)
         {
            this.mStage3DEnabled = false;
            this.§1U§ = null;
            this.§6!r§();
         }
         if(this.§1U§)
         {
            this.§!!P§ = new §`K§();
         }
         else
         {
            this.§!!P§ = new §[;§();
            this.§!!P§.setCanvasSize(this.§-m§,this.§#'§,this.§&!D§.width / this.§;p§.stageWidth,this.§&!D§.height / this.§;p§.stageHeight);
            this.§!!P§.clear(null,this.§%!v§);
         }
         this.§ >§.§7J§ = this.§9c§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§4!k§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§,!e§;
         if(this.§08§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§'!u§)
         {
            this.§!!e§();
         }
      }
      
      private function §0!4§(param1:flash.events.KeyboardEvent) : void
      {
         this.§4!k§();
         this.§;p§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§1!J§;
         var _loc5_:Number = param2 / this.§86§;
         if(!param3)
         {
            this.§;p§.stageWidth = this.§1!J§ * _loc4_ / _loc5_;
            this.§;p§.stageHeight = this.§86§;
         }
         else
         {
            this.§;p§.stageWidth = this.§1!J§;
            this.§;p§.stageHeight = this.§86§ * _loc5_ / _loc4_;
         }
         this.§-m§ = param1;
         this.§#'§ = param2;
         this.§;p§.dispatchEvent(new §,f§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §?5§() : void
      {
         this.setCanvasSize(this.§1!J§,this.§86§);
      }
      
      private function §0,§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§08§ || !this.§2!'§)
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
               this.§@T§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§@T§ = false;
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
               _loc5_ = §;@§.§`O§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §;@§.§ 8§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §;@§.§>!q§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §;@§.§`O§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §;@§.§>!q§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§@T§ ? §;@§.§ 8§ : §;@§.§ ]§;
         }
         if((_loc2_ < this.§&!D§.left || _loc2_ >= this.§&!D§.right || _loc3_ < this.§&!D§.top || _loc3_ >= this.§&!D§.bottom) && _loc5_ == §;@§.§`O§)
         {
            return;
         }
         _loc2_ -= this.§&!D§.x;
         _loc3_ -= this.§&!D§.y;
         this.§ >§.§43§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §#b§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §9!<§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§#s§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§1U§ != null)
         {
            (_loc4_ = this.§1U§.createProgram()).upload(param2,param3);
            this.§#s§[param1] = _loc4_;
         }
      }
      
      public function §6f§(param1:String) : void
      {
         var _loc2_:Program3D = this.§!g§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§#s§[param1];
         }
      }
      
      public function §!g§(param1:String) : Program3D
      {
         return this.§#s§[param1] as Program3D;
      }
      
      public function §91§(param1:String) : Boolean
      {
         return param1 in this.§#s§;
      }
      
      public function get §7[§() : Boolean
      {
         return this.§08§;
      }
      
      public function get §&#§() : §;e§
      {
         return this.§-2§;
      }
      
      public function get §7J§() : Boolean
      {
         return this.§9c§;
      }
      
      public function set §7J§(param1:Boolean) : void
      {
         this.§9c§ = param1;
         if(this.§1U§)
         {
            this.§ >§.§7J§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§&!J§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§&!J§ = param1;
         if(this.§1U§)
         {
            this.§1U§.enableErrorChecking = param1;
         }
      }
      
      public function get §`8§() : int
      {
         return this.§"l§;
      }
      
      public function set §`8§(param1:int) : void
      {
         this.§"l§ = param1;
         this.§=#§();
      }
      
      public function get §5t§() : Rectangle
      {
         return this.§&!D§.clone();
      }
      
      public function set §5t§(param1:Rectangle) : void
      {
         this.§&!D§ = param1.clone();
         this.§=#§();
      }
      
      public function get §^!W§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§'!u§ == null)
         {
            this.§'!u§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§'!u§.contextMenu = _loc1_;
            this.§!!e§();
         }
         return this.§'!u§;
      }
      
      public function get stage() : §'!9§.Stage
      {
         return this.§;p§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §?!E§() : flash.display.Stage
      {
         return this.§&L§;
      }
      
      public function get §]d§() : Boolean
      {
         return !this.§8D§;
      }
   }
}
