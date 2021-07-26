package §"#k§
{
   import §,#e§.DisplayObject;
   import §,#e§.Stage;
   import §,$&§.§-"E§;
   import §,$&§.§-"i§;
   import §,$&§.Event;
   import §,$&§.EventDispatcher;
   import §,$&§.KeyboardEvent;
   import §-#]§.Texture;
   import §8#p§.§!"'§;
   import §8#p§.§>§;
   import §[>§.§-"h§;
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
      
      private static const §!!^§:String = "Starling.programs";
      
      private static var §3p§:Rectangle;
      
      private static var §+"'§:Boolean = true;
      
      private static var §"#l§:Boolean = false;
      
      private static var §7"f§:Boolean;
      
      private static var §>"4§:Starling;
      
      private static var §0$+§:Boolean;
      
      private static var §9#o§:Dictionary = new Dictionary(true);
      
      private static var §0#b§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §6$ §:§,#e§.Stage;
      
      private var §!"g§:Class;
      
      private var §6!R§:§,#e§.DisplayObject;
      
      private var §9#Y§:§-"h§;
      
      private var §`!;§:Boolean;
      
      private var §>!,§:Boolean;
      
      private var § O§:§79§;
      
      private var §0#r§:§1!2§;
      
      private var §3$$§:int;
      
      private var §6#t§:Boolean;
      
      private var §^##§:Boolean;
      
      private var §'!B§:Number;
      
      private var §!"V§:Boolean;
      
      private var §7"<§:§8L§;
      
      private var §[#1§:Boolean;
      
      private var §4!]§:String;
      
      private var §`!8§:Context3D;
      
      private var §<#;§:Rectangle;
      
      private var §1!e§:Rectangle;
      
      private var §-#u§:flash.display.Stage;
      
      private var §?!?§:Sprite;
      
      private var §`#W§:int;
      
      private var §<#$§:Boolean;
      
      private var §3#S§:Boolean = true;
      
      private var §'"e§:Number;
      
      private var §[!B§:Number;
      
      private var §5!8§:Number;
      
      private var §1!s§:Number;
      
      private var §"#n§:Number;
      
      private var §]"r§:Number;
      
      private var § #$§:Function;
      
      private var §?$D§:uint;
      
      private var §^2§:String;
      
      private var §,">§:Bitmap;
      
      private var §`"j§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §="9§:Boolean = false;
      
      private var §=!i§:Boolean = false;
      
      private var §5!E§:Boolean = false;
      
      private var §'b§:Number = 25.0;
      
      private var §^"?§:int = 0;
      
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
         this.§'"e§ = param3.width;
         this.§[!B§ = param3.height;
         this.§5!8§ = this.§'"e§;
         this.§1!s§ = this.§[!B§;
         this.§"#n§ = param2.stageWidth;
         this.§]"r§ = param2.stageHeight;
         §'"K§ = true;
         this.§ !m§();
         this.§!"g§ = param1;
         §3p§ = param3;
         this.§<#;§ = new Rectangle();
         this.mStage3D = param4;
         this.§6$ § = new §,#e§.Stage(param3.width,param3.height,param2.color);
         this.§?!?§ = new Sprite();
         this.§-#u§ = param2;
         this.§-#u§.addChild(this.§?!?§);
         this.§0#r§ = new §1!2§(this.§6$ §);
         this.§9#Y§ = new §-"h§();
         this.§3$$§ = 0;
         this.§6#t§ = false;
         this.§^##§ = false;
         this.§4!]§ = param6;
         this.§'!B§ = getTimer() / 1000;
         §9#o§[param4] = new Dictionary();
         §9#o§[param4][§!!^§] = new Dictionary();
         param2.scaleMode = StageScaleMode.NO_SCALE;
         param2.align = StageAlign.TOP_LEFT;
         for each(_loc7_ in this.§^#M§)
         {
            param2.addEventListener(_loc7_,this.§ !c§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ #L§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ #L§,false,0,true);
         param2.addEventListener(flash.events.Event.MOUSE_LEAVE,this.§;A§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§>E§,false,10,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§^!P§,false,10,true);
         this.mStage3D.visible = false;
         this.§?!o§(true);
         this.§?$D§ = param2.color;
         this.§^2§ = param5;
         if(this.mStage3D.context3D && this.mStage3D.context3D.driverInfo != "Disposed")
         {
            this.§[#1§ = true;
            setTimeout(this.initialize,1);
         }
         else
         {
            this.§[#1§ = false;
         }
      }
      
      public static function get §1""§() : Boolean
      {
         if(§4$#§)
         {
            return §4$#§.§<#$§;
         }
         return true;
      }
      
      public static function §'8§() : Boolean
      {
         return §>"4§ && (§>"4§.§`"j§ || §>"4§.§`!8§ != null && §>"4§.§`!8§.driverInfo != "Disposed");
      }
      
      public static function get §3"'§() : Boolean
      {
         return §'8§();
      }
      
      public static function get §]#g§() : Rectangle
      {
         return §3p§.clone();
      }
      
      public static function set §]#g§(param1:Rectangle) : void
      {
         §3p§ = param1.clone();
         §7"f§ = true;
      }
      
      public static function set §4#g§(param1:Boolean) : void
      {
         §"#l§ = param1;
      }
      
      public static function get §4#g§() : Boolean
      {
         return §"#l§;
      }
      
      public static function set §^6§(param1:Boolean) : void
      {
         §+"'§ = param1;
      }
      
      public static function get §^6§() : Boolean
      {
         return §+"'§;
      }
      
      public static function get §4$#§() : Starling
      {
         return §>"4§;
      }
      
      public static function get context() : Context3D
      {
         return !!§>"4§ ? §>"4§.context : null;
      }
      
      public static function get §%",§() : §-"h§
      {
         return !!§>"4§ ? §>"4§.§%",§ : null;
      }
      
      public static function get §3!F§() : Number
      {
         return !!§>"4§ ? Number(§>"4§.§3!F§) : Number(1);
      }
      
      public static function get §##u§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §##u§(param1:Boolean) : void
      {
         if(§>"4§)
         {
            throw new IllegalOperationError("\'multitouchEnabled\' must be set before Starling instance is created");
         }
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §'"K§() : Boolean
      {
         return §0$+§;
      }
      
      public static function set §'"K§(param1:Boolean) : void
      {
         if(§>"4§)
         {
            throw new IllegalOperationError("\'handleLostContext\' must be set before Starling instance is created");
         }
         §0$+§ = param1;
      }
      
      public static function §"!B§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1) : Texture
      {
         if(§4$#§)
         {
            return Texture.§4"§(§4$#§.§`!8§,param1,param2,param3,param4);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§>"4§.§`!8§)
         {
            §>"4§.§`!8§.drawToBitmapData(param1);
         }
         else if(§>"4§.§ O§.canvas)
         {
            _loc2_ = §>"4§.§ O§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §`#b§() : §,#e§.DisplayObject
      {
         return this.§6!R§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§?$D§ = param1;
      }
      
      public function set §0b§(param1:Boolean) : void
      {
         if(!this.§5!E§ && param1)
         {
            this.§^"?§ = 0;
         }
         this.§5!E§ = param1;
      }
      
      public function get §0b§() : Boolean
      {
         return this.§5!E§;
      }
      
      public function set §@!J§(param1:Number) : void
      {
         this.§'b§ = param1;
      }
      
      public function get §@!J§() : Number
      {
         return this.§'b§;
      }
      
      public function get §,$<§() : int
      {
         return this.§^"?§;
      }
      
      public function get § #@§() : Number
      {
         return this.§'"e§;
      }
      
      public function get §-"X§() : Number
      {
         return this.§[!B§;
      }
      
      public function §5"%§() : void
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
               profile = !!this.§=!i§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§^2§,profile);
            }
            else
            {
               requestContext3D(this.§^2§);
            }
         }
         catch(e:Error)
         {
            §>j§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         this.stop();
         this.§="9§ = true;
         this.§-#u§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ #L§,false);
         this.§-#u§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ #L§,false);
         this.§-#u§.removeEventListener(flash.events.Event.MOUSE_LEAVE,this.§;A§,false);
         this.§-#u§.removeChild(this.§?!?§);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§>E§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§^!P§,false);
         for each(_loc1_ in this.§^#M§)
         {
            this.§-#u§.removeEventListener(_loc1_,this.§ !c§,false);
         }
         if(this.§6$ §)
         {
            this.§6$ §.dispose();
         }
         if(this.§ O§)
         {
            this.§ O§.dispose();
         }
         if(this.§0#r§)
         {
            this.§0#r§.dispose();
         }
         if(this.§`!8§ && !this.§[#1§)
         {
            this.§`!8§.dispose();
         }
         if(§>"4§ == this)
         {
            §>"4§ = null;
         }
         if(this.§,">§ && this.§,">§.bitmapData)
         {
            this.§,">§.bitmapData.dispose();
            this.§,">§.bitmapData = null;
         }
      }
      
      private function initialize() : void
      {
         this.§ !m§();
         this.§+"C§();
         this.§>"9§();
         this.§0#r§.§['§ = this.§6#t§;
         this.§'!B§ = getTimer() / 1000;
      }
      
      private function §+"C§() : void
      {
         this.§`!8§ = this.mStage3D.context3D;
         this.§`!8§.setDepthTest(false,Context3DCompareMode.ALWAYS);
         this.§`!8§.setCulling(Context3DTriangleFace.NONE);
         if(!this.§3#S§ && this.§`!8§ && this.§<#$§)
         {
            this.mStage3DEnabled = false;
            this.§`!8§ = null;
            this.§8"l§();
         }
         if(this.§`!8§)
         {
            this.§ O§ = new §79§();
         }
         else
         {
            this.§ O§ = new §9D§();
            this.§ O§.setCanvasSize(this.§5!8§,this.§1!s§,§3p§.width / this.§6$ §.stageWidth,§3p§.height / this.§6$ §.stageHeight);
            this.§ O§.clear(null,this.§?$D§);
         }
         if(this.§`!8§)
         {
            this.§`!8§.enableErrorChecking = this.§^##§;
            if(this.§`!8§.driverInfo.indexOf("Software") >= 0)
            {
               this.§<#$§ = true;
            }
         }
         this.§8`§[§!!^§] = new Dictionary();
         this.§,$+§(true);
         §"!=§(§,$&§.Event.CONTEXT3D_CREATE,false,this.§`!8§);
      }
      
      private function §>"9§() : void
      {
         if(this.§6!R§ == null)
         {
            this.§6!R§ = new this.§!"g§() as §,#e§.DisplayObject;
            if(this.§6!R§ == null)
            {
               throw new Error("Invalid root class: " + this.§!"g§);
            }
            this.§6$ §.addChildAt(this.§6!R§,0);
            §"!=§(§,$&§.Event.§3+§,false,this.§6!R§);
         }
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§'!B§;
         this.§'!B§ = _loc1_;
         this.§]W§(_loc2_);
         this.render();
      }
      
      public function §]W§(param1:Number) : void
      {
         this.§ !m§();
         this.§0#r§.§]W§(param1);
         this.§6$ §.§]W§(param1);
         this.§9#Y§.§]W§(param1);
      }
      
      public function render() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(!§3"'§)
         {
            return;
         }
         this.§ !m§();
         this.§,$+§();
         this.§"0§();
         this.§ O§.nextFrame();
         if(!this.§[#1§)
         {
            §79§.clear(this.§`!8§,this.§?$D§,1);
         }
         this.§ O§.§&"8§(this.§`!8§,this.§`#W§);
         this.§ O§.§5L§ = null;
         this.§ O§.§0c§(0,0,this.§6$ §.§ ,§,this.§6$ §.§8I§);
         this.§6$ §.render(this.§ O§,1);
         this.§ O§.§6@§();
         if(this.§ #$§ != null)
         {
            this.§ #$§();
            this.§ #$§ = null;
         }
         if(this.§7"<§)
         {
            this.§7"<§.§!"c§ = this.§ O§.§!"c§;
         }
         if(!this.§[#1§)
         {
            if(this.§5!E§)
            {
               _loc1_ = getTimer();
               this.§ O§.finishRendering(this.§`!8§);
               _loc2_ = getTimer();
               if(_loc2_ - _loc1_ > this.§'b§)
               {
                  ++this.§^"?§;
               }
            }
            else
            {
               this.§ O§.finishRendering(this.§`!8§);
            }
         }
      }
      
      public function set §>f§(param1:Function) : void
      {
         this.§ #$§ = param1;
      }
      
      private function §,$+§(param1:Boolean = false) : void
      {
         if(param1 || this.§<#;§.width != §3p§.width || this.§<#;§.height != §3p§.height || this.§<#;§.x != §3p§.x || this.§<#;§.y != §3p§.y)
         {
            this.§<#;§.setTo(§3p§.x,§3p§.y,§3p§.width,§3p§.height);
            this.§1!e§ = §3p§.intersection(new Rectangle(0,0,this.§-#u§.stageWidth,this.§-#u§.stageHeight));
            this.setCanvasSize(this.§1!e§.width,this.§1!e§.height);
            if(!this.§[#1§)
            {
               this.mStage3D.x = this.§1!e§.x;
               this.mStage3D.y = this.§1!e§.y;
               this.configureBackBuffer();
            }
            else
            {
               this.§ O§.§3!x§ = this.§1!e§.width;
               this.§ O§.§ !O§ = this.§1!e§.height;
            }
         }
      }
      
      private function §"0§() : void
      {
         var _loc3_:BitmapData = null;
         this.§?!?§.x = §3p§.x;
         this.§?!?§.y = §3p§.y;
         var _loc1_:int = this.§?!?§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§?!?§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§-#u§.addChild(this.§?!?§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§-#u§.removeChild(this.§?!?§);
         }
         if(this.§ O§ && this.§ O§.canvas)
         {
            this.§ O§.setCanvasSize(this.§5!8§,this.§1!s§,§3p§.width / this.§6$ §.stageWidth,§3p§.height / this.§6$ §.stageHeight);
            _loc3_ = this.§ O§.canvas;
            if(this.§,">§.bitmapData != _loc3_)
            {
               this.§,">§.bitmapData = _loc3_;
            }
            if(this.§-#u§.getChildIndex(this.§?!?§) > 0)
            {
               this.§-#u§.removeChild(this.§?!?§);
               this.§-#u§.addChildAt(this.§?!?§,0);
            }
         }
      }
      
      private function §>j§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§6$ §.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§6$ §.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§6$ §.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§;"i§.addChild(_loc2_);
      }
      
      public function § !m§() : void
      {
         §>"4§ = this;
      }
      
      public function start() : void
      {
         this.§`!;§ = true;
         this.§'!B§ = getTimer() / 1000;
         this.mStage3D.visible = this.mStage3DEnabled;
         if(this.§6!R§)
         {
            this.§6!R§.visible = this.mStage3DEnabled;
         }
      }
      
      public function stop() : void
      {
         this.§`!;§ = false;
         this.mStage3D.visible = false;
         if(this.§6!R§)
         {
            this.§6!R§.visible = false;
         }
      }
      
      public function §?!o§(param1:Boolean) : void
      {
         this.§>!,§ = param1;
      }
      
      public function set §6$"§(param1:Number) : void
      {
         this.§0#r§.§6$"§ = param1;
      }
      
      private function §8"l§() : void
      {
         this.§`"j§ = true;
         if(this.§,">§ == null)
         {
            this.§,">§ = new Bitmap();
            this.§;"i§.addChild(this.§,">§);
         }
      }
      
      private function §^!P§(param1:ErrorEvent) : void
      {
         if(param1.errorID == 3702)
         {
            this.§>j§("This application is not correctly embedded (wrong wmode value)");
         }
         else
         {
            this.§>j§("Stage3D error: " + param1.text);
         }
      }
      
      private function §>E§(param1:flash.events.Event) : void
      {
         if(!Starling.§'"K§ && this.§`!8§)
         {
            this.stop();
            param1.stopImmediatePropagation();
            this.§>j§("Fatal error: The application lost the device context!");
         }
         else
         {
            if(!this.§=!i§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
            {
               this.§=!i§ = true;
               this.§5"%§();
               return;
            }
            ++this.§`#W§;
            this.initialize();
         }
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         if(!this.§[#1§)
         {
            if(this.§`!;§)
            {
               this.nextFrame();
            }
            else
            {
               this.render();
            }
         }
      }
      
      private function § #L§(param1:flash.events.KeyboardEvent) : void
      {
         if(!this.§`!;§)
         {
            return;
         }
         this.§ !m§();
         this.§6$ §.dispatchEvent(new §,$&§.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §;A§(param1:flash.events.Event) : void
      {
         this.§0#r§.§1"=§();
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§'"e§;
         var _loc4_:Number = param2 / this.§[!B§;
         if(§4#g§)
         {
            this.§6$ §.§ ,§ = param1;
            this.§6$ §.§8I§ = param2;
         }
         else if(!§^6§)
         {
            this.§6$ §.§ ,§ = this.§'"e§ * _loc3_ / _loc4_;
            this.§6$ §.§8I§ = this.§[!B§;
         }
         else
         {
            this.§6$ §.§ ,§ = this.§'"e§;
            this.§6$ §.§8I§ = this.§[!B§ * _loc4_ / _loc3_;
         }
         this.§6$ §.stageWidth = param1;
         this.§6$ §.stageHeight = param2;
         this.§5!8§ = param1;
         this.§1!s§ = param2;
         this.§6$ §.dispatchEvent(new §-"i§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §9"S§() : void
      {
         this.setCanvasSize(this.§'"e§,this.§[!B§);
      }
      
      private function § !c§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc9_:MouseEvent = null;
         var _loc10_:TouchEvent = null;
         if(!this.§`!;§ || !this.§>!,§)
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
               this.§!"V§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§!"V§ = false;
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
               _loc5_ = §-"E§.§@"Y§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §-"E§.§"E§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §-"E§.ENDED;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §-"E§.§@"Y§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §-"E§.ENDED;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§!"V§ ? §-"E§.§"E§ : §-"E§.§]!D§;
         }
         if((_loc2_ < §3p§.left || _loc2_ >= §3p§.right || _loc3_ < §3p§.top || _loc3_ >= §3p§.bottom) && _loc5_ == §-"E§.§@"Y§)
         {
            return;
         }
         _loc2_ -= §3p§.x;
         _loc3_ -= §3p§.y;
         this.§0#r§.§for§(_loc4_,_loc5_,_loc2_,_loc3_,_loc6_,_loc7_,_loc8_);
      }
      
      private function get §^#M§() : Array
      {
         return Mouse.supportsCursor || !§##u§ ? [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP] : [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END];
      }
      
      public function §5!^§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         this.§="?§(param1);
         var _loc4_:Program3D;
         (_loc4_ = this.§`!8§.createProgram()).upload(param2,param3);
         this.programs[param1] = _loc4_;
      }
      
      public function §="?§(param1:String) : void
      {
         var _loc2_:Program3D = this.§+!!§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.programs[param1];
         }
      }
      
      public function §+!!§(param1:String) : Program3D
      {
         return this.programs[param1] as Program3D;
      }
      
      public function §]!G§(param1:String) : Boolean
      {
         return param1 in this.programs;
      }
      
      private function get programs() : Dictionary
      {
         return this.§8`§[§!!^§];
      }
      
      public function get §&@§() : Boolean
      {
         return this.§`!;§;
      }
      
      public function get §%",§() : §-"h§
      {
         return this.§9#Y§;
      }
      
      public function get context() : Context3D
      {
         return this.§`!8§;
      }
      
      public function get §8`§() : Dictionary
      {
         return §9#o§[this.mStage3D] as Dictionary;
      }
      
      public function get §['§() : Boolean
      {
         return this.§6#t§;
      }
      
      public function set §['§(param1:Boolean) : void
      {
         this.§6#t§ = param1;
         if(this.§`!8§)
         {
            this.§0#r§.§['§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§^##§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§^##§ = param1;
         if(this.§`!8§)
         {
            this.§`!8§.enableErrorChecking = param1;
         }
      }
      
      public function get §,"^§() : int
      {
         if(!this.§<#$§)
         {
            return this.§3$$§;
         }
         return 0;
      }
      
      public function set §,"^§(param1:int) : void
      {
         if(this.§,"^§ != param1)
         {
            this.§3$$§ = param1;
            if(§3"'§)
            {
               this.§,$+§(true);
            }
         }
      }
      
      private function configureBackBuffer() : void
      {
         var error:int = 0;
         try
         {
            this.§ O§.configureBackBuffer(this.§1!e§.width,this.§1!e§.height,this.§,"^§,false);
            §7"f§ = false;
         }
         catch(e:Error)
         {
            error = 1;
         }
      }
      
      public function get §3!F§() : Number
      {
         return 1;
      }
      
      public function get §;"i§() : Sprite
      {
         return this.§?!?§;
      }
      
      public function get §>#a§() : Boolean
      {
         return this.§7"<§ && this.§7"<§.parent;
      }
      
      public function set §>#a§(param1:Boolean) : void
      {
         if(param1 == this.§>#a§)
         {
            return;
         }
         if(param1)
         {
            if(this.§7"<§)
            {
               this.§6$ §.addChild(this.§7"<§);
            }
            else
            {
               this.showStatsAt();
            }
         }
         else
         {
            this.§7"<§.removeFromParent();
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
            removeEventListener(Event.§3+§,onRootCreated);
         };
         if(this.§`!8§ == null)
         {
            addEventListener(§,$&§.Event.§3+§,onRootCreated);
         }
         else
         {
            if(this.§7"<§ == null)
            {
               this.§7"<§ = new §8L§();
               this.§7"<§.§4"e§ = false;
               this.§6$ §.addChild(this.§7"<§);
            }
            stageWidth = this.§6$ §.stageWidth;
            stageHeight = this.§6$ §.stageHeight;
            this.§7"<§.scaleX = this.§7"<§.scaleY = scale;
            if(hAlign == §!"'§.LEFT)
            {
               this.§7"<§.x = 0;
            }
            else if(hAlign == §!"'§.RIGHT)
            {
               this.§7"<§.x = stageWidth - this.§7"<§.width;
            }
            else
            {
               this.§7"<§.x = int((stageWidth - this.§7"<§.width) / 2);
            }
            if(vAlign == §>#3§.TOP)
            {
               this.§7"<§.y = 0;
            }
            else if(vAlign == §>#3§.BOTTOM)
            {
               this.§7"<§.y = stageHeight - this.§7"<§.height;
            }
            else
            {
               this.§7"<§.y = int((stageHeight - this.§7"<§.height) / 2);
            }
         }
      }
      
      public function get stage() : §,#e§.Stage
      {
         return this.§6$ §;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §8v§() : flash.display.Stage
      {
         return this.§-#u§;
      }
      
      public function get root() : §,#e§.DisplayObject
      {
         return this.§6!R§;
      }
      
      public function get §]#Q§() : Boolean
      {
         return this.§[#1§;
      }
      
      public function set §]#Q§(param1:Boolean) : void
      {
         this.§[#1§ = param1;
      }
      
      public function get profile() : String
      {
         return this.§4!]§;
      }
      
      public function get §^#0§() : Boolean
      {
         return this.§="9§;
      }
   }
}
