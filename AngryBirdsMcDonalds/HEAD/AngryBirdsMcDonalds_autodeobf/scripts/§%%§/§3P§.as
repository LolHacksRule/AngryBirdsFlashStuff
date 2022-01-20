package §%%§
{
   import §&7§.Texture;
   import §-P§.§7i§;
   import §`!n§.DisplayObject;
   import §`!n§.Stage;
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
   import starling.events.§ 6§;
   import starling.events.§'!f§;
   import starling.events.§=b§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §3P§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §[1§:§3P§;
      
      private static var §?G§:Boolean;
      
      private static var §4!B§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §]4§:§`!n§.Stage;
      
      private var §``§:Class;
      
      private var §%p§:§`!n§.DisplayObject;
      
      private var §#!a§:§7i§;
      
      private var §5!c§:Boolean;
      
      private var §%P§:Boolean;
      
      private var §?U§:§,!<§;
      
      private var § s§:§'!f§;
      
      private var §3E§:int;
      
      private var §`!!§:Boolean;
      
      private var §'!M§:Boolean;
      
      private var §=!0§:Number;
      
      private var §2!=§:Rectangle;
      
      private var §&!6§:Boolean;
      
      private var §^P§:flash.display.Stage;
      
      private var §?!@§:Sprite;
      
      private var §3-§:Context3D;
      
      private var §-7§:Dictionary;
      
      private var §^!"§:int;
      
      private var §&!h§:Boolean;
      
      private var § W§:Number;
      
      private var §7J§:Number;
      
      private var §!!T§:Number;
      
      private var §0!<§:Number;
      
      private var §?h§:Number;
      
      private var §1]§:Number;
      
      private var §%a§:Function;
      
      private var §>O§:uint;
      
      private var §2d§:String;
      
      private var §8!m§:Bitmap;
      
      private var §"!L§:Boolean = false;
      
      private var §2j§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §11§:Boolean = false;
      
      public function §3P§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§ W§ = param3.width;
         this.§7J§ = param3.height;
         this.§!!T§ = this.§ W§;
         this.§0!<§ = this.§7J§;
         this.§?h§ = param2.stageWidth;
         this.§1]§ = param2.stageHeight;
         §7+§ = true;
         this.§0!O§();
         this.§``§ = param1;
         this.§2!=§ = param3;
         this.mStage3D = param4;
         this.§]4§ = new §`!n§.Stage(param3.width,param3.height,param2.color);
         this.§^P§ = param2;
         this.§ s§ = new §'!f§(this.§]4§);
         this.§#!a§ = new §7i§();
         this.§3E§ = 0;
         this.§`!!§ = false;
         this.§'!M§ = false;
         this.§=!0§ = getTimer() / 1000;
         this.§-7§ = new Dictionary();
         for each(_loc6_ in this.§7x§)
         {
            param2.addEventListener(_loc6_,this.§6!L§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!>§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!>§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!i§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§2C§,false,1,true);
         this.mStage3D.visible = false;
         this.§@$§(true);
         this.§>O§ = param2.color;
         this.§2d§ = param5;
      }
      
      public static function get §+!J§() : Boolean
      {
         if(§6_§)
         {
            return §6_§.§&!h§;
         }
         return true;
      }
      
      public static function §'j§() : Boolean
      {
         return §[1§ && (§[1§.§"!L§ || §[1§.§3-§ != null && §[1§.§3-§.driverInfo != "Disposed");
      }
      
      public static function get §6_§() : §3P§
      {
         return §[1§;
      }
      
      public static function get §;m§() : §7i§
      {
         return !!§[1§ ? §[1§.§;m§ : null;
      }
      
      public static function get §-![§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §-![§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §7+§() : Boolean
      {
         return §?G§;
      }
      
      public static function set §7+§(param1:Boolean) : void
      {
         if(§[1§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §?G§ = param1;
      }
      
      public static function §7!M§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§6_§)
         {
            return Texture.§^!k§(§6_§.§3-§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§[1§.§3-§)
         {
            §[1§.§3-§.drawToBitmapData(param1);
         }
         else if(§[1§.§?U§.canvas)
         {
            _loc2_ = §[1§.§?U§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §1Y§() : §`!n§.DisplayObject
      {
         return this.§%p§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§>O§ = param1;
      }
      
      public function get §4!L§() : Number
      {
         return this.§ W§;
      }
      
      public function get §;[§() : Number
      {
         return this.§7J§;
      }
      
      public function §7R§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§2d§);
         }
         catch(e:Error)
         {
            §,Q§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§11§ = true;
         this.§^P§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!>§,false);
         this.§^P§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!>§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!i§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§2C§,false);
         for each(_loc1_ in this.§7x§)
         {
            this.§^P§.removeEventListener(_loc1_,this.§6!L§,false);
         }
         for each(_loc2_ in this.§-7§)
         {
            _loc2_.dispose();
         }
         if(this.§3-§)
         {
            this.§3-§.dispose();
         }
         if(this.§ s§)
         {
            this.§ s§.dispose();
         }
         if(this.§?U§)
         {
            this.§?U§.dispose();
         }
         if(§[1§ == this)
         {
            §[1§ = null;
         }
         if(this.§8!m§ && this.§8!m§.bitmapData)
         {
            this.§8!m§.bitmapData.dispose();
            this.§8!m§.bitmapData = null;
         }
      }
      
      private function §4!,§() : void
      {
         this.§3-§ = this.mStage3D.context3D;
         this.§-7§ = new Dictionary();
         if(this.§3-§)
         {
            this.§3-§.enableErrorChecking = this.§'!M§;
            if(this.§3-§.driverInfo.indexOf("Software") >= 0)
            {
               this.§&!h§ = true;
            }
         }
         else
         {
            this.§&!h§ = true;
         }
         this.§&!O§();
      }
      
      private function §4Z§() : void
      {
         if(this.§]4§.numChildren > 0)
         {
            return;
         }
         if(this.§%p§ == null)
         {
            this.§%p§ = new this.§``§();
         }
         if(this.§%p§ == null)
         {
            throw new Error("Invalid root class: " + this.§``§);
         }
         this.§]4§.addChild(this.§%p§);
      }
      
      private function §&!O§() : void
      {
         this.§2j§ = true;
         this.mStage3D.x = this.§2!=§.x;
         this.mStage3D.y = this.§2!=§.y;
      }
      
      private function render() : void
      {
         if(!§'j§())
         {
            return;
         }
         if(this.§2j§)
         {
            if(this.§3-§)
            {
               this.§3-§.configureBackBuffer(this.§2!=§.width,this.§2!=§.height,this.§3E§,false);
            }
            this.§2j§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§=!0§;
         this.§=!0§ = _loc1_;
         this.§]4§.advanceTime(_loc2_);
         this.§#!a§.advanceTime(_loc2_);
         this.§ s§.advanceTime(_loc2_);
         this.§?U§.§"P§(this.§]4§.stageWidth,this.§]4§.stageHeight);
         this.§?U§.clear(this.§3-§,this.§>O§,1);
         this.§?U§.§4!h§(this.§3-§,this.§^!"§);
         this.§]4§.render(this.§?U§,1);
         this.§?U§.§@G§();
         if(this.§%a§ != null)
         {
            this.§%a§();
            this.§%a§ = null;
         }
         this.§?U§.finishRendering(this.§3-§);
         this.§?U§.§8_§();
      }
      
      public function set §=!R§(param1:Function) : void
      {
         this.§%a§ = param1;
      }
      
      private function §7C§() : void
      {
         var _loc3_:BitmapData = null;
         this.§?!@§.x = this.§2!=§.x;
         this.§?!@§.y = this.§2!=§.y;
         var _loc1_:int = this.§?!@§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§?!@§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§^P§.addChild(this.§?!@§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§^P§.removeChild(this.§?!@§);
         }
         if(this.§?U§ && this.§?U§.canvas)
         {
            this.§?U§.setCanvasSize(this.§!!T§,this.§0!<§,this.§2!=§.width / this.§]4§.stageWidth,this.§2!=§.height / this.§]4§.stageHeight);
            _loc3_ = this.§?U§.canvas;
            if(this.§8!m§.bitmapData != _loc3_)
            {
               this.§8!m§.bitmapData = _loc3_;
            }
            if(this.§^P§.getChildIndex(this.§?!@§) > 0)
            {
               this.§^P§.removeChild(this.§?!@§);
               this.§^P§.addChildAt(this.§?!@§,0);
            }
         }
      }
      
      private function §,Q§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§]4§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§]4§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§]4§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§ !j§.addChild(_loc2_);
      }
      
      public function §0!O§() : void
      {
         §[1§ = this;
      }
      
      public function start() : void
      {
         this.§5!c§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§5!c§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §@$§(param1:Boolean) : void
      {
         this.§%P§ = param1;
      }
      
      private function §;!B§() : void
      {
         this.§"!L§ = true;
         if(this.§8!m§ == null)
         {
            this.§8!m§ = new Bitmap();
            this.§ !j§.addChild(this.§8!m§);
         }
      }
      
      private function §2C§(param1:ErrorEvent) : void
      {
         this.§;!B§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §3!i§(param1:flash.events.Event) : void
      {
         if(this.§11§)
         {
            return;
         }
         ++§4!B§;
         this.§^!"§ = §4!B§;
         if(this.§?U§)
         {
            this.§?U§.dispose();
         }
         if(!§3P§.§7+§ && this.§3-§)
         {
            this.§,Q§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§0!O§();
         this.§4!,§();
         this.§4Z§();
         if(this.§3-§ && this.§&!h§)
         {
            this.mStage3DEnabled = false;
            this.§3-§ = null;
            this.§;!B§();
         }
         if(this.§3-§)
         {
            this.§?U§ = new §,!<§();
         }
         else
         {
            this.§?U§ = new §5!-§();
            this.§?U§.setCanvasSize(this.§!!T§,this.§0!<§,this.§2!=§.width / this.§]4§.stageWidth,this.§2!=§.height / this.§]4§.stageHeight);
            this.§?U§.clear(null,this.§>O§);
         }
         this.§ s§.simulateMultitouch = this.§`!!§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §'V§(param1:flash.events.Event) : void
      {
         this.§0!O§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§=!0§;
         if(this.§5!c§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§?!@§)
         {
            this.§7C§();
         }
      }
      
      private function §!>§(param1:flash.events.KeyboardEvent) : void
      {
         this.§0!O§();
         this.§]4§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§ W§;
         var _loc5_:Number = param2 / this.§7J§;
         if(!param3)
         {
            this.§]4§.stageWidth = this.§ W§ * _loc4_ / _loc5_;
            this.§]4§.stageHeight = this.§7J§;
         }
         else
         {
            this.§]4§.stageWidth = this.§ W§;
            this.§]4§.stageHeight = this.§7J§ * _loc5_ / _loc4_;
         }
         this.§!!T§ = param1;
         this.§0!<§ = param2;
         this.§]4§.dispatchEvent(new § 6§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §-!,§() : void
      {
         this.setCanvasSize(this.§ W§,this.§7J§);
      }
      
      private function §6!L§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§5!c§ || !this.§%P§)
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
               this.§&!6§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§&!6§ = false;
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
               _loc5_ = §=b§.§;i§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §=b§.§`U§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §=b§.§'q§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §=b§.§;i§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §=b§.§'q§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§&!6§ ? §=b§.§`U§ : §=b§.§0k§;
         }
         if((_loc2_ < this.§2!=§.left || _loc2_ >= this.§2!=§.right || _loc3_ < this.§2!=§.top || _loc3_ >= this.§2!=§.bottom) && _loc5_ == §=b§.§;i§)
         {
            return;
         }
         _loc2_ -= this.§2!=§.x;
         _loc3_ -= this.§2!=§.y;
         this.§ s§.§-!m§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §7x§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §=!m§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§-7§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§3-§ != null)
         {
            (_loc4_ = this.§3-§.createProgram()).upload(param2,param3);
            this.§-7§[param1] = _loc4_;
         }
      }
      
      public function §>X§(param1:String) : void
      {
         var _loc2_:Program3D = this.§5!§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§-7§[param1];
         }
      }
      
      public function §5!§(param1:String) : Program3D
      {
         return this.§-7§[param1] as Program3D;
      }
      
      public function §8^§(param1:String) : Boolean
      {
         return param1 in this.§-7§;
      }
      
      public function get § !W§() : Boolean
      {
         return this.§5!c§;
      }
      
      public function get §;m§() : §7i§
      {
         return this.§#!a§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§`!!§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§`!!§ = param1;
         if(this.§3-§)
         {
            this.§ s§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§'!M§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§'!M§ = param1;
         if(this.§3-§)
         {
            this.§3-§.enableErrorChecking = param1;
         }
      }
      
      public function get §;Z§() : int
      {
         return this.§3E§;
      }
      
      public function set §;Z§(param1:int) : void
      {
         this.§3E§ = param1;
         this.§&!O§();
      }
      
      public function get §5!4§() : Rectangle
      {
         return this.§2!=§.clone();
      }
      
      public function set §5!4§(param1:Rectangle) : void
      {
         this.§2!=§ = param1.clone();
         this.§&!O§();
      }
      
      public function get § !j§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§?!@§ == null)
         {
            this.§?!@§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§?!@§.contextMenu = _loc1_;
            this.§7C§();
         }
         return this.§?!@§;
      }
      
      public function get stage() : §`!n§.Stage
      {
         return this.§]4§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §96§() : flash.display.Stage
      {
         return this.§^P§;
      }
      
      public function get §9S§() : Boolean
      {
         return !this.§"!L§;
      }
   }
}
