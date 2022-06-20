package §]"P§
{
   import §!#`§.§"$D§;
   import §!#`§.§-G§;
   import §!#`§.Event;
   import §!#`§.EventDispatcher;
   import §!#`§.KeyboardEvent;
   import §!6§.DisplayObject;
   import §!6§.Stage;
   import §""'§.Texture;
   import §#"l§.§6!j§;
   import §#"l§.§^#r§;
   import §6#k§.§="b§;
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
      
      private static const §""+§:String = "Starling.programs";
      
      private static var §9$5§:Rectangle;
      
      private static var §@!N§:Boolean = true;
      
      private static var §<#+§:Boolean = false;
      
      private static var §5!=§:Boolean;
      
      private static var §0" §:Starling;
      
      private static var §>$!§:Boolean;
      
      private static var §,"§:Dictionary = new Dictionary(true);
      
      private static var §6!A§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var § #z§:§!6§.Stage;
      
      private var § !P§:Class;
      
      private var §6"Z§:§!6§.DisplayObject;
      
      private var §&#m§:§="b§;
      
      private var §-F§:Boolean;
      
      private var §[!f§:Boolean;
      
      private var §,<§:§4!9§;
      
      private var §@$?§:§#&§;
      
      private var §@#2§:int;
      
      private var §7#v§:Boolean;
      
      private var §-7§:Boolean;
      
      private var §,"-§:Number;
      
      private var §;"e§:Boolean;
      
      private var § "A§:§+"@§;
      
      private var §3#v§:Boolean;
      
      private var §'#_§:String;
      
      private var §'#E§:Context3D;
      
      private var §&+§:Rectangle;
      
      private var §1#9§:Rectangle;
      
      private var §0#S§:flash.display.Stage;
      
      private var §?$§:Sprite;
      
      private var §=!T§:int;
      
      private var §5"J§:Boolean;
      
      private var §="r§:Boolean = true;
      
      private var §?@§:Number;
      
      private var §`!&§:Number;
      
      private var §""C§:Number;
      
      private var §^#U§:Number;
      
      private var §+!+§:Number;
      
      private var §0$B§:Number;
      
      private var §+"P§:Function;
      
      private var §[l§:uint;
      
      private var §4#g§:String;
      
      private var §6"§:Bitmap;
      
      private var §=#z§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §+"c§:Boolean = false;
      
      private var §]"H§:Boolean = false;
      
      private var §0#A§:Boolean = false;
      
      private var §`#U§:Number = 25.0;
      
      private var §["$§:int = 0;
      
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
         this.§?@§ = param3.width;
         this.§`!&§ = param3.height;
         this.§""C§ = this.§?@§;
         this.§^#U§ = this.§`!&§;
         this.§+!+§ = param2.stageWidth;
         this.§0$B§ = param2.stageHeight;
         §^!S§ = true;
         this.§^#D§();
         this.§ !P§ = param1;
         §9$5§ = param3;
         this.§&+§ = new Rectangle();
         this.mStage3D = param4;
         this.§ #z§ = new §!6§.Stage(param3.width,param3.height,param2.color);
         this.§?$§ = new Sprite();
         this.§0#S§ = param2;
         this.§0#S§.addChild(this.§?$§);
         this.§@$?§ = new §#&§(this.§ #z§);
         this.§&#m§ = new §="b§();
         this.§@#2§ = 0;
         this.§7#v§ = false;
         this.§-7§ = false;
         this.§'#_§ = param6;
         this.§,"-§ = getTimer() / 1000;
         §,"§[param4] = new Dictionary();
         §,"§[param4][§""+§] = new Dictionary();
         param2.scaleMode = StageScaleMode.NO_SCALE;
         param2.align = StageAlign.TOP_LEFT;
         for each(_loc7_ in this.§5j§)
         {
            param2.addEventListener(_loc7_,this.§3$B§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=!o§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=!o§,false,0,true);
         param2.addEventListener(flash.events.Event.MOUSE_LEAVE,this.§#!P§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-s§,false,10,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§#"q§,false,10,true);
         this.mStage3D.visible = false;
         this.§2"D§(true);
         this.§[l§ = param2.color;
         this.§4#g§ = param5;
         if(this.mStage3D.context3D && this.mStage3D.context3D.driverInfo != "Disposed")
         {
            this.§3#v§ = true;
            setTimeout(this.initialize,1);
         }
         else
         {
            this.§3#v§ = false;
         }
      }
      
      public static function get §^$?§() : Boolean
      {
         if(§3!I§)
         {
            return §3!I§.§5"J§;
         }
         return true;
      }
      
      public static function §]#<§() : Boolean
      {
         return §0" § && (§0" §.§=#z§ || §0" §.§'#E§ != null && §0" §.§'#E§.driverInfo != "Disposed");
      }
      
      public static function get §%"I§() : Boolean
      {
         return §]#<§();
      }
      
      public static function get §]"A§() : Rectangle
      {
         return §9$5§.clone();
      }
      
      public static function set §]"A§(param1:Rectangle) : void
      {
         §9$5§ = param1.clone();
         §5!=§ = true;
      }
      
      public static function set §%"W§(param1:Boolean) : void
      {
         §<#+§ = param1;
      }
      
      public static function get §%"W§() : Boolean
      {
         return §<#+§;
      }
      
      public static function set §3y§(param1:Boolean) : void
      {
         §@!N§ = param1;
      }
      
      public static function get §3y§() : Boolean
      {
         return §@!N§;
      }
      
      public static function get §3!I§() : Starling
      {
         return §0" §;
      }
      
      public static function get context() : Context3D
      {
         return !!§0" § ? §0" §.context : null;
      }
      
      public static function get §?"7§() : §="b§
      {
         return !!§0" § ? §0" §.§?"7§ : null;
      }
      
      public static function get §<y§() : Number
      {
         return !!§0" § ? Number(§0" §.§<y§) : Number(1);
      }
      
      public static function get §!"'§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §!"'§(param1:Boolean) : void
      {
         if(§0" §)
         {
            throw new IllegalOperationError("\'multitouchEnabled\' must be set before Starling instance is created");
         }
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §^!S§() : Boolean
      {
         return §>$!§;
      }
      
      public static function set §^!S§(param1:Boolean) : void
      {
         if(§0" §)
         {
            throw new IllegalOperationError("\'handleLostContext\' must be set before Starling instance is created");
         }
         §>$!§ = param1;
      }
      
      public static function §6`§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1) : Texture
      {
         if(§3!I§)
         {
            return Texture.§;$3§(§3!I§.§'#E§,param1,param2,param3,param4);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§0" §.§'#E§)
         {
            §0" §.§'#E§.drawToBitmapData(param1);
         }
         else if(§0" §.§,<§.canvas)
         {
            _loc2_ = §0" §.§,<§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §4#5§() : §!6§.DisplayObject
      {
         return this.§6"Z§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§[l§ = param1;
      }
      
      public function set §-#a§(param1:Boolean) : void
      {
         if(!this.§0#A§ && param1)
         {
            this.§["$§ = 0;
         }
         this.§0#A§ = param1;
      }
      
      public function get §-#a§() : Boolean
      {
         return this.§0#A§;
      }
      
      public function set §5"'§(param1:Number) : void
      {
         this.§`#U§ = param1;
      }
      
      public function get §5"'§() : Number
      {
         return this.§`#U§;
      }
      
      public function get § !c§() : int
      {
         return this.§["$§;
      }
      
      public function get §1#!§() : Number
      {
         return this.§?@§;
      }
      
      public function get §4$0§() : Number
      {
         return this.§`!&§;
      }
      
      public function §'#F§() : void
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
               profile = !!this.§]"H§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§4#g§,profile);
            }
            else
            {
               addr54:
               requestContext3D(this.§4#g§);
            }
            return;
         }
         catch(e:Error)
         {
            §4!?§("Context3D error: " + e.message);
            throw e;
         }
         §§goto(addr54);
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         this.stop();
         this.§+"c§ = true;
         this.§0#S§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=!o§,false);
         this.§0#S§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=!o§,false);
         this.§0#S§.removeEventListener(flash.events.Event.MOUSE_LEAVE,this.§#!P§,false);
         this.§0#S§.removeChild(this.§?$§);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-s§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§#"q§,false);
         for each(_loc1_ in this.§5j§)
         {
            this.§0#S§.removeEventListener(_loc1_,this.§3$B§,false);
         }
         if(this.§ #z§)
         {
            this.§ #z§.dispose();
         }
         if(this.§,<§)
         {
            this.§,<§.dispose();
         }
         if(this.§@$?§)
         {
            this.§@$?§.dispose();
         }
         if(this.§'#E§ && !this.§3#v§)
         {
            this.§'#E§.dispose();
         }
         if(§0" § == this)
         {
            §0" § = null;
         }
         if(this.§6"§ && this.§6"§.bitmapData)
         {
            this.§6"§.bitmapData.dispose();
            this.§6"§.bitmapData = null;
         }
      }
      
      private function initialize() : void
      {
         this.§^#D§();
         this.§+#J§();
         this.§'"Y§();
         this.§@$?§.§=#t§ = this.§7#v§;
         this.§,"-§ = getTimer() / 1000;
      }
      
      private function §+#J§() : void
      {
         this.§'#E§ = this.mStage3D.context3D;
         this.§'#E§.setDepthTest(false,Context3DCompareMode.ALWAYS);
         this.§'#E§.setCulling(Context3DTriangleFace.NONE);
         if(!this.§="r§ && this.§'#E§ && this.§5"J§)
         {
            this.mStage3DEnabled = false;
            this.§'#E§ = null;
            this.§ $B§();
         }
         if(this.§'#E§)
         {
            this.§,<§ = new §4!9§();
         }
         else
         {
            this.§,<§ = new §4_§();
            this.§,<§.setCanvasSize(this.§""C§,this.§^#U§,§9$5§.width / this.§ #z§.stageWidth,§9$5§.height / this.§ #z§.stageHeight);
            this.§,<§.clear(null,this.§[l§);
         }
         if(this.§'#E§)
         {
            this.§'#E§.enableErrorChecking = this.§-7§;
            if(this.§'#E§.driverInfo.indexOf("Software") >= 0)
            {
               this.§5"J§ = true;
            }
         }
         this.§@#d§[§""+§] = new Dictionary();
         this.§%!@§(true);
         §@#<§(§!#`§.Event.CONTEXT3D_CREATE,false,this.§'#E§);
      }
      
      private function §'"Y§() : void
      {
         if(this.§6"Z§ == null)
         {
            this.§6"Z§ = new this.§ !P§() as §!6§.DisplayObject;
            if(this.§6"Z§ == null)
            {
               throw new Error("Invalid root class: " + this.§ !P§);
            }
            this.§ #z§.addChildAt(this.§6"Z§,0);
            §@#<§(§!#`§.Event.§=#O§,false,this.§6"Z§);
         }
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§,"-§;
         this.§,"-§ = _loc1_;
         this.§#+§(_loc2_);
         this.render();
      }
      
      public function §#+§(param1:Number) : void
      {
         this.§^#D§();
         this.§@$?§.§#+§(param1);
         this.§ #z§.§#+§(param1);
         this.§&#m§.§#+§(param1);
      }
      
      public function render() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(!§%"I§)
         {
            return;
         }
         this.§^#D§();
         this.§%!@§();
         this.§?#M§();
         this.§,<§.nextFrame();
         if(!this.§3#v§)
         {
            §4!9§.clear(this.§'#E§,this.§[l§,1);
         }
         this.§,<§.§&8§(this.§'#E§,this.§=!T§);
         this.§,<§.§@!9§ = null;
         this.§,<§.§["l§(0,0,this.§ #z§.§>!!§,this.§ #z§.§&!n§);
         this.§ #z§.render(this.§,<§,1);
         this.§,<§.§%"6§();
         if(this.§+"P§ != null)
         {
            this.§+"P§();
            this.§+"P§ = null;
         }
         if(this.§ "A§)
         {
            this.§ "A§.§<#!§ = this.§,<§.§<#!§;
         }
         if(!this.§3#v§)
         {
            if(this.§0#A§)
            {
               _loc1_ = getTimer();
               this.§,<§.finishRendering(this.§'#E§);
               _loc2_ = getTimer();
               if(_loc2_ - _loc1_ > this.§`#U§)
               {
                  ++this.§["$§;
               }
            }
            else
            {
               this.§,<§.finishRendering(this.§'#E§);
            }
         }
      }
      
      public function set §&#D§(param1:Function) : void
      {
         this.§+"P§ = param1;
      }
      
      private function §%!@§(param1:Boolean = false) : void
      {
         if(param1 || this.§&+§.width != §9$5§.width || this.§&+§.height != §9$5§.height || this.§&+§.x != §9$5§.x || this.§&+§.y != §9$5§.y)
         {
            this.§&+§.setTo(§9$5§.x,§9$5§.y,§9$5§.width,§9$5§.height);
            this.§1#9§ = §9$5§.intersection(new Rectangle(0,0,this.§0#S§.stageWidth,this.§0#S§.stageHeight));
            this.setCanvasSize(this.§1#9§.width,this.§1#9§.height);
            if(!this.§3#v§)
            {
               this.mStage3D.x = this.§1#9§.x;
               this.mStage3D.y = this.§1#9§.y;
               this.configureBackBuffer();
            }
            else
            {
               this.§,<§.§&"7§ = this.§1#9§.width;
               this.§,<§.§?J§ = this.§1#9§.height;
            }
         }
      }
      
      private function §?#M§() : void
      {
         var _loc3_:BitmapData = null;
         this.§?$§.x = §9$5§.x;
         this.§?$§.y = §9$5§.y;
         var _loc1_:int = this.§?$§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§?$§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§0#S§.addChild(this.§?$§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§0#S§.removeChild(this.§?$§);
         }
         if(this.§,<§ && this.§,<§.canvas)
         {
            this.§,<§.setCanvasSize(this.§""C§,this.§^#U§,§9$5§.width / this.§ #z§.stageWidth,§9$5§.height / this.§ #z§.stageHeight);
            _loc3_ = this.§,<§.canvas;
            if(this.§6"§.bitmapData != _loc3_)
            {
               this.§6"§.bitmapData = _loc3_;
            }
            if(this.§0#S§.getChildIndex(this.§?$§) > 0)
            {
               this.§0#S§.removeChild(this.§?$§);
               this.§0#S§.addChildAt(this.§?$§,0);
            }
         }
      }
      
      private function §4!?§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§ #z§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§ #z§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§ #z§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§%!F§.addChild(_loc2_);
      }
      
      public function §^#D§() : void
      {
         §0" § = this;
      }
      
      public function start() : void
      {
         this.§-F§ = true;
         this.§,"-§ = getTimer() / 1000;
         this.mStage3D.visible = this.mStage3DEnabled;
         if(this.§6"Z§)
         {
            this.§6"Z§.visible = this.mStage3DEnabled;
         }
      }
      
      public function stop() : void
      {
         this.§-F§ = false;
         this.mStage3D.visible = false;
         if(this.§6"Z§)
         {
            this.§6"Z§.visible = false;
         }
      }
      
      public function §2"D§(param1:Boolean) : void
      {
         this.§[!f§ = param1;
      }
      
      public function set §##2§(param1:Number) : void
      {
         this.§@$?§.§##2§ = param1;
      }
      
      private function § $B§() : void
      {
         this.§=#z§ = true;
         if(this.§6"§ == null)
         {
            this.§6"§ = new Bitmap();
            this.§%!F§.addChild(this.§6"§);
         }
      }
      
      private function §#"q§(param1:ErrorEvent) : void
      {
         if(param1.errorID == 3702)
         {
            this.§4!?§("This application is not correctly embedded (wrong wmode value)");
         }
         else
         {
            this.§4!?§("Stage3D error: " + param1.text);
         }
      }
      
      private function §-s§(param1:flash.events.Event) : void
      {
         if(!Starling.§^!S§ && this.§'#E§)
         {
            this.stop();
            param1.stopImmediatePropagation();
            this.§4!?§("Fatal error: The application lost the device context!");
         }
         else
         {
            if(!this.§]"H§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
            {
               this.§]"H§ = true;
               this.§'#F§();
               return;
            }
            ++this.§=!T§;
            this.initialize();
         }
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         if(!this.§3#v§)
         {
            if(this.§-F§)
            {
               this.nextFrame();
            }
            else
            {
               this.render();
            }
         }
      }
      
      private function §=!o§(param1:flash.events.KeyboardEvent) : void
      {
         if(!this.§-F§)
         {
            return;
         }
         this.§^#D§();
         this.§ #z§.dispatchEvent(new §!#`§.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §#!P§(param1:flash.events.Event) : void
      {
         this.§@$?§.§##i§();
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§?@§;
         var _loc4_:Number = param2 / this.§`!&§;
         if(§%"W§)
         {
            this.§ #z§.§>!!§ = param1;
            this.§ #z§.§&!n§ = param2;
         }
         else if(!§3y§)
         {
            this.§ #z§.§>!!§ = this.§?@§ * _loc3_ / _loc4_;
            this.§ #z§.§&!n§ = this.§`!&§;
         }
         else
         {
            this.§ #z§.§>!!§ = this.§?@§;
            this.§ #z§.§&!n§ = this.§`!&§ * _loc4_ / _loc3_;
         }
         this.§ #z§.stageWidth = param1;
         this.§ #z§.stageHeight = param2;
         this.§""C§ = param1;
         this.§^#U§ = param2;
         this.§ #z§.dispatchEvent(new §-G§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §1#F§() : void
      {
         this.setCanvasSize(this.§?@§,this.§`!&§);
      }
      
      private function §3$B§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc9_:MouseEvent = null;
         var _loc10_:TouchEvent = null;
         if(!this.§-F§ || !this.§[!f§)
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
               this.§;"e§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§;"e§ = false;
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
               _loc5_ = §"$D§.§<#B§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §"$D§.§,+§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §"$D§.§!+§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §"$D§.§<#B§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §"$D§.§!+§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§;"e§ ? §"$D§.§,+§ : §"$D§.§^!D§;
         }
         if((_loc2_ < §9$5§.left || _loc2_ >= §9$5§.right || _loc3_ < §9$5§.top || _loc3_ >= §9$5§.bottom) && _loc5_ == §"$D§.§<#B§)
         {
            return;
         }
         _loc2_ -= §9$5§.x;
         _loc3_ -= §9$5§.y;
         this.§@$?§.§4v§(_loc4_,_loc5_,_loc2_,_loc3_,_loc6_,_loc7_,_loc8_);
      }
      
      private function get §5j§() : Array
      {
         return Mouse.supportsCursor || !§!"'§ ? [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP] : [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END];
      }
      
      public function §`"I§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         this.§&B§(param1);
         var _loc4_:Program3D;
         (_loc4_ = this.§'#E§.createProgram()).upload(param2,param3);
         this.programs[param1] = _loc4_;
      }
      
      public function §&B§(param1:String) : void
      {
         var _loc2_:Program3D = this.§"#r§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.programs[param1];
         }
      }
      
      public function §"#r§(param1:String) : Program3D
      {
         return this.programs[param1] as Program3D;
      }
      
      public function §!j§(param1:String) : Boolean
      {
         return param1 in this.programs;
      }
      
      private function get programs() : Dictionary
      {
         return this.§@#d§[§""+§];
      }
      
      public function get §!!f§() : Boolean
      {
         return this.§-F§;
      }
      
      public function get §?"7§() : §="b§
      {
         return this.§&#m§;
      }
      
      public function get context() : Context3D
      {
         return this.§'#E§;
      }
      
      public function get §@#d§() : Dictionary
      {
         return §,"§[this.mStage3D] as Dictionary;
      }
      
      public function get §=#t§() : Boolean
      {
         return this.§7#v§;
      }
      
      public function set §=#t§(param1:Boolean) : void
      {
         this.§7#v§ = param1;
         if(this.§'#E§)
         {
            this.§@$?§.§=#t§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§-7§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§-7§ = param1;
         if(this.§'#E§)
         {
            this.§'#E§.enableErrorChecking = param1;
         }
      }
      
      public function get §;!5§() : int
      {
         if(!this.§5"J§)
         {
            return this.§@#2§;
         }
         return 0;
      }
      
      public function set §;!5§(param1:int) : void
      {
         if(this.§;!5§ != param1)
         {
            this.§@#2§ = param1;
            if(§%"I§)
            {
               this.§%!@§(true);
            }
         }
      }
      
      private function configureBackBuffer() : void
      {
         var error:int = 0;
         try
         {
            this.§,<§.configureBackBuffer(this.§1#9§.width,this.§1#9§.height,this.§;!5§,false);
            §5!=§ = false;
         }
         catch(e:Error)
         {
            error = 1;
         }
      }
      
      public function get §<y§() : Number
      {
         return 1;
      }
      
      public function get §%!F§() : Sprite
      {
         return this.§?$§;
      }
      
      public function get §`S§() : Boolean
      {
         return this.§ "A§ && this.§ "A§.parent;
      }
      
      public function set §`S§(param1:Boolean) : void
      {
         if(param1 == this.§`S§)
         {
            return;
         }
         if(param1)
         {
            if(this.§ "A§)
            {
               this.§ #z§.addChild(this.§ "A§);
            }
            else
            {
               this.showStatsAt();
            }
         }
         else
         {
            this.§ "A§.removeFromParent();
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
            removeEventListener(Event.§=#O§,onRootCreated);
         };
         if(this.§'#E§ == null)
         {
            addEventListener(§!#`§.Event.§=#O§,onRootCreated);
         }
         else
         {
            if(this.§ "A§ == null)
            {
               this.§ "A§ = new §+"@§();
               this.§ "A§.§7!w§ = false;
               this.§ #z§.addChild(this.§ "A§);
            }
            stageWidth = this.§ #z§.stageWidth;
            stageHeight = this.§ #z§.stageHeight;
            this.§ "A§.scaleX = this.§ "A§.scaleY = scale;
            if(hAlign == §^#r§.LEFT)
            {
               this.§ "A§.x = 0;
            }
            else if(hAlign == §^#r§.RIGHT)
            {
               this.§ "A§.x = stageWidth - this.§ "A§.width;
            }
            else
            {
               this.§ "A§.x = int((stageWidth - this.§ "A§.width) / 2);
            }
            if(vAlign == §6!j§.TOP)
            {
               this.§ "A§.y = 0;
            }
            else if(vAlign == §6!j§.BOTTOM)
            {
               this.§ "A§.y = stageHeight - this.§ "A§.height;
            }
            else
            {
               this.§ "A§.y = int((stageHeight - this.§ "A§.height) / 2);
            }
         }
      }
      
      public function get stage() : §!6§.Stage
      {
         return this.§ #z§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §#%§() : flash.display.Stage
      {
         return this.§0#S§;
      }
      
      public function get root() : §!6§.DisplayObject
      {
         return this.§6"Z§;
      }
      
      public function get §3#Y§() : Boolean
      {
         return this.§3#v§;
      }
      
      public function set §3#Y§(param1:Boolean) : void
      {
         this.§3#v§ = param1;
      }
      
      public function get profile() : String
      {
         return this.§'#_§;
      }
      
      public function get §#"9§() : Boolean
      {
         return this.§+"c§;
      }
   }
}
