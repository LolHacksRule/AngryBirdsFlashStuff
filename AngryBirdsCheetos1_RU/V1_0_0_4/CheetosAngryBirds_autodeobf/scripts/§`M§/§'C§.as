package §`M§
{
   import §1!A§.DisplayObject;
   import §1!A§.Stage;
   import §>!?§.§9'§;
   import §^n§.Texture;
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
   import starling.events.§0!Z§;
   import starling.events.§2!5§;
   import starling.events.§;'§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §'C§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §0!-§:§'C§;
      
      private static var §0!0§:Boolean;
      
      private static var §]L§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §7!'§:§1!A§.Stage;
      
      private var §1!=§:Class;
      
      private var §4z§:§1!A§.DisplayObject;
      
      private var §57§:§9'§;
      
      private var §@_§:Boolean;
      
      private var §'S§:Boolean;
      
      private var §7F§:§[7§;
      
      private var §5!5§:§2!5§;
      
      private var §7!D§:int;
      
      private var §in §:Boolean;
      
      private var §!!N§:Boolean;
      
      private var §^X§:Number;
      
      private var §!G§:Rectangle;
      
      private var §6<§:Boolean;
      
      private var §@!Y§:flash.display.Stage;
      
      private var §9V§:Sprite;
      
      private var §^J§:Context3D;
      
      private var §0S§:Dictionary;
      
      private var §-!;§:int;
      
      private var §<%§:Boolean;
      
      private var §]j§:Number;
      
      private var §=0§:Number;
      
      private var §"J§:Number;
      
      private var §^!#§:Number;
      
      private var §;g§:Number;
      
      private var §@a§:Number;
      
      private var § ,§:Function;
      
      private var §]$§:uint;
      
      private var §7]§:String;
      
      private var § get§:Bitmap;
      
      private var §-!P§:Boolean = false;
      
      private var §,w§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §7T§:Boolean = false;
      
      public function §'C§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§]j§ = param3.width;
         this.§=0§ = param3.height;
         this.§"J§ = this.§]j§;
         this.§^!#§ = this.§=0§;
         this.§;g§ = param2.stageWidth;
         this.§@a§ = param2.stageHeight;
         §1!;§ = true;
         this.§07§();
         this.§1!=§ = param1;
         this.§!G§ = param3;
         this.mStage3D = param4;
         this.§7!'§ = new §1!A§.Stage(param3.width,param3.height,param2.color);
         this.§@!Y§ = param2;
         this.§5!5§ = new §2!5§(this.§7!'§);
         this.§57§ = new §9'§();
         this.§7!D§ = 0;
         this.§in § = false;
         this.§!!N§ = false;
         this.§^X§ = getTimer() / 1000;
         this.§0S§ = new Dictionary();
         for each(_loc6_ in this.§3!R§)
         {
            param2.addEventListener(_loc6_,this.§0Z§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§5!R§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§5!R§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%X§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§44§,false,1,true);
         this.mStage3D.visible = false;
         this.§'r§(true);
         this.§]$§ = param2.color;
         this.§7]§ = param5;
      }
      
      public static function get §+w§() : Boolean
      {
         if(§3b§)
         {
            return §3b§.§<%§;
         }
         return true;
      }
      
      public static function §61§() : Boolean
      {
         return §0!-§ && (§0!-§.§-!P§ || §0!-§.§^J§ != null && §0!-§.§^J§.driverInfo != "Disposed");
      }
      
      public static function get §3b§() : §'C§
      {
         return §0!-§;
      }
      
      public static function get §&=§() : §9'§
      {
         return !!§0!-§ ? §0!-§.§&=§ : null;
      }
      
      public static function get §7!G§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §7!G§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §1!;§() : Boolean
      {
         return §0!0§;
      }
      
      public static function set §1!;§(param1:Boolean) : void
      {
         if(§0!-§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §0!0§ = param1;
      }
      
      public static function § !`§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§3b§)
         {
            return Texture.§-B§(§3b§.§^J§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§0!-§.§^J§)
         {
            §0!-§.§^J§.drawToBitmapData(param1);
         }
         else if(§0!-§.§7F§.canvas)
         {
            _loc2_ = §0!-§.§7F§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §"!T§() : §1!A§.DisplayObject
      {
         return this.§4z§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§]$§ = param1;
      }
      
      public function get §]v§() : Number
      {
         return this.§]j§;
      }
      
      public function get §!0§() : Number
      {
         return this.§=0§;
      }
      
      public function §=H§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§7]§);
         }
         catch(e:Error)
         {
            §7+§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§7T§ = true;
         this.§@!Y§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§5!R§,false);
         this.§@!Y§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§5!R§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%X§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§44§,false);
         for each(_loc1_ in this.§3!R§)
         {
            this.§@!Y§.removeEventListener(_loc1_,this.§0Z§,false);
         }
         for each(_loc2_ in this.§0S§)
         {
            _loc2_.dispose();
         }
         if(this.§^J§)
         {
            this.§^J§.dispose();
         }
         if(this.§5!5§)
         {
            this.§5!5§.dispose();
         }
         if(this.§7F§)
         {
            this.§7F§.dispose();
         }
         if(§0!-§ == this)
         {
            §0!-§ = null;
         }
         if(this.§ get§ && this.§ get§.bitmapData)
         {
            this.§ get§.bitmapData.dispose();
            this.§ get§.bitmapData = null;
         }
      }
      
      private function §0!T§() : void
      {
         this.§^J§ = this.mStage3D.context3D;
         this.§0S§ = new Dictionary();
         if(this.§^J§)
         {
            this.§^J§.enableErrorChecking = this.§!!N§;
            if(this.§^J§.driverInfo.indexOf("Software") >= 0)
            {
               this.§<%§ = true;
            }
         }
         else
         {
            this.§<%§ = true;
         }
         this.§ !O§();
      }
      
      private function §9x§() : void
      {
         if(this.§7!'§.numChildren > 0)
         {
            return;
         }
         if(this.§4z§ == null)
         {
            this.§4z§ = new this.§1!=§();
         }
         if(this.§4z§ == null)
         {
            throw new Error("Invalid root class: " + this.§1!=§);
         }
         this.§7!'§.addChild(this.§4z§);
      }
      
      private function § !O§() : void
      {
         this.§,w§ = true;
         this.mStage3D.x = this.§!G§.x;
         this.mStage3D.y = this.§!G§.y;
      }
      
      private function render() : void
      {
         if(!§61§())
         {
            return;
         }
         if(this.§,w§)
         {
            if(this.§^J§)
            {
               this.§^J§.configureBackBuffer(this.§!G§.width,this.§!G§.height,this.§7!D§,false);
            }
            this.§,w§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§^X§;
         this.§^X§ = _loc1_;
         this.§7!'§.advanceTime(_loc2_);
         this.§57§.advanceTime(_loc2_);
         this.§5!5§.advanceTime(_loc2_);
         this.§7F§.§5§(this.§7!'§.stageWidth,this.§7!'§.stageHeight);
         this.§7F§.clear(this.§^J§,this.§]$§,1);
         this.§7F§.§3O§(this.§^J§,this.§-!;§);
         this.§7!'§.render(this.§7F§,1);
         this.§7F§.§+![§();
         if(this.§ ,§ != null)
         {
            this.§ ,§();
            this.§ ,§ = null;
         }
         this.§7F§.finishRendering(this.§^J§);
         this.§7F§.§%!;§();
      }
      
      public function set §##§(param1:Function) : void
      {
         this.§ ,§ = param1;
      }
      
      private function §%]§() : void
      {
         var _loc3_:BitmapData = null;
         this.§9V§.x = this.§!G§.x;
         this.§9V§.y = this.§!G§.y;
         var _loc1_:int = this.§9V§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§9V§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§@!Y§.addChild(this.§9V§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§@!Y§.removeChild(this.§9V§);
         }
         if(this.§7F§ && this.§7F§.canvas)
         {
            this.§7F§.setCanvasSize(this.§"J§,this.§^!#§,this.§!G§.width / this.§7!'§.stageWidth,this.§!G§.height / this.§7!'§.stageHeight);
            _loc3_ = this.§7F§.canvas;
            if(this.§ get§.bitmapData != _loc3_)
            {
               this.§ get§.bitmapData = _loc3_;
            }
            if(this.§@!Y§.getChildIndex(this.§9V§) > 0)
            {
               this.§@!Y§.removeChild(this.§9V§);
               this.§@!Y§.addChildAt(this.§9V§,0);
            }
         }
      }
      
      private function §7+§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§7!'§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§7!'§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§7!'§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§-,§.addChild(_loc2_);
      }
      
      public function §07§() : void
      {
         §0!-§ = this;
      }
      
      public function start() : void
      {
         this.§@_§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§@_§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §'r§(param1:Boolean) : void
      {
         this.§'S§ = param1;
      }
      
      private function §3!,§() : void
      {
         this.§-!P§ = true;
         if(this.§ get§ == null)
         {
            this.§ get§ = new Bitmap();
            this.§-,§.addChild(this.§ get§);
         }
      }
      
      private function §44§(param1:ErrorEvent) : void
      {
         this.§3!,§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §%X§(param1:flash.events.Event) : void
      {
         if(this.§7T§)
         {
            return;
         }
         ++§]L§;
         this.§-!;§ = §]L§;
         if(this.§7F§)
         {
            this.§7F§.dispose();
         }
         if(!§'C§.§1!;§ && this.§^J§)
         {
            this.§7+§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§07§();
         this.§0!T§();
         this.§9x§();
         if(this.§^J§ && this.§<%§)
         {
            this.mStage3DEnabled = false;
            this.§^J§ = null;
            this.§3!,§();
         }
         if(this.§^J§)
         {
            this.§7F§ = new §[7§();
         }
         else
         {
            this.§7F§ = new §'!D§();
            this.§7F§.setCanvasSize(this.§"J§,this.§^!#§,this.§!G§.width / this.§7!'§.stageWidth,this.§!G§.height / this.§7!'§.stageHeight);
            this.§7F§.clear(null,this.§]$§);
         }
         this.§5!5§.§+!&§ = this.§in §;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §0!'§(param1:flash.events.Event) : void
      {
         this.§07§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§^X§;
         if(this.§@_§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§9V§)
         {
            this.§%]§();
         }
      }
      
      private function §5!R§(param1:flash.events.KeyboardEvent) : void
      {
         this.§07§();
         this.§7!'§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§]j§;
         var _loc5_:Number = param2 / this.§=0§;
         if(!param3)
         {
            this.§7!'§.stageWidth = this.§]j§ * _loc4_ / _loc5_;
            this.§7!'§.stageHeight = this.§=0§;
         }
         else
         {
            this.§7!'§.stageWidth = this.§]j§;
            this.§7!'§.stageHeight = this.§=0§ * _loc5_ / _loc4_;
         }
         this.§"J§ = param1;
         this.§^!#§ = param2;
         this.§7!'§.dispatchEvent(new §0!Z§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §#M§() : void
      {
         this.setCanvasSize(this.§]j§,this.§=0§);
      }
      
      private function §0Z§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§@_§ || !this.§'S§)
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
               this.§6<§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§6<§ = false;
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
               _loc5_ = §;'§.§"!I§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §;'§.§;l§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §;'§.§[U§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §;'§.§"!I§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §;'§.§[U§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§6<§ ? §;'§.§;l§ : §;'§.§ y§;
         }
         if((_loc2_ < this.§!G§.left || _loc2_ >= this.§!G§.right || _loc3_ < this.§!G§.top || _loc3_ >= this.§!G§.bottom) && _loc5_ == §;'§.§"!I§)
         {
            return;
         }
         _loc2_ -= this.§!G§.x;
         _loc3_ -= this.§!G§.y;
         this.§5!5§.§;G§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §3!R§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §`!,§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§0S§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§^J§ != null)
         {
            (_loc4_ = this.§^J§.createProgram()).upload(param2,param3);
            this.§0S§[param1] = _loc4_;
         }
      }
      
      public function §2!Y§(param1:String) : void
      {
         var _loc2_:Program3D = this.§;!P§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§0S§[param1];
         }
      }
      
      public function §;!P§(param1:String) : Program3D
      {
         return this.§0S§[param1] as Program3D;
      }
      
      public function §3!Z§(param1:String) : Boolean
      {
         return param1 in this.§0S§;
      }
      
      public function get §"n§() : Boolean
      {
         return this.§@_§;
      }
      
      public function get §&=§() : §9'§
      {
         return this.§57§;
      }
      
      public function get §+!&§() : Boolean
      {
         return this.§in §;
      }
      
      public function set §+!&§(param1:Boolean) : void
      {
         this.§in § = param1;
         if(this.§^J§)
         {
            this.§5!5§.§+!&§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§!!N§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§!!N§ = param1;
         if(this.§^J§)
         {
            this.§^J§.enableErrorChecking = param1;
         }
      }
      
      public function get §>G§() : int
      {
         return this.§7!D§;
      }
      
      public function set §>G§(param1:int) : void
      {
         this.§7!D§ = param1;
         this.§ !O§();
      }
      
      public function get §1O§() : Rectangle
      {
         return this.§!G§.clone();
      }
      
      public function set §1O§(param1:Rectangle) : void
      {
         this.§!G§ = param1.clone();
         this.§ !O§();
      }
      
      public function get §-,§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§9V§ == null)
         {
            this.§9V§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§9V§.contextMenu = _loc1_;
            this.§%]§();
         }
         return this.§9V§;
      }
      
      public function get stage() : §1!A§.Stage
      {
         return this.§7!'§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get § !H§() : flash.display.Stage
      {
         return this.§@!Y§;
      }
      
      public function get §&O§() : Boolean
      {
         return !this.§-!P§;
      }
   }
}
