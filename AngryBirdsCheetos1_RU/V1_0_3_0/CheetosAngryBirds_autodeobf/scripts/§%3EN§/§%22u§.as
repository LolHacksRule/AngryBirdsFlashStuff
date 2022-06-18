package §>N§
{
   import § +§.§^J§;
   import §+a§.Texture;
   import §9!a§.DisplayObject;
   import §9!a§.Stage;
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
   import starling.events.§ x§;
   import starling.events.§'S§;
   import starling.events.§7p§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §"u§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §;!=§:§"u§;
      
      private static var §5F§:Boolean;
      
      private static var §<!!§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §@'§:§9!a§.Stage;
      
      private var §!!6§:Class;
      
      private var §&!§:§9!a§.DisplayObject;
      
      private var §,[§:§^J§;
      
      private var §3V§:Boolean;
      
      private var §'!1§:Boolean;
      
      private var §`!>§:§>q§;
      
      private var §#H§:§7p§;
      
      private var §^5§:int;
      
      private var §62§:Boolean;
      
      private var §?H§:Boolean;
      
      private var §+%§:Number;
      
      private var §"K§:Rectangle;
      
      private var §`2§:Boolean;
      
      private var §-!8§:flash.display.Stage;
      
      private var §,U§:Sprite;
      
      private var §"!H§:Context3D;
      
      private var §4A§:Dictionary;
      
      private var §-m§:int;
      
      private var §^n§:Boolean;
      
      private var §%!R§:Number;
      
      private var §;u§:Number;
      
      private var §0!C§:Number;
      
      private var §^!V§:Number;
      
      private var §0n§:Number;
      
      private var §6T§:Number;
      
      private var §[L§:Function;
      
      private var §`!U§:uint;
      
      private var §2Y§:String;
      
      private var §-!]§:Bitmap;
      
      private var §[p§:Boolean = false;
      
      private var §2!9§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §2a§:Boolean = false;
      
      public function §"u§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§%!R§ = param3.width;
         this.§;u§ = param3.height;
         this.§0!C§ = this.§%!R§;
         this.§^!V§ = this.§;u§;
         this.§0n§ = param2.stageWidth;
         this.§6T§ = param2.stageHeight;
         §3"§ = true;
         this.§[!^§();
         this.§!!6§ = param1;
         this.§"K§ = param3;
         this.mStage3D = param4;
         this.§@'§ = new §9!a§.Stage(param3.width,param3.height,param2.color);
         this.§-!8§ = param2;
         this.§#H§ = new §7p§(this.§@'§);
         this.§,[§ = new §^J§();
         this.§^5§ = 0;
         this.§62§ = false;
         this.§?H§ = false;
         this.§+%§ = getTimer() / 1000;
         this.§4A§ = new Dictionary();
         for each(_loc6_ in this.§!I§)
         {
            param2.addEventListener(_loc6_,this.§@%§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'I§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'I§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!?§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§[!,§,false,1,true);
         this.mStage3D.visible = false;
         this.§ m§(true);
         this.§`!U§ = param2.color;
         this.§2Y§ = param5;
      }
      
      public static function get §,z§() : Boolean
      {
         if(§-2§)
         {
            return §-2§.§^n§;
         }
         return true;
      }
      
      public static function §9b§() : Boolean
      {
         return §;!=§ && (§;!=§.§[p§ || §;!=§.§"!H§ != null && §;!=§.§"!H§.driverInfo != "Disposed");
      }
      
      public static function get §-2§() : §"u§
      {
         return §;!=§;
      }
      
      public static function get §4f§() : §^J§
      {
         return !!§;!=§ ? §;!=§.§4f§ : null;
      }
      
      public static function get §!!=§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §!!=§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §3"§() : Boolean
      {
         return §5F§;
      }
      
      public static function set §3"§(param1:Boolean) : void
      {
         if(§;!=§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §5F§ = param1;
      }
      
      public static function §`[§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§-2§)
         {
            return Texture.§`k§(§-2§.§"!H§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§;!=§.§"!H§)
         {
            §;!=§.§"!H§.drawToBitmapData(param1);
         }
         else if(§;!=§.§`!>§.canvas)
         {
            _loc2_ = §;!=§.§`!>§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §+'§() : §9!a§.DisplayObject
      {
         return this.§&!§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§`!U§ = param1;
      }
      
      public function get § !§() : Number
      {
         return this.§%!R§;
      }
      
      public function get §5p§() : Number
      {
         return this.§;u§;
      }
      
      public function §"!X§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§2Y§);
         }
         catch(e:Error)
         {
            §,!Q§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§2a§ = true;
         this.§-!8§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'I§,false);
         this.§-!8§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'I§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!?§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§[!,§,false);
         for each(_loc1_ in this.§!I§)
         {
            this.§-!8§.removeEventListener(_loc1_,this.§@%§,false);
         }
         for each(_loc2_ in this.§4A§)
         {
            _loc2_.dispose();
         }
         if(this.§"!H§)
         {
            this.§"!H§.dispose();
         }
         if(this.§#H§)
         {
            this.§#H§.dispose();
         }
         if(this.§`!>§)
         {
            this.§`!>§.dispose();
         }
         if(§;!=§ == this)
         {
            §;!=§ = null;
         }
         if(this.§-!]§ && this.§-!]§.bitmapData)
         {
            this.§-!]§.bitmapData.dispose();
            this.§-!]§.bitmapData = null;
         }
      }
      
      private function §-!3§() : void
      {
         this.§"!H§ = this.mStage3D.context3D;
         this.§4A§ = new Dictionary();
         if(this.§"!H§)
         {
            this.§"!H§.enableErrorChecking = this.§?H§;
            if(this.§"!H§.driverInfo.indexOf("Software") >= 0)
            {
               this.§^n§ = true;
            }
         }
         else
         {
            this.§^n§ = true;
         }
         this.§`a§();
      }
      
      private function §@9§() : void
      {
         if(this.§@'§.numChildren > 0)
         {
            return;
         }
         if(this.§&!§ == null)
         {
            this.§&!§ = new this.§!!6§();
         }
         if(this.§&!§ == null)
         {
            throw new Error("Invalid root class: " + this.§!!6§);
         }
         this.§@'§.addChild(this.§&!§);
      }
      
      private function §`a§() : void
      {
         this.§2!9§ = true;
         this.mStage3D.x = this.§"K§.x;
         this.mStage3D.y = this.§"K§.y;
      }
      
      private function render() : void
      {
         if(!§9b§())
         {
            return;
         }
         if(this.§2!9§)
         {
            if(this.§"!H§)
            {
               this.§"!H§.configureBackBuffer(this.§"K§.width,this.§"K§.height,this.§^5§,false);
            }
            this.§2!9§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§+%§;
         this.§+%§ = _loc1_;
         this.§@'§.advanceTime(_loc2_);
         this.§,[§.advanceTime(_loc2_);
         this.§#H§.advanceTime(_loc2_);
         this.§`!>§.§3o§(this.§@'§.stageWidth,this.§@'§.stageHeight);
         this.§`!>§.clear(this.§"!H§,this.§`!U§,1);
         this.§`!>§.§!C§(this.§"!H§,this.§-m§);
         this.§@'§.render(this.§`!>§,1);
         this.§`!>§.§0o§();
         if(this.§[L§ != null)
         {
            this.§[L§();
            this.§[L§ = null;
         }
         this.§`!>§.finishRendering(this.§"!H§);
         this.§`!>§.§'&§();
      }
      
      public function set §;l§(param1:Function) : void
      {
         this.§[L§ = param1;
      }
      
      private function § for§() : void
      {
         var _loc3_:BitmapData = null;
         this.§,U§.x = this.§"K§.x;
         this.§,U§.y = this.§"K§.y;
         var _loc1_:int = this.§,U§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§,U§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§-!8§.addChild(this.§,U§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§-!8§.removeChild(this.§,U§);
         }
         if(this.§`!>§ && this.§`!>§.canvas)
         {
            this.§`!>§.setCanvasSize(this.§0!C§,this.§^!V§,this.§"K§.width / this.§@'§.stageWidth,this.§"K§.height / this.§@'§.stageHeight);
            _loc3_ = this.§`!>§.canvas;
            if(this.§-!]§.bitmapData != _loc3_)
            {
               this.§-!]§.bitmapData = _loc3_;
            }
            if(this.§-!8§.getChildIndex(this.§,U§) > 0)
            {
               this.§-!8§.removeChild(this.§,U§);
               this.§-!8§.addChildAt(this.§,U§,0);
            }
         }
      }
      
      private function §,!Q§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§@'§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§@'§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§@'§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§if§.addChild(_loc2_);
      }
      
      public function §[!^§() : void
      {
         §;!=§ = this;
      }
      
      public function start() : void
      {
         this.§3V§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§3V§ = false;
         this.mStage3D.visible = false;
      }
      
      public function § m§(param1:Boolean) : void
      {
         this.§'!1§ = param1;
      }
      
      private function §0"§() : void
      {
         this.§[p§ = true;
         if(this.§-!]§ == null)
         {
            this.§-!]§ = new Bitmap();
            this.§if§.addChild(this.§-!]§);
         }
      }
      
      private function §[!,§(param1:ErrorEvent) : void
      {
         this.§0"§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §3!?§(param1:flash.events.Event) : void
      {
         if(this.§2a§)
         {
            return;
         }
         ++§<!!§;
         this.§-m§ = §<!!§;
         if(this.§`!>§)
         {
            this.§`!>§.dispose();
         }
         if(!§"u§.§3"§ && this.§"!H§)
         {
            this.§,!Q§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§[!^§();
         this.§-!3§();
         this.§@9§();
         if(this.§"!H§ && this.§^n§)
         {
            this.mStage3DEnabled = false;
            this.§"!H§ = null;
            this.§0"§();
         }
         if(this.§"!H§)
         {
            this.§`!>§ = new §>q§();
         }
         else
         {
            this.§`!>§ = new §]4§();
            this.§`!>§.setCanvasSize(this.§0!C§,this.§^!V§,this.§"K§.width / this.§@'§.stageWidth,this.§"K§.height / this.§@'§.stageHeight);
            this.§`!>§.clear(null,this.§`!U§);
         }
         this.§#H§.§9L§ = this.§62§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §+!T§(param1:flash.events.Event) : void
      {
         this.§[!^§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§+%§;
         if(this.§3V§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§,U§)
         {
            this.§ for§();
         }
      }
      
      private function §'I§(param1:flash.events.KeyboardEvent) : void
      {
         this.§[!^§();
         this.§@'§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§%!R§;
         var _loc5_:Number = param2 / this.§;u§;
         if(!param3)
         {
            this.§@'§.stageWidth = this.§%!R§ * _loc4_ / _loc5_;
            this.§@'§.stageHeight = this.§;u§;
         }
         else
         {
            this.§@'§.stageWidth = this.§%!R§;
            this.§@'§.stageHeight = this.§;u§ * _loc5_ / _loc4_;
         }
         this.§0!C§ = param1;
         this.§^!V§ = param2;
         this.§@'§.dispatchEvent(new § x§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §[J§() : void
      {
         this.setCanvasSize(this.§%!R§,this.§;u§);
      }
      
      private function §@%§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§3V§ || !this.§'!1§)
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
               this.§`2§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§`2§ = false;
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
               _loc5_ = §'S§.§=n§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §'S§.§@!_§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §'S§.§"3§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §'S§.§=n§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §'S§.§"3§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§`2§ ? §'S§.§@!_§ : §'S§.§>8§;
         }
         if((_loc2_ < this.§"K§.left || _loc2_ >= this.§"K§.right || _loc3_ < this.§"K§.top || _loc3_ >= this.§"K§.bottom) && _loc5_ == §'S§.§=n§)
         {
            return;
         }
         _loc2_ -= this.§"K§.x;
         _loc3_ -= this.§"K§.y;
         this.§#H§.§&!8§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §!I§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §8!2§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§4A§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§"!H§ != null)
         {
            (_loc4_ = this.§"!H§.createProgram()).upload(param2,param3);
            this.§4A§[param1] = _loc4_;
         }
      }
      
      public function §%!'§(param1:String) : void
      {
         var _loc2_:Program3D = this.§8!^§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§4A§[param1];
         }
      }
      
      public function §8!^§(param1:String) : Program3D
      {
         return this.§4A§[param1] as Program3D;
      }
      
      public function §=!U§(param1:String) : Boolean
      {
         return param1 in this.§4A§;
      }
      
      public function get §7l§() : Boolean
      {
         return this.§3V§;
      }
      
      public function get §4f§() : §^J§
      {
         return this.§,[§;
      }
      
      public function get §9L§() : Boolean
      {
         return this.§62§;
      }
      
      public function set §9L§(param1:Boolean) : void
      {
         this.§62§ = param1;
         if(this.§"!H§)
         {
            this.§#H§.§9L§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§?H§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§?H§ = param1;
         if(this.§"!H§)
         {
            this.§"!H§.enableErrorChecking = param1;
         }
      }
      
      public function get §<!A§() : int
      {
         return this.§^5§;
      }
      
      public function set §<!A§(param1:int) : void
      {
         this.§^5§ = param1;
         this.§`a§();
      }
      
      public function get §5!=§() : Rectangle
      {
         return this.§"K§.clone();
      }
      
      public function set §5!=§(param1:Rectangle) : void
      {
         this.§"K§ = param1.clone();
         this.§`a§();
      }
      
      public function get §if§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§,U§ == null)
         {
            this.§,U§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§,U§.contextMenu = _loc1_;
            this.§ for§();
         }
         return this.§,U§;
      }
      
      public function get stage() : §9!a§.Stage
      {
         return this.§@'§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §3=§() : flash.display.Stage
      {
         return this.§-!8§;
      }
      
      public function get §1f§() : Boolean
      {
         return !this.§[p§;
      }
   }
}
