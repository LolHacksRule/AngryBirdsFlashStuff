package §&p§
{
   import §%-§.DisplayObject;
   import §%-§.Stage;
   import §4'§.§!o§;
   import §?!"§.Texture;
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
   import starling.events.§9`§;
   import starling.events.§?!>§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§]!E§;
   
   public class §'_§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §5<§:§'_§;
      
      private static var §7f§:Boolean;
      
      private static var §`z§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §<!1§:§%-§.Stage;
      
      private var §9K§:Class;
      
      private var §8E§:§%-§.DisplayObject;
      
      private var §-N§:§!o§;
      
      private var §45§:Boolean;
      
      private var §+b§:Boolean;
      
      private var §4h§:§`G§;
      
      private var §[Q§:§?!>§;
      
      private var §do §:int;
      
      private var §?T§:Boolean;
      
      private var §`l§:Boolean;
      
      private var §`[§:Number;
      
      private var §@O§:Rectangle;
      
      private var §`!D§:Boolean;
      
      private var §!'§:flash.display.Stage;
      
      private var §^!§:Sprite;
      
      private var §%!-§:Context3D;
      
      private var §<U§:Dictionary;
      
      private var §@S§:int;
      
      private var §`!B§:Boolean;
      
      private var § "§:Number;
      
      private var §<$§:Number;
      
      private var §!`§:Number;
      
      private var §!I§:Number;
      
      private var §3J§:Number;
      
      private var §6P§:Number;
      
      private var §"4§:Function;
      
      private var §#!A§:uint;
      
      private var §0!E§:String;
      
      private var §?I§:Bitmap;
      
      private var §"G§:Boolean = false;
      
      private var §@;§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §1!§:Boolean = false;
      
      public function §'_§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§ "§ = param3.width;
         this.§<$§ = param3.height;
         this.§!`§ = this.§ "§;
         this.§!I§ = this.§<$§;
         this.§3J§ = param2.stageWidth;
         this.§6P§ = param2.stageHeight;
         §3R§ = true;
         this.§=!;§();
         this.§9K§ = param1;
         this.§@O§ = param3;
         this.mStage3D = param4;
         this.§<!1§ = new §%-§.Stage(param3.width,param3.height,param2.color);
         this.§!'§ = param2;
         this.§[Q§ = new §?!>§(this.§<!1§);
         this.§-N§ = new §!o§();
         this.§do § = 0;
         this.§?T§ = false;
         this.§`l§ = false;
         this.§`[§ = getTimer() / 1000;
         this.§<U§ = new Dictionary();
         for each(_loc6_ in this.§-$§)
         {
            param2.addEventListener(_loc6_,this.§'k§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-%§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§7!C§,false,1,true);
         this.mStage3D.visible = false;
         this.§%z§(true);
         this.§#!A§ = param2.color;
         this.§0!E§ = param5;
      }
      
      public static function get §;'§() : Boolean
      {
         if(§17§)
         {
            return §17§.§`!B§;
         }
         return true;
      }
      
      public static function §+! §() : Boolean
      {
         return §5<§ && (§5<§.§"G§ || §5<§.§%!-§ != null && §5<§.§%!-§.driverInfo != "Disposed");
      }
      
      public static function get §17§() : §'_§
      {
         return §5<§;
      }
      
      public static function get §6!"§() : §!o§
      {
         return !!§5<§ ? §5<§.§6!"§ : null;
      }
      
      public static function get §0?§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §0?§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §3R§() : Boolean
      {
         return §7f§;
      }
      
      public static function set §3R§(param1:Boolean) : void
      {
         if(§5<§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §7f§ = param1;
      }
      
      public static function §]e§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§17§)
         {
            return Texture.§,!3§(§17§.§%!-§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§5<§.§%!-§)
         {
            §5<§.§%!-§.drawToBitmapData(param1);
         }
         else if(§5<§.§4h§.canvas)
         {
            _loc2_ = §5<§.§4h§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §8!B§() : §%-§.DisplayObject
      {
         return this.§8E§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§#!A§ = param1;
      }
      
      public function get §8$§() : Number
      {
         return this.§ "§;
      }
      
      public function get §3A§() : Number
      {
         return this.§<$§;
      }
      
      public function §"v§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§0!E§);
         }
         catch(e:Error)
         {
            §5!A§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§1!§ = true;
         this.§!'§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§!'§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-%§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§7!C§,false);
         for each(_loc1_ in this.§-$§)
         {
            this.§!'§.removeEventListener(_loc1_,this.§'k§,false);
         }
         for each(_loc2_ in this.§<U§)
         {
            _loc2_.dispose();
         }
         if(this.§%!-§)
         {
            this.§%!-§.dispose();
         }
         if(this.§[Q§)
         {
            this.§[Q§.dispose();
         }
         if(this.§4h§)
         {
            this.§4h§.dispose();
         }
         if(§5<§ == this)
         {
            §5<§ = null;
         }
         if(this.§?I§ && this.§?I§.bitmapData)
         {
            this.§?I§.bitmapData.dispose();
            this.§?I§.bitmapData = null;
         }
      }
      
      private function §#x§() : void
      {
         this.§%!-§ = this.mStage3D.context3D;
         this.§<U§ = new Dictionary();
         if(this.§%!-§)
         {
            this.§%!-§.enableErrorChecking = this.§`l§;
            if(this.§%!-§.driverInfo.indexOf("Software") >= 0)
            {
               this.§`!B§ = true;
            }
         }
         else
         {
            this.§`!B§ = true;
         }
         this.§1y§();
      }
      
      private function §?#§() : void
      {
         if(this.§<!1§.numChildren > 0)
         {
            return;
         }
         if(this.§8E§ == null)
         {
            this.§8E§ = new this.§9K§();
         }
         if(this.§8E§ == null)
         {
            throw new Error("Invalid root class: " + this.§9K§);
         }
         this.§<!1§.addChild(this.§8E§);
      }
      
      private function §1y§() : void
      {
         this.§@;§ = true;
         this.mStage3D.x = this.§@O§.x;
         this.mStage3D.y = this.§@O§.y;
      }
      
      private function render() : void
      {
         if(!§+! §())
         {
            return;
         }
         if(this.§@;§)
         {
            if(this.§%!-§)
            {
               this.§%!-§.configureBackBuffer(this.§@O§.width,this.§@O§.height,this.§do §,false);
            }
            this.§@;§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§`[§;
         this.§`[§ = _loc1_;
         this.§<!1§.advanceTime(_loc2_);
         this.§-N§.advanceTime(_loc2_);
         this.§[Q§.advanceTime(_loc2_);
         this.§4h§.§=%§(this.§<!1§.stageWidth,this.§<!1§.stageHeight);
         this.§4h§.clear(this.§%!-§,this.§#!A§,1);
         this.§4h§.§!n§(this.§%!-§,this.§@S§);
         this.§<!1§.render(this.§4h§,1);
         this.§4h§.§#E§();
         if(this.§"4§ != null)
         {
            this.§"4§();
            this.§"4§ = null;
         }
         this.§4h§.finishRendering(this.§%!-§);
         this.§4h§.§!t§();
      }
      
      public function set §"i§(param1:Function) : void
      {
         this.§"4§ = param1;
      }
      
      private function §0x§() : void
      {
         var _loc3_:BitmapData = null;
         this.§^!§.x = this.§@O§.x;
         this.§^!§.y = this.§@O§.y;
         var _loc1_:int = this.§^!§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§^!§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§!'§.addChild(this.§^!§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§!'§.removeChild(this.§^!§);
         }
         if(this.§4h§ && this.§4h§.canvas)
         {
            this.§4h§.setCanvasSize(this.§!`§,this.§!I§,this.§@O§.width / this.§<!1§.stageWidth,this.§@O§.height / this.§<!1§.stageHeight);
            _loc3_ = this.§4h§.canvas;
            if(this.§?I§.bitmapData != _loc3_)
            {
               this.§?I§.bitmapData = _loc3_;
            }
            if(this.§!'§.getChildIndex(this.§^!§) > 0)
            {
               this.§!'§.removeChild(this.§^!§);
               this.§!'§.addChildAt(this.§^!§,0);
            }
         }
      }
      
      private function §5!A§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§<!1§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§<!1§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§<!1§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§'?§.addChild(_loc2_);
      }
      
      public function §=!;§() : void
      {
         §5<§ = this;
      }
      
      public function start() : void
      {
         this.§45§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§45§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §%z§(param1:Boolean) : void
      {
         this.§+b§ = param1;
      }
      
      private function §4!§() : void
      {
         this.§"G§ = true;
         if(this.§?I§ == null)
         {
            this.§?I§ = new Bitmap();
            this.§'?§.addChild(this.§?I§);
         }
      }
      
      private function §7!C§(param1:ErrorEvent) : void
      {
         this.§4!§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §-%§(param1:flash.events.Event) : void
      {
         if(this.§1!§)
         {
            return;
         }
         ++§`z§;
         this.§@S§ = §`z§;
         if(this.§4h§)
         {
            this.§4h§.dispose();
         }
         if(!§'_§.§3R§ && this.§%!-§)
         {
            this.§5!A§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§=!;§();
         this.§#x§();
         this.§?#§();
         if(this.§%!-§ && this.§`!B§)
         {
            this.mStage3DEnabled = false;
            this.§%!-§ = null;
            this.§4!§();
         }
         if(this.§%!-§)
         {
            this.§4h§ = new §`G§();
         }
         else
         {
            this.§4h§ = new §,l§();
            this.§4h§.setCanvasSize(this.§!`§,this.§!I§,this.§@O§.width / this.§<!1§.stageWidth,this.§@O§.height / this.§<!1§.stageHeight);
            this.§4h§.clear(null,this.§#!A§);
         }
         this.§[Q§.§^e§ = this.§?T§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§=!;§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§`[§;
         if(this.§45§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§^!§)
         {
            this.§0x§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§=!;§();
         this.§<!1§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§ "§;
         var _loc5_:Number = param2 / this.§<$§;
         if(!param3)
         {
            this.§<!1§.stageWidth = this.§ "§ * _loc4_ / _loc5_;
            this.§<!1§.stageHeight = this.§<$§;
         }
         else
         {
            this.§<!1§.stageWidth = this.§ "§;
            this.§<!1§.stageHeight = this.§<$§ * _loc5_ / _loc4_;
         }
         this.§!`§ = param1;
         this.§!I§ = param2;
         this.§<!1§.dispatchEvent(new §]!E§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §#n§() : void
      {
         this.setCanvasSize(this.§ "§,this.§<$§);
      }
      
      private function §'k§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§45§ || !this.§+b§)
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
               this.§`!D§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§`!D§ = false;
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
               _loc5_ = §9`§.§+!8§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §9`§.§99§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §9`§.§"!@§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §9`§.§+!8§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §9`§.§"!@§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§`!D§ ? §9`§.§99§ : §9`§.§,R§;
         }
         if((_loc2_ < this.§@O§.left || _loc2_ >= this.§@O§.right || _loc3_ < this.§@O§.top || _loc3_ >= this.§@O§.bottom) && _loc5_ == §9`§.§+!8§)
         {
            return;
         }
         _loc2_ -= this.§@O§.x;
         _loc3_ -= this.§@O§.y;
         this.§[Q§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §-$§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §6O§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§<U§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§%!-§ != null)
         {
            (_loc4_ = this.§%!-§.createProgram()).upload(param2,param3);
            this.§<U§[param1] = _loc4_;
         }
      }
      
      public function §2#§(param1:String) : void
      {
         var _loc2_:Program3D = this.§>m§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§<U§[param1];
         }
      }
      
      public function §>m§(param1:String) : Program3D
      {
         return this.§<U§[param1] as Program3D;
      }
      
      public function §"!?§(param1:String) : Boolean
      {
         return param1 in this.§<U§;
      }
      
      public function get §&R§() : Boolean
      {
         return this.§45§;
      }
      
      public function get §6!"§() : §!o§
      {
         return this.§-N§;
      }
      
      public function get §^e§() : Boolean
      {
         return this.§?T§;
      }
      
      public function set §^e§(param1:Boolean) : void
      {
         this.§?T§ = param1;
         if(this.§%!-§)
         {
            this.§[Q§.§^e§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§`l§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§`l§ = param1;
         if(this.§%!-§)
         {
            this.§%!-§.enableErrorChecking = param1;
         }
      }
      
      public function get §switch§() : int
      {
         return this.§do §;
      }
      
      public function set §switch§(param1:int) : void
      {
         this.§do § = param1;
         this.§1y§();
      }
      
      public function get §^w§() : Rectangle
      {
         return this.§@O§.clone();
      }
      
      public function set §^w§(param1:Rectangle) : void
      {
         this.§@O§ = param1.clone();
         this.§1y§();
      }
      
      public function get §'?§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§^!§ == null)
         {
            this.§^!§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§^!§.contextMenu = _loc1_;
            this.§0x§();
         }
         return this.§^!§;
      }
      
      public function get stage() : §%-§.Stage
      {
         return this.§<!1§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §0!G§() : flash.display.Stage
      {
         return this.§!'§;
      }
      
      public function get §+y§() : Boolean
      {
         return !this.§"G§;
      }
   }
}
