package §&§#8
{
   import §""4§.Texture;
   import §#Z§.DisplayObject;
   import §#Z§.Stage;
   import §0"D§.§=#?§;
   import §0"D§.§["Z§;
   import §<!S§.§2w§;
   import §<!S§.§9!A§;
   import §<!S§.Event;
   import §<!S§.EventDispatcher;
   import §<!S§.KeyboardEvent;
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
   import §package§.§+#n§;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.3";
      
      private static const §9!L§:String = "Starling.programs";
      
      private static var §-R§:Rectangle;
      
      private static var §]#E§:Boolean = true;
      
      private static var §+!b§:Boolean = false;
      
      private static var §3$;§:Boolean;
      
      private static var §!P§:Starling;
      
      private static var §>"N§:Boolean;
      
      private static var §#$§:Dictionary = new Dictionary(true);
      
      private static var §%v§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §1!f§:§#Z§.Stage;
      
      private var §4#m§:Class;
      
      private var §?";§:§#Z§.DisplayObject;
      
      private var §9v§:§+#n§;
      
      private var §+>§:Boolean;
      
      private var §&!v§:Boolean;
      
      private var §!"7§:§""F§;
      
      private var §<"M§:§+!U§;
      
      private var §5q§:int;
      
      private var §0T§:Boolean;
      
      private var §'"X§:Boolean;
      
      private var §]""§:Number;
      
      private var §0L§:Boolean;
      
      private var §7$A§:§9O§;
      
      private var §]!X§:Boolean;
      
      private var §-#_§:String;
      
      private var §,"@§:Context3D;
      
      private var §!@§:Rectangle;
      
      private var §]#x§:Rectangle;
      
      private var §&!h§:flash.display.Stage;
      
      private var §@"=§:Sprite;
      
      private var §%!@§:int;
      
      private var §>#5§:Boolean;
      
      private var §^$<§:Boolean = true;
      
      private var §1!t§:Number;
      
      private var §-$;§:Number;
      
      private var §2!N§:Number;
      
      private var §8$3§:Number;
      
      private var §"c§:Number;
      
      private var §8#i§:Number;
      
      private var §+#k§:Function;
      
      private var §5#n§:uint;
      
      private var §&"§:String;
      
      private var §%!p§:Bitmap;
      
      private var §?#§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §[!G§:Boolean = false;
      
      private var §['§:Boolean = false;
      
      private var §&[§:Boolean = false;
      
      private var §@!K§:Number = 25.0;
      
      private var override:int = 0;
      
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
         this.§1!t§ = param3.width;
         this.§-$;§ = param3.height;
         this.§2!N§ = this.§1!t§;
         this.§8$3§ = this.§-$;§;
         this.§"c§ = param2.stageWidth;
         this.§8#i§ = param2.stageHeight;
         §=!X§ = true;
         this.§4"c§();
         this.§4#m§ = param1;
         §-R§ = param3;
         this.§!@§ = new Rectangle();
         this.mStage3D = param4;
         this.§1!f§ = new §#Z§.Stage(param3.width,param3.height,param2.color);
         this.§@"=§ = new Sprite();
         this.§&!h§ = param2;
         this.§&!h§.addChild(this.§@"=§);
         this.§<"M§ = new §+!U§(this.§1!f§);
         this.§9v§ = new §+#n§();
         this.§5q§ = 0;
         this.§0T§ = false;
         this.§'"X§ = false;
         this.§-#_§ = param6;
         this.§]""§ = getTimer() / 1000;
         §#$§[param4] = new Dictionary();
         §#$§[param4][§9!L§] = new Dictionary();
         param2.scaleMode = StageScaleMode.NO_SCALE;
         param2.align = StageAlign.TOP_LEFT;
         for each(_loc7_ in this.§ #t§)
         {
            param2.addEventListener(_loc7_,this.§?#=§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!#V§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!#V§,false,0,true);
         param2.addEventListener(flash.events.Event.MOUSE_LEAVE,this.§9"1§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§^#e§,false,10,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§&`§,false,10,true);
         this.mStage3D.visible = false;
         this.§7#F§(true);
         this.§5#n§ = param2.color;
         this.§&"§ = param5;
         if(this.mStage3D.context3D && this.mStage3D.context3D.driverInfo != "Disposed")
         {
            this.§]!X§ = true;
            setTimeout(this.initialize,1);
         }
         else
         {
            this.§]!X§ = false;
         }
      }
      
      public static function get §," §() : Boolean
      {
         if(§%!q§)
         {
            return §%!q§.§>#5§;
         }
         return true;
      }
      
      public static function §6O§() : Boolean
      {
         return §!P§ && (§!P§.§?#§ || §!P§.§,"@§ != null && §!P§.§,"@§.driverInfo != "Disposed");
      }
      
      public static function get §?$7§() : Boolean
      {
         return §6O§();
      }
      
      public static function get §7_§() : Rectangle
      {
         return §-R§.clone();
      }
      
      public static function set §7_§(param1:Rectangle) : void
      {
         §-R§ = param1.clone();
         §3$;§ = true;
      }
      
      public static function set §5"^§(param1:Boolean) : void
      {
         §+!b§ = param1;
      }
      
      public static function get §5"^§() : Boolean
      {
         return §+!b§;
      }
      
      public static function set §4"T§(param1:Boolean) : void
      {
         §]#E§ = param1;
      }
      
      public static function get §4"T§() : Boolean
      {
         return §]#E§;
      }
      
      public static function get §%!q§() : Starling
      {
         return §!P§;
      }
      
      public static function get context() : Context3D
      {
         return !!§!P§ ? §!P§.context : null;
      }
      
      public static function get §`"E§() : §+#n§
      {
         return !!§!P§ ? §!P§.§`"E§ : null;
      }
      
      public static function get §!"&§() : Number
      {
         return !!§!P§ ? Number(§!P§.§!"&§) : Number(1);
      }
      
      public static function get §+'§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §+'§(param1:Boolean) : void
      {
         if(§!P§)
         {
            throw new IllegalOperationError("\'multitouchEnabled\' must be set before Starling instance is created");
         }
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §=!X§() : Boolean
      {
         return §>"N§;
      }
      
      public static function set §=!X§(param1:Boolean) : void
      {
         if(§!P§)
         {
            throw new IllegalOperationError("\'handleLostContext\' must be set before Starling instance is created");
         }
         §>"N§ = param1;
      }
      
      public static function §^!D§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1) : Texture
      {
         if(§%!q§)
         {
            return Texture.§&#<§(§%!q§.§,"@§,param1,param2,param3,param4);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§!P§.§,"@§)
         {
            §!P§.§,"@§.drawToBitmapData(param1);
         }
         else if(§!P§.§!"7§.canvas)
         {
            _loc2_ = §!P§.§!"7§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §#"`§() : §#Z§.DisplayObject
      {
         return this.§?";§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§5#n§ = param1;
      }
      
      public function set §!$=§(param1:Boolean) : void
      {
         if(!this.§&[§ && param1)
         {
            this.override = 0;
         }
         this.§&[§ = param1;
      }
      
      public function get §!$=§() : Boolean
      {
         return this.§&[§;
      }
      
      public function set §`$9§(param1:Number) : void
      {
         this.§@!K§ = param1;
      }
      
      public function get §`$9§() : Number
      {
         return this.§@!K§;
      }
      
      public function get §%#'§() : int
      {
         return this.override;
      }
      
      public function get §5!n§() : Number
      {
         return this.§1!t§;
      }
      
      public function get §;$E§() : Number
      {
         return this.§-$;§;
      }
      
      public function §;$9§() : void
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
               profile = !!this.§['§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§&"§,profile);
            }
            else
            {
               addr54:
               requestContext3D(this.§&"§);
            }
            return;
         }
         catch(e:Error)
         {
            §^U§("Context3D error: " + e.message);
            throw e;
         }
         §§goto(addr54);
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         this.stop();
         this.§[!G§ = true;
         this.§&!h§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!#V§,false);
         this.§&!h§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!#V§,false);
         this.§&!h§.removeEventListener(flash.events.Event.MOUSE_LEAVE,this.§9"1§,false);
         this.§&!h§.removeChild(this.§@"=§);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§^#e§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§&`§,false);
         for each(_loc1_ in this.§ #t§)
         {
            this.§&!h§.removeEventListener(_loc1_,this.§?#=§,false);
         }
         if(this.§1!f§)
         {
            this.§1!f§.dispose();
         }
         if(this.§!"7§)
         {
            this.§!"7§.dispose();
         }
         if(this.§<"M§)
         {
            this.§<"M§.dispose();
         }
         if(this.§,"@§ && !this.§]!X§)
         {
            this.§,"@§.dispose();
         }
         if(§!P§ == this)
         {
            §!P§ = null;
         }
         if(this.§%!p§ && this.§%!p§.bitmapData)
         {
            this.§%!p§.bitmapData.dispose();
            this.§%!p§.bitmapData = null;
         }
      }
      
      private function initialize() : void
      {
         this.§4"c§();
         this.§^!,§();
         this.§]"o§();
         this.§<"M§.§+#8§ = this.§0T§;
         this.§]""§ = getTimer() / 1000;
      }
      
      private function §^!,§() : void
      {
         this.§,"@§ = this.mStage3D.context3D;
         this.§,"@§.setDepthTest(false,Context3DCompareMode.ALWAYS);
         this.§,"@§.setCulling(Context3DTriangleFace.NONE);
         if(!this.§^$<§ && this.§,"@§ && this.§>#5§)
         {
            this.mStage3DEnabled = false;
            this.§,"@§ = null;
            this.§+$D§();
         }
         if(this.§,"@§)
         {
            this.§!"7§ = new §""F§();
         }
         else
         {
            this.§!"7§ = new §0##§();
            this.§!"7§.setCanvasSize(this.§2!N§,this.§8$3§,§-R§.width / this.§1!f§.stageWidth,§-R§.height / this.§1!f§.stageHeight);
            this.§!"7§.clear(null,this.§5#n§);
         }
         if(this.§,"@§)
         {
            this.§,"@§.enableErrorChecking = this.§'"X§;
            if(this.§,"@§.driverInfo.indexOf("Software") >= 0)
            {
               this.§>#5§ = true;
            }
         }
         this.§8#U§[§9!L§] = new Dictionary();
         this.§15§(true);
         §5#^§(§<!S§.Event.CONTEXT3D_CREATE,false,this.§,"@§);
      }
      
      private function §]"o§() : void
      {
         if(this.§?";§ == null)
         {
            this.§?";§ = new this.§4#m§() as §#Z§.DisplayObject;
            if(this.§?";§ == null)
            {
               throw new Error("Invalid root class: " + this.§4#m§);
            }
            this.§1!f§.addChildAt(this.§?";§,0);
            §5#^§(§<!S§.Event.§7"5§,false,this.§?";§);
         }
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§]""§;
         this.§]""§ = _loc1_;
         this.§["[§(_loc2_);
         this.render();
      }
      
      public function §["[§(param1:Number) : void
      {
         this.§4"c§();
         this.§<"M§.§["[§(param1);
         this.§1!f§.§["[§(param1);
         this.§9v§.§["[§(param1);
      }
      
      public function render() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(!§?$7§)
         {
            return;
         }
         this.§4"c§();
         this.§15§();
         this.§5$2§();
         this.§!"7§.nextFrame();
         if(!this.§]!X§)
         {
            §""F§.clear(this.§,"@§,this.§5#n§,1);
         }
         this.§!"7§.§1"W§(this.§,"@§,this.§%!@§);
         this.§!"7§.§^#+§ = null;
         this.§!"7§.§?"P§(0,0,this.§1!f§.§^!?§,this.§1!f§.§@#p§);
         this.§1!f§.render(this.§!"7§,1);
         this.§!"7§.§&"!§();
         if(this.§+#k§ != null)
         {
            this.§+#k§();
            this.§+#k§ = null;
         }
         if(this.§7$A§)
         {
            this.§7$A§.§;4§ = this.§!"7§.§;4§;
         }
         if(!this.§]!X§)
         {
            if(this.§&[§)
            {
               _loc1_ = getTimer();
               this.§!"7§.finishRendering(this.§,"@§);
               _loc2_ = getTimer();
               if(_loc2_ - _loc1_ > this.§@!K§)
               {
                  ++this.override;
               }
            }
            else
            {
               this.§!"7§.finishRendering(this.§,"@§);
            }
         }
      }
      
      public function set §>#n§(param1:Function) : void
      {
         this.§+#k§ = param1;
      }
      
      private function §15§(param1:Boolean = false) : void
      {
         if(param1 || this.§!@§.width != §-R§.width || this.§!@§.height != §-R§.height || this.§!@§.x != §-R§.x || this.§!@§.y != §-R§.y)
         {
            this.§!@§.setTo(§-R§.x,§-R§.y,§-R§.width,§-R§.height);
            this.§]#x§ = §-R§.intersection(new Rectangle(0,0,this.§&!h§.stageWidth,this.§&!h§.stageHeight));
            this.setCanvasSize(this.§]#x§.width,this.§]#x§.height);
            if(!this.§]!X§)
            {
               this.mStage3D.x = this.§]#x§.x;
               this.mStage3D.y = this.§]#x§.y;
               this.configureBackBuffer();
            }
            else
            {
               this.§!"7§.§9I§ = this.§]#x§.width;
               this.§!"7§.§6!"§ = this.§]#x§.height;
            }
         }
      }
      
      private function §5$2§() : void
      {
         var _loc3_:BitmapData = null;
         this.§@"=§.x = §-R§.x;
         this.§@"=§.y = §-R§.y;
         var _loc1_:int = this.§@"=§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@"=§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§&!h§.addChild(this.§@"=§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§&!h§.removeChild(this.§@"=§);
         }
         if(this.§!"7§ && this.§!"7§.canvas)
         {
            this.§!"7§.setCanvasSize(this.§2!N§,this.§8$3§,§-R§.width / this.§1!f§.stageWidth,§-R§.height / this.§1!f§.stageHeight);
            _loc3_ = this.§!"7§.canvas;
            if(this.§%!p§.bitmapData != _loc3_)
            {
               this.§%!p§.bitmapData = _loc3_;
            }
            if(this.§&!h§.getChildIndex(this.§@"=§) > 0)
            {
               this.§&!h§.removeChild(this.§@"=§);
               this.§&!h§.addChildAt(this.§@"=§,0);
            }
         }
      }
      
      private function §^U§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§1!f§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§1!f§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§1!f§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§9"j§.addChild(_loc2_);
      }
      
      public function §4"c§() : void
      {
         §!P§ = this;
      }
      
      public function start() : void
      {
         this.§+>§ = true;
         this.§]""§ = getTimer() / 1000;
         this.mStage3D.visible = this.mStage3DEnabled;
         if(this.§?";§)
         {
            this.§?";§.visible = this.mStage3DEnabled;
         }
      }
      
      public function stop() : void
      {
         this.§+>§ = false;
         this.mStage3D.visible = false;
         if(this.§?";§)
         {
            this.§?";§.visible = false;
         }
      }
      
      public function §7#F§(param1:Boolean) : void
      {
         this.§&!v§ = param1;
      }
      
      public function set §;#u§(param1:Number) : void
      {
         this.§<"M§.§;#u§ = param1;
      }
      
      private function §+$D§() : void
      {
         this.§?#§ = true;
         if(this.§%!p§ == null)
         {
            this.§%!p§ = new Bitmap();
            this.§9"j§.addChild(this.§%!p§);
         }
      }
      
      private function §&`§(param1:ErrorEvent) : void
      {
         if(param1.errorID == 3702)
         {
            this.§^U§("This application is not correctly embedded (wrong wmode value)");
         }
         else
         {
            this.§^U§("Stage3D error: " + param1.text);
         }
      }
      
      private function §^#e§(param1:flash.events.Event) : void
      {
         if(!Starling.§=!X§ && this.§,"@§)
         {
            this.stop();
            param1.stopImmediatePropagation();
            this.§^U§("Fatal error: The application lost the device context!");
         }
         else
         {
            if(!this.§['§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
            {
               this.§['§ = true;
               this.§;$9§();
               return;
            }
            ++this.§%!@§;
            this.initialize();
         }
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         if(!this.§]!X§)
         {
            if(this.§+>§)
            {
               this.nextFrame();
            }
            else
            {
               this.render();
            }
         }
      }
      
      private function §!#V§(param1:flash.events.KeyboardEvent) : void
      {
         if(!this.§+>§)
         {
            return;
         }
         this.§4"c§();
         this.§1!f§.dispatchEvent(new §<!S§.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §9"1§(param1:flash.events.Event) : void
      {
         this.§<"M§.§<"0§();
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§1!t§;
         var _loc4_:Number = param2 / this.§-$;§;
         if(§5"^§)
         {
            this.§1!f§.§^!?§ = param1;
            this.§1!f§.§@#p§ = param2;
         }
         else if(!§4"T§)
         {
            this.§1!f§.§^!?§ = this.§1!t§ * _loc3_ / _loc4_;
            this.§1!f§.§@#p§ = this.§-$;§;
         }
         else
         {
            this.§1!f§.§^!?§ = this.§1!t§;
            this.§1!f§.§@#p§ = this.§-$;§ * _loc4_ / _loc3_;
         }
         this.§1!f§.stageWidth = param1;
         this.§1!f§.stageHeight = param2;
         this.§2!N§ = param1;
         this.§8$3§ = param2;
         this.§1!f§.dispatchEvent(new §9!A§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §+![§() : void
      {
         this.setCanvasSize(this.§1!t§,this.§-$;§);
      }
      
      private function §?#=§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc9_:MouseEvent = null;
         var _loc10_:TouchEvent = null;
         if(!this.§+>§ || !this.§&!v§)
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
               this.§0L§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§0L§ = false;
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
               _loc5_ = §2w§.§@$;§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §2w§.§<#F§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §2w§.ENDED;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §2w§.§@$;§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §2w§.ENDED;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§0L§ ? §2w§.§<#F§ : §2w§.§3"X§;
         }
         if((_loc2_ < §-R§.left || _loc2_ >= §-R§.right || _loc3_ < §-R§.top || _loc3_ >= §-R§.bottom) && _loc5_ == §2w§.§@$;§)
         {
            return;
         }
         _loc2_ -= §-R§.x;
         _loc3_ -= §-R§.y;
         this.§<"M§.§&$6§(_loc4_,_loc5_,_loc2_,_loc3_,_loc6_,_loc7_,_loc8_);
      }
      
      private function get § #t§() : Array
      {
         return Mouse.supportsCursor || !§+'§ ? [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP] : [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END];
      }
      
      public function §,#§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         this.§"#Q§(param1);
         var _loc4_:Program3D;
         (_loc4_ = this.§,"@§.createProgram()).upload(param2,param3);
         this.programs[param1] = _loc4_;
      }
      
      public function §"#Q§(param1:String) : void
      {
         var _loc2_:Program3D = this.§8#j§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.programs[param1];
         }
      }
      
      public function §8#j§(param1:String) : Program3D
      {
         return this.programs[param1] as Program3D;
      }
      
      public function §&"S§(param1:String) : Boolean
      {
         return param1 in this.programs;
      }
      
      private function get programs() : Dictionary
      {
         return this.§8#U§[§9!L§];
      }
      
      public function get §="r§() : Boolean
      {
         return this.§+>§;
      }
      
      public function get §`"E§() : §+#n§
      {
         return this.§9v§;
      }
      
      public function get context() : Context3D
      {
         return this.§,"@§;
      }
      
      public function get §8#U§() : Dictionary
      {
         return §#$§[this.mStage3D] as Dictionary;
      }
      
      public function get §+#8§() : Boolean
      {
         return this.§0T§;
      }
      
      public function set §+#8§(param1:Boolean) : void
      {
         this.§0T§ = param1;
         if(this.§,"@§)
         {
            this.§<"M§.§+#8§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§'"X§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§'"X§ = param1;
         if(this.§,"@§)
         {
            this.§,"@§.enableErrorChecking = param1;
         }
      }
      
      public function get §>$3§() : int
      {
         if(!this.§>#5§)
         {
            return this.§5q§;
         }
         return 0;
      }
      
      public function set §>$3§(param1:int) : void
      {
         if(this.§>$3§ != param1)
         {
            this.§5q§ = param1;
            if(§?$7§)
            {
               this.§15§(true);
            }
         }
      }
      
      private function configureBackBuffer() : void
      {
         var error:int = 0;
         try
         {
            this.§!"7§.configureBackBuffer(this.§]#x§.width,this.§]#x§.height,this.§>$3§,false);
            §3$;§ = false;
         }
         catch(e:Error)
         {
            error = 1;
         }
      }
      
      public function get §!"&§() : Number
      {
         return 1;
      }
      
      public function get §9"j§() : Sprite
      {
         return this.§@"=§;
      }
      
      public function get §0!w§() : Boolean
      {
         return this.§7$A§ && this.§7$A§.parent;
      }
      
      public function set §0!w§(param1:Boolean) : void
      {
         if(param1 == this.§0!w§)
         {
            return;
         }
         if(param1)
         {
            if(this.§7$A§)
            {
               this.§1!f§.addChild(this.§7$A§);
            }
            else
            {
               this.showStatsAt();
            }
         }
         else
         {
            this.§7$A§.removeFromParent();
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
            removeEventListener(Event.§7"5§,onRootCreated);
         };
         if(this.§,"@§ == null)
         {
            addEventListener(§<!S§.Event.§7"5§,onRootCreated);
         }
         else
         {
            if(this.§7$A§ == null)
            {
               this.§7$A§ = new §9O§();
               this.§7$A§.§^"$§ = false;
               this.§1!f§.addChild(this.§7$A§);
            }
            stageWidth = this.§1!f§.stageWidth;
            stageHeight = this.§1!f§.stageHeight;
            this.§7$A§.scaleX = this.§7$A§.scaleY = scale;
            if(hAlign == §["Z§.LEFT)
            {
               this.§7$A§.x = 0;
            }
            else if(hAlign == §["Z§.RIGHT)
            {
               this.§7$A§.x = stageWidth - this.§7$A§.width;
            }
            else
            {
               this.§7$A§.x = int((stageWidth - this.§7$A§.width) / 2);
            }
            if(vAlign == §=#?§.TOP)
            {
               this.§7$A§.y = 0;
            }
            else if(vAlign == §=#?§.BOTTOM)
            {
               this.§7$A§.y = stageHeight - this.§7$A§.height;
            }
            else
            {
               this.§7$A§.y = int((stageHeight - this.§7$A§.height) / 2);
            }
         }
      }
      
      public function get stage() : §#Z§.Stage
      {
         return this.§1!f§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §3#r§() : flash.display.Stage
      {
         return this.§&!h§;
      }
      
      public function get root() : §#Z§.DisplayObject
      {
         return this.§?";§;
      }
      
      public function get §<#4§() : Boolean
      {
         return this.§]!X§;
      }
      
      public function set §<#4§(param1:Boolean) : void
      {
         this.§]!X§ = param1;
      }
      
      public function get profile() : String
      {
         return this.§-#_§;
      }
      
      public function get §`r§() : Boolean
      {
         return this.§[!G§;
      }
   }
}
