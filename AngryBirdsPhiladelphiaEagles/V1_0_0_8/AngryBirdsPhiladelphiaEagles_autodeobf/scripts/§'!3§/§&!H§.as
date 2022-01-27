package §'!3§
{
   import §,]§.Texture;
   import §-!'§.DisplayObject;
   import §-!'§.Stage;
   import §5!2§.§'&§;
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
   import starling.events.§!P§;
   import starling.events.§9V§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`_§;
   
   public class §&!H§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §]5§:§&!H§;
      
      private static var §!1§:Boolean;
      
      private static var §`K§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §+<§:§-!'§.Stage;
      
      private var §18§:Class;
      
      private var §#%§:§-!'§.DisplayObject;
      
      private var §1D§:§'&§;
      
      private var §`k§:Boolean;
      
      private var §5!@§:Boolean;
      
      private var §8!>§:§@`§;
      
      private var §^!D§:§`_§;
      
      private var §"$§:int;
      
      private var §&G§:Boolean;
      
      private var §1!K§:Boolean;
      
      private var §=]§:Number;
      
      private var §6Y§:Rectangle;
      
      private var §1! §:Boolean;
      
      private var §+5§:flash.display.Stage;
      
      private var §!,§:Sprite;
      
      private var §3R§:Context3D;
      
      private var §5§:Dictionary;
      
      private var §8!9§:int;
      
      private var §=!2§:Boolean;
      
      private var §2l§:Number;
      
      private var §33§:Number;
      
      private var §#0§:Number;
      
      private var §'?§:Number;
      
      private var §1X§:Number;
      
      private var §%!G§:Number;
      
      private var §#?§:Function;
      
      private var §4N§:uint;
      
      private var § use§:String;
      
      private var §<5§:Bitmap;
      
      private var §6V§:Boolean = false;
      
      private var §2>§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §]!<§:Boolean = false;
      
      public function §&!H§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§2l§ = param3.width;
         this.§33§ = param3.height;
         this.§#0§ = this.§2l§;
         this.§'?§ = this.§33§;
         this.§1X§ = param2.stageWidth;
         this.§%!G§ = param2.stageHeight;
         §9!@§ = true;
         this.§@e§();
         this.§18§ = param1;
         this.§6Y§ = param3;
         this.mStage3D = param4;
         this.§+<§ = new §-!'§.Stage(param3.width,param3.height,param2.color);
         this.§+5§ = param2;
         this.§^!D§ = new §`_§(this.§+<§);
         this.§1D§ = new §'&§();
         this.§"$§ = 0;
         this.§&G§ = false;
         this.§1!K§ = false;
         this.§=]§ = getTimer() / 1000;
         this.§5§ = new Dictionary();
         for each(_loc6_ in this.§1!@§)
         {
            param2.addEventListener(_loc6_,this.§6<§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§>!I§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§>!I§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§8k§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§?Q§,false,1,true);
         this.mStage3D.visible = false;
         this.§7d§(true);
         this.§4N§ = param2.color;
         this.§ use§ = param5;
      }
      
      public static function get §+_§() : Boolean
      {
         if(§+!H§)
         {
            return §+!H§.§=!2§;
         }
         return true;
      }
      
      public static function §%^§() : Boolean
      {
         return §]5§ && (§]5§.§6V§ || §]5§.§3R§ != null && §]5§.§3R§.driverInfo != "Disposed");
      }
      
      public static function get §+!H§() : §&!H§
      {
         return §]5§;
      }
      
      public static function get §9o§() : §'&§
      {
         return !!§]5§ ? §]5§.§9o§ : null;
      }
      
      public static function get §+t§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §+t§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §9!@§() : Boolean
      {
         return §!1§;
      }
      
      public static function set §9!@§(param1:Boolean) : void
      {
         if(§]5§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §!1§ = param1;
      }
      
      public static function §^I§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§+!H§)
         {
            return Texture.§2x§(§+!H§.§3R§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§]5§.§3R§)
         {
            §]5§.§3R§.drawToBitmapData(param1);
         }
         else if(§]5§.§8!>§.canvas)
         {
            _loc2_ = §]5§.§8!>§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §"l§() : §-!'§.DisplayObject
      {
         return this.§#%§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§4N§ = param1;
      }
      
      public function get §2!§() : Number
      {
         return this.§2l§;
      }
      
      public function get §6=§() : Number
      {
         return this.§33§;
      }
      
      public function §1$§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§ use§);
         }
         catch(e:Error)
         {
            §[u§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§]!<§ = true;
         this.§+5§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§>!I§,false);
         this.§+5§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§>!I§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§8k§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§?Q§,false);
         for each(_loc1_ in this.§1!@§)
         {
            this.§+5§.removeEventListener(_loc1_,this.§6<§,false);
         }
         for each(_loc2_ in this.§5§)
         {
            _loc2_.dispose();
         }
         if(this.§3R§)
         {
            this.§3R§.dispose();
         }
         if(this.§^!D§)
         {
            this.§^!D§.dispose();
         }
         if(this.§8!>§)
         {
            this.§8!>§.dispose();
         }
         if(§]5§ == this)
         {
            §]5§ = null;
         }
         if(this.§<5§ && this.§<5§.bitmapData)
         {
            this.§<5§.bitmapData.dispose();
            this.§<5§.bitmapData = null;
         }
      }
      
      private function §6$§() : void
      {
         this.§3R§ = this.mStage3D.context3D;
         this.§5§ = new Dictionary();
         if(this.§3R§)
         {
            this.§3R§.enableErrorChecking = this.§1!K§;
            if(this.§3R§.driverInfo.indexOf("Software") >= 0)
            {
               this.§=!2§ = true;
            }
         }
         else
         {
            this.§=!2§ = true;
         }
         this.§@-§();
      }
      
      private function § S§() : void
      {
         if(this.§+<§.numChildren > 0)
         {
            return;
         }
         if(this.§#%§ == null)
         {
            this.§#%§ = new this.§18§();
         }
         if(this.§#%§ == null)
         {
            throw new Error("Invalid root class: " + this.§18§);
         }
         this.§+<§.addChild(this.§#%§);
      }
      
      private function §@-§() : void
      {
         this.§2>§ = true;
         this.mStage3D.x = this.§6Y§.x;
         this.mStage3D.y = this.§6Y§.y;
      }
      
      private function render() : void
      {
         if(!§%^§())
         {
            return;
         }
         if(this.§2>§)
         {
            if(this.§3R§)
            {
               this.§3R§.configureBackBuffer(this.§6Y§.width,this.§6Y§.height,this.§"$§,false);
            }
            this.§2>§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§=]§;
         this.§=]§ = _loc1_;
         this.§+<§.advanceTime(_loc2_);
         this.§1D§.advanceTime(_loc2_);
         this.§^!D§.advanceTime(_loc2_);
         this.§8!>§.§[%§(this.§+<§.stageWidth,this.§+<§.stageHeight);
         this.§8!>§.clear(this.§3R§,this.§4N§,1);
         this.§8!>§.§!O§(this.§3R§,this.§8!9§);
         this.§+<§.render(this.§8!>§,1);
         this.§8!>§.§9!&§();
         if(this.§#?§ != null)
         {
            this.§#?§();
            this.§#?§ = null;
         }
         this.§8!>§.finishRendering(this.§3R§);
         this.§8!>§.§1&§();
      }
      
      public function set §?e§(param1:Function) : void
      {
         this.§#?§ = param1;
      }
      
      private function §2L§() : void
      {
         var _loc3_:BitmapData = null;
         this.§!,§.x = this.§6Y§.x;
         this.§!,§.y = this.§6Y§.y;
         var _loc1_:int = this.§!,§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§!,§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§+5§.addChild(this.§!,§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§+5§.removeChild(this.§!,§);
         }
         if(this.§8!>§ && this.§8!>§.canvas)
         {
            this.§8!>§.setCanvasSize(this.§#0§,this.§'?§,this.§6Y§.width / this.§+<§.stageWidth,this.§6Y§.height / this.§+<§.stageHeight);
            _loc3_ = this.§8!>§.canvas;
            if(this.§<5§.bitmapData != _loc3_)
            {
               this.§<5§.bitmapData = _loc3_;
            }
            if(this.§+5§.getChildIndex(this.§!,§) > 0)
            {
               this.§+5§.removeChild(this.§!,§);
               this.§+5§.addChildAt(this.§!,§,0);
            }
         }
      }
      
      private function §[u§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§+<§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§+<§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§+<§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§+p§.addChild(_loc2_);
      }
      
      public function §@e§() : void
      {
         §]5§ = this;
      }
      
      public function start() : void
      {
         this.§`k§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§`k§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §7d§(param1:Boolean) : void
      {
         this.§5!@§ = param1;
      }
      
      private function §5Q§() : void
      {
         this.§6V§ = true;
         if(this.§<5§ == null)
         {
            this.§<5§ = new Bitmap();
            this.§+p§.addChild(this.§<5§);
         }
      }
      
      private function §?Q§(param1:ErrorEvent) : void
      {
         this.§5Q§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §8k§(param1:flash.events.Event) : void
      {
         if(this.§]!<§)
         {
            return;
         }
         ++§`K§;
         this.§8!9§ = §`K§;
         if(this.§8!>§)
         {
            this.§8!>§.dispose();
         }
         if(!§&!H§.§9!@§ && this.§3R§)
         {
            this.§[u§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§@e§();
         this.§6$§();
         this.§ S§();
         if(this.§3R§ && this.§=!2§)
         {
            this.mStage3DEnabled = false;
            this.§3R§ = null;
            this.§5Q§();
         }
         if(this.§3R§)
         {
            this.§8!>§ = new §@`§();
         }
         else
         {
            this.§8!>§ = new §0K§();
            this.§8!>§.setCanvasSize(this.§#0§,this.§'?§,this.§6Y§.width / this.§+<§.stageWidth,this.§6Y§.height / this.§+<§.stageHeight);
            this.§8!>§.clear(null,this.§4N§);
         }
         this.§^!D§.§true § = this.§&G§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§@e§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§=]§;
         if(this.§`k§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§!,§)
         {
            this.§2L§();
         }
      }
      
      private function §>!I§(param1:flash.events.KeyboardEvent) : void
      {
         this.§@e§();
         this.§+<§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§2l§;
         var _loc5_:Number = param2 / this.§33§;
         if(!param3)
         {
            this.§+<§.stageWidth = this.§2l§ * _loc4_ / _loc5_;
            this.§+<§.stageHeight = this.§33§;
         }
         else
         {
            this.§+<§.stageWidth = this.§2l§;
            this.§+<§.stageHeight = this.§33§ * _loc5_ / _loc4_;
         }
         this.§#0§ = param1;
         this.§'?§ = param2;
         this.§+<§.dispatchEvent(new §!P§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §=l§() : void
      {
         this.setCanvasSize(this.§2l§,this.§33§);
      }
      
      private function §6<§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§`k§ || !this.§5!@§)
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
               this.§1! § = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§1! § = false;
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
               _loc5_ = §9V§.§ for§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §9V§.§]`§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §9V§.§^^§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §9V§.§ for§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §9V§.§^^§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§1! § ? §9V§.§]`§ : §9V§.§<V§;
         }
         if((_loc2_ < this.§6Y§.left || _loc2_ >= this.§6Y§.right || _loc3_ < this.§6Y§.top || _loc3_ >= this.§6Y§.bottom) && _loc5_ == §9V§.§ for§)
         {
            return;
         }
         _loc2_ -= this.§6Y§.x;
         _loc3_ -= this.§6Y§.y;
         this.§^!D§.§"!8§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §1!@§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §]!G§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§5§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§3R§ != null)
         {
            (_loc4_ = this.§3R§.createProgram()).upload(param2,param3);
            this.§5§[param1] = _loc4_;
         }
      }
      
      public function §5[§(param1:String) : void
      {
         var _loc2_:Program3D = this.§'! §(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§5§[param1];
         }
      }
      
      public function §'! §(param1:String) : Program3D
      {
         return this.§5§[param1] as Program3D;
      }
      
      public function §;^§(param1:String) : Boolean
      {
         return param1 in this.§5§;
      }
      
      public function get §]v§() : Boolean
      {
         return this.§`k§;
      }
      
      public function get §9o§() : §'&§
      {
         return this.§1D§;
      }
      
      public function get §true §() : Boolean
      {
         return this.§&G§;
      }
      
      public function set §true §(param1:Boolean) : void
      {
         this.§&G§ = param1;
         if(this.§3R§)
         {
            this.§^!D§.§true § = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§1!K§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§1!K§ = param1;
         if(this.§3R§)
         {
            this.§3R§.enableErrorChecking = param1;
         }
      }
      
      public function get § 6§() : int
      {
         return this.§"$§;
      }
      
      public function set § 6§(param1:int) : void
      {
         this.§"$§ = param1;
         this.§@-§();
      }
      
      public function get §+R§() : Rectangle
      {
         return this.§6Y§.clone();
      }
      
      public function set §+R§(param1:Rectangle) : void
      {
         this.§6Y§ = param1.clone();
         this.§@-§();
      }
      
      public function get §+p§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§!,§ == null)
         {
            this.§!,§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§!,§.contextMenu = _loc1_;
            this.§2L§();
         }
         return this.§!,§;
      }
      
      public function get stage() : §-!'§.Stage
      {
         return this.§+<§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get § ,§() : flash.display.Stage
      {
         return this.§+5§;
      }
      
      public function get §@!K§() : Boolean
      {
         return !this.§6V§;
      }
   }
}
