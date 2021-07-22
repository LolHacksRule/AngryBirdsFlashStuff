package §'!j§
{
   import §!$;§.§4$8§;
   import §!$;§.Event;
   import §!$;§.EventDispatcher;
   import §!$;§.KeyboardEvent;
   import §!$;§.§`!Z§;
   import §"#z§.Texture;
   import §,#=§.§4A§;
   import §,#=§.§6G§;
   import §0g§.§6!W§;
   import §6#H§.DisplayObject;
   import §6#H§.Stage;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DCompareMode;
   import flash.display3D.Context3DTriangleFace;
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
   import flash.ui.Mouse;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.3";
      
      private static const §`R§:String = "Starling.programs";
      
      private static var §^z§:Rectangle;
      
      private static var §2#§:Boolean = true;
      
      private static var §?!5§:Boolean = false;
      
      private static var §+!+§:Boolean;
      
      private static var §7">§:Starling;
      
      private static var §+"?§:Boolean;
      
      private static var §3e§:Dictionary = new Dictionary(true);
      
      private static var §6#M§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §3"K§:§6#H§.Stage;
      
      private var §8#0§:Class;
      
      private var §5V§:§6#H§.DisplayObject;
      
      private var §9"a§:§6!W§;
      
      private var §7$6§:Boolean;
      
      private var §?#%§:Boolean;
      
      private var §!!E§:§^$$§;
      
      private var §@,§:§##&§;
      
      private var § §:int;
      
      private var §<!S§:Boolean;
      
      private var §!!5§:Boolean;
      
      private var §^!>§:Number;
      
      private var §#!!§:Boolean;
      
      private var §`#s§:§@#7§;
      
      private var §%!!§:Boolean;
      
      private var §^#u§:String;
      
      private var §1#s§:Context3D;
      
      private var §2#A§:Rectangle;
      
      private var §@!z§:Rectangle;
      
      private var §8!I§:flash.display.Stage;
      
      private var §@"n§:Sprite;
      
      private var §4#!§:int;
      
      private var §7!-§:Boolean;
      
      private var § $D§:Boolean = true;
      
      private var §<"=§:Number;
      
      private var §&!e§:Number;
      
      private var §6$0§:Number;
      
      private var §&#2§:Number;
      
      private var §"#r§:Number;
      
      private var §,"X§:Number;
      
      private var §3!W§:Function;
      
      private var §0!j§:uint;
      
      private var §2!i§:String;
      
      private var §@"#§:Bitmap;
      
      private var §,$@§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §=#C§:Boolean = false;
      
      private var §]#u§:Boolean = false;
      
      private var §=#T§:Boolean = false;
      
      private var §;#j§:Number = 25.0;
      
      private var § !3§:int = 0;
      
      public function Starling(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto", param6:String = "baselineConstrained")
      {
         var _loc7_:String = null;
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
         this.§<"=§ = param3.width;
         this.§&!e§ = param3.height;
         this.§6$0§ = this.§<"=§;
         this.§&#2§ = this.§&!e§;
         this.§"#r§ = param2.stageWidth;
         this.§,"X§ = param2.stageHeight;
         § $A§ = true;
         this.§?m§();
         this.§8#0§ = param1;
         §^z§ = param3;
         this.§2#A§ = new Rectangle();
         this.mStage3D = param4;
         this.§3"K§ = new §6#H§.Stage(param3.width,param3.height,param2.color);
         this.§@"n§ = new Sprite();
         this.§8!I§ = param2;
         this.§8!I§.addChild(this.§@"n§);
         this.§@,§ = new §##&§(this.§3"K§);
         this.§9"a§ = new §6!W§();
         this.§ § = 0;
         this.§<!S§ = false;
         this.§!!5§ = false;
         this.§^#u§ = param6;
         this.§^!>§ = getTimer() / 1000;
         §3e§[param4] = new Dictionary();
         §3e§[param4][§`R§] = new Dictionary();
         param2.scaleMode = StageScaleMode.NO_SCALE;
         param2.align = StageAlign.TOP_LEFT;
         for each(_loc7_ in this.§8!O§)
         {
            param2.addEventListener(_loc7_,this.§0$8§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§["1§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§["1§,false,0,true);
         param2.addEventListener(flash.events.Event.MOUSE_LEAVE,this.§[!A§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%"]§,false,10,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§!-§,false,10,true);
         this.mStage3D.visible = false;
         this.§%$@§(true);
         this.§0!j§ = param2.color;
         this.§2!i§ = param5;
         if(this.mStage3D.context3D && this.mStage3D.context3D.driverInfo != "Disposed")
         {
            this.§%!!§ = true;
            setTimeout(this.initialize,1);
         }
         else
         {
            this.§%!!§ = false;
         }
      }
      
      public static function get §&"f§() : Boolean
      {
         if(§>x§)
         {
            return §>x§.§7!-§;
         }
         return true;
      }
      
      public static function §?"w§() : Boolean
      {
         return §7">§ && (§7">§.§,$@§ || §7">§.§1#s§ != null && §7">§.§1#s§.driverInfo != "Disposed");
      }
      
      public static function get §8I§() : Boolean
      {
         return §?"w§();
      }
      
      public static function get §?2§() : Rectangle
      {
         return §^z§.clone();
      }
      
      public static function set §?2§(param1:Rectangle) : void
      {
         §^z§ = param1.clone();
         §+!+§ = true;
      }
      
      public static function set §8"+§(param1:Boolean) : void
      {
         §?!5§ = param1;
      }
      
      public static function get §8"+§() : Boolean
      {
         return §?!5§;
      }
      
      public static function set §1#t§(param1:Boolean) : void
      {
         §2#§ = param1;
      }
      
      public static function get §1#t§() : Boolean
      {
         return §2#§;
      }
      
      public static function get §>x§() : Starling
      {
         return §7">§;
      }
      
      public static function get context() : Context3D
      {
         return !!§7">§ ? §7">§.context : null;
      }
      
      public static function get §@!T§() : §6!W§
      {
         return !!§7">§ ? §7">§.§@!T§ : null;
      }
      
      public static function get §&C§() : Number
      {
         return !!§7">§ ? Number(§7">§.§&C§) : Number(1);
      }
      
      public static function get §%!m§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §%!m§(param1:Boolean) : void
      {
         if(§7">§)
         {
            throw new IllegalOperationError("\'multitouchEnabled\' must be set before Starling instance is created");
         }
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get § $A§() : Boolean
      {
         return §+"?§;
      }
      
      public static function set § $A§(param1:Boolean) : void
      {
         if(§7">§)
         {
            throw new IllegalOperationError("\'handleLostContext\' must be set before Starling instance is created");
         }
         §+"?§ = param1;
      }
      
      public static function §2u§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1) : Texture
      {
         if(§>x§)
         {
            return Texture.§0#B§(§>x§.§1#s§,param1,param2,param3,param4);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§7">§.§1#s§)
         {
            §7">§.§1#s§.drawToBitmapData(param1);
         }
         else if(§7">§.§!!E§.canvas)
         {
            _loc2_ = §7">§.§!!E§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §;#T§() : §6#H§.DisplayObject
      {
         return this.§5V§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§0!j§ = param1;
      }
      
      public function set §@"8§(param1:Boolean) : void
      {
         if(!this.§=#T§ && param1)
         {
            this.§ !3§ = 0;
         }
         this.§=#T§ = param1;
      }
      
      public function get §@"8§() : Boolean
      {
         return this.§=#T§;
      }
      
      public function set §2"n§(param1:Number) : void
      {
         this.§;#j§ = param1;
      }
      
      public function get §2"n§() : Number
      {
         return this.§;#j§;
      }
      
      public function get §!#j§() : int
      {
         return this.§ !3§;
      }
      
      public function get §=$C§() : Number
      {
         return this.§<"=§;
      }
      
      public function get §9d§() : Number
      {
         return this.§&!e§;
      }
      
      public function §"!0§() : void
      {
         var requestContext3D:Function = null;
         var moreThanOne:Boolean = false;
         var profile:String = null;
         try
         {
            requestContext3D = this.mStage3D.requestContext3D;
            moreThanOne = requestContext3D.length > 1;
            if(moreThanOne)
            {
               profile = !!this.§]#u§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§2!i§,profile);
            }
            else
            {
               requestContext3D(this.§2!i§);
            }
         }
         catch(e:Error)
         {
            §1"x§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         this.stop();
         this.§=#C§ = true;
         this.§8!I§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§["1§,false);
         this.§8!I§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§["1§,false);
         this.§8!I§.removeEventListener(flash.events.Event.MOUSE_LEAVE,this.§[!A§,false);
         this.§8!I§.removeChild(this.§@"n§);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%"]§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§!-§,false);
         for each(_loc1_ in this.§8!O§)
         {
            this.§8!I§.removeEventListener(_loc1_,this.§0$8§,false);
         }
         if(this.§3"K§)
         {
            this.§3"K§.dispose();
         }
         if(this.§!!E§)
         {
            this.§!!E§.dispose();
         }
         if(this.§@,§)
         {
            this.§@,§.dispose();
         }
         if(this.§1#s§ && !this.§%!!§)
         {
            this.§1#s§.dispose();
         }
         if(§7">§ == this)
         {
            §7">§ = null;
         }
         if(this.§@"#§ && this.§@"#§.bitmapData)
         {
            this.§@"#§.bitmapData.dispose();
            this.§@"#§.bitmapData = null;
         }
      }
      
      private function initialize() : void
      {
         this.§?m§();
         this.§!!d§();
         this.§'"_§();
         this.§@,§.§%"+§ = this.§<!S§;
         this.§^!>§ = getTimer() / 1000;
      }
      
      private function §!!d§() : void
      {
         this.§1#s§ = this.mStage3D.context3D;
         this.§1#s§.setDepthTest(false,Context3DCompareMode.ALWAYS);
         this.§1#s§.setCulling(Context3DTriangleFace.NONE);
         if(!this.§ $D§ && this.§1#s§ && this.§7!-§)
         {
            this.mStage3DEnabled = false;
            this.§1#s§ = null;
            this.§5"W§();
         }
         if(this.§1#s§)
         {
            this.§!!E§ = new §^$$§();
         }
         else
         {
            this.§!!E§ = new §`$;§();
            this.§!!E§.setCanvasSize(this.§6$0§,this.§&#2§,§^z§.width / this.§3"K§.stageWidth,§^z§.height / this.§3"K§.stageHeight);
            this.§!!E§.clear(null,this.§0!j§);
         }
         if(this.§1#s§)
         {
            this.§1#s§.enableErrorChecking = this.§!!5§;
            if(this.§1#s§.driverInfo.indexOf("Software") >= 0)
            {
               this.§7!-§ = true;
            }
         }
         this.§&N§[§`R§] = new Dictionary();
         this.§^$&§(true);
         §6"#§(§!$;§.Event.CONTEXT3D_CREATE,false,this.§1#s§);
      }
      
      private function §'"_§() : void
      {
         if(this.§5V§ == null)
         {
            this.§5V§ = new this.§8#0§() as §6#H§.DisplayObject;
            if(this.§5V§ == null)
            {
               throw new Error("Invalid root class: " + this.§8#0§);
            }
            this.§3"K§.addChildAt(this.§5V§,0);
            §6"#§(§!$;§.Event.§`#=§,false,this.§5V§);
         }
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§^!>§;
         this.§^!>§ = _loc1_;
         this.§-"%§(_loc2_);
         this.render();
      }
      
      public function §-"%§(param1:Number) : void
      {
         this.§?m§();
         this.§@,§.§-"%§(param1);
         this.§3"K§.§-"%§(param1);
         this.§9"a§.§-"%§(param1);
      }
      
      public function render() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(!§8I§)
         {
            return;
         }
         this.§?m§();
         this.§^$&§();
         this.§3$ §();
         this.§!!E§.nextFrame();
         if(!this.§%!!§)
         {
            §^$$§.clear(this.§1#s§,this.§0!j§,1);
         }
         this.§!!E§.§&#h§(this.§1#s§,this.§4#!§);
         this.§!!E§.§""u§ = null;
         this.§!!E§.§`!w§(0,0,this.§3"K§.§!"b§,this.§3"K§.§<"3§);
         this.§3"K§.render(this.§!!E§,1);
         this.§!!E§.§5!#§();
         if(this.§3!W§ != null)
         {
            this.§3!W§();
            this.§3!W§ = null;
         }
         if(this.§`#s§)
         {
            this.§`#s§.§6#n§ = this.§!!E§.§6#n§;
         }
         if(!this.§%!!§)
         {
            if(this.§=#T§)
            {
               _loc1_ = getTimer();
               this.§!!E§.finishRendering(this.§1#s§);
               _loc2_ = getTimer();
               if(_loc2_ - _loc1_ > this.§;#j§)
               {
                  ++this.§ !3§;
               }
            }
            else
            {
               this.§!!E§.finishRendering(this.§1#s§);
            }
         }
      }
      
      public function set §7"?§(param1:Function) : void
      {
         this.§3!W§ = param1;
      }
      
      private function §^$&§(param1:Boolean = false) : void
      {
         if(param1 || this.§2#A§.width != §^z§.width || this.§2#A§.height != §^z§.height || this.§2#A§.x != §^z§.x || this.§2#A§.y != §^z§.y)
         {
            this.§2#A§.setTo(§^z§.x,§^z§.y,§^z§.width,§^z§.height);
            this.§@!z§ = §^z§.intersection(new Rectangle(0,0,this.§8!I§.stageWidth,this.§8!I§.stageHeight));
            this.setCanvasSize(this.§@!z§.width,this.§@!z§.height);
            if(!this.§%!!§)
            {
               this.mStage3D.x = this.§@!z§.x;
               this.mStage3D.y = this.§@!z§.y;
               this.configureBackBuffer();
            }
            else
            {
               this.§!!E§.§2D§ = this.§@!z§.width;
               this.§!!E§.§,P§ = this.§@!z§.height;
            }
         }
      }
      
      private function §3$ §() : void
      {
         var _loc3_:BitmapData = null;
         this.§@"n§.x = §^z§.x;
         this.§@"n§.y = §^z§.y;
         var _loc1_:int = this.§@"n§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@"n§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§8!I§.addChild(this.§@"n§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§8!I§.removeChild(this.§@"n§);
         }
         if(this.§!!E§ && this.§!!E§.canvas)
         {
            this.§!!E§.setCanvasSize(this.§6$0§,this.§&#2§,§^z§.width / this.§3"K§.stageWidth,§^z§.height / this.§3"K§.stageHeight);
            _loc3_ = this.§!!E§.canvas;
            if(this.§@"#§.bitmapData != _loc3_)
            {
               this.§@"#§.bitmapData = _loc3_;
            }
            if(this.§8!I§.getChildIndex(this.§@"n§) > 0)
            {
               this.§8!I§.removeChild(this.§@"n§);
               this.§8!I§.addChildAt(this.§@"n§,0);
            }
         }
      }
      
      private function §1"x§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§3"K§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§3"K§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§3"K§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§?!G§.addChild(_loc2_);
      }
      
      public function §?m§() : void
      {
         §7">§ = this;
      }
      
      public function start() : void
      {
         this.§7$6§ = true;
         this.§^!>§ = getTimer() / 1000;
         this.mStage3D.visible = this.mStage3DEnabled;
         if(this.§5V§)
         {
            this.§5V§.visible = this.mStage3DEnabled;
         }
      }
      
      public function stop() : void
      {
         this.§7$6§ = false;
         this.mStage3D.visible = false;
         if(this.§5V§)
         {
            this.§5V§.visible = false;
         }
      }
      
      public function §%$@§(param1:Boolean) : void
      {
         this.§?#%§ = param1;
      }
      
      public function set §7!6§(param1:Number) : void
      {
         this.§@,§.§7!6§ = param1;
      }
      
      private function §5"W§() : void
      {
         this.§,$@§ = true;
         if(this.§@"#§ == null)
         {
            this.§@"#§ = new Bitmap();
            this.§?!G§.addChild(this.§@"#§);
         }
      }
      
      private function §!-§(param1:ErrorEvent) : void
      {
         if(param1.errorID == 3702)
         {
            this.§1"x§("This application is not correctly embedded (wrong wmode value)");
         }
         else
         {
            this.§1"x§("Stage3D error: " + param1.text);
         }
      }
      
      private function §%"]§(param1:flash.events.Event) : void
      {
         if(!Starling.§ $A§ && this.§1#s§)
         {
            this.stop();
            param1.stopImmediatePropagation();
            this.§1"x§("Fatal error: The application lost the device context!");
         }
         else
         {
            if(!this.§]#u§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
            {
               this.§]#u§ = true;
               this.§"!0§();
               return;
            }
            ++this.§4#!§;
            this.initialize();
         }
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         if(!this.§%!!§)
         {
            if(this.§7$6§)
            {
               this.nextFrame();
            }
            else
            {
               this.render();
            }
         }
      }
      
      private function §["1§(param1:flash.events.KeyboardEvent) : void
      {
         if(!this.§7$6§)
         {
            return;
         }
         this.§?m§();
         this.§3"K§.dispatchEvent(new §!$;§.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §[!A§(param1:flash.events.Event) : void
      {
         this.§@,§.§?#q§();
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§<"=§;
         var _loc4_:Number = param2 / this.§&!e§;
         if(§8"+§)
         {
            this.§3"K§.§!"b§ = param1;
            this.§3"K§.§<"3§ = param2;
         }
         else if(!§1#t§)
         {
            this.§3"K§.§!"b§ = this.§<"=§ * _loc3_ / _loc4_;
            this.§3"K§.§<"3§ = this.§&!e§;
         }
         else
         {
            this.§3"K§.§!"b§ = this.§<"=§;
            this.§3"K§.§<"3§ = this.§&!e§ * _loc4_ / _loc3_;
         }
         this.§3"K§.stageWidth = param1;
         this.§3"K§.stageHeight = param2;
         this.§6$0§ = param1;
         this.§&#2§ = param2;
         this.§3"K§.dispatchEvent(new §`!Z§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §3"h§() : void
      {
         this.setCanvasSize(this.§<"=§,this.§&!e§);
      }
      
      private function §0$8§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc9_:MouseEvent = null;
         var _loc10_:TouchEvent = null;
         if(!this.§7$6§ || !this.§?#%§)
         {
            return;
         }
         var _loc6_:Number = 1;
         var _loc7_:Number = 1;
         var _loc8_:Number = 1;
         if(param1 is MouseEvent)
         {
            _loc2_ = (_loc9_ = param1 as MouseEvent).stageX;
            _loc3_ = _loc9_.stageY;
            _loc4_ = 0;
            if(param1.type == MouseEvent.MOUSE_DOWN)
            {
               this.§#!!§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§#!!§ = false;
            }
         }
         else
         {
            _loc2_ = (_loc10_ = param1 as TouchEvent).stageX;
            _loc3_ = _loc10_.stageY;
            _loc4_ = _loc10_.touchPointID;
            _loc6_ = _loc10_.pressure;
            _loc7_ = _loc10_.sizeX;
            _loc8_ = _loc10_.sizeY;
         }
         switch(param1.type)
         {
            case TouchEvent.TOUCH_BEGIN:
               _loc5_ = §4$8§.§0E§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §4$8§.§4"^§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §4$8§.ENDED;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §4$8§.§0E§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §4$8§.ENDED;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§#!!§ ? §4$8§.§4"^§ : §4$8§.§8"b§;
         }
         if((_loc2_ < §^z§.left || _loc2_ >= §^z§.right || _loc3_ < §^z§.top || _loc3_ >= §^z§.bottom) && _loc5_ == §4$8§.§0E§)
         {
            return;
         }
         _loc2_ -= §^z§.x;
         _loc3_ -= §^z§.y;
         this.§@,§.§`!!§(_loc4_,_loc5_,_loc2_,_loc3_,_loc6_,_loc7_,_loc8_);
      }
      
      private function get §8!O§() : Array
      {
         return Mouse.supportsCursor || !§%!m§ ? [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP] : [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END];
      }
      
      public function §;$>§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         this.§^#I§(param1);
         var _loc4_:Program3D;
         (_loc4_ = this.§1#s§.createProgram()).upload(param2,param3);
         this.programs[param1] = _loc4_;
      }
      
      public function §^#I§(param1:String) : void
      {
         var _loc2_:Program3D = this.§!"l§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.programs[param1];
         }
      }
      
      public function §!"l§(param1:String) : Program3D
      {
         return this.programs[param1] as Program3D;
      }
      
      public function §5!=§(param1:String) : Boolean
      {
         return param1 in this.programs;
      }
      
      private function get programs() : Dictionary
      {
         return this.§&N§[§`R§];
      }
      
      public function get §&!3§() : Boolean
      {
         return this.§7$6§;
      }
      
      public function get §@!T§() : §6!W§
      {
         return this.§9"a§;
      }
      
      public function get context() : Context3D
      {
         return this.§1#s§;
      }
      
      public function get §&N§() : Dictionary
      {
         return §3e§[this.mStage3D] as Dictionary;
      }
      
      public function get §%"+§() : Boolean
      {
         return this.§<!S§;
      }
      
      public function set §%"+§(param1:Boolean) : void
      {
         this.§<!S§ = param1;
         if(this.§1#s§)
         {
            this.§@,§.§%"+§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§!!5§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§!!5§ = param1;
         if(this.§1#s§)
         {
            this.§1#s§.enableErrorChecking = param1;
         }
      }
      
      public function get §#X§() : int
      {
         if(!this.§7!-§)
         {
            return this.§ §;
         }
         return 0;
      }
      
      public function set §#X§(param1:int) : void
      {
         if(this.§#X§ != param1)
         {
            this.§ § = param1;
            if(§8I§)
            {
               this.§^$&§(true);
            }
         }
      }
      
      private function configureBackBuffer() : void
      {
         var error:int = 0;
         try
         {
            this.§!!E§.configureBackBuffer(this.§@!z§.width,this.§@!z§.height,this.§#X§,false);
            §+!+§ = false;
         }
         catch(e:Error)
         {
            error = 1;
         }
      }
      
      public function get §&C§() : Number
      {
         return 1;
      }
      
      public function get §?!G§() : Sprite
      {
         return this.§@"n§;
      }
      
      public function get §-z§() : Boolean
      {
         return this.§`#s§ && this.§`#s§.parent;
      }
      
      public function set §-z§(param1:Boolean) : void
      {
         if(param1 == this.§-z§)
         {
            return;
         }
         if(param1)
         {
            if(this.§`#s§)
            {
               this.§3"K§.addChild(this.§`#s§);
            }
            else
            {
               this.showStatsAt();
            }
         }
         else
         {
            this.§`#s§.removeFromParent();
         }
      }
      
      public function showStatsAt(param1:String = "left", param2:String = "top", param3:Number = 1) : void
      {
         var onRootCreated:Function = null;
         var stageWidth:int = 0;
         var stageHeight:int = 0;
         var hAlign:String = param1;
         var vAlign:String = param2;
         var scale:Number = param3;
         onRootCreated = function():void
         {
            showStatsAt(hAlign,vAlign,scale);
            removeEventListener(Event.§`#=§,onRootCreated);
         };
         if(this.§1#s§ == null)
         {
            addEventListener(§!$;§.Event.§`#=§,onRootCreated);
         }
         else
         {
            if(this.§`#s§ == null)
            {
               this.§`#s§ = new §@#7§();
               this.§`#s§.§?#N§ = false;
               this.§3"K§.addChild(this.§`#s§);
            }
            stageWidth = this.§3"K§.stageWidth;
            stageHeight = this.§3"K§.stageHeight;
            this.§`#s§.scaleX = this.§`#s§.scaleY = scale;
            if(hAlign == §6G§.LEFT)
            {
               this.§`#s§.x = 0;
            }
            else if(hAlign == §6G§.RIGHT)
            {
               this.§`#s§.x = stageWidth - this.§`#s§.width;
            }
            else
            {
               this.§`#s§.x = int((stageWidth - this.§`#s§.width) / 2);
            }
            if(vAlign == §4A§.TOP)
            {
               this.§`#s§.y = 0;
            }
            else if(vAlign == §4A§.BOTTOM)
            {
               this.§`#s§.y = stageHeight - this.§`#s§.height;
            }
            else
            {
               this.§`#s§.y = int((stageHeight - this.§`#s§.height) / 2);
            }
         }
      }
      
      public function get stage() : §6#H§.Stage
      {
         return this.§3"K§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §]#`§() : flash.display.Stage
      {
         return this.§8!I§;
      }
      
      public function get root() : §6#H§.DisplayObject
      {
         return this.§5V§;
      }
      
      public function get §`#i§() : Boolean
      {
         return this.§%!!§;
      }
      
      public function set §`#i§(param1:Boolean) : void
      {
         this.§%!!§ = param1;
      }
      
      public function get profile() : String
      {
         return this.§^#u§;
      }
      
      public function get §-!Z§() : Boolean
      {
         return this.§=#C§;
      }
   }
}
