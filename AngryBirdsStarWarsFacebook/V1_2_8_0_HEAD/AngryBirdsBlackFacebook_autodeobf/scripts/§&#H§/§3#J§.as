package §&#H§
{
   import §!!U§.DisplayObject;
   import §!!U§.Stage;
   import §&v§.Texture;
   import §<!>§.§<#R§;
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
   import starling.events.§5X§;
   import starling.events.§7#-§;
   import starling.events.§8"e§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §3#J§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §%!H§:Rectangle;
      
      private static var §3"p§:Boolean = true;
      
      private static var §&[§:Boolean;
      
      private static var §?!t§:§3#J§;
      
      private static var §;"1§:Boolean;
      
      private static var §-"'§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var § "u§:§!!U§.Stage;
      
      private var §8`§:Class;
      
      private var §2!§:§!!U§.DisplayObject;
      
      private var §&! §:§<#R§;
      
      private var §^!+§:Boolean;
      
      private var §&%§:Boolean;
      
      private var §'#,§:§%"H§;
      
      private var §0!Z§:§8"e§;
      
      private var §@Q§:int;
      
      private var §=!r§:Boolean;
      
      private var §]!A§:Boolean;
      
      private var §6"0§:Number;
      
      private var §1!q§:Boolean;
      
      private var §'X§:flash.display.Stage;
      
      private var §3"T§:Sprite;
      
      private var §>!Y§:Context3D;
      
      private var §`#`§:Dictionary;
      
      private var §3"b§:int;
      
      private var §##I§:Boolean;
      
      private var § "W§:Number;
      
      private var §8!y§:Number;
      
      private var §0"1§:Number;
      
      private var §8#3§:Number;
      
      private var §2"t§:Number;
      
      private var §]j§:Number;
      
      private var §6!T§:Function;
      
      private var §]H§:uint;
      
      private var §4"H§:String;
      
      private var §7#+§:Bitmap;
      
      private var §>A§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §`#X§:Boolean = false;
      
      private var §?"S§:Boolean = false;
      
      public function §3#J§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§ "W§ = param3.width;
         this.§8!y§ = param3.height;
         this.§0"1§ = this.§ "W§;
         this.§8#3§ = this.§8!y§;
         this.§2"t§ = param2.stageWidth;
         this.§]j§ = param2.stageHeight;
         §0§ = true;
         this.§ "k§();
         this.§8`§ = param1;
         §%!H§ = param3;
         this.mStage3D = param4;
         this.§ "u§ = new §!!U§.Stage(param3.width,param3.height,param2.color);
         this.§'X§ = param2;
         this.§0!Z§ = new §8"e§(this.§ "u§);
         this.§&! § = new §<#R§();
         this.§@Q§ = 0;
         this.§=!r§ = false;
         this.§]!A§ = false;
         this.§6"0§ = getTimer() / 1000;
         this.§`#`§ = new Dictionary();
         for each(_loc6_ in this.§-";§)
         {
            param2.addEventListener(_loc6_,this.§2#5§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[#O§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[#O§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%!b§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§8!g§,false,1,true);
         this.mStage3D.visible = false;
         this.§5J§(true);
         this.§]H§ = param2.color;
         this.§4"H§ = param5;
      }
      
      public static function get §3!s§() : Boolean
      {
         if(§2!C§)
         {
            return §2!C§.§##I§;
         }
         return true;
      }
      
      public static function §;[§() : Boolean
      {
         return §?!t§ && (§?!t§.§>A§ || §?!t§.§>!Y§ != null && §?!t§.§>!Y§.driverInfo != "Disposed");
      }
      
      private static function §4"w§() : void
      {
         §&[§ = true;
      }
      
      public static function get §=#_§() : Rectangle
      {
         return §%!H§.clone();
      }
      
      public static function set §=#_§(param1:Rectangle) : void
      {
         §%!H§ = param1.clone();
         §4"w§();
      }
      
      public static function set §+!m§(param1:Boolean) : void
      {
         §3"p§ = param1;
      }
      
      public static function get §+!m§() : Boolean
      {
         return §3"p§;
      }
      
      public static function get §2!C§() : §3#J§
      {
         return §?!t§;
      }
      
      public static function get §^#A§() : §<#R§
      {
         return !!§?!t§ ? §?!t§.§^#A§ : null;
      }
      
      public static function get §%!W§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §%!W§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §0§() : Boolean
      {
         return §;"1§;
      }
      
      public static function set §0§(param1:Boolean) : void
      {
         if(§?!t§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §;"1§ = param1;
      }
      
      public static function §%!"§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1.0) : Texture
      {
         if(§2!C§)
         {
            return Texture.§-#X§(§2!C§.§>!Y§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§?!t§.§>!Y§)
         {
            §?!t§.§>!Y§.drawToBitmapData(param1);
         }
         else if(§?!t§.§'#,§.canvas)
         {
            _loc2_ = §?!t§.§'#,§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §8"B§() : §!!U§.DisplayObject
      {
         return this.§2!§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§]H§ = param1;
      }
      
      public function get § !s§() : Number
      {
         return this.§ "W§;
      }
      
      public function get §2!G§() : Number
      {
         return this.§8!y§;
      }
      
      public function §^"_§() : void
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
               profile = !!this.§?"S§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§4"H§,profile);
            }
            else
            {
               requestContext3D(this.§4"H§);
            }
         }
         catch(e:Error)
         {
            § #@§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§`#X§ = true;
         this.§'X§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[#O§,false);
         this.§'X§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[#O§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%!b§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§8!g§,false);
         for each(_loc1_ in this.§-";§)
         {
            this.§'X§.removeEventListener(_loc1_,this.§2#5§,false);
         }
         for each(_loc2_ in this.§`#`§)
         {
            _loc2_.dispose();
         }
         if(this.§>!Y§)
         {
            this.§>!Y§.dispose();
         }
         if(this.§0!Z§)
         {
            this.§0!Z§.dispose();
         }
         if(this.§'#,§)
         {
            this.§'#,§.dispose();
         }
         if(§?!t§ == this)
         {
            §?!t§ = null;
         }
         if(this.§7#+§ && this.§7#+§.bitmapData)
         {
            this.§7#+§.bitmapData.dispose();
            this.§7#+§.bitmapData = null;
         }
      }
      
      private function §0!I§() : void
      {
         this.§>!Y§ = this.mStage3D.context3D;
         this.§`#`§ = new Dictionary();
         if(this.§>!Y§)
         {
            this.§>!Y§.enableErrorChecking = this.§]!A§;
            if(this.§>!Y§.driverInfo.indexOf("Software") >= 0)
            {
               this.§##I§ = true;
            }
         }
         else
         {
            this.§##I§ = true;
         }
         §4"w§();
      }
      
      private function §;!$§() : void
      {
         if(this.§ "u§.numChildren > 0)
         {
            return;
         }
         if(this.§2!§ == null)
         {
            this.§2!§ = new this.§8`§();
         }
         if(this.§2!§ == null)
         {
            throw new Error("Invalid root class: " + this.§8`§);
         }
         this.§ "u§.addChild(this.§2!§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§>!Y§.configureBackBuffer(§%!H§.width,§%!H§.height,this.§@Q§,false);
            §&[§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§;[§())
         {
            return;
         }
         if(§&[§)
         {
            if(this.§>!Y§)
            {
               this.mStage3D.x = §%!H§.x;
               this.mStage3D.y = §%!H§.y;
               this.configureBackBuffer();
               if(§&[§)
               {
                  return;
               }
               this.setCanvasSize(§%!H§.width,§%!H§.height);
            }
            else if(this.§7#+§)
            {
               §&[§ = false;
               this.setCanvasSize(§%!H§.width,§%!H§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§6"0§;
         this.§6"0§ = _loc1_;
         this.§ "u§.advanceTime(_loc2_);
         this.§&! §.advanceTime(_loc2_);
         this.§0!Z§.advanceTime(_loc2_);
         this.§'#,§.§5#G§(this.§ "u§.stageWidth,this.§ "u§.stageHeight);
         this.§'#,§.clear(this.§>!Y§,this.§]H§,1);
         this.§'#,§.§>"0§(this.§>!Y§,this.§3"b§);
         this.§ "u§.render(this.§'#,§,1);
         this.§'#,§.§+#X§();
         if(this.§6!T§ != null)
         {
            this.§6!T§();
            this.§6!T§ = null;
         }
         this.§'#,§.finishRendering(this.§>!Y§);
         this.§'#,§.nextFrame();
      }
      
      public function set §0#[§(param1:Function) : void
      {
         this.§6!T§ = param1;
      }
      
      private function §&u§() : void
      {
         var _loc3_:BitmapData = null;
         this.§3"T§.x = §%!H§.x;
         this.§3"T§.y = §%!H§.y;
         var _loc1_:int = this.§3"T§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§3"T§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§'X§.addChild(this.§3"T§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§'X§.removeChild(this.§3"T§);
         }
         if(this.§'#,§ && this.§'#,§.canvas)
         {
            this.§'#,§.setCanvasSize(this.§0"1§,this.§8#3§,§%!H§.width / this.§ "u§.stageWidth,§%!H§.height / this.§ "u§.stageHeight);
            _loc3_ = this.§'#,§.canvas;
            if(this.§7#+§.bitmapData != _loc3_)
            {
               this.§7#+§.bitmapData = _loc3_;
            }
            if(this.§'X§.getChildIndex(this.§3"T§) > 0)
            {
               this.§'X§.removeChild(this.§3"T§);
               this.§'X§.addChildAt(this.§3"T§,0);
            }
         }
      }
      
      private function § #@§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§ "u§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§ "u§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§ "u§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§3"X§.addChild(_loc2_);
      }
      
      public function § "k§() : void
      {
         §?!t§ = this;
      }
      
      public function start() : void
      {
         this.§^!+§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§^!+§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §5J§(param1:Boolean) : void
      {
         this.§&%§ = param1;
      }
      
      private function §-"t§() : void
      {
         this.§>A§ = true;
         if(this.§7#+§ == null)
         {
            this.§7#+§ = new Bitmap();
            this.§3"X§.addChild(this.§7#+§);
         }
      }
      
      private function §8!g§(param1:ErrorEvent) : void
      {
         this.§-"t§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §%!b§(param1:flash.events.Event) : void
      {
         if(this.§`#X§)
         {
            return;
         }
         if(!this.§?"S§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
         {
            this.§?"S§ = true;
            this.§^"_§();
            return;
         }
         ++§-"'§;
         this.§3"b§ = §-"'§;
         if(this.§'#,§)
         {
            this.§'#,§.dispose();
         }
         if(!§3#J§.§0§ && this.§>!Y§)
         {
            this.§ #@§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§ "k§();
         this.§0!I§();
         this.§;!$§();
         if(this.§>!Y§ && this.§##I§)
         {
            this.mStage3DEnabled = false;
            this.§>!Y§ = null;
            this.§-"t§();
         }
         if(this.§>!Y§)
         {
            this.§'#,§ = new §%"H§();
         }
         else
         {
            this.§'#,§ = new §2a§();
            this.§'#,§.setCanvasSize(this.§0"1§,this.§8#3§,§%!H§.width / this.§ "u§.stageWidth,§%!H§.height / this.§ "u§.stageHeight);
            this.§'#,§.clear(null,this.§]H§);
         }
         this.§0!Z§.§`#"§ = this.§=!r§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§ "k§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§6"0§;
         if(this.§^!+§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§3"T§)
         {
            this.§&u§();
         }
      }
      
      private function §[#O§(param1:flash.events.KeyboardEvent) : void
      {
         this.§ "k§();
         this.§ "u§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§ "W§;
         var _loc4_:Number = param2 / this.§8!y§;
         if(!§+!m§)
         {
            this.§ "u§.stageWidth = this.§ "W§ * _loc3_ / _loc4_;
            this.§ "u§.stageHeight = this.§8!y§;
         }
         else
         {
            this.§ "u§.stageWidth = this.§ "W§;
            this.§ "u§.stageHeight = this.§8!y§ * _loc4_ / _loc3_;
         }
         this.§0"1§ = param1;
         this.§8#3§ = param2;
         this.§ "u§.dispatchEvent(new §7#-§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §!H§() : void
      {
         this.setCanvasSize(this.§ "W§,this.§8!y§);
      }
      
      private function §2#5§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§^!+§ || !this.§&%§)
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
               this.§1!q§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§1!q§ = false;
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
               _loc5_ = §5X§.§<!A§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §5X§.§!!Z§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §5X§.§"!u§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §5X§.§<!A§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §5X§.§"!u§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§1!q§ ? §5X§.§!!Z§ : §5X§.§;!s§;
         }
         if((_loc2_ < §%!H§.left || _loc2_ >= §%!H§.right || _loc3_ < §%!H§.top || _loc3_ >= §%!H§.bottom) && _loc5_ == §5X§.§<!A§)
         {
            return;
         }
         _loc2_ -= §%!H§.x;
         _loc3_ -= §%!H§.y;
         this.§0!Z§.§2#S§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §-";§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §4#-§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§`#`§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§>!Y§ != null)
         {
            (_loc4_ = this.§>!Y§.createProgram()).upload(param2,param3);
            this.§`#`§[param1] = _loc4_;
         }
      }
      
      public function §@r§(param1:String) : void
      {
         var _loc2_:Program3D = this.§^!_§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§`#`§[param1];
         }
      }
      
      public function §^!_§(param1:String) : Program3D
      {
         return this.§`#`§[param1] as Program3D;
      }
      
      public function §,"i§(param1:String) : Boolean
      {
         return param1 in this.§`#`§;
      }
      
      public function get §%-§() : Boolean
      {
         return this.§^!+§;
      }
      
      public function get §^#A§() : §<#R§
      {
         return this.§&! §;
      }
      
      public function get §`#"§() : Boolean
      {
         return this.§=!r§;
      }
      
      public function set §`#"§(param1:Boolean) : void
      {
         this.§=!r§ = param1;
         if(this.§>!Y§)
         {
            this.§0!Z§.§`#"§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§]!A§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§]!A§ = param1;
         if(this.§>!Y§)
         {
            this.§>!Y§.enableErrorChecking = param1;
         }
      }
      
      public function get §#!t§() : int
      {
         return this.§@Q§;
      }
      
      public function set §#!t§(param1:int) : void
      {
         this.§@Q§ = param1;
         §4"w§();
      }
      
      public function get §3"X§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§3"T§ == null)
         {
            this.§3"T§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§3"T§.contextMenu = _loc1_;
            this.§&u§();
         }
         return this.§3"T§;
      }
      
      public function get stage() : §!!U§.Stage
      {
         return this.§ "u§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §7!D§() : flash.display.Stage
      {
         return this.§'X§;
      }
      
      public function get §;#E§() : Boolean
      {
         return !this.§>A§;
      }
   }
}
