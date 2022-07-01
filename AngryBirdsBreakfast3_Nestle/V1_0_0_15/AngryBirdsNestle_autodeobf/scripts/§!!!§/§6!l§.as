package §!!!§
{
   import §#!M§.§2!s§;
   import §3!J§.DisplayObject;
   import §3!J§.Stage;
   import §=!4§.Texture;
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
   import starling.events.§"!7§;
   import starling.events.§,g§;
   import starling.events.§<!"§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §6!l§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §%!t§:Rectangle;
      
      private static var §1^§:Boolean = true;
      
      private static var §!-§:Boolean;
      
      private static var §2J§:§6!l§;
      
      private static var §4!'§:Boolean;
      
      private static var §&!E§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §<!s§:§3!J§.Stage;
      
      private var § !I§:Class;
      
      private var §`S§:§3!J§.DisplayObject;
      
      private var §0!e§:§2!s§;
      
      private var §-A§:Boolean;
      
      private var §8"'§:Boolean;
      
      private var §[!o§:§<@§;
      
      private var §+!?§:§"!7§;
      
      private var §"!9§:int;
      
      private var §6d§:Boolean;
      
      private var §<",§:Boolean;
      
      private var §%!,§:Number;
      
      private var §^9§:Boolean;
      
      private var §#"#§:flash.display.Stage;
      
      private var §@r§:Sprite;
      
      private var §%!§:Context3D;
      
      private var §]"'§:Dictionary;
      
      private var § P§:int;
      
      private var §'#§:Boolean;
      
      private var §6!V§:Number;
      
      private var §=c§:Number;
      
      private var §9!a§:Number;
      
      private var §^g§:Number;
      
      private var §4!g§:Number;
      
      private var §3R§:Number;
      
      private var §@H§:Function;
      
      private var §[#§:uint;
      
      private var §%5§:String;
      
      private var §@!U§:Bitmap;
      
      private var §99§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §9"!§:Boolean = false;
      
      private var §3d§:Boolean = false;
      
      public function §6!l§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§6!V§ = param3.width;
         this.§=c§ = param3.height;
         this.§9!a§ = this.§6!V§;
         this.§^g§ = this.§=c§;
         this.§4!g§ = param2.stageWidth;
         this.§3R§ = param2.stageHeight;
         §0i§ = true;
         this.§1W§();
         this.§ !I§ = param1;
         §%!t§ = param3;
         this.mStage3D = param4;
         this.§<!s§ = new §3!J§.Stage(param3.width,param3.height,param2.color);
         this.§#"#§ = param2;
         this.§+!?§ = new §"!7§(this.§<!s§);
         this.§0!e§ = new §2!s§();
         this.§"!9§ = 0;
         this.§6d§ = false;
         this.§<",§ = false;
         this.§%!,§ = getTimer() / 1000;
         this.§]"'§ = new Dictionary();
         for each(_loc6_ in this.§8c§)
         {
            param2.addEventListener(_loc6_,this.§]!'§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!c§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!c§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§'"1§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§?" §,false,1,true);
         this.mStage3D.visible = false;
         this.§36§(true);
         this.§[#§ = param2.color;
         this.§%5§ = param5;
      }
      
      public static function get §`k§() : Boolean
      {
         if(§+J§)
         {
            return §+J§.§'#§;
         }
         return true;
      }
      
      public static function §<E§() : Boolean
      {
         return §2J§ && (§2J§.§99§ || §2J§.§%!§ != null && §2J§.§%!§.driverInfo != "Disposed");
      }
      
      private static function §+P§() : void
      {
         §!-§ = true;
      }
      
      public static function get §7!w§() : Rectangle
      {
         return §%!t§.clone();
      }
      
      public static function set §7!w§(param1:Rectangle) : void
      {
         §%!t§ = param1.clone();
         §+P§();
      }
      
      public static function set §#N§(param1:Boolean) : void
      {
         §1^§ = param1;
      }
      
      public static function get §#N§() : Boolean
      {
         return §1^§;
      }
      
      public static function get §+J§() : §6!l§
      {
         return §2J§;
      }
      
      public static function get §-f§() : §2!s§
      {
         return !!§2J§ ? §2J§.§-f§ : null;
      }
      
      public static function get §<!x§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §<!x§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §0i§() : Boolean
      {
         return §4!'§;
      }
      
      public static function set §0i§(param1:Boolean) : void
      {
         if(§2J§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §4!'§ = param1;
      }
      
      public static function §9`§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false, param4:Number = 1.0) : Texture
      {
         if(§+J§)
         {
            return Texture.§2!?§(§+J§.§%!§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§2J§.§%!§)
         {
            §2J§.§%!§.drawToBitmapData(param1);
         }
         else if(§2J§.§[!o§.canvas)
         {
            _loc2_ = §2J§.§[!o§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §8U§() : §3!J§.DisplayObject
      {
         return this.§`S§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§[#§ = param1;
      }
      
      public function get § !T§() : Number
      {
         return this.§6!V§;
      }
      
      public function get §^!n§() : Number
      {
         return this.§=c§;
      }
      
      public function § !J§() : void
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
               profile = !!this.§3d§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§%5§,profile);
            }
            else
            {
               requestContext3D(this.§%5§);
            }
         }
         catch(e:Error)
         {
            §4!a§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§9"!§ = true;
         this.§#"#§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!c§,false);
         this.§#"#§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!c§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§'"1§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§?" §,false);
         for each(_loc1_ in this.§8c§)
         {
            this.§#"#§.removeEventListener(_loc1_,this.§]!'§,false);
         }
         for each(_loc2_ in this.§]"'§)
         {
            _loc2_.dispose();
         }
         if(this.§%!§)
         {
            this.§%!§.dispose();
         }
         if(this.§+!?§)
         {
            this.§+!?§.dispose();
         }
         if(this.§[!o§)
         {
            this.§[!o§.dispose();
         }
         if(§2J§ == this)
         {
            §2J§ = null;
         }
         if(this.§@!U§ && this.§@!U§.bitmapData)
         {
            this.§@!U§.bitmapData.dispose();
            this.§@!U§.bitmapData = null;
         }
      }
      
      private function §?7§() : void
      {
         this.§%!§ = this.mStage3D.context3D;
         this.§]"'§ = new Dictionary();
         if(this.§%!§)
         {
            this.§%!§.enableErrorChecking = this.§<",§;
            if(this.§%!§.driverInfo.indexOf("Software") >= 0)
            {
               this.§'#§ = true;
            }
         }
         else
         {
            this.§'#§ = true;
         }
         §+P§();
      }
      
      private function §&M§() : void
      {
         if(this.§<!s§.numChildren > 0)
         {
            return;
         }
         if(this.§`S§ == null)
         {
            this.§`S§ = new this.§ !I§();
         }
         if(this.§`S§ == null)
         {
            throw new Error("Invalid root class: " + this.§ !I§);
         }
         this.§<!s§.addChild(this.§`S§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§%!§.configureBackBuffer(§%!t§.width,§%!t§.height,this.§"!9§,false);
            §!-§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§<E§())
         {
            return;
         }
         if(§!-§)
         {
            if(this.§%!§)
            {
               this.mStage3D.x = §%!t§.x;
               this.mStage3D.y = §%!t§.y;
               this.configureBackBuffer();
               if(§!-§)
               {
                  return;
               }
               this.setCanvasSize(§%!t§.width,§%!t§.height);
            }
            else if(this.§@!U§)
            {
               §!-§ = false;
               this.setCanvasSize(§%!t§.width,§%!t§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§%!,§;
         this.§%!,§ = _loc1_;
         this.§<!s§.advanceTime(_loc2_);
         this.§0!e§.advanceTime(_loc2_);
         this.§+!?§.advanceTime(_loc2_);
         this.§[!o§.§&!n§(this.§<!s§.stageWidth,this.§<!s§.stageHeight);
         this.§[!o§.clear(this.§%!§,this.§[#§,1);
         this.§[!o§.§"" §(this.§%!§,this.§ P§);
         this.§<!s§.render(this.§[!o§,1);
         this.§[!o§.§6!s§();
         if(this.§@H§ != null)
         {
            this.§@H§();
            this.§@H§ = null;
         }
         this.§[!o§.finishRendering(this.§%!§);
         this.§[!o§.nextFrame();
      }
      
      public function set §6!z§(param1:Function) : void
      {
         this.§@H§ = param1;
      }
      
      private function §&q§() : void
      {
         var _loc3_:BitmapData = null;
         this.§@r§.x = §%!t§.x;
         this.§@r§.y = §%!t§.y;
         var _loc1_:int = this.§@r§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@r§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§#"#§.addChild(this.§@r§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§#"#§.removeChild(this.§@r§);
         }
         if(this.§[!o§ && this.§[!o§.canvas)
         {
            this.§[!o§.setCanvasSize(this.§9!a§,this.§^g§,§%!t§.width / this.§<!s§.stageWidth,§%!t§.height / this.§<!s§.stageHeight);
            _loc3_ = this.§[!o§.canvas;
            if(this.§@!U§.bitmapData != _loc3_)
            {
               this.§@!U§.bitmapData = _loc3_;
            }
            if(this.§#"#§.getChildIndex(this.§@r§) > 0)
            {
               this.§#"#§.removeChild(this.§@r§);
               this.§#"#§.addChildAt(this.§@r§,0);
            }
         }
      }
      
      private function §4!a§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§<!s§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§<!s§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§<!s§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§9!n§.addChild(_loc2_);
      }
      
      public function §1W§() : void
      {
         §2J§ = this;
      }
      
      public function start() : void
      {
         this.§-A§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§-A§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §36§(param1:Boolean) : void
      {
         this.§8"'§ = param1;
      }
      
      private function §>x§() : void
      {
         this.§99§ = true;
         if(this.§@!U§ == null)
         {
            this.§@!U§ = new Bitmap();
            this.§9!n§.addChild(this.§@!U§);
         }
      }
      
      private function §?" §(param1:ErrorEvent) : void
      {
         this.§>x§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §'"1§(param1:flash.events.Event) : void
      {
         if(this.§9"!§)
         {
            return;
         }
         if(!this.§3d§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
         {
            this.§3d§ = true;
            this.§ !J§();
            return;
         }
         ++§&!E§;
         this.§ P§ = §&!E§;
         if(this.§[!o§)
         {
            this.§[!o§.dispose();
         }
         if(!§6!l§.§0i§ && this.§%!§)
         {
            this.§4!a§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§1W§();
         this.§?7§();
         this.§&M§();
         if(this.§%!§ && this.§'#§)
         {
            this.mStage3DEnabled = false;
            this.§%!§ = null;
            this.§>x§();
         }
         if(this.§%!§)
         {
            this.§[!o§ = new §<@§();
         }
         else
         {
            this.§[!o§ = new §;",§();
            this.§[!o§.setCanvasSize(this.§9!a§,this.§^g§,§%!t§.width / this.§<!s§.stageWidth,§%!t§.height / this.§<!s§.stageHeight);
            this.§[!o§.clear(null,this.§[#§);
         }
         this.§+!?§.§><§ = this.§6d§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§1W§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§%!,§;
         if(this.§-A§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§@r§)
         {
            this.§&q§();
         }
      }
      
      private function §%!c§(param1:flash.events.KeyboardEvent) : void
      {
         this.§1W§();
         this.§<!s§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§6!V§;
         var _loc4_:Number = param2 / this.§=c§;
         if(!§#N§)
         {
            this.§<!s§.stageWidth = this.§6!V§ * _loc3_ / _loc4_;
            this.§<!s§.stageHeight = this.§=c§;
         }
         else
         {
            this.§<!s§.stageWidth = this.§6!V§;
            this.§<!s§.stageHeight = this.§=c§ * _loc4_ / _loc3_;
         }
         this.§9!a§ = param1;
         this.§^g§ = param2;
         this.§<!s§.dispatchEvent(new §<!"§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §[!Q§() : void
      {
         this.setCanvasSize(this.§6!V§,this.§=c§);
      }
      
      private function §]!'§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§-A§ || !this.§8"'§)
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
               this.§^9§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§^9§ = false;
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
               _loc5_ = §,g§.§,!4§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §,g§.§"=§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §,g§.§&!]§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §,g§.§,!4§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §,g§.§&!]§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§^9§ ? §,g§.§"=§ : §,g§.HOVER;
         }
         if((_loc2_ < §%!t§.left || _loc2_ >= §%!t§.right || _loc3_ < §%!t§.top || _loc3_ >= §%!t§.bottom) && _loc5_ == §,g§.§,!4§)
         {
            return;
         }
         _loc2_ -= §%!t§.x;
         _loc3_ -= §%!t§.y;
         this.§+!?§.§"!+§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §8c§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §]" §(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§]"'§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§%!§ != null)
         {
            (_loc4_ = this.§%!§.createProgram()).upload(param2,param3);
            this.§]"'§[param1] = _loc4_;
         }
      }
      
      public function §0<§(param1:String) : void
      {
         var _loc2_:Program3D = this.§=H§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§]"'§[param1];
         }
      }
      
      public function §=H§(param1:String) : Program3D
      {
         return this.§]"'§[param1] as Program3D;
      }
      
      public function §?R§(param1:String) : Boolean
      {
         return param1 in this.§]"'§;
      }
      
      public function get §@!1§() : Boolean
      {
         return this.§-A§;
      }
      
      public function get §-f§() : §2!s§
      {
         return this.§0!e§;
      }
      
      public function get §><§() : Boolean
      {
         return this.§6d§;
      }
      
      public function set §><§(param1:Boolean) : void
      {
         this.§6d§ = param1;
         if(this.§%!§)
         {
            this.§+!?§.§><§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§<",§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§<",§ = param1;
         if(this.§%!§)
         {
            this.§%!§.enableErrorChecking = param1;
         }
      }
      
      public function get §6!]§() : int
      {
         return this.§"!9§;
      }
      
      public function set §6!]§(param1:int) : void
      {
         this.§"!9§ = param1;
         §+P§();
      }
      
      public function get §9!n§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§@r§ == null)
         {
            this.§@r§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§@r§.contextMenu = _loc1_;
            this.§&q§();
         }
         return this.§@r§;
      }
      
      public function get stage() : §3!J§.Stage
      {
         return this.§<!s§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §&!Q§() : flash.display.Stage
      {
         return this.§#"#§;
      }
      
      public function get §[! §() : Boolean
      {
         return !this.§99§;
      }
   }
}
