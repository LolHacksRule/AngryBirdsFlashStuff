package §^a§
{
   import §1&§.Texture;
   import §4"D§.§2!O§;
   import §4"D§.§;#C§;
   import §9$§.DisplayObject;
   import §9$§.Stage;
   import §?a§.§'"p§;
   import §?a§.§2#n§;
   import §?a§.Event;
   import §?a§.EventDispatcher;
   import §?a§.KeyboardEvent;
   import §[,§.§+!i§;
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
      
      private static const §'!_§:String = "Starling.programs";
      
      private static var §4!H§:Rectangle;
      
      private static var §=#R§:Boolean = true;
      
      private static var §5"`§:Boolean;
      
      private static var §]",§:Starling;
      
      private static var §[!j§:Boolean;
      
      private static var §%!$§:Dictionary = new Dictionary(true);
      
      private static var §7?§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §>A§:§9$§.Stage;
      
      private var §6!;§:Class;
      
      private var §@!4§:§9$§.DisplayObject;
      
      private var §8_§:§+!i§;
      
      private var §7T§:Boolean;
      
      private var §&#B§:Boolean;
      
      private var §7#>§:§'"1§;
      
      private var §<!p§:§<#p§;
      
      private var §+#O§:int;
      
      private var §-$&§:Boolean;
      
      private var §^"q§:Boolean;
      
      private var §1#+§:Number;
      
      private var §7#B§:Boolean;
      
      private var §9$7§:§["s§;
      
      private var §0$ §:Boolean;
      
      private var §2#z§:String;
      
      private var §##n§:Context3D;
      
      private var §2#=§:Rectangle;
      
      private var §8"s§:Rectangle;
      
      private var §%!O§:flash.display.Stage;
      
      private var §>!m§:Sprite;
      
      private var §>#e§:int;
      
      private var §&!^§:Boolean;
      
      private var §5!z§:Boolean = true;
      
      private var §^!i§:Number;
      
      private var § #`§:Number;
      
      private var §##a§:Number;
      
      private var §0t§:Number;
      
      private var §1#k§:Number;
      
      private var §^"4§:Number;
      
      private var §%!9§:Function;
      
      private var §@#!§:uint;
      
      private var §--§:String;
      
      private var §`$"§:Bitmap;
      
      private var §""v§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §]"d§:Boolean = false;
      
      private var §,l§:Boolean = false;
      
      private var §0"§:Boolean = false;
      
      private var §-!B§:Number = 25.0;
      
      private var §?#w§:int = 0;
      
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
         this.§^!i§ = param3.width;
         this.§ #`§ = param3.height;
         this.§##a§ = this.§^!i§;
         this.§0t§ = this.§ #`§;
         this.§1#k§ = param2.stageWidth;
         this.§^"4§ = param2.stageHeight;
         §!!b§ = true;
         this.§3"f§();
         this.§6!;§ = param1;
         §4!H§ = param3;
         this.§2#=§ = new Rectangle();
         this.mStage3D = param4;
         this.§>A§ = new §9$§.Stage(param3.width,param3.height,param2.color);
         this.§>!m§ = new Sprite();
         this.§%!O§ = param2;
         this.§%!O§.addChild(this.§>!m§);
         this.§<!p§ = new §<#p§(this.§>A§);
         this.§8_§ = new §+!i§();
         this.§+#O§ = 0;
         this.§-$&§ = false;
         this.§^"q§ = false;
         this.§2#z§ = param6;
         this.§1#+§ = getTimer() / 1000;
         §%!$§[param4] = new Dictionary();
         §%!$§[param4][§'!_§] = new Dictionary();
         param2.scaleMode = StageScaleMode.NO_SCALE;
         param2.align = StageAlign.TOP_LEFT;
         for each(_loc7_ in this.§4![§)
         {
            param2.addEventListener(_loc7_,this.§=#=§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ #=§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ #=§,false,0,true);
         param2.addEventListener(flash.events.Event.MOUSE_LEAVE,this.§&!a§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§^"W§,false,10,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§2#'§,false,10,true);
         this.mStage3D.visible = false;
         this.§`"x§(true);
         this.§@#!§ = param2.color;
         this.§--§ = param5;
         if(this.mStage3D.context3D && this.mStage3D.context3D.driverInfo != "Disposed")
         {
            this.§0$ § = true;
            setTimeout(this.initialize,1);
         }
         else
         {
            this.§0$ § = false;
         }
      }
      
      public static function get § #4§() : Boolean
      {
         if(§<#`§)
         {
            return §<#`§.§&!^§;
         }
         return true;
      }
      
      public static function §]">§() : Boolean
      {
         return §]",§ && (§]",§.§""v§ || §]",§.§##n§ != null && §]",§.§##n§.driverInfo != "Disposed");
      }
      
      public static function get §-"h§() : Boolean
      {
         return §]">§();
      }
      
      public static function get §1$9§() : Rectangle
      {
         return §4!H§.clone();
      }
      
      public static function set §1$9§(param1:Rectangle) : void
      {
         §4!H§ = param1.clone();
         §5"`§ = true;
      }
      
      public static function set §+#8§(param1:Boolean) : void
      {
         §=#R§ = param1;
      }
      
      public static function get §+#8§() : Boolean
      {
         return §=#R§;
      }
      
      public static function get §<#`§() : Starling
      {
         return §]",§;
      }
      
      public static function get context() : Context3D
      {
         return !!§]",§ ? §]",§.context : null;
      }
      
      public static function get §6!h§() : §+!i§
      {
         return !!§]",§ ? §]",§.§6!h§ : null;
      }
      
      public static function get §0h§() : Number
      {
         return !!§]",§ ? Number(§]",§.§0h§) : Number(1);
      }
      
      public static function get §7i§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §7i§(param1:Boolean) : void
      {
         if(§]",§)
         {
            throw new IllegalOperationError("\'multitouchEnabled\' must be set before Starling instance is created");
         }
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §!!b§() : Boolean
      {
         return §[!j§;
      }
      
      public static function set §!!b§(param1:Boolean) : void
      {
         if(§]",§)
         {
            throw new IllegalOperationError("\'handleLostContext\' must be set before Starling instance is created");
         }
         §[!j§ = param1;
      }
      
      public static function §&# §(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1) : Texture
      {
         if(§<#`§)
         {
            return Texture.§@"c§(§<#`§.§##n§,param1,param2,param3,param4);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§]",§.§##n§)
         {
            §]",§.§##n§.drawToBitmapData(param1);
         }
         else if(§]",§.§7#>§.canvas)
         {
            _loc2_ = §]",§.§7#>§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §!$#§() : §9$§.DisplayObject
      {
         return this.§@!4§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§@#!§ = param1;
      }
      
      public function set §`q§(param1:Boolean) : void
      {
         if(!this.§0"§ && param1)
         {
            this.§?#w§ = 0;
         }
         this.§0"§ = param1;
      }
      
      public function get §`q§() : Boolean
      {
         return this.§0"§;
      }
      
      public function set §,#x§(param1:Number) : void
      {
         this.§-!B§ = param1;
      }
      
      public function get §,#x§() : Number
      {
         return this.§-!B§;
      }
      
      public function get §'#s§() : int
      {
         return this.§?#w§;
      }
      
      public function get §'"o§() : Number
      {
         return this.§^!i§;
      }
      
      public function get §'5§() : Number
      {
         return this.§ #`§;
      }
      
      public function §7#q§() : void
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
               profile = !!this.§,l§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§--§,profile);
            }
            else
            {
               addr54:
               requestContext3D(this.§--§);
            }
            return;
         }
         catch(e:Error)
         {
            §,#N§("Context3D error: " + e.message);
            throw e;
         }
         §§goto(addr54);
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         this.stop();
         this.§]"d§ = true;
         this.§%!O§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ #=§,false);
         this.§%!O§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ #=§,false);
         this.§%!O§.removeEventListener(flash.events.Event.MOUSE_LEAVE,this.§&!a§,false);
         this.§%!O§.removeChild(this.§>!m§);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§^"W§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§2#'§,false);
         for each(_loc1_ in this.§4![§)
         {
            this.§%!O§.removeEventListener(_loc1_,this.§=#=§,false);
         }
         if(this.§>A§)
         {
            this.§>A§.dispose();
         }
         if(this.§7#>§)
         {
            this.§7#>§.dispose();
         }
         if(this.§<!p§)
         {
            this.§<!p§.dispose();
         }
         if(this.§##n§ && !this.§0$ §)
         {
            this.§##n§.dispose();
         }
         if(§]",§ == this)
         {
            §]",§ = null;
         }
         if(this.§`$"§ && this.§`$"§.bitmapData)
         {
            this.§`$"§.bitmapData.dispose();
            this.§`$"§.bitmapData = null;
         }
      }
      
      private function initialize() : void
      {
         this.§3"f§();
         this.§!$&§();
         this.§-$ §();
         this.§<!p§.§?n§ = this.§-$&§;
         this.§1#+§ = getTimer() / 1000;
      }
      
      private function §!$&§() : void
      {
         this.§##n§ = this.mStage3D.context3D;
         this.§##n§.setDepthTest(false,Context3DCompareMode.ALWAYS);
         this.§##n§.setCulling(Context3DTriangleFace.NONE);
         if(!this.§5!z§ && this.§##n§ && this.§&!^§)
         {
            this.mStage3DEnabled = false;
            this.§##n§ = null;
            this.§=!C§();
         }
         if(this.§##n§)
         {
            this.§7#>§ = new §'"1§();
         }
         else
         {
            this.§7#>§ = new §9!^§();
            this.§7#>§.setCanvasSize(this.§##a§,this.§0t§,§4!H§.width / this.§>A§.stageWidth,§4!H§.height / this.§>A§.stageHeight);
            this.§7#>§.clear(null,this.§@#!§);
         }
         if(this.§##n§)
         {
            this.§##n§.enableErrorChecking = this.§^"q§;
            if(this.§##n§.driverInfo.indexOf("Software") >= 0)
            {
               this.§&!^§ = true;
            }
         }
         this.§1#d§[§'!_§] = new Dictionary();
         this.§[y§(true);
         §8!V§(§?a§.Event.CONTEXT3D_CREATE,false,this.§##n§);
      }
      
      private function §-$ §() : void
      {
         if(this.§@!4§ == null)
         {
            this.§@!4§ = new this.§6!;§() as §9$§.DisplayObject;
            if(this.§@!4§ == null)
            {
               throw new Error("Invalid root class: " + this.§6!;§);
            }
            this.§>A§.addChildAt(this.§@!4§,0);
            §8!V§(§?a§.Event.§[_§,false,this.§@!4§);
         }
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§1#+§;
         this.§1#+§ = _loc1_;
         this.§%"f§(_loc2_);
         this.render();
      }
      
      public function §%"f§(param1:Number) : void
      {
         this.§3"f§();
         this.§<!p§.§%"f§(param1);
         this.§>A§.§%"f§(param1);
         this.§8_§.§%"f§(param1);
      }
      
      public function render() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(!§-"h§)
         {
            return;
         }
         this.§3"f§();
         this.§[y§();
         this.§3r§();
         this.§7#>§.nextFrame();
         if(!this.§0$ §)
         {
            §'"1§.clear(this.§##n§,this.§@#!§,1);
         }
         this.§7#>§.§7"&§(this.§##n§,this.§>#e§);
         this.§7#>§.§3Q§ = null;
         this.§7#>§.§`#[§(0,0,this.§>A§.§^"p§,this.§>A§.§4"O§);
         this.§>A§.render(this.§7#>§,1);
         this.§7#>§.§^!u§();
         if(this.§%!9§ != null)
         {
            this.§%!9§();
            this.§%!9§ = null;
         }
         if(this.§9$7§)
         {
            this.§9$7§.§^#d§ = this.§7#>§.§^#d§;
         }
         if(!this.§0$ §)
         {
            if(this.§0"§)
            {
               _loc1_ = getTimer();
               this.§7#>§.finishRendering(this.§##n§);
               _loc2_ = getTimer();
               if(_loc2_ - _loc1_ > this.§-!B§)
               {
                  ++this.§?#w§;
               }
            }
            else
            {
               this.§7#>§.finishRendering(this.§##n§);
            }
         }
      }
      
      public function set §1#g§(param1:Function) : void
      {
         this.§%!9§ = param1;
      }
      
      private function §[y§(param1:Boolean = false) : void
      {
         if(param1 || this.§2#=§.width != §4!H§.width || this.§2#=§.height != §4!H§.height || this.§2#=§.x != §4!H§.x || this.§2#=§.y != §4!H§.y)
         {
            this.§2#=§.setTo(§4!H§.x,§4!H§.y,§4!H§.width,§4!H§.height);
            this.§8"s§ = §4!H§.intersection(new Rectangle(0,0,this.§%!O§.stageWidth,this.§%!O§.stageHeight));
            this.setCanvasSize(this.§8"s§.width,this.§8"s§.height);
            if(!this.§0$ §)
            {
               this.mStage3D.x = this.§8"s§.x;
               this.mStage3D.y = this.§8"s§.y;
               this.configureBackBuffer();
            }
            else
            {
               this.§7#>§.§!#'§ = this.§8"s§.width;
               this.§7#>§.§?"W§ = this.§8"s§.height;
            }
         }
      }
      
      private function §3r§() : void
      {
         var _loc3_:BitmapData = null;
         this.§>!m§.x = §4!H§.x;
         this.§>!m§.y = §4!H§.y;
         var _loc1_:int = this.§>!m§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§>!m§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§%!O§.addChild(this.§>!m§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§%!O§.removeChild(this.§>!m§);
         }
         if(this.§7#>§ && this.§7#>§.canvas)
         {
            this.§7#>§.setCanvasSize(this.§##a§,this.§0t§,§4!H§.width / this.§>A§.stageWidth,§4!H§.height / this.§>A§.stageHeight);
            _loc3_ = this.§7#>§.canvas;
            if(this.§`$"§.bitmapData != _loc3_)
            {
               this.§`$"§.bitmapData = _loc3_;
            }
            if(this.§%!O§.getChildIndex(this.§>!m§) > 0)
            {
               this.§%!O§.removeChild(this.§>!m§);
               this.§%!O§.addChildAt(this.§>!m§,0);
            }
         }
      }
      
      private function §,#N§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§>A§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§>A§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§>A§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§4n§.addChild(_loc2_);
      }
      
      public function §3"f§() : void
      {
         §]",§ = this;
      }
      
      public function start() : void
      {
         this.§7T§ = true;
         this.§1#+§ = getTimer() / 1000;
         this.mStage3D.visible = this.mStage3DEnabled;
         if(this.§@!4§)
         {
            this.§@!4§.visible = this.mStage3DEnabled;
         }
      }
      
      public function stop() : void
      {
         this.§7T§ = false;
         this.mStage3D.visible = false;
         if(this.§@!4§)
         {
            this.§@!4§.visible = false;
         }
      }
      
      public function §`"x§(param1:Boolean) : void
      {
         this.§&#B§ = param1;
      }
      
      public function set §"!L§(param1:Number) : void
      {
         this.§<!p§.§"!L§ = param1;
      }
      
      private function §=!C§() : void
      {
         this.§""v§ = true;
         if(this.§`$"§ == null)
         {
            this.§`$"§ = new Bitmap();
            this.§4n§.addChild(this.§`$"§);
         }
      }
      
      private function §2#'§(param1:ErrorEvent) : void
      {
         if(param1.errorID == 3702)
         {
            this.§,#N§("This application is not correctly embedded (wrong wmode value)");
         }
         else
         {
            this.§,#N§("Stage3D error: " + param1.text);
         }
      }
      
      private function §^"W§(param1:flash.events.Event) : void
      {
         if(!Starling.§!!b§ && this.§##n§)
         {
            this.stop();
            param1.stopImmediatePropagation();
            this.§,#N§("Fatal error: The application lost the device context!");
         }
         else
         {
            if(!this.§,l§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
            {
               this.§,l§ = true;
               this.§7#q§();
               return;
            }
            ++this.§>#e§;
            this.initialize();
         }
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         if(!this.§0$ §)
         {
            if(this.§7T§)
            {
               this.nextFrame();
            }
            else
            {
               this.render();
            }
         }
      }
      
      private function § #=§(param1:flash.events.KeyboardEvent) : void
      {
         if(!this.§7T§)
         {
            return;
         }
         this.§3"f§();
         this.§>A§.dispatchEvent(new §?a§.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §&!a§(param1:flash.events.Event) : void
      {
         this.§<!p§.§&#7§();
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§^!i§;
         var _loc4_:Number = param2 / this.§ #`§;
         if(!§+#8§)
         {
            this.§>A§.§^"p§ = this.§^!i§ * _loc3_ / _loc4_;
            this.§>A§.§4"O§ = this.§ #`§;
         }
         else
         {
            this.§>A§.§^"p§ = this.§^!i§;
            this.§>A§.§4"O§ = this.§ #`§ * _loc4_ / _loc3_;
         }
         this.§>A§.stageWidth = param1;
         this.§>A§.stageHeight = param2;
         this.§##a§ = param1;
         this.§0t§ = param2;
         this.§>A§.dispatchEvent(new §'"p§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §7$'§() : void
      {
         this.setCanvasSize(this.§^!i§,this.§ #`§);
      }
      
      private function §=#=§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc9_:MouseEvent = null;
         var _loc10_:TouchEvent = null;
         if(!this.§7T§ || !this.§&#B§)
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
               this.§7#B§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§7#B§ = false;
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
               _loc5_ = §2#n§.§2X§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §2#n§.§'$!§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §2#n§.§<#D§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §2#n§.§2X§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §2#n§.§<#D§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§7#B§ ? §2#n§.§'$!§ : §2#n§.§9#0§;
         }
         if((_loc2_ < §4!H§.left || _loc2_ >= §4!H§.right || _loc3_ < §4!H§.top || _loc3_ >= §4!H§.bottom) && _loc5_ == §2#n§.§2X§)
         {
            return;
         }
         _loc2_ -= §4!H§.x;
         _loc3_ -= §4!H§.y;
         this.§<!p§.§"$%§(_loc4_,_loc5_,_loc2_,_loc3_,_loc6_,_loc7_,_loc8_);
      }
      
      private function get §4![§() : Array
      {
         return Mouse.supportsCursor || !§7i§ ? [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP] : [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END];
      }
      
      public function §5#c§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         this.§&!P§(param1);
         var _loc4_:Program3D;
         (_loc4_ = this.§##n§.createProgram()).upload(param2,param3);
         this.programs[param1] = _loc4_;
      }
      
      public function §&!P§(param1:String) : void
      {
         var _loc2_:Program3D = this.§7$,§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.programs[param1];
         }
      }
      
      public function §7$,§(param1:String) : Program3D
      {
         return this.programs[param1] as Program3D;
      }
      
      public function §+$§(param1:String) : Boolean
      {
         return param1 in this.programs;
      }
      
      private function get programs() : Dictionary
      {
         return this.§1#d§[§'!_§];
      }
      
      public function get §?"Q§() : Boolean
      {
         return this.§7T§;
      }
      
      public function get §6!h§() : §+!i§
      {
         return this.§8_§;
      }
      
      public function get context() : Context3D
      {
         return this.§##n§;
      }
      
      public function get §1#d§() : Dictionary
      {
         return §%!$§[this.mStage3D] as Dictionary;
      }
      
      public function get §?n§() : Boolean
      {
         return this.§-$&§;
      }
      
      public function set §?n§(param1:Boolean) : void
      {
         this.§-$&§ = param1;
         if(this.§##n§)
         {
            this.§<!p§.§?n§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§^"q§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§^"q§ = param1;
         if(this.§##n§)
         {
            this.§##n§.enableErrorChecking = param1;
         }
      }
      
      public function get §%"0§() : int
      {
         if(!this.§&!^§)
         {
            return this.§+#O§;
         }
         return 0;
      }
      
      public function set §%"0§(param1:int) : void
      {
         if(this.§%"0§ != param1)
         {
            this.§+#O§ = param1;
            if(§-"h§)
            {
               this.§[y§(true);
            }
         }
      }
      
      private function configureBackBuffer() : void
      {
         var error:int = 0;
         try
         {
            this.§7#>§.configureBackBuffer(this.§8"s§.width,this.§8"s§.height,this.§%"0§,false);
            §5"`§ = false;
         }
         catch(e:Error)
         {
            error = 1;
         }
      }
      
      public function get §0h§() : Number
      {
         return 1;
      }
      
      public function get §4n§() : Sprite
      {
         return this.§>!m§;
      }
      
      public function get §,"C§() : Boolean
      {
         return this.§9$7§ && this.§9$7§.parent;
      }
      
      public function set §,"C§(param1:Boolean) : void
      {
         if(param1 == this.§,"C§)
         {
            return;
         }
         if(param1)
         {
            if(this.§9$7§)
            {
               this.§>A§.addChild(this.§9$7§);
            }
            else
            {
               this.showStatsAt();
            }
         }
         else
         {
            this.§9$7§.removeFromParent();
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
            removeEventListener(Event.§[_§,onRootCreated);
         };
         if(this.§##n§ == null)
         {
            addEventListener(§?a§.Event.§[_§,onRootCreated);
         }
         else
         {
            if(this.§9$7§ == null)
            {
               this.§9$7§ = new §["s§();
               this.§9$7§.§0$6§ = false;
               this.§>A§.addChild(this.§9$7§);
            }
            stageWidth = this.§>A§.stageWidth;
            stageHeight = this.§>A§.stageHeight;
            this.§9$7§.scaleX = this.§9$7§.scaleY = scale;
            if(hAlign == §2!O§.LEFT)
            {
               this.§9$7§.x = 0;
            }
            else if(hAlign == §2!O§.RIGHT)
            {
               this.§9$7§.x = stageWidth - this.§9$7§.width;
            }
            else
            {
               this.§9$7§.x = int((stageWidth - this.§9$7§.width) / 2);
            }
            if(vAlign == §;#C§.TOP)
            {
               this.§9$7§.y = 0;
            }
            else if(vAlign == §;#C§.BOTTOM)
            {
               this.§9$7§.y = stageHeight - this.§9$7§.height;
            }
            else
            {
               this.§9$7§.y = int((stageHeight - this.§9$7§.height) / 2);
            }
         }
      }
      
      public function get stage() : §9$§.Stage
      {
         return this.§>A§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §`7§() : flash.display.Stage
      {
         return this.§%!O§;
      }
      
      public function get root() : §9$§.DisplayObject
      {
         return this.§@!4§;
      }
      
      public function get §#"O§() : Boolean
      {
         return this.§0$ §;
      }
      
      public function set §#"O§(param1:Boolean) : void
      {
         this.§0$ § = param1;
      }
      
      public function get profile() : String
      {
         return this.§2#z§;
      }
   }
}
