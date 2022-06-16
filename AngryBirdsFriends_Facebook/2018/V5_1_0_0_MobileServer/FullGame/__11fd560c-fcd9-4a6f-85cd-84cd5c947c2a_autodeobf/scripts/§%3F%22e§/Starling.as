package §?"e§
{
   import §&!2§.§,$&§;
   import §5!D§.§&!$§;
   import §5!D§.§=!G§;
   import §5#m§.§6a§;
   import §5#m§.§;!p§;
   import §5#m§.Event;
   import §5#m§.EventDispatcher;
   import §5#m§.KeyboardEvent;
   import §9$;§.Texture;
   import §^"S§.DisplayObject;
   import §^"S§.Stage;
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
      
      private static const §##O§:String = "Starling.programs";
      
      private static var §%!7§:Rectangle;
      
      private static var §^!l§:Boolean = true;
      
      private static var §,$+§:Boolean = false;
      
      private static var §2#g§:Boolean;
      
      private static var §;!y§:Starling;
      
      private static var §-#5§:Boolean;
      
      private static var §1!k§:Dictionary = new Dictionary(true);
      
      private static var §`#i§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §!#^§:§^"S§.Stage;
      
      private var §`#F§:Class;
      
      private var §#$0§:§^"S§.DisplayObject;
      
      private var §&#6§:§,$&§;
      
      private var §9!u§:Boolean;
      
      private var §&#G§:Boolean;
      
      private var §>#P§:§[!Z§;
      
      private var §7B§:§;"X§;
      
      private var §>6§:int;
      
      private var §-F§:Boolean;
      
      private var §&#R§:Boolean;
      
      private var §3#6§:Number;
      
      private var §5#2§:Boolean;
      
      private var §+#U§:§;$4§;
      
      private var §]"x§:Boolean;
      
      private var §1#v§:String;
      
      private var §8"W§:Context3D;
      
      private var §7#n§:Rectangle;
      
      private var §^1§:Rectangle;
      
      private var §=!W§:flash.display.Stage;
      
      private var §#$2§:Sprite;
      
      private var §@C§:int;
      
      private var §7!Y§:Boolean;
      
      private var §%""§:Boolean = true;
      
      private var §>"'§:Number;
      
      private var §'H§:Number;
      
      private var §[#M§:Number;
      
      private var §'#=§:Number;
      
      private var §#"#§:Number;
      
      private var §<V§:Number;
      
      private var §5N§:Function;
      
      private var § !J§:uint;
      
      private var §84§:String;
      
      private var §%"7§:Bitmap;
      
      private var §7#b§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §3"B§:Boolean = false;
      
      private var §,"2§:Boolean = false;
      
      private var §<Z§:Boolean = false;
      
      private var §9"+§:Number = 25.0;
      
      private var §%$=§:int = 0;
      
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
         this.§>"'§ = param3.width;
         this.§'H§ = param3.height;
         this.§[#M§ = this.§>"'§;
         this.§'#=§ = this.§'H§;
         this.§#"#§ = param2.stageWidth;
         this.§<V§ = param2.stageHeight;
         §7#'§ = true;
         this.§1$'§();
         this.§`#F§ = param1;
         §%!7§ = param3;
         this.§7#n§ = new Rectangle();
         this.mStage3D = param4;
         this.§!#^§ = new §^"S§.Stage(param3.width,param3.height,param2.color);
         this.§#$2§ = new Sprite();
         this.§=!W§ = param2;
         this.§=!W§.addChild(this.§#$2§);
         this.§7B§ = new §;"X§(this.§!#^§);
         this.§&#6§ = new §,$&§();
         this.§>6§ = 0;
         this.§-F§ = false;
         this.§&#R§ = false;
         this.§1#v§ = param6;
         this.§3#6§ = getTimer() / 1000;
         §1!k§[param4] = new Dictionary();
         §1!k§[param4][§##O§] = new Dictionary();
         param2.scaleMode = StageScaleMode.NO_SCALE;
         param2.align = StageAlign.TOP_LEFT;
         for each(_loc7_ in this.§%$$§)
         {
            param2.addEventListener(_loc7_,this.§>"W§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%#i§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%#i§,false,0,true);
         param2.addEventListener(flash.events.Event.MOUSE_LEAVE,this.§8$'§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!G§,false,10,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§##9§,false,10,true);
         this.mStage3D.visible = false;
         this.§1"-§(true);
         this.§ !J§ = param2.color;
         this.§84§ = param5;
         if(this.mStage3D.context3D && this.mStage3D.context3D.driverInfo != "Disposed")
         {
            this.§]"x§ = true;
            setTimeout(this.initialize,1);
         }
         else
         {
            this.§]"x§ = false;
         }
      }
      
      public static function get §`"J§() : Boolean
      {
         if(§@#K§)
         {
            return §@#K§.§7!Y§;
         }
         return true;
      }
      
      public static function §1#H§() : Boolean
      {
         return §;!y§ && (§;!y§.§7#b§ || §;!y§.§8"W§ != null && §;!y§.§8"W§.driverInfo != "Disposed");
      }
      
      public static function get §2!&§() : Boolean
      {
         return §1#H§();
      }
      
      public static function get §="$§() : Rectangle
      {
         return §%!7§.clone();
      }
      
      public static function set §="$§(param1:Rectangle) : void
      {
         §%!7§ = param1.clone();
         §2#g§ = true;
      }
      
      public static function set § !n§(param1:Boolean) : void
      {
         §,$+§ = param1;
      }
      
      public static function get § !n§() : Boolean
      {
         return §,$+§;
      }
      
      public static function set §'!w§(param1:Boolean) : void
      {
         §^!l§ = param1;
      }
      
      public static function get §'!w§() : Boolean
      {
         return §^!l§;
      }
      
      public static function get §@#K§() : Starling
      {
         return §;!y§;
      }
      
      public static function get context() : Context3D
      {
         return !!§;!y§ ? §;!y§.context : null;
      }
      
      public static function get §%!&§() : §,$&§
      {
         return !!§;!y§ ? §;!y§.§%!&§ : null;
      }
      
      public static function get §8#i§() : Number
      {
         return !!§;!y§ ? Number(§;!y§.§8#i§) : Number(1);
      }
      
      public static function get §#"p§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §#"p§(param1:Boolean) : void
      {
         if(§;!y§)
         {
            throw new IllegalOperationError("\'multitouchEnabled\' must be set before Starling instance is created");
         }
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §7#'§() : Boolean
      {
         return §-#5§;
      }
      
      public static function set §7#'§(param1:Boolean) : void
      {
         if(§;!y§)
         {
            throw new IllegalOperationError("\'handleLostContext\' must be set before Starling instance is created");
         }
         §-#5§ = param1;
      }
      
      public static function §8T§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1) : Texture
      {
         if(§@#K§)
         {
            return Texture.§1!b§(§@#K§.§8"W§,param1,param2,param3,param4);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§;!y§.§8"W§)
         {
            §;!y§.§8"W§.drawToBitmapData(param1);
         }
         else if(§;!y§.§>#P§.canvas)
         {
            _loc2_ = §;!y§.§>#P§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §1!P§() : §^"S§.DisplayObject
      {
         return this.§#$0§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§ !J§ = param1;
      }
      
      public function set §8"l§(param1:Boolean) : void
      {
         if(!this.§<Z§ && param1)
         {
            this.§%$=§ = 0;
         }
         this.§<Z§ = param1;
      }
      
      public function get §8"l§() : Boolean
      {
         return this.§<Z§;
      }
      
      public function set §8$%§(param1:Number) : void
      {
         this.§9"+§ = param1;
      }
      
      public function get §8$%§() : Number
      {
         return this.§9"+§;
      }
      
      public function get §;#7§() : int
      {
         return this.§%$=§;
      }
      
      public function get §[m§() : Number
      {
         return this.§>"'§;
      }
      
      public function get §6!r§() : Number
      {
         return this.§'H§;
      }
      
      public function §'N§() : void
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
               profile = !!this.§,"2§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§84§,profile);
            }
            else
            {
               requestContext3D(this.§84§);
            }
         }
         catch(e:Error)
         {
            §5,§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         this.stop();
         this.§3"B§ = true;
         this.§=!W§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%#i§,false);
         this.§=!W§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%#i§,false);
         this.§=!W§.removeEventListener(flash.events.Event.MOUSE_LEAVE,this.§8$'§,false);
         this.§=!W§.removeChild(this.§#$2§);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!G§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§##9§,false);
         for each(_loc1_ in this.§%$$§)
         {
            this.§=!W§.removeEventListener(_loc1_,this.§>"W§,false);
         }
         if(this.§!#^§)
         {
            this.§!#^§.dispose();
         }
         if(this.§>#P§)
         {
            this.§>#P§.dispose();
         }
         if(this.§7B§)
         {
            this.§7B§.dispose();
         }
         if(this.§8"W§ && !this.§]"x§)
         {
            this.§8"W§.dispose();
         }
         if(§;!y§ == this)
         {
            §;!y§ = null;
         }
         if(this.§%"7§ && this.§%"7§.bitmapData)
         {
            this.§%"7§.bitmapData.dispose();
            this.§%"7§.bitmapData = null;
         }
      }
      
      private function initialize() : void
      {
         this.§1$'§();
         this.§+"E§();
         this.§`I§();
         this.§7B§.§;#%§ = this.§-F§;
         this.§3#6§ = getTimer() / 1000;
      }
      
      private function §+"E§() : void
      {
         this.§8"W§ = this.mStage3D.context3D;
         this.§8"W§.setDepthTest(false,Context3DCompareMode.ALWAYS);
         this.§8"W§.setCulling(Context3DTriangleFace.NONE);
         if(!this.§%""§ && this.§8"W§ && this.§7!Y§)
         {
            this.mStage3DEnabled = false;
            this.§8"W§ = null;
            this.§+"`§();
         }
         if(this.§8"W§)
         {
            this.§>#P§ = new §[!Z§();
         }
         else
         {
            this.§>#P§ = new §2!9§();
            this.§>#P§.setCanvasSize(this.§[#M§,this.§'#=§,§%!7§.width / this.§!#^§.stageWidth,§%!7§.height / this.§!#^§.stageHeight);
            this.§>#P§.clear(null,this.§ !J§);
         }
         if(this.§8"W§)
         {
            this.§8"W§.enableErrorChecking = this.§&#R§;
            if(this.§8"W§.driverInfo.indexOf("Software") >= 0)
            {
               this.§7!Y§ = true;
            }
         }
         this.§&!#§[§##O§] = new Dictionary();
         this.§<#6§(true);
         §89§(§5#m§.Event.CONTEXT3D_CREATE,false,this.§8"W§);
      }
      
      private function §`I§() : void
      {
         if(this.§#$0§ == null)
         {
            this.§#$0§ = new this.§`#F§() as §^"S§.DisplayObject;
            if(this.§#$0§ == null)
            {
               throw new Error("Invalid root class: " + this.§`#F§);
            }
            this.§!#^§.addChildAt(this.§#$0§,0);
            §89§(§5#m§.Event.§'"'§,false,this.§#$0§);
         }
      }
      
      public function nextFrame() : void
      {
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§3#6§;
         this.§3#6§ = _loc1_;
         this.§'#F§(_loc2_);
         this.render();
      }
      
      public function §'#F§(param1:Number) : void
      {
         this.§1$'§();
         this.§7B§.§'#F§(param1);
         this.§!#^§.§'#F§(param1);
         this.§&#6§.§'#F§(param1);
      }
      
      public function render() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(!§2!&§)
         {
            return;
         }
         this.§1$'§();
         this.§<#6§();
         this.§ "c§();
         this.§>#P§.nextFrame();
         if(!this.§]"x§)
         {
            §[!Z§.clear(this.§8"W§,this.§ !J§,1);
         }
         this.§>#P§.§^p§(this.§8"W§,this.§@C§);
         this.§>#P§.§5<§ = null;
         this.§>#P§.§3";§(0,0,this.§!#^§.§0!§,this.§!#^§.§53§);
         this.§!#^§.render(this.§>#P§,1);
         this.§>#P§.§>#s§();
         if(this.§5N§ != null)
         {
            this.§5N§();
            this.§5N§ = null;
         }
         if(this.§+#U§)
         {
            this.§+#U§.§<D§ = this.§>#P§.§<D§;
         }
         if(!this.§]"x§)
         {
            if(this.§<Z§)
            {
               _loc1_ = getTimer();
               this.§>#P§.finishRendering(this.§8"W§);
               _loc2_ = getTimer();
               if(_loc2_ - _loc1_ > this.§9"+§)
               {
                  ++this.§%$=§;
               }
            }
            else
            {
               this.§>#P§.finishRendering(this.§8"W§);
            }
         }
      }
      
      public function set §4$<§(param1:Function) : void
      {
         this.§5N§ = param1;
      }
      
      private function §<#6§(param1:Boolean = false) : void
      {
         if(param1 || this.§7#n§.width != §%!7§.width || this.§7#n§.height != §%!7§.height || this.§7#n§.x != §%!7§.x || this.§7#n§.y != §%!7§.y)
         {
            this.§7#n§.setTo(§%!7§.x,§%!7§.y,§%!7§.width,§%!7§.height);
            this.§^1§ = §%!7§.intersection(new Rectangle(0,0,this.§=!W§.stageWidth,this.§=!W§.stageHeight));
            this.setCanvasSize(this.§^1§.width,this.§^1§.height);
            if(!this.§]"x§)
            {
               this.mStage3D.x = this.§^1§.x;
               this.mStage3D.y = this.§^1§.y;
               this.configureBackBuffer();
            }
            else
            {
               this.§>#P§.§?D§ = this.§^1§.width;
               this.§>#P§.§<"M§ = this.§^1§.height;
            }
         }
      }
      
      private function § "c§() : void
      {
         var _loc3_:BitmapData = null;
         this.§#$2§.x = §%!7§.x;
         this.§#$2§.y = §%!7§.y;
         var _loc1_:int = this.§#$2§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§#$2§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§=!W§.addChild(this.§#$2§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§=!W§.removeChild(this.§#$2§);
         }
         if(this.§>#P§ && this.§>#P§.canvas)
         {
            this.§>#P§.setCanvasSize(this.§[#M§,this.§'#=§,§%!7§.width / this.§!#^§.stageWidth,§%!7§.height / this.§!#^§.stageHeight);
            _loc3_ = this.§>#P§.canvas;
            if(this.§%"7§.bitmapData != _loc3_)
            {
               this.§%"7§.bitmapData = _loc3_;
            }
            if(this.§=!W§.getChildIndex(this.§#$2§) > 0)
            {
               this.§=!W§.removeChild(this.§#$2§);
               this.§=!W§.addChildAt(this.§#$2§,0);
            }
         }
      }
      
      private function §5,§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§!#^§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§!#^§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§!#^§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§=">§.addChild(_loc2_);
      }
      
      public function §1$'§() : void
      {
         §;!y§ = this;
      }
      
      public function start() : void
      {
         this.§9!u§ = true;
         this.§3#6§ = getTimer() / 1000;
         this.mStage3D.visible = this.mStage3DEnabled;
         if(this.§#$0§)
         {
            this.§#$0§.visible = this.mStage3DEnabled;
         }
      }
      
      public function stop() : void
      {
         this.§9!u§ = false;
         this.mStage3D.visible = false;
         if(this.§#$0§)
         {
            this.§#$0§.visible = false;
         }
      }
      
      public function §1"-§(param1:Boolean) : void
      {
         this.§&#G§ = param1;
      }
      
      public function set §`#w§(param1:Number) : void
      {
         this.§7B§.§`#w§ = param1;
      }
      
      private function §+"`§() : void
      {
         this.§7#b§ = true;
         if(this.§%"7§ == null)
         {
            this.§%"7§ = new Bitmap();
            this.§=">§.addChild(this.§%"7§);
         }
      }
      
      private function §##9§(param1:ErrorEvent) : void
      {
         if(param1.errorID == 3702)
         {
            this.§5,§("This application is not correctly embedded (wrong wmode value)");
         }
         else
         {
            this.§5,§("Stage3D error: " + param1.text);
         }
      }
      
      private function §!G§(param1:flash.events.Event) : void
      {
         if(!Starling.§7#'§ && this.§8"W§)
         {
            this.stop();
            param1.stopImmediatePropagation();
            this.§5,§("Fatal error: The application lost the device context!");
         }
         else
         {
            if(!this.§,"2§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
            {
               this.§,"2§ = true;
               this.§'N§();
               return;
            }
            ++this.§@C§;
            this.initialize();
         }
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         if(!this.§]"x§)
         {
            if(this.§9!u§)
            {
               this.nextFrame();
            }
            else
            {
               this.render();
            }
         }
      }
      
      private function §%#i§(param1:flash.events.KeyboardEvent) : void
      {
         if(!this.§9!u§)
         {
            return;
         }
         this.§1$'§();
         this.§!#^§.dispatchEvent(new §5#m§.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §8$'§(param1:flash.events.Event) : void
      {
         this.§7B§.§4#E§();
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§>"'§;
         var _loc4_:Number = param2 / this.§'H§;
         if(§ !n§)
         {
            this.§!#^§.§0!§ = param1;
            this.§!#^§.§53§ = param2;
         }
         else if(!§'!w§)
         {
            this.§!#^§.§0!§ = this.§>"'§ * _loc3_ / _loc4_;
            this.§!#^§.§53§ = this.§'H§;
         }
         else
         {
            this.§!#^§.§0!§ = this.§>"'§;
            this.§!#^§.§53§ = this.§'H§ * _loc4_ / _loc3_;
         }
         this.§!#^§.stageWidth = param1;
         this.§!#^§.stageHeight = param2;
         this.§[#M§ = param1;
         this.§'#=§ = param2;
         this.§!#^§.dispatchEvent(new §;!p§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §3#8§() : void
      {
         this.setCanvasSize(this.§>"'§,this.§'H§);
      }
      
      private function §>"W§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc9_:MouseEvent = null;
         var _loc10_:TouchEvent = null;
         if(!this.§9!u§ || !this.§&#G§)
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
               this.§5#2§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§5#2§ = false;
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
               _loc5_ = §6a§.§+#Q§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §6a§.§7#k§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §6a§.§5#L§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §6a§.§+#Q§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §6a§.§5#L§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§5#2§ ? §6a§.§7#k§ : §6a§.§-#B§;
         }
         if((_loc2_ < §%!7§.left || _loc2_ >= §%!7§.right || _loc3_ < §%!7§.top || _loc3_ >= §%!7§.bottom) && _loc5_ == §6a§.§+#Q§)
         {
            return;
         }
         _loc2_ -= §%!7§.x;
         _loc3_ -= §%!7§.y;
         this.§7B§.§[#1§(_loc4_,_loc5_,_loc2_,_loc3_,_loc6_,_loc7_,_loc8_);
      }
      
      private function get §%$$§() : Array
      {
         return Mouse.supportsCursor || !§#"p§ ? [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP] : [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END];
      }
      
      public function §;F§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         this.§9#?§(param1);
         var _loc4_:Program3D;
         (_loc4_ = this.§8"W§.createProgram()).upload(param2,param3);
         this.programs[param1] = _loc4_;
      }
      
      public function §9#?§(param1:String) : void
      {
         var _loc2_:Program3D = this.§"#F§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.programs[param1];
         }
      }
      
      public function §"#F§(param1:String) : Program3D
      {
         return this.programs[param1] as Program3D;
      }
      
      public function §`!b§(param1:String) : Boolean
      {
         return param1 in this.programs;
      }
      
      private function get programs() : Dictionary
      {
         return this.§&!#§[§##O§];
      }
      
      public function get §?"J§() : Boolean
      {
         return this.§9!u§;
      }
      
      public function get §%!&§() : §,$&§
      {
         return this.§&#6§;
      }
      
      public function get context() : Context3D
      {
         return this.§8"W§;
      }
      
      public function get §&!#§() : Dictionary
      {
         return §1!k§[this.mStage3D] as Dictionary;
      }
      
      public function get §;#%§() : Boolean
      {
         return this.§-F§;
      }
      
      public function set §;#%§(param1:Boolean) : void
      {
         this.§-F§ = param1;
         if(this.§8"W§)
         {
            this.§7B§.§;#%§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§&#R§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§&#R§ = param1;
         if(this.§8"W§)
         {
            this.§8"W§.enableErrorChecking = param1;
         }
      }
      
      public function get §;!+§() : int
      {
         if(!this.§7!Y§)
         {
            return this.§>6§;
         }
         return 0;
      }
      
      public function set §;!+§(param1:int) : void
      {
         if(this.§;!+§ != param1)
         {
            this.§>6§ = param1;
            if(§2!&§)
            {
               this.§<#6§(true);
            }
         }
      }
      
      private function configureBackBuffer() : void
      {
         var error:int = 0;
         try
         {
            this.§>#P§.configureBackBuffer(this.§^1§.width,this.§^1§.height,this.§;!+§,false);
            §2#g§ = false;
         }
         catch(e:Error)
         {
            error = 1;
         }
      }
      
      public function get §8#i§() : Number
      {
         return 1;
      }
      
      public function get §=">§() : Sprite
      {
         return this.§#$2§;
      }
      
      public function get §7"Z§() : Boolean
      {
         return this.§+#U§ && this.§+#U§.parent;
      }
      
      public function set §7"Z§(param1:Boolean) : void
      {
         if(param1 == this.§7"Z§)
         {
            return;
         }
         if(param1)
         {
            if(this.§+#U§)
            {
               this.§!#^§.addChild(this.§+#U§);
            }
            else
            {
               this.showStatsAt();
            }
         }
         else
         {
            this.§+#U§.removeFromParent();
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
            removeEventListener(Event.§'"'§,onRootCreated);
         };
         if(this.§8"W§ == null)
         {
            addEventListener(§5#m§.Event.§'"'§,onRootCreated);
         }
         else
         {
            if(this.§+#U§ == null)
            {
               this.§+#U§ = new §;$4§();
               this.§+#U§.§?C§ = false;
               this.§!#^§.addChild(this.§+#U§);
            }
            stageWidth = this.§!#^§.stageWidth;
            stageHeight = this.§!#^§.stageHeight;
            this.§+#U§.scaleX = this.§+#U§.scaleY = scale;
            if(hAlign == §=!G§.LEFT)
            {
               this.§+#U§.x = 0;
            }
            else if(hAlign == §=!G§.RIGHT)
            {
               this.§+#U§.x = stageWidth - this.§+#U§.width;
            }
            else
            {
               this.§+#U§.x = int((stageWidth - this.§+#U§.width) / 2);
            }
            if(vAlign == §&!$§.TOP)
            {
               this.§+#U§.y = 0;
            }
            else if(vAlign == §&!$§.BOTTOM)
            {
               this.§+#U§.y = stageHeight - this.§+#U§.height;
            }
            else
            {
               this.§+#U§.y = int((stageHeight - this.§+#U§.height) / 2);
            }
         }
      }
      
      public function get stage() : §^"S§.Stage
      {
         return this.§!#^§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §8!"§() : flash.display.Stage
      {
         return this.§=!W§;
      }
      
      public function get root() : §^"S§.DisplayObject
      {
         return this.§#$0§;
      }
      
      public function get §'C§() : Boolean
      {
         return this.§]"x§;
      }
      
      public function set §'C§(param1:Boolean) : void
      {
         this.§]"x§ = param1;
      }
      
      public function get profile() : String
      {
         return this.§1#v§;
      }
   }
}
