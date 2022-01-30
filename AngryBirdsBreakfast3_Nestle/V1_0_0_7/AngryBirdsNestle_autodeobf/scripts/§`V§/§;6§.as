package §`V§
{
   import § !=§.DisplayObject;
   import § !=§.Stage;
   import § !a§.Texture;
   import §1"#§.§3-§;
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
   import starling.events.§!!5§;
   import starling.events.§,!B§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`!%§;
   
   public class §;6§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §=6§:Rectangle;
      
      private static var §3+§:Boolean = true;
      
      private static var §^!7§:Boolean;
      
      private static var §<!w§:§;6§;
      
      private static var §42§:Boolean;
      
      private static var §9'§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §=>§:§ !=§.Stage;
      
      private var §#!F§:Class;
      
      private var §1U§:§ !=§.DisplayObject;
      
      private var §;!H§:§3-§;
      
      private var §8w§:Boolean;
      
      private var §+!l§:Boolean;
      
      private var §8O§:§^M§;
      
      private var §1A§:§!!5§;
      
      private var §13§:int;
      
      private var §7T§:Boolean;
      
      private var §@#§:Boolean;
      
      private var §"#§:Number;
      
      private var §7!6§:Boolean;
      
      private var §"!^§:flash.display.Stage;
      
      private var §2+§:Sprite;
      
      private var §,!]§:Context3D;
      
      private var §>!+§:Dictionary;
      
      private var §9!q§:int;
      
      private var §[Q§:Boolean;
      
      private var §8!m§:Number;
      
      private var §^"%§:Number;
      
      private var §1Y§:Number;
      
      private var §!3§:Number;
      
      private var §2!`§:Number;
      
      private var §27§:Number;
      
      private var §+i§:Function;
      
      private var § a§:uint;
      
      private var §^a§:String;
      
      private var §9!d§:Bitmap;
      
      private var §1!3§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §3W§:Boolean = false;
      
      private var §6!1§:Boolean = false;
      
      public function §;6§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§8!m§ = param3.width;
         this.§^"%§ = param3.height;
         this.§1Y§ = this.§8!m§;
         this.§!3§ = this.§^"%§;
         this.§2!`§ = param2.stageWidth;
         this.§27§ = param2.stageHeight;
         §]!h§ = true;
         this.§1B§();
         this.§#!F§ = param1;
         §=6§ = param3;
         this.mStage3D = param4;
         this.§=>§ = new § !=§.Stage(param3.width,param3.height,param2.color);
         this.§"!^§ = param2;
         this.§1A§ = new §!!5§(this.§=>§);
         this.§;!H§ = new §3-§();
         this.§13§ = 0;
         this.§7T§ = false;
         this.§@#§ = false;
         this.§"#§ = getTimer() / 1000;
         this.§>!+§ = new Dictionary();
         for each(_loc6_ in this.§5G§)
         {
            param2.addEventListener(_loc6_,this.§'E§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§4!I§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§4!I§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§?! §,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§6!'§,false,1,true);
         this.mStage3D.visible = false;
         this.§&F§(true);
         this.§ a§ = param2.color;
         this.§^a§ = param5;
      }
      
      public static function get §?!C§() : Boolean
      {
         if(§@X§)
         {
            return §@X§.§[Q§;
         }
         return true;
      }
      
      public static function §%1§() : Boolean
      {
         return §<!w§ && (§<!w§.§1!3§ || §<!w§.§,!]§ != null && §<!w§.§,!]§.driverInfo != "Disposed");
      }
      
      private static function §>U§() : void
      {
         §^!7§ = true;
      }
      
      public static function get §8!"§() : Rectangle
      {
         return §=6§.clone();
      }
      
      public static function set §8!"§(param1:Rectangle) : void
      {
         §=6§ = param1.clone();
         §>U§();
      }
      
      public static function set §[!u§(param1:Boolean) : void
      {
         §3+§ = param1;
      }
      
      public static function get §[!u§() : Boolean
      {
         return §3+§;
      }
      
      public static function get §@X§() : §;6§
      {
         return §<!w§;
      }
      
      public static function get §`"!§() : §3-§
      {
         return !!§<!w§ ? §<!w§.§`"!§ : null;
      }
      
      public static function get §;" §() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;" §(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §]!h§() : Boolean
      {
         return §42§;
      }
      
      public static function set §]!h§(param1:Boolean) : void
      {
         if(§<!w§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §42§ = param1;
      }
      
      public static function §'A§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§@X§)
         {
            return Texture.§"!5§(§@X§.§,!]§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§<!w§.§,!]§)
         {
            §<!w§.§,!]§.drawToBitmapData(param1);
         }
         else if(§<!w§.§8O§.canvas)
         {
            _loc2_ = §<!w§.§8O§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §4!_§() : § !=§.DisplayObject
      {
         return this.§1U§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§ a§ = param1;
      }
      
      public function get §3!-§() : Number
      {
         return this.§8!m§;
      }
      
      public function get §"!t§() : Number
      {
         return this.§^"%§;
      }
      
      public function §!!L§() : void
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
               profile = !!this.§6!1§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§^a§,profile);
            }
            else
            {
               requestContext3D(this.§^a§);
            }
         }
         catch(e:Error)
         {
            §2h§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§3W§ = true;
         this.§"!^§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§4!I§,false);
         this.§"!^§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§4!I§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§?! §,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§6!'§,false);
         for each(_loc1_ in this.§5G§)
         {
            this.§"!^§.removeEventListener(_loc1_,this.§'E§,false);
         }
         for each(_loc2_ in this.§>!+§)
         {
            _loc2_.dispose();
         }
         if(this.§,!]§)
         {
            this.§,!]§.dispose();
         }
         if(this.§1A§)
         {
            this.§1A§.dispose();
         }
         if(this.§8O§)
         {
            this.§8O§.dispose();
         }
         if(§<!w§ == this)
         {
            §<!w§ = null;
         }
         if(this.§9!d§ && this.§9!d§.bitmapData)
         {
            this.§9!d§.bitmapData.dispose();
            this.§9!d§.bitmapData = null;
         }
      }
      
      private function §2'§() : void
      {
         this.§,!]§ = this.mStage3D.context3D;
         this.§>!+§ = new Dictionary();
         if(this.§,!]§)
         {
            this.§,!]§.enableErrorChecking = this.§@#§;
            if(this.§,!]§.driverInfo.indexOf("Software") >= 0)
            {
               this.§[Q§ = true;
            }
         }
         else
         {
            this.§[Q§ = true;
         }
         §>U§();
      }
      
      private function §5K§() : void
      {
         if(this.§=>§.numChildren > 0)
         {
            return;
         }
         if(this.§1U§ == null)
         {
            this.§1U§ = new this.§#!F§();
         }
         if(this.§1U§ == null)
         {
            throw new Error("Invalid root class: " + this.§#!F§);
         }
         this.§=>§.addChild(this.§1U§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§,!]§.configureBackBuffer(§=6§.width,§=6§.height,this.§13§,false);
            §^!7§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§%1§())
         {
            return;
         }
         if(§^!7§)
         {
            if(this.§,!]§)
            {
               this.mStage3D.x = §=6§.x;
               this.mStage3D.y = §=6§.y;
               this.configureBackBuffer();
               if(§^!7§)
               {
                  return;
               }
               this.setCanvasSize(§=6§.width,§=6§.height);
            }
            else if(this.§9!d§)
            {
               §^!7§ = false;
               this.setCanvasSize(§=6§.width,§=6§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§"#§;
         this.§"#§ = _loc1_;
         this.§=>§.advanceTime(_loc2_);
         this.§;!H§.advanceTime(_loc2_);
         this.§1A§.advanceTime(_loc2_);
         this.§8O§.§8>§(this.§=>§.stageWidth,this.§=>§.stageHeight);
         this.§8O§.clear(this.§,!]§,this.§ a§,1);
         this.§8O§.§true§(this.§,!]§,this.§9!q§);
         this.§=>§.render(this.§8O§,1);
         this.§8O§.§8R§();
         if(this.§+i§ != null)
         {
            this.§+i§();
            this.§+i§ = null;
         }
         this.§8O§.finishRendering(this.§,!]§);
         this.§8O§.nextFrame();
      }
      
      public function set §'!9§(param1:Function) : void
      {
         this.§+i§ = param1;
      }
      
      private function §%!N§() : void
      {
         var _loc3_:BitmapData = null;
         this.§2+§.x = §=6§.x;
         this.§2+§.y = §=6§.y;
         var _loc1_:int = this.§2+§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§2+§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§"!^§.addChild(this.§2+§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§"!^§.removeChild(this.§2+§);
         }
         if(this.§8O§ && this.§8O§.canvas)
         {
            this.§8O§.setCanvasSize(this.§1Y§,this.§!3§,§=6§.width / this.§=>§.stageWidth,§=6§.height / this.§=>§.stageHeight);
            _loc3_ = this.§8O§.canvas;
            if(this.§9!d§.bitmapData != _loc3_)
            {
               this.§9!d§.bitmapData = _loc3_;
            }
            if(this.§"!^§.getChildIndex(this.§2+§) > 0)
            {
               this.§"!^§.removeChild(this.§2+§);
               this.§"!^§.addChildAt(this.§2+§,0);
            }
         }
      }
      
      private function §2h§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§=>§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§=>§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§=>§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§#k§.addChild(_loc2_);
      }
      
      public function §1B§() : void
      {
         §<!w§ = this;
      }
      
      public function start() : void
      {
         this.§8w§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§8w§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §&F§(param1:Boolean) : void
      {
         this.§+!l§ = param1;
      }
      
      private function §3!@§() : void
      {
         this.§1!3§ = true;
         if(this.§9!d§ == null)
         {
            this.§9!d§ = new Bitmap();
            this.§#k§.addChild(this.§9!d§);
         }
      }
      
      private function §6!'§(param1:ErrorEvent) : void
      {
         this.§3!@§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §?! §(param1:flash.events.Event) : void
      {
         if(this.§3W§)
         {
            return;
         }
         if(!this.§6!1§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
         {
            this.§6!1§ = true;
            this.§!!L§();
            return;
         }
         ++§9'§;
         this.§9!q§ = §9'§;
         if(this.§8O§)
         {
            this.§8O§.dispose();
         }
         if(!§;6§.§]!h§ && this.§,!]§)
         {
            this.§2h§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§1B§();
         this.§2'§();
         this.§5K§();
         if(this.§,!]§ && this.§[Q§)
         {
            this.mStage3DEnabled = false;
            this.§,!]§ = null;
            this.§3!@§();
         }
         if(this.§,!]§)
         {
            this.§8O§ = new §^M§();
         }
         else
         {
            this.§8O§ = new §'j§();
            this.§8O§.setCanvasSize(this.§1Y§,this.§!3§,§=6§.width / this.§=>§.stageWidth,§=6§.height / this.§=>§.stageHeight);
            this.§8O§.clear(null,this.§ a§);
         }
         this.§1A§.§-!&§ = this.§7T§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§1B§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§"#§;
         if(this.§8w§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§2+§)
         {
            this.§%!N§();
         }
      }
      
      private function §4!I§(param1:flash.events.KeyboardEvent) : void
      {
         this.§1B§();
         this.§=>§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§8!m§;
         var _loc4_:Number = param2 / this.§^"%§;
         if(!§[!u§)
         {
            this.§=>§.stageWidth = this.§8!m§ * _loc3_ / _loc4_;
            this.§=>§.stageHeight = this.§^"%§;
         }
         else
         {
            this.§=>§.stageWidth = this.§8!m§;
            this.§=>§.stageHeight = this.§^"%§ * _loc4_ / _loc3_;
         }
         this.§1Y§ = param1;
         this.§!3§ = param2;
         this.§=>§.dispatchEvent(new §`!%§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §4L§() : void
      {
         this.setCanvasSize(this.§8!m§,this.§^"%§);
      }
      
      private function §'E§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§8w§ || !this.§+!l§)
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
               this.§7!6§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§7!6§ = false;
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
               _loc5_ = §,!B§.§3<§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §,!B§.§'!R§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §,!B§.§0!L§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §,!B§.§3<§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §,!B§.§0!L§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§7!6§ ? §,!B§.§'!R§ : §,!B§.HOVER;
         }
         if((_loc2_ < §=6§.left || _loc2_ >= §=6§.right || _loc3_ < §=6§.top || _loc3_ >= §=6§.bottom) && _loc5_ == §,!B§.§3<§)
         {
            return;
         }
         _loc2_ -= §=6§.x;
         _loc3_ -= §=6§.y;
         this.§1A§.§8a§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §5G§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §1!p§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§>!+§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§,!]§ != null)
         {
            (_loc4_ = this.§,!]§.createProgram()).upload(param2,param3);
            this.§>!+§[param1] = _loc4_;
         }
      }
      
      public function §;!;§(param1:String) : void
      {
         var _loc2_:Program3D = this.§^!<§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§>!+§[param1];
         }
      }
      
      public function §^!<§(param1:String) : Program3D
      {
         return this.§>!+§[param1] as Program3D;
      }
      
      public function §[m§(param1:String) : Boolean
      {
         return param1 in this.§>!+§;
      }
      
      public function get §%$§() : Boolean
      {
         return this.§8w§;
      }
      
      public function get §`"!§() : §3-§
      {
         return this.§;!H§;
      }
      
      public function get §-!&§() : Boolean
      {
         return this.§7T§;
      }
      
      public function set §-!&§(param1:Boolean) : void
      {
         this.§7T§ = param1;
         if(this.§,!]§)
         {
            this.§1A§.§-!&§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§@#§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§@#§ = param1;
         if(this.§,!]§)
         {
            this.§,!]§.enableErrorChecking = param1;
         }
      }
      
      public function get §>""§() : int
      {
         return this.§13§;
      }
      
      public function set §>""§(param1:int) : void
      {
         this.§13§ = param1;
         §>U§();
      }
      
      public function get §#k§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§2+§ == null)
         {
            this.§2+§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§2+§.contextMenu = _loc1_;
            this.§%!N§();
         }
         return this.§2+§;
      }
      
      public function get stage() : § !=§.Stage
      {
         return this.§=>§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §"]§() : flash.display.Stage
      {
         return this.§"!^§;
      }
      
      public function get §[2§() : Boolean
      {
         return !this.§1!3§;
      }
   }
}
