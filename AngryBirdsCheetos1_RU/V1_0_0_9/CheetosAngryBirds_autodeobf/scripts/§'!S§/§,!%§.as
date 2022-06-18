package §'!S§
{
   import §#!`§.Texture;
   import §7u§.DisplayObject;
   import §7u§.Stage;
   import §86§.§]i§;
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
   import starling.events.§4_§;
   import starling.events.§6x§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^7§;
   
   public class §,!%§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §]!=§:§,!%§;
      
      private static var §@!B§:Boolean;
      
      private static var §]M§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §3!Z§:§7u§.Stage;
      
      private var §!!W§:Class;
      
      private var §`d§:§7u§.DisplayObject;
      
      private var §]!?§:§]i§;
      
      private var §[l§:Boolean;
      
      private var §3!=§:Boolean;
      
      private var §[3§:§5[§;
      
      private var §?j§:§^7§;
      
      private var §#5§:int;
      
      private var §-]§:Boolean;
      
      private var §5!?§:Boolean;
      
      private var §8c§:Number;
      
      private var §5`§:Rectangle;
      
      private var §<6§:Boolean;
      
      private var § +§:flash.display.Stage;
      
      private var §%d§:Sprite;
      
      private var §>b§:Context3D;
      
      private var §?u§:Dictionary;
      
      private var §#!Y§:int;
      
      private var §0!N§:Boolean;
      
      private var §6U§:Number;
      
      private var §`!7§:Number;
      
      private var §5!>§:Number;
      
      private var §08§:Number;
      
      private var §1!$§:Number;
      
      private var §`!_§:Number;
      
      private var §`%§:Function;
      
      private var §3z§:uint;
      
      private var §+Y§:String;
      
      private var §>!;§:Bitmap;
      
      private var §5!M§:Boolean = false;
      
      private var § do§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §;!R§:Boolean = false;
      
      public function §,!%§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§6U§ = param3.width;
         this.§`!7§ = param3.height;
         this.§5!>§ = this.§6U§;
         this.§08§ = this.§`!7§;
         this.§1!$§ = param2.stageWidth;
         this.§`!_§ = param2.stageHeight;
         §?D§ = true;
         this.§9]§();
         this.§!!W§ = param1;
         this.§5`§ = param3;
         this.mStage3D = param4;
         this.§3!Z§ = new §7u§.Stage(param3.width,param3.height,param2.color);
         this.§ +§ = param2;
         this.§?j§ = new §^7§(this.§3!Z§);
         this.§]!?§ = new §]i§();
         this.§#5§ = 0;
         this.§-]§ = false;
         this.§5!?§ = false;
         this.§8c§ = getTimer() / 1000;
         this.§?u§ = new Dictionary();
         for each(_loc6_ in this.§7i§)
         {
            param2.addEventListener(_loc6_,this.§9q§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!Z§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!Z§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§[!8§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§]!H§,false,1,true);
         this.mStage3D.visible = false;
         this.§]!]§(true);
         this.§3z§ = param2.color;
         this.§+Y§ = param5;
      }
      
      public static function get §96§() : Boolean
      {
         if(§]!C§)
         {
            return §]!C§.§0!N§;
         }
         return true;
      }
      
      public static function §2!V§() : Boolean
      {
         return §]!=§ && (§]!=§.§5!M§ || §]!=§.§>b§ != null && §]!=§.§>b§.driverInfo != "Disposed");
      }
      
      public static function get §]!C§() : §,!%§
      {
         return §]!=§;
      }
      
      public static function get §7x§() : §]i§
      {
         return !!§]!=§ ? §]!=§.§7x§ : null;
      }
      
      public static function get §&n§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §&n§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §?D§() : Boolean
      {
         return §@!B§;
      }
      
      public static function set §?D§(param1:Boolean) : void
      {
         if(§]!=§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §@!B§ = param1;
      }
      
      public static function §!f§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§]!C§)
         {
            return Texture.§+$§(§]!C§.§>b§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§]!=§.§>b§)
         {
            §]!=§.§>b§.drawToBitmapData(param1);
         }
         else if(§]!=§.§[3§.canvas)
         {
            _loc2_ = §]!=§.§[3§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §7!I§() : §7u§.DisplayObject
      {
         return this.§`d§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§3z§ = param1;
      }
      
      public function get §3I§() : Number
      {
         return this.§6U§;
      }
      
      public function get §7_§() : Number
      {
         return this.§`!7§;
      }
      
      public function §#T§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§+Y§);
         }
         catch(e:Error)
         {
            §%,§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§;!R§ = true;
         this.§ +§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!Z§,false);
         this.§ +§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!Z§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§[!8§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§]!H§,false);
         for each(_loc1_ in this.§7i§)
         {
            this.§ +§.removeEventListener(_loc1_,this.§9q§,false);
         }
         for each(_loc2_ in this.§?u§)
         {
            _loc2_.dispose();
         }
         if(this.§>b§)
         {
            this.§>b§.dispose();
         }
         if(this.§?j§)
         {
            this.§?j§.dispose();
         }
         if(this.§[3§)
         {
            this.§[3§.dispose();
         }
         if(§]!=§ == this)
         {
            §]!=§ = null;
         }
         if(this.§>!;§ && this.§>!;§.bitmapData)
         {
            this.§>!;§.bitmapData.dispose();
            this.§>!;§.bitmapData = null;
         }
      }
      
      private function §>!D§() : void
      {
         this.§>b§ = this.mStage3D.context3D;
         this.§?u§ = new Dictionary();
         if(this.§>b§)
         {
            this.§>b§.enableErrorChecking = this.§5!?§;
            if(this.§>b§.driverInfo.indexOf("Software") >= 0)
            {
               this.§0!N§ = true;
            }
         }
         else
         {
            this.§0!N§ = true;
         }
         this.§7F§();
      }
      
      private function §?G§() : void
      {
         if(this.§3!Z§.numChildren > 0)
         {
            return;
         }
         if(this.§`d§ == null)
         {
            this.§`d§ = new this.§!!W§();
         }
         if(this.§`d§ == null)
         {
            throw new Error("Invalid root class: " + this.§!!W§);
         }
         this.§3!Z§.addChild(this.§`d§);
      }
      
      private function §7F§() : void
      {
         this.§ do§ = true;
         this.mStage3D.x = this.§5`§.x;
         this.mStage3D.y = this.§5`§.y;
      }
      
      private function render() : void
      {
         if(!§2!V§())
         {
            return;
         }
         if(this.§ do§)
         {
            if(this.§>b§)
            {
               this.§>b§.configureBackBuffer(this.§5`§.width,this.§5`§.height,this.§#5§,false);
            }
            this.§ do§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§8c§;
         this.§8c§ = _loc1_;
         this.§3!Z§.advanceTime(_loc2_);
         this.§]!?§.advanceTime(_loc2_);
         this.§?j§.advanceTime(_loc2_);
         this.§[3§.§"§(this.§3!Z§.stageWidth,this.§3!Z§.stageHeight);
         this.§[3§.clear(this.§>b§,this.§3z§,1);
         this.§[3§.§9!]§(this.§>b§,this.§#!Y§);
         this.§3!Z§.render(this.§[3§,1);
         this.§[3§.§`!3§();
         if(this.§`%§ != null)
         {
            this.§`%§();
            this.§`%§ = null;
         }
         this.§[3§.finishRendering(this.§>b§);
         this.§[3§.§#!L§();
      }
      
      public function set §`!R§(param1:Function) : void
      {
         this.§`%§ = param1;
      }
      
      private function §3<§() : void
      {
         var _loc3_:BitmapData = null;
         this.§%d§.x = this.§5`§.x;
         this.§%d§.y = this.§5`§.y;
         var _loc1_:int = this.§%d§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§%d§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§ +§.addChild(this.§%d§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§ +§.removeChild(this.§%d§);
         }
         if(this.§[3§ && this.§[3§.canvas)
         {
            this.§[3§.setCanvasSize(this.§5!>§,this.§08§,this.§5`§.width / this.§3!Z§.stageWidth,this.§5`§.height / this.§3!Z§.stageHeight);
            _loc3_ = this.§[3§.canvas;
            if(this.§>!;§.bitmapData != _loc3_)
            {
               this.§>!;§.bitmapData = _loc3_;
            }
            if(this.§ +§.getChildIndex(this.§%d§) > 0)
            {
               this.§ +§.removeChild(this.§%d§);
               this.§ +§.addChildAt(this.§%d§,0);
            }
         }
      }
      
      private function §%,§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§3!Z§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§3!Z§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§3!Z§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§,F§.addChild(_loc2_);
      }
      
      public function §9]§() : void
      {
         §]!=§ = this;
      }
      
      public function start() : void
      {
         this.§[l§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§[l§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §]!]§(param1:Boolean) : void
      {
         this.§3!=§ = param1;
      }
      
      private function §=!=§() : void
      {
         this.§5!M§ = true;
         if(this.§>!;§ == null)
         {
            this.§>!;§ = new Bitmap();
            this.§,F§.addChild(this.§>!;§);
         }
      }
      
      private function §]!H§(param1:ErrorEvent) : void
      {
         this.§=!=§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §[!8§(param1:flash.events.Event) : void
      {
         if(this.§;!R§)
         {
            return;
         }
         ++§]M§;
         this.§#!Y§ = §]M§;
         if(this.§[3§)
         {
            this.§[3§.dispose();
         }
         if(!§,!%§.§?D§ && this.§>b§)
         {
            this.§%,§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§9]§();
         this.§>!D§();
         this.§?G§();
         if(this.§>b§ && this.§0!N§)
         {
            this.mStage3DEnabled = false;
            this.§>b§ = null;
            this.§=!=§();
         }
         if(this.§>b§)
         {
            this.§[3§ = new §5[§();
         }
         else
         {
            this.§[3§ = new §@?§();
            this.§[3§.setCanvasSize(this.§5!>§,this.§08§,this.§5`§.width / this.§3!Z§.stageWidth,this.§5`§.height / this.§3!Z§.stageHeight);
            this.§[3§.clear(null,this.§3z§);
         }
         this.§?j§.§<!I§ = this.§-]§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §;!3§(param1:flash.events.Event) : void
      {
         this.§9]§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§8c§;
         if(this.§[l§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§%d§)
         {
            this.§3<§();
         }
      }
      
      private function §%!Z§(param1:flash.events.KeyboardEvent) : void
      {
         this.§9]§();
         this.§3!Z§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§6U§;
         var _loc5_:Number = param2 / this.§`!7§;
         if(!param3)
         {
            this.§3!Z§.stageWidth = this.§6U§ * _loc4_ / _loc5_;
            this.§3!Z§.stageHeight = this.§`!7§;
         }
         else
         {
            this.§3!Z§.stageWidth = this.§6U§;
            this.§3!Z§.stageHeight = this.§`!7§ * _loc5_ / _loc4_;
         }
         this.§5!>§ = param1;
         this.§08§ = param2;
         this.§3!Z§.dispatchEvent(new §4_§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §3!]§() : void
      {
         this.setCanvasSize(this.§6U§,this.§`!7§);
      }
      
      private function §9q§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§[l§ || !this.§3!=§)
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
               this.§<6§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§<6§ = false;
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
               _loc5_ = §6x§.§;!Y§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §6x§.§6!N§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §6x§.§9%§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §6x§.§;!Y§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §6x§.§9%§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§<6§ ? §6x§.§6!N§ : §6x§.§%V§;
         }
         if((_loc2_ < this.§5`§.left || _loc2_ >= this.§5`§.right || _loc3_ < this.§5`§.top || _loc3_ >= this.§5`§.bottom) && _loc5_ == §6x§.§;!Y§)
         {
            return;
         }
         _loc2_ -= this.§5`§.x;
         _loc3_ -= this.§5`§.y;
         this.§?j§.§?=§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §7i§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §<!"§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§?u§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§>b§ != null)
         {
            (_loc4_ = this.§>b§.createProgram()).upload(param2,param3);
            this.§?u§[param1] = _loc4_;
         }
      }
      
      public function §4p§(param1:String) : void
      {
         var _loc2_:Program3D = this.§4!P§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§?u§[param1];
         }
      }
      
      public function §4!P§(param1:String) : Program3D
      {
         return this.§?u§[param1] as Program3D;
      }
      
      public function §@!2§(param1:String) : Boolean
      {
         return param1 in this.§?u§;
      }
      
      public function get §8?§() : Boolean
      {
         return this.§[l§;
      }
      
      public function get §7x§() : §]i§
      {
         return this.§]!?§;
      }
      
      public function get §<!I§() : Boolean
      {
         return this.§-]§;
      }
      
      public function set §<!I§(param1:Boolean) : void
      {
         this.§-]§ = param1;
         if(this.§>b§)
         {
            this.§?j§.§<!I§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§5!?§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§5!?§ = param1;
         if(this.§>b§)
         {
            this.§>b§.enableErrorChecking = param1;
         }
      }
      
      public function get §49§() : int
      {
         return this.§#5§;
      }
      
      public function set §49§(param1:int) : void
      {
         this.§#5§ = param1;
         this.§7F§();
      }
      
      public function get §<O§() : Rectangle
      {
         return this.§5`§.clone();
      }
      
      public function set §<O§(param1:Rectangle) : void
      {
         this.§5`§ = param1.clone();
         this.§7F§();
      }
      
      public function get §,F§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§%d§ == null)
         {
            this.§%d§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§%d§.contextMenu = _loc1_;
            this.§3<§();
         }
         return this.§%d§;
      }
      
      public function get stage() : §7u§.Stage
      {
         return this.§3!Z§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §+g§() : flash.display.Stage
      {
         return this.§ +§;
      }
      
      public function get §=e§() : Boolean
      {
         return !this.§5!M§;
      }
   }
}
