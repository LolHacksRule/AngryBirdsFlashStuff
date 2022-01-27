package § "-§
{
   import §&"s§.Texture;
   import §[a§.§-"I§;
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
   import starling.events.§%+§;
   import starling.events.§0l§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§][§;
   import §use§.DisplayObject;
   import §use§.Stage;
   
   public class §6!R§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §3!`§:Rectangle;
      
      private static var §#"=§:Boolean = true;
      
      private static var §"#3§:Boolean;
      
      private static var §+C§:§6!R§;
      
      private static var §=T§:Boolean;
      
      private static var §'"3§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §`6§:§use§.Stage;
      
      private var §<t§:Class;
      
      private var §1!o§:§use§.DisplayObject;
      
      private var §,"y§:§-"I§;
      
      private var §+#'§:Boolean;
      
      private var §';§:Boolean;
      
      private var §+!U§:§"!_§;
      
      private var §]"e§:§%+§;
      
      private var §4,§:int;
      
      private var §7!r§:Boolean;
      
      private var §?#3§:Boolean;
      
      private var §`!j§:Number;
      
      private var §1,§:Boolean;
      
      private var §<"9§:flash.display.Stage;
      
      private var §?%§:Sprite;
      
      private var §&!9§:Context3D;
      
      private var §='§:Dictionary;
      
      private var §," §:int;
      
      private var §8"o§:Boolean;
      
      private var §2"&§:Number;
      
      private var §5!P§:Number;
      
      private var §!#4§:Number;
      
      private var §4"J§:Number;
      
      private var §<!W§:Number;
      
      private var §%!]§:Number;
      
      private var §`"<§:Function;
      
      private var §+A§:uint;
      
      private var §2!%§:String;
      
      private var §7!2§:Bitmap;
      
      private var §@##§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §+Y§:Boolean = false;
      
      private var §?=§:Boolean = false;
      
      public function §6!R§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§2"&§ = param3.width;
         this.§5!P§ = param3.height;
         this.§!#4§ = this.§2"&§;
         this.§4"J§ = this.§5!P§;
         this.§<!W§ = param2.stageWidth;
         this.§%!]§ = param2.stageHeight;
         §?8§ = true;
         this.§!"t§();
         this.§<t§ = param1;
         §3!`§ = param3;
         this.mStage3D = param4;
         this.§`6§ = new §use§.Stage(param3.width,param3.height,param2.color);
         this.§<"9§ = param2;
         this.§]"e§ = new §%+§(this.§`6§);
         this.§,"y§ = new §-"I§();
         this.§4,§ = 0;
         this.§7!r§ = false;
         this.§?#3§ = false;
         this.§`!j§ = getTimer() / 1000;
         this.§='§ = new Dictionary();
         for each(_loc6_ in this.§4!>§)
         {
            param2.addEventListener(_loc6_,this.§3"+§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!"s§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!"s§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&"O§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§!"S§,false,1,true);
         this.mStage3D.visible = false;
         this.§%#3§(true);
         this.§+A§ = param2.color;
         this.§2!%§ = param5;
      }
      
      public static function get §%!f§() : Boolean
      {
         if(§+!d§)
         {
            return §+!d§.§8"o§;
         }
         return true;
      }
      
      public static function §^!j§() : Boolean
      {
         §§push(Boolean(§+C§));
         if(Boolean(§+C§))
         {
            §§pop();
            §§push(Boolean(§+C§.§@##§));
            if(!Boolean(§+C§.§@##§))
            {
               §§pop();
               return §+C§.§&!9§ != null && §+C§.§&!9§.driverInfo != "Disposed";
            }
         }
         §§goto(addr27);
      }
      
      private static function §-_§() : void
      {
         §"#3§ = true;
      }
      
      public static function get §8t§() : Rectangle
      {
         return §3!`§.clone();
      }
      
      public static function set §8t§(param1:Rectangle) : void
      {
         §3!`§ = param1.clone();
         §-_§();
      }
      
      public static function set §`#6§(param1:Boolean) : void
      {
         §#"=§ = param1;
      }
      
      public static function get §`#6§() : Boolean
      {
         return §#"=§;
      }
      
      public static function get §+!d§() : §6!R§
      {
         return §+C§;
      }
      
      public static function get §6!V§() : §-"I§
      {
         return !!§+C§ ? §+C§.§6!V§ : null;
      }
      
      public static function get §1#6§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §1#6§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §?8§() : Boolean
      {
         return §=T§;
      }
      
      public static function set §?8§(param1:Boolean) : void
      {
         if(§+C§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §=T§ = param1;
      }
      
      public static function §8C§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1.0) : Texture
      {
         if(§+!d§)
         {
            return Texture.§?!]§(§+!d§.§&!9§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§+C§.§&!9§)
         {
            §+C§.§&!9§.drawToBitmapData(param1);
         }
         else if(§+C§.§+!U§.canvas)
         {
            _loc2_ = §+C§.§+!U§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §9"-§() : §use§.DisplayObject
      {
         return this.§1!o§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§+A§ = param1;
      }
      
      public function get §2c§() : Number
      {
         return this.§2"&§;
      }
      
      public function get §8!b§() : Number
      {
         return this.§5!P§;
      }
      
      public function §9!`§() : void
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
               profile = !!this.§?=§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§2!%§,profile);
            }
            else
            {
               requestContext3D(this.§2!%§);
            }
         }
         catch(e:Error)
         {
            §2"M§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§+Y§ = true;
         this.§<"9§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!"s§,false);
         this.§<"9§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!"s§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&"O§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§!"S§,false);
         for each(_loc1_ in this.§4!>§)
         {
            this.§<"9§.removeEventListener(_loc1_,this.§3"+§,false);
         }
         for each(_loc2_ in this.§='§)
         {
            _loc2_.dispose();
         }
         if(this.§&!9§)
         {
            this.§&!9§.dispose();
         }
         if(this.§]"e§)
         {
            this.§]"e§.dispose();
         }
         if(this.§+!U§)
         {
            this.§+!U§.dispose();
         }
         if(§+C§ == this)
         {
            §+C§ = null;
         }
         if(this.§7!2§ && this.§7!2§.bitmapData)
         {
            this.§7!2§.bitmapData.dispose();
            this.§7!2§.bitmapData = null;
         }
      }
      
      private function §;#+§() : void
      {
         this.§&!9§ = this.mStage3D.context3D;
         this.§='§ = new Dictionary();
         if(this.§&!9§)
         {
            this.§&!9§.enableErrorChecking = this.§?#3§;
            if(this.§&!9§.driverInfo.indexOf("Software") >= 0)
            {
               this.§8"o§ = true;
            }
         }
         else
         {
            this.§8"o§ = true;
         }
         §-_§();
      }
      
      private function §;"h§() : void
      {
         if(this.§`6§.numChildren > 0)
         {
            return;
         }
         if(this.§1!o§ == null)
         {
            this.§1!o§ = new this.§<t§();
         }
         if(this.§1!o§ == null)
         {
            throw new Error("Invalid root class: " + this.§<t§);
         }
         this.§`6§.addChild(this.§1!o§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§&!9§.configureBackBuffer(§3!`§.width,§3!`§.height,this.§4,§,false);
            §"#3§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§^!j§())
         {
            return;
         }
         if(§"#3§)
         {
            if(this.§&!9§)
            {
               this.mStage3D.x = §3!`§.x;
               this.mStage3D.y = §3!`§.y;
               this.configureBackBuffer();
               if(§"#3§)
               {
                  return;
               }
               this.setCanvasSize(§3!`§.width,§3!`§.height);
            }
            else if(this.§7!2§)
            {
               §"#3§ = false;
               this.setCanvasSize(§3!`§.width,§3!`§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§`!j§;
         this.§`!j§ = _loc1_;
         this.§`6§.advanceTime(_loc2_);
         this.§,"y§.advanceTime(_loc2_);
         this.§]"e§.advanceTime(_loc2_);
         this.§+!U§.§#"<§(this.§`6§.stageWidth,this.§`6§.stageHeight);
         this.§+!U§.clear(this.§&!9§,this.§+A§,1);
         this.§+!U§.§4O§(this.§&!9§,this.§," §);
         this.§`6§.render(this.§+!U§,1);
         this.§+!U§.§5"=§();
         if(this.§`"<§ != null)
         {
            this.§`"<§();
            this.§`"<§ = null;
         }
         this.§+!U§.finishRendering(this.§&!9§);
         this.§+!U§.nextFrame();
      }
      
      public function set §0C§(param1:Function) : void
      {
         this.§`"<§ = param1;
      }
      
      private function §6""§() : void
      {
         var _loc3_:BitmapData = null;
         this.§?%§.x = §3!`§.x;
         this.§?%§.y = §3!`§.y;
         var _loc1_:int = this.§?%§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§?%§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§<"9§.addChild(this.§?%§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§<"9§.removeChild(this.§?%§);
         }
         if(this.§+!U§ && this.§+!U§.canvas)
         {
            this.§+!U§.setCanvasSize(this.§!#4§,this.§4"J§,§3!`§.width / this.§`6§.stageWidth,§3!`§.height / this.§`6§.stageHeight);
            _loc3_ = this.§+!U§.canvas;
            if(this.§7!2§.bitmapData != _loc3_)
            {
               this.§7!2§.bitmapData = _loc3_;
            }
            if(this.§<"9§.getChildIndex(this.§?%§) > 0)
            {
               this.§<"9§.removeChild(this.§?%§);
               this.§<"9§.addChildAt(this.§?%§,0);
            }
         }
      }
      
      private function §2"M§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§`6§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§`6§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§`6§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§3I§.addChild(_loc2_);
      }
      
      public function §!"t§() : void
      {
         §+C§ = this;
      }
      
      public function start() : void
      {
         this.§+#'§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§+#'§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §%#3§(param1:Boolean) : void
      {
         this.§';§ = param1;
      }
      
      private function §0"h§() : void
      {
         this.§@##§ = true;
         if(this.§7!2§ == null)
         {
            this.§7!2§ = new Bitmap();
            this.§3I§.addChild(this.§7!2§);
         }
      }
      
      private function §!"S§(param1:ErrorEvent) : void
      {
         this.§0"h§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §&"O§(param1:flash.events.Event) : void
      {
         if(this.§+Y§)
         {
            return;
         }
         if(!this.§?=§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
         {
            this.§?=§ = true;
            this.§9!`§();
            return;
         }
         ++§'"3§;
         this.§," § = §'"3§;
         if(this.§+!U§)
         {
            this.§+!U§.dispose();
         }
         if(!§6!R§.§?8§ && this.§&!9§)
         {
            this.§2"M§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§!"t§();
         this.§;#+§();
         this.§;"h§();
         if(this.§&!9§ && this.§8"o§)
         {
            this.mStage3DEnabled = false;
            this.§&!9§ = null;
            this.§0"h§();
         }
         if(this.§&!9§)
         {
            this.§+!U§ = new §"!_§();
         }
         else
         {
            this.§+!U§ = new §+" §();
            this.§+!U§.setCanvasSize(this.§!#4§,this.§4"J§,§3!`§.width / this.§`6§.stageWidth,§3!`§.height / this.§`6§.stageHeight);
            this.§+!U§.clear(null,this.§+A§);
         }
         this.§]"e§.§^!3§ = this.§7!r§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§!"t§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§`!j§;
         if(this.§+#'§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§?%§)
         {
            this.§6""§();
         }
      }
      
      private function §!"s§(param1:flash.events.KeyboardEvent) : void
      {
         this.§!"t§();
         this.§`6§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§2"&§;
         var _loc4_:Number = param2 / this.§5!P§;
         if(!§`#6§)
         {
            this.§`6§.stageWidth = this.§2"&§ * _loc3_ / _loc4_;
            this.§`6§.stageHeight = this.§5!P§;
         }
         else
         {
            this.§`6§.stageWidth = this.§2"&§;
            this.§`6§.stageHeight = this.§5!P§ * _loc4_ / _loc3_;
         }
         this.§!#4§ = param1;
         this.§4"J§ = param2;
         this.§`6§.dispatchEvent(new §0l§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §<L§() : void
      {
         this.setCanvasSize(this.§2"&§,this.§5!P§);
      }
      
      private function §3"+§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§+#'§ || !this.§';§)
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
               this.§1,§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§1,§ = false;
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
               _loc5_ = §][§.§0"+§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §][§.§&"<§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §][§.§""%§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §][§.§0"+§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §][§.§""%§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§1,§ ? §][§.§&"<§ : §][§.§+"@§;
         }
         if((_loc2_ < §3!`§.left || _loc2_ >= §3!`§.right || _loc3_ < §3!`§.top || _loc3_ >= §3!`§.bottom) && _loc5_ == §][§.§0"+§)
         {
            return;
         }
         _loc2_ -= §3!`§.x;
         _loc3_ -= §3!`§.y;
         this.§]"e§.§]"L§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §4!>§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §8"n§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§='§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§&!9§ != null)
         {
            (_loc4_ = this.§&!9§.createProgram()).upload(param2,param3);
            this.§='§[param1] = _loc4_;
         }
      }
      
      public function §2"`§(param1:String) : void
      {
         var _loc2_:Program3D = this.§^"V§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§='§[param1];
         }
      }
      
      public function §^"V§(param1:String) : Program3D
      {
         return this.§='§[param1] as Program3D;
      }
      
      public function §?T§(param1:String) : Boolean
      {
         return param1 in this.§='§;
      }
      
      public function get §+0§() : Boolean
      {
         return this.§+#'§;
      }
      
      public function get §6!V§() : §-"I§
      {
         return this.§,"y§;
      }
      
      public function get §^!3§() : Boolean
      {
         return this.§7!r§;
      }
      
      public function set §^!3§(param1:Boolean) : void
      {
         this.§7!r§ = param1;
         if(this.§&!9§)
         {
            this.§]"e§.§^!3§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§?#3§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§?#3§ = param1;
         if(this.§&!9§)
         {
            this.§&!9§.enableErrorChecking = param1;
         }
      }
      
      public function get §5P§() : int
      {
         return this.§4,§;
      }
      
      public function set §5P§(param1:int) : void
      {
         this.§4,§ = param1;
         §-_§();
      }
      
      public function get §3I§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§?%§ == null)
         {
            this.§?%§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§?%§.contextMenu = _loc1_;
            this.§6""§();
         }
         return this.§?%§;
      }
      
      public function get stage() : §use§.Stage
      {
         return this.§`6§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §,!H§() : flash.display.Stage
      {
         return this.§<"9§;
      }
      
      public function get §]h§() : Boolean
      {
         return !this.§@##§;
      }
   }
}
