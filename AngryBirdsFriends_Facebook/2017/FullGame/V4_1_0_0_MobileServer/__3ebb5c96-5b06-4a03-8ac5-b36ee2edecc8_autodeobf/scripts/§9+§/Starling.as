package §9+§
{
   import §&!v§.DisplayObject;
   import §&!v§.Stage;
   import §-"+§.Texture;
   import §1P§.§'!z§;
   import §1P§.§-§;
   import §1P§.Event;
   import §1P§.EventDispatcher;
   import §1P§.KeyboardEvent;
   import §;"K§.§-!x§;
   import §>l§.§7!<§;
   import §>l§.§9#§;
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
      
      private static const §["9§:String = "Starling.programs";
      
      private static var §3w§:Rectangle;
      
      private static var §^!W§:Boolean = true;
      
      private static var §1!m§:Boolean = false;
      
      private static var §`!-§:Boolean;
      
      private static var §+#§:Starling;
      
      private static var §1![§:Boolean;
      
      private static var §8Q§:Dictionary = new Dictionary(true);
      
      private static var §'#9§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §^!8§:§&!v§.Stage;
      
      private var §2"C§:Class;
      
      private var §?"+§:§&!v§.DisplayObject;
      
      private var §2#2§:§-!x§;
      
      private var §-s§:Boolean;
      
      private var §9!x§:Boolean;
      
      private var §+!s§:§]"+§;
      
      private var §,"q§:§!#D§;
      
      private var §3i§:int;
      
      private var §4_§:Boolean;
      
      private var §2"r§:Boolean;
      
      private var §4#$§:Number;
      
      private var §2y§:Boolean;
      
      private var §6">§:§@!2§;
      
      private var §,4§:Boolean;
      
      private var §#!>§:String;
      
      private var §8"s§:Context3D;
      
      private var §4"w§:Rectangle;
      
      private var §@#^§:Rectangle;
      
      private var §"!t§:flash.display.Stage;
      
      private var §+!W§:Sprite;
      
      private var §'#<§:int;
      
      private var § "%§:Boolean;
      
      private var §>A§:Boolean = true;
      
      private var §7"b§:Number;
      
      private var §'" §:Number;
      
      private var §"#j§:Number;
      
      private var §@"_§:Number;
      
      private var §%h§:Number;
      
      private var §%!!§:Number;
      
      private var §#$6§:Function;
      
      private var §'"V§:uint;
      
      private var §,"-§:String;
      
      private var §>v§:Bitmap;
      
      private var §^!!§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §#"q§:Boolean = false;
      
      private var §8#S§:Boolean = false;
      
      private var §<$-§:Boolean = false;
      
      private var § #B§:Number = 25.0;
      
      private var §<"`§:int = 0;
      
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
         this.§7"b§ = param3.width;
         this.§'" § = param3.height;
         this.§"#j§ = this.§7"b§;
         this.§@"_§ = this.§'" §;
         this.§%h§ = param2.stageWidth;
         this.§%!!§ = param2.stageHeight;
         §^2§ = true;
         this.§8#h§();
         this.§2"C§ = param1;
         §3w§ = param3;
         this.§4"w§ = new Rectangle();
         this.mStage3D = param4;
         this.§^!8§ = new §&!v§.Stage(param3.width,param3.height,param2.color);
         this.§+!W§ = new Sprite();
         this.§"!t§ = param2;
         this.§"!t§.addChild(this.§+!W§);
         this.§,"q§ = new §!#D§(this.§^!8§);
         this.§2#2§ = new §-!x§();
         this.§3i§ = 0;
         this.§4_§ = false;
         this.§2"r§ = false;
         this.§#!>§ = param6;
         this.§4#$§ = getTimer() / 1000;
         §8Q§[param4] = new Dictionary();
         §8Q§[param4][§["9§] = new Dictionary();
         param2.scaleMode = StageScaleMode.NO_SCALE;
         param2.align = StageAlign.TOP_LEFT;
         for each(_loc7_ in this.§9#a§)
         {
            param2.addEventListener(_loc7_,this.§3!Z§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§&#[§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§&#[§,false,0,true);
         param2.addEventListener(flash.events.Event.MOUSE_LEAVE,this.§5"v§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§`",§,false,10,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§1"9§,false,10,true);
         this.mStage3D.visible = false;
         this.§,"v§(true);
         this.§'"V§ = param2.color;
         this.§,"-§ = param5;
         if(this.mStage3D.context3D && this.mStage3D.context3D.driverInfo != "Disposed")
         {
            this.§,4§ = true;
            setTimeout(this.initialize,1);
         }
         else
         {
            this.§,4§ = false;
         }
      }
      
      public static function get §-m§() : Boolean
      {
         if(§?$#§)
         {
            return §?$#§.§ "%§;
         }
         return true;
      }
      
      public static function §&!#§() : Boolean
      {
         return §+#§ && (§+#§.§^!!§ || §+#§.§8"s§ != null && §+#§.§8"s§.driverInfo != "Disposed");
      }
      
      public static function get §^!b§() : Boolean
      {
         return §&!#§();
      }
      
      public static function get §'"l§() : Rectangle
      {
         return §3w§.clone();
      }
      
      public static function set §'"l§(param1:Rectangle) : void
      {
         §3w§ = param1.clone();
         §`!-§ = true;
      }
      
      public static function set §+$+§(param1:Boolean) : void
      {
         §1!m§ = param1;
      }
      
      public static function get §+$+§() : Boolean
      {
         return §1!m§;
      }
      
      public static function set §`#S§(param1:Boolean) : void
      {
         §^!W§ = param1;
      }
      
      public static function get §`#S§() : Boolean
      {
         return §^!W§;
      }
      
      public static function get §?$#§() : Starling
      {
         return §+#§;
      }
      
      public static function get context() : Context3D
      {
         return !!§+#§ ? §+#§.context : null;
      }
      
      public static function get §]F§() : §-!x§
      {
         return !!§+#§ ? §+#§.§]F§ : null;
      }
      
      public static function get §7O§() : Number
      {
         return !!§+#§ ? Number(§+#§.§7O§) : Number(1);
      }
      
      public static function get §;!;§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;!;§(param1:Boolean) : void
      {
         if(§+#§)
         {
            throw new IllegalOperationError("\'multitouchEnabled\' must be set before Starling instance is created");
         }
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §^2§() : Boolean
      {
         return §1![§;
      }
      
      public static function set §^2§(param1:Boolean) : void
      {
         if(§+#§)
         {
            throw new IllegalOperationError("\'handleLostContext\' must be set before Starling instance is created");
         }
         §1![§ = param1;
      }
      
      public static function §-$#§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1) : Texture
      {
         if(§?$#§)
         {
            return Texture.§!"I§(§?$#§.§8"s§,param1,param2,param3,param4);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§+#§.§8"s§)
         {
            §+#§.§8"s§.drawToBitmapData(param1);
         }
         else if(§+#§.§+!s§.canvas)
         {
            _loc2_ = §+#§.§+!s§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §'"k§() : §&!v§.DisplayObject
      {
         return this.§?"+§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§'"V§ = param1;
      }
      
      public function set §1!s§(param1:Boolean) : void
      {
         if(!this.§<$-§ && param1)
         {
            this.§<"`§ = 0;
         }
         this.§<$-§ = param1;
      }
      
      public function get §1!s§() : Boolean
      {
         return this.§<$-§;
      }
      
      public function set §+"k§(param1:Number) : void
      {
         this.§ #B§ = param1;
      }
      
      public function get §+"k§() : Number
      {
         return this.§ #B§;
      }
      
      public function get §^#y§() : int
      {
         return this.§<"`§;
      }
      
      public function get §@§() : Number
      {
         return this.§7"b§;
      }
      
      public function get §5!Z§() : Number
      {
         return this.§'" §;
      }
      
      public function §2!V§() : void
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
               profile = !!this.§8#S§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§,"-§,profile);
            }
            else
            {
               requestContext3D(this.§,"-§);
            }
         }
         catch(e:Error)
         {
            §!#2§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         this.stop();
         this.§#"q§ = true;
         this.§"!t§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§&#[§,false);
         this.§"!t§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§&#[§,false);
         this.§"!t§.removeEventListener(flash.events.Event.MOUSE_LEAVE,this.§5"v§,false);
         this.§"!t§.removeChild(this.§+!W§);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§`",§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§1"9§,false);
         for each(_loc1_ in this.§9#a§)
         {
            this.§"!t§.removeEventListener(_loc1_,this.§3!Z§,false);
         }
         if(this.§^!8§)
         {
            this.§^!8§.dispose();
         }
         if(this.§+!s§)
         {
            this.§+!s§.dispose();
         }
         if(this.§,"q§)
         {
            this.§,"q§.dispose();
         }
         if(this.§8"s§ && !this.§,4§)
         {
            this.§8"s§.dispose();
         }
         if(§+#§ == this)
         {
            §+#§ = null;
         }
         if(this.§>v§ && this.§>v§.bitmapData)
         {
            this.§>v§.bitmapData.dispose();
            this.§>v§.bitmapData = null;
         }
      }
      
      private function initialize() : void
      {
         this.§8#h§();
         this.§2q§();
         this.§,M§();
         this.§,"q§.§3!>§ = this.§4_§;
         this.§4#$§ = getTimer() / 1000;
      }
      
      private function §2q§() : void
      {
         this.§8"s§ = this.mStage3D.context3D;
         this.§8"s§.setDepthTest(false,Context3DCompareMode.ALWAYS);
         this.§8"s§.setCulling(Context3DTriangleFace.NONE);
         if(!this.§>A§ && this.§8"s§ && this.§ "%§)
         {
            this.mStage3DEnabled = false;
            this.§8"s§ = null;
            this.§2!x§();
         }
         if(this.§8"s§)
         {
            this.§+!s§ = new §]"+§();
         }
         else
         {
            this.§+!s§ = new §=h§();
            this.§+!s§.setCanvasSize(this.§"#j§,this.§@"_§,§3w§.width / this.§^!8§.stageWidth,§3w§.height / this.§^!8§.stageHeight);
            this.§+!s§.clear(null,this.§'"V§);
         }
         if(this.§8"s§)
         {
            this.§8"s§.enableErrorChecking = this.§2"r§;
            if(this.§8"s§.driverInfo.indexOf("Software") >= 0)
            {
               this.§ "%§ = true;
            }
         }
         this.§`"=§[§["9§] = new Dictionary();
         this.§4Q§(true);
         §4#h§(§1P§.Event.CONTEXT3D_CREATE,false,this.§8"s§);
      }
      
      private function §,M§() : void
      {
         if(this.§?"+§ == null)
         {
            this.§?"+§ = new this.§2"C§() as §&!v§.DisplayObject;
            if(this.§?"+§ == null)
            {
               throw new Error("Invalid root class: " + this.§2"C§);
            }
            this.§^!8§.addChildAt(this.§?"+§,0);
            §4#h§(§1P§.Event.§7!+§,false,this.§?"+§);
         }
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§4#$§;
         this.§4#$§ = _loc1_;
         this.§2!X§(_loc2_);
         this.render();
      }
      
      public function §2!X§(param1:Number) : void
      {
         this.§8#h§();
         this.§,"q§.§2!X§(param1);
         this.§^!8§.§2!X§(param1);
         this.§2#2§.§2!X§(param1);
      }
      
      public function render() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(!§^!b§)
         {
            return;
         }
         this.§8#h§();
         this.§4Q§();
         this.§2"m§();
         this.§+!s§.nextFrame();
         if(!this.§,4§)
         {
            §]"+§.clear(this.§8"s§,this.§'"V§,1);
         }
         this.§+!s§.§,7§(this.§8"s§,this.§'#<§);
         this.§+!s§.§0$9§ = null;
         this.§+!s§.§>" §(0,0,this.§^!8§.§^#5§,this.§^!8§.§,#A§);
         this.§^!8§.render(this.§+!s§,1);
         this.§+!s§.§&!K§();
         if(this.§#$6§ != null)
         {
            this.§#$6§();
            this.§#$6§ = null;
         }
         if(this.§6">§)
         {
            this.§6">§.§6S§ = this.§+!s§.§6S§;
         }
         if(!this.§,4§)
         {
            if(this.§<$-§)
            {
               _loc1_ = getTimer();
               this.§+!s§.finishRendering(this.§8"s§);
               _loc2_ = getTimer();
               if(_loc2_ - _loc1_ > this.§ #B§)
               {
                  ++this.§<"`§;
               }
            }
            else
            {
               this.§+!s§.finishRendering(this.§8"s§);
            }
         }
      }
      
      public function set §7"q§(param1:Function) : void
      {
         this.§#$6§ = param1;
      }
      
      private function §4Q§(param1:Boolean = false) : void
      {
         if(param1 || this.§4"w§.width != §3w§.width || this.§4"w§.height != §3w§.height || this.§4"w§.x != §3w§.x || this.§4"w§.y != §3w§.y)
         {
            this.§4"w§.setTo(§3w§.x,§3w§.y,§3w§.width,§3w§.height);
            this.§@#^§ = §3w§.intersection(new Rectangle(0,0,this.§"!t§.stageWidth,this.§"!t§.stageHeight));
            this.setCanvasSize(this.§@#^§.width,this.§@#^§.height);
            if(!this.§,4§)
            {
               this.mStage3D.x = this.§@#^§.x;
               this.mStage3D.y = this.§@#^§.y;
               this.configureBackBuffer();
            }
            else
            {
               this.§+!s§.§4#B§ = this.§@#^§.width;
               this.§+!s§.§'"5§ = this.§@#^§.height;
            }
         }
      }
      
      private function §2"m§() : void
      {
         var _loc3_:BitmapData = null;
         this.§+!W§.x = §3w§.x;
         this.§+!W§.y = §3w§.y;
         var _loc1_:int = this.§+!W§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§+!W§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§"!t§.addChild(this.§+!W§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§"!t§.removeChild(this.§+!W§);
         }
         if(this.§+!s§ && this.§+!s§.canvas)
         {
            this.§+!s§.setCanvasSize(this.§"#j§,this.§@"_§,§3w§.width / this.§^!8§.stageWidth,§3w§.height / this.§^!8§.stageHeight);
            _loc3_ = this.§+!s§.canvas;
            if(this.§>v§.bitmapData != _loc3_)
            {
               this.§>v§.bitmapData = _loc3_;
            }
            if(this.§"!t§.getChildIndex(this.§+!W§) > 0)
            {
               this.§"!t§.removeChild(this.§+!W§);
               this.§"!t§.addChildAt(this.§+!W§,0);
            }
         }
      }
      
      private function §!#2§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§^!8§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§^!8§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§^!8§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§2"o§.addChild(_loc2_);
      }
      
      public function §8#h§() : void
      {
         §+#§ = this;
      }
      
      public function start() : void
      {
         this.§-s§ = true;
         this.§4#$§ = getTimer() / 1000;
         this.mStage3D.visible = this.mStage3DEnabled;
         if(this.§?"+§)
         {
            this.§?"+§.visible = this.mStage3DEnabled;
         }
      }
      
      public function stop() : void
      {
         this.§-s§ = false;
         this.mStage3D.visible = false;
         if(this.§?"+§)
         {
            this.§?"+§.visible = false;
         }
      }
      
      public function §,"v§(param1:Boolean) : void
      {
         this.§9!x§ = param1;
      }
      
      public function set §"!x§(param1:Number) : void
      {
         this.§,"q§.§"!x§ = param1;
      }
      
      private function §2!x§() : void
      {
         this.§^!!§ = true;
         if(this.§>v§ == null)
         {
            this.§>v§ = new Bitmap();
            this.§2"o§.addChild(this.§>v§);
         }
      }
      
      private function §1"9§(param1:ErrorEvent) : void
      {
         if(param1.errorID == 3702)
         {
            this.§!#2§("This application is not correctly embedded (wrong wmode value)");
         }
         else
         {
            this.§!#2§("Stage3D error: " + param1.text);
         }
      }
      
      private function §`",§(param1:flash.events.Event) : void
      {
         if(!Starling.§^2§ && this.§8"s§)
         {
            this.stop();
            param1.stopImmediatePropagation();
            this.§!#2§("Fatal error: The application lost the device context!");
         }
         else
         {
            if(!this.§8#S§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
            {
               this.§8#S§ = true;
               this.§2!V§();
               return;
            }
            ++this.§'#<§;
            this.initialize();
         }
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         if(!this.§,4§)
         {
            if(this.§-s§)
            {
               this.nextFrame();
            }
            else
            {
               this.render();
            }
         }
      }
      
      private function §&#[§(param1:flash.events.KeyboardEvent) : void
      {
         if(!this.§-s§)
         {
            return;
         }
         this.§8#h§();
         this.§^!8§.dispatchEvent(new §1P§.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §5"v§(param1:flash.events.Event) : void
      {
         this.§,"q§.§]!3§();
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§7"b§;
         var _loc4_:Number = param2 / this.§'" §;
         if(§+$+§)
         {
            this.§^!8§.§^#5§ = param1;
            this.§^!8§.§,#A§ = param2;
         }
         else if(!§`#S§)
         {
            this.§^!8§.§^#5§ = this.§7"b§ * _loc3_ / _loc4_;
            this.§^!8§.§,#A§ = this.§'" §;
         }
         else
         {
            this.§^!8§.§^#5§ = this.§7"b§;
            this.§^!8§.§,#A§ = this.§'" § * _loc4_ / _loc3_;
         }
         this.§^!8§.stageWidth = param1;
         this.§^!8§.stageHeight = param2;
         this.§"#j§ = param1;
         this.§@"_§ = param2;
         this.§^!8§.dispatchEvent(new §'!z§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §<! §() : void
      {
         this.setCanvasSize(this.§7"b§,this.§'" §);
      }
      
      private function §3!Z§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc9_:MouseEvent = null;
         var _loc10_:TouchEvent = null;
         if(!this.§-s§ || !this.§9!x§)
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
               this.§2y§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§2y§ = false;
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
               _loc5_ = §-§.§?#S§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §-§.§9$!§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §-§.§&#d§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §-§.§?#S§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §-§.§&#d§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§2y§ ? §-§.§9$!§ : §-§.§""R§;
         }
         if((_loc2_ < §3w§.left || _loc2_ >= §3w§.right || _loc3_ < §3w§.top || _loc3_ >= §3w§.bottom) && _loc5_ == §-§.§?#S§)
         {
            return;
         }
         _loc2_ -= §3w§.x;
         _loc3_ -= §3w§.y;
         this.§,"q§.§4!k§(_loc4_,_loc5_,_loc2_,_loc3_,_loc6_,_loc7_,_loc8_);
      }
      
      private function get §9#a§() : Array
      {
         return Mouse.supportsCursor || !§;!;§ ? [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP] : [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END];
      }
      
      public function §?"E§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         this.§@h§(param1);
         var _loc4_:Program3D;
         (_loc4_ = this.§8"s§.createProgram()).upload(param2,param3);
         this.programs[param1] = _loc4_;
      }
      
      public function §@h§(param1:String) : void
      {
         var _loc2_:Program3D = this.§,T§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.programs[param1];
         }
      }
      
      public function §,T§(param1:String) : Program3D
      {
         return this.programs[param1] as Program3D;
      }
      
      public function § "r§(param1:String) : Boolean
      {
         return param1 in this.programs;
      }
      
      private function get programs() : Dictionary
      {
         return this.§`"=§[§["9§];
      }
      
      public function get §3G§() : Boolean
      {
         return this.§-s§;
      }
      
      public function get §]F§() : §-!x§
      {
         return this.§2#2§;
      }
      
      public function get context() : Context3D
      {
         return this.§8"s§;
      }
      
      public function get §`"=§() : Dictionary
      {
         return §8Q§[this.mStage3D] as Dictionary;
      }
      
      public function get §3!>§() : Boolean
      {
         return this.§4_§;
      }
      
      public function set §3!>§(param1:Boolean) : void
      {
         this.§4_§ = param1;
         if(this.§8"s§)
         {
            this.§,"q§.§3!>§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§2"r§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§2"r§ = param1;
         if(this.§8"s§)
         {
            this.§8"s§.enableErrorChecking = param1;
         }
      }
      
      public function get §'"y§() : int
      {
         if(!this.§ "%§)
         {
            return this.§3i§;
         }
         return 0;
      }
      
      public function set §'"y§(param1:int) : void
      {
         if(this.§'"y§ != param1)
         {
            this.§3i§ = param1;
            if(§^!b§)
            {
               this.§4Q§(true);
            }
         }
      }
      
      private function configureBackBuffer() : void
      {
         var error:int = 0;
         try
         {
            this.§+!s§.configureBackBuffer(this.§@#^§.width,this.§@#^§.height,this.§'"y§,false);
            §`!-§ = false;
         }
         catch(e:Error)
         {
            error = 1;
         }
      }
      
      public function get §7O§() : Number
      {
         return 1;
      }
      
      public function get §2"o§() : Sprite
      {
         return this.§+!W§;
      }
      
      public function get §=!i§() : Boolean
      {
         return this.§6">§ && this.§6">§.parent;
      }
      
      public function set §=!i§(param1:Boolean) : void
      {
         if(param1 == this.§=!i§)
         {
            return;
         }
         if(param1)
         {
            if(this.§6">§)
            {
               this.§^!8§.addChild(this.§6">§);
            }
            else
            {
               this.showStatsAt();
            }
         }
         else
         {
            this.§6">§.removeFromParent();
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
            removeEventListener(Event.§7!+§,onRootCreated);
         };
         if(this.§8"s§ == null)
         {
            addEventListener(§1P§.Event.§7!+§,onRootCreated);
         }
         else
         {
            if(this.§6">§ == null)
            {
               this.§6">§ = new §@!2§();
               this.§6">§.§ !$§ = false;
               this.§^!8§.addChild(this.§6">§);
            }
            stageWidth = this.§^!8§.stageWidth;
            stageHeight = this.§^!8§.stageHeight;
            this.§6">§.scaleX = this.§6">§.scaleY = scale;
            if(hAlign == §9#§.LEFT)
            {
               this.§6">§.x = 0;
            }
            else if(hAlign == §9#§.RIGHT)
            {
               this.§6">§.x = stageWidth - this.§6">§.width;
            }
            else
            {
               this.§6">§.x = int((stageWidth - this.§6">§.width) / 2);
            }
            if(vAlign == §7!<§.TOP)
            {
               this.§6">§.y = 0;
            }
            else if(vAlign == §7!<§.BOTTOM)
            {
               this.§6">§.y = stageHeight - this.§6">§.height;
            }
            else
            {
               this.§6">§.y = int((stageHeight - this.§6">§.height) / 2);
            }
         }
      }
      
      public function get stage() : §&!v§.Stage
      {
         return this.§^!8§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §9#2§() : flash.display.Stage
      {
         return this.§"!t§;
      }
      
      public function get root() : §&!v§.DisplayObject
      {
         return this.§?"+§;
      }
      
      public function get §[!X§() : Boolean
      {
         return this.§,4§;
      }
      
      public function set §[!X§(param1:Boolean) : void
      {
         this.§,4§ = param1;
      }
      
      public function get profile() : String
      {
         return this.§#!>§;
      }
   }
}
