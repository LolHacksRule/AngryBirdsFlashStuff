package §'6§
{
   import §#x§.§%"'§;
   import §0!R§.Texture;
   import §1!$§.DisplayObject;
   import §1!$§.Stage;
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
   import starling.events.§"U§;
   import starling.events.§,"E§;
   import starling.events.§4=§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §"]§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §0!=§:§"]§;
      
      private static var §3!#§:Boolean;
      
      private static var §7"+§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §^!w§:§1!$§.Stage;
      
      private var §#U§:Class;
      
      private var §!!]§:§1!$§.DisplayObject;
      
      private var §9!h§:§%"'§;
      
      private var §=z§:Boolean;
      
      private var §3!c§:Boolean;
      
      private var §!"A§:§'"3§;
      
      private var §-!Z§:§,"E§;
      
      private var §&Z§:int;
      
      private var §-!O§:Boolean;
      
      private var §+"6§:Boolean;
      
      private var §&"2§:Number;
      
      private var §@"E§:Rectangle;
      
      private var §^"-§:Boolean;
      
      private var §"!U§:flash.display.Stage;
      
      private var §=f§:Sprite;
      
      private var §="!§:Context3D;
      
      private var §@@§:Dictionary;
      
      private var §=E§:int;
      
      private var §'H§:Boolean;
      
      private var §#!+§:Number;
      
      private var §0!k§:Number;
      
      private var §8!G§:Number;
      
      private var §1!M§:Number;
      
      private var §&"8§:Number;
      
      private var §^"+§:Number;
      
      private var § !$§:Function;
      
      private var §%!6§:uint;
      
      private var §41§:String;
      
      private var §%X§:Bitmap;
      
      private var §^!W§:Boolean = false;
      
      private var §!!h§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §4@§:Boolean = false;
      
      public function §"]§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§#!+§ = param3.width;
         this.§0!k§ = param3.height;
         this.§8!G§ = this.§#!+§;
         this.§1!M§ = this.§0!k§;
         this.§&"8§ = param2.stageWidth;
         this.§^"+§ = param2.stageHeight;
         §^!E§ = true;
         this.§'!§();
         this.§#U§ = param1;
         this.§@"E§ = param3;
         this.mStage3D = param4;
         this.§^!w§ = new §1!$§.Stage(param3.width,param3.height,param2.color);
         this.§"!U§ = param2;
         this.§-!Z§ = new §,"E§(this.§^!w§);
         this.§9!h§ = new §%"'§();
         this.§&Z§ = 0;
         this.§-!O§ = false;
         this.§+"6§ = false;
         this.§&"2§ = getTimer() / 1000;
         this.§@@§ = new Dictionary();
         for each(_loc6_ in this.§8!U§)
         {
            param2.addEventListener(_loc6_,this.§]!p§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!-§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!-§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-""§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§&C§,false,1,true);
         this.mStage3D.visible = false;
         this.§@!f§(true);
         this.§%!6§ = param2.color;
         this.§41§ = param5;
      }
      
      public static function get §4"!§() : Boolean
      {
         if(§!X§)
         {
            return §!X§.§'H§;
         }
         return true;
      }
      
      public static function §+"E§() : Boolean
      {
         return §0!=§ && (§0!=§.§^!W§ || §0!=§.§="!§ != null && §0!=§.§="!§.driverInfo != "Disposed");
      }
      
      public static function get §!X§() : §"]§
      {
         return §0!=§;
      }
      
      public static function get §^!v§() : §%"'§
      {
         return !!§0!=§ ? §0!=§.§^!v§ : null;
      }
      
      public static function get §;!5§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;!5§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §^!E§() : Boolean
      {
         return §3!#§;
      }
      
      public static function set §^!E§(param1:Boolean) : void
      {
         if(§0!=§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §3!#§ = param1;
      }
      
      public static function §3`§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§!X§)
         {
            return Texture.§ ![§(§!X§.§="!§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§0!=§.§="!§)
         {
            §0!=§.§="!§.drawToBitmapData(param1);
         }
         else if(§0!=§.§!"A§.canvas)
         {
            _loc2_ = §0!=§.§!"A§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §8!j§() : §1!$§.DisplayObject
      {
         return this.§!!]§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§%!6§ = param1;
      }
      
      public function get §!"5§() : Number
      {
         return this.§#!+§;
      }
      
      public function get §0!w§() : Number
      {
         return this.§0!k§;
      }
      
      public function §5!y§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§41§);
         }
         catch(e:Error)
         {
            §"!D§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§4@§ = true;
         this.§"!U§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!-§,false);
         this.§"!U§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!-§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-""§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§&C§,false);
         for each(_loc1_ in this.§8!U§)
         {
            this.§"!U§.removeEventListener(_loc1_,this.§]!p§,false);
         }
         for each(_loc2_ in this.§@@§)
         {
            _loc2_.dispose();
         }
         if(this.§="!§)
         {
            this.§="!§.dispose();
         }
         if(this.§-!Z§)
         {
            this.§-!Z§.dispose();
         }
         if(this.§!"A§)
         {
            this.§!"A§.dispose();
         }
         if(§0!=§ == this)
         {
            §0!=§ = null;
         }
         if(this.§%X§ && this.§%X§.bitmapData)
         {
            this.§%X§.bitmapData.dispose();
            this.§%X§.bitmapData = null;
         }
      }
      
      private function §[!P§() : void
      {
         this.§="!§ = this.mStage3D.context3D;
         this.§@@§ = new Dictionary();
         if(this.§="!§)
         {
            this.§="!§.enableErrorChecking = this.§+"6§;
            if(this.§="!§.driverInfo.indexOf("Software") >= 0)
            {
               this.§'H§ = true;
            }
         }
         else
         {
            this.§'H§ = true;
         }
         this.§&!U§();
      }
      
      private function §7o§() : void
      {
         if(this.§^!w§.numChildren > 0)
         {
            return;
         }
         if(this.§!!]§ == null)
         {
            this.§!!]§ = new this.§#U§();
         }
         if(this.§!!]§ == null)
         {
            throw new Error("Invalid root class: " + this.§#U§);
         }
         this.§^!w§.addChild(this.§!!]§);
      }
      
      private function §&!U§() : void
      {
         this.§!!h§ = true;
         this.mStage3D.x = this.§@"E§.x;
         this.mStage3D.y = this.§@"E§.y;
      }
      
      private function render() : void
      {
         if(!§+"E§())
         {
            return;
         }
         if(this.§!!h§)
         {
            if(this.§="!§)
            {
               this.§="!§.configureBackBuffer(this.§@"E§.width,this.§@"E§.height,this.§&Z§,false);
            }
            this.§!!h§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§&"2§;
         this.§&"2§ = _loc1_;
         this.§^!w§.advanceTime(_loc2_);
         this.§9!h§.advanceTime(_loc2_);
         this.§-!Z§.advanceTime(_loc2_);
         this.§!"A§.§="B§(this.§^!w§.stageWidth,this.§^!w§.stageHeight);
         this.§!"A§.clear(this.§="!§,this.§%!6§,1);
         this.§!"A§.§7W§(this.§="!§,this.§=E§);
         this.§^!w§.render(this.§!"A§,1);
         this.§!"A§.§-!=§();
         if(this.§ !$§ != null)
         {
            this.§ !$§();
            this.§ !$§ = null;
         }
         this.§!"A§.finishRendering(this.§="!§);
         this.§!"A§.§]!<§();
      }
      
      public function set § "0§(param1:Function) : void
      {
         this.§ !$§ = param1;
      }
      
      private function §!J§() : void
      {
         var _loc3_:BitmapData = null;
         this.§=f§.x = this.§@"E§.x;
         this.§=f§.y = this.§@"E§.y;
         var _loc1_:int = this.§=f§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§=f§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§"!U§.addChild(this.§=f§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§"!U§.removeChild(this.§=f§);
         }
         if(this.§!"A§ && this.§!"A§.canvas)
         {
            this.§!"A§.setCanvasSize(this.§8!G§,this.§1!M§,this.§@"E§.width / this.§^!w§.stageWidth,this.§@"E§.height / this.§^!w§.stageHeight);
            _loc3_ = this.§!"A§.canvas;
            if(this.§%X§.bitmapData != _loc3_)
            {
               this.§%X§.bitmapData = _loc3_;
            }
            if(this.§"!U§.getChildIndex(this.§=f§) > 0)
            {
               this.§"!U§.removeChild(this.§=f§);
               this.§"!U§.addChildAt(this.§=f§,0);
            }
         }
      }
      
      private function §"!D§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§^!w§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§^!w§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§^!w§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§&&§.addChild(_loc2_);
      }
      
      public function §'!§() : void
      {
         §0!=§ = this;
      }
      
      public function start() : void
      {
         this.§=z§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§=z§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §@!f§(param1:Boolean) : void
      {
         this.§3!c§ = param1;
      }
      
      private function §7!'§() : void
      {
         this.§^!W§ = true;
         if(this.§%X§ == null)
         {
            this.§%X§ = new Bitmap();
            this.§&&§.addChild(this.§%X§);
         }
      }
      
      private function §&C§(param1:ErrorEvent) : void
      {
         this.§7!'§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §-""§(param1:flash.events.Event) : void
      {
         if(this.§4@§)
         {
            return;
         }
         ++§7"+§;
         this.§=E§ = §7"+§;
         if(this.§!"A§)
         {
            this.§!"A§.dispose();
         }
         if(!§"]§.§^!E§ && this.§="!§)
         {
            this.§"!D§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§'!§();
         this.§[!P§();
         this.§7o§();
         if(this.§="!§ && this.§'H§)
         {
            this.mStage3DEnabled = false;
            this.§="!§ = null;
            this.§7!'§();
         }
         if(this.§="!§)
         {
            this.§!"A§ = new §'"3§();
         }
         else
         {
            this.§!"A§ = new §#"C§();
            this.§!"A§.setCanvasSize(this.§8!G§,this.§1!M§,this.§@"E§.width / this.§^!w§.stageWidth,this.§@"E§.height / this.§^!w§.stageHeight);
            this.§!"A§.clear(null,this.§%!6§);
         }
         this.§-!Z§.§5">§ = this.§-!O§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§'!§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§&"2§;
         if(this.§=z§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§=f§)
         {
            this.§!J§();
         }
      }
      
      private function §!-§(param1:flash.events.KeyboardEvent) : void
      {
         this.§'!§();
         this.§^!w§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§#!+§;
         var _loc5_:Number = param2 / this.§0!k§;
         if(!param3)
         {
            this.§^!w§.stageWidth = this.§#!+§ * _loc4_ / _loc5_;
            this.§^!w§.stageHeight = this.§0!k§;
         }
         else
         {
            this.§^!w§.stageWidth = this.§#!+§;
            this.§^!w§.stageHeight = this.§0!k§ * _loc5_ / _loc4_;
         }
         this.§8!G§ = param1;
         this.§1!M§ = param2;
         this.§^!w§.dispatchEvent(new §4=§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §2!b§() : void
      {
         this.setCanvasSize(this.§#!+§,this.§0!k§);
      }
      
      private function §]!p§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§=z§ || !this.§3!c§)
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
               this.§^"-§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§^"-§ = false;
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
               _loc5_ = §"U§.§&a§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §"U§.§#1§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §"U§.§&!I§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §"U§.§&a§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §"U§.§&!I§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§^"-§ ? §"U§.§#1§ : §"U§.§<$§;
         }
         if((_loc2_ < this.§@"E§.left || _loc2_ >= this.§@"E§.right || _loc3_ < this.§@"E§.top || _loc3_ >= this.§@"E§.bottom) && _loc5_ == §"U§.§&a§)
         {
            return;
         }
         _loc2_ -= this.§@"E§.x;
         _loc3_ -= this.§@"E§.y;
         this.§-!Z§.§#u§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §8!U§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §null§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§@@§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§="!§ != null)
         {
            (_loc4_ = this.§="!§.createProgram()).upload(param2,param3);
            this.§@@§[param1] = _loc4_;
         }
      }
      
      public function §@2§(param1:String) : void
      {
         var _loc2_:Program3D = this.§&2§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§@@§[param1];
         }
      }
      
      public function §&2§(param1:String) : Program3D
      {
         return this.§@@§[param1] as Program3D;
      }
      
      public function §6!g§(param1:String) : Boolean
      {
         return param1 in this.§@@§;
      }
      
      public function get §=7§() : Boolean
      {
         return this.§=z§;
      }
      
      public function get §^!v§() : §%"'§
      {
         return this.§9!h§;
      }
      
      public function get §5">§() : Boolean
      {
         return this.§-!O§;
      }
      
      public function set §5">§(param1:Boolean) : void
      {
         this.§-!O§ = param1;
         if(this.§="!§)
         {
            this.§-!Z§.§5">§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+"6§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§+"6§ = param1;
         if(this.§="!§)
         {
            this.§="!§.enableErrorChecking = param1;
         }
      }
      
      public function get §][§() : int
      {
         return this.§&Z§;
      }
      
      public function set §][§(param1:int) : void
      {
         this.§&Z§ = param1;
         this.§&!U§();
      }
      
      public function get §?!;§() : Rectangle
      {
         return this.§@"E§.clone();
      }
      
      public function set §?!;§(param1:Rectangle) : void
      {
         this.§@"E§ = param1.clone();
         this.§&!U§();
      }
      
      public function get §&&§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§=f§ == null)
         {
            this.§=f§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§=f§.contextMenu = _loc1_;
            this.§!J§();
         }
         return this.§=f§;
      }
      
      public function get stage() : §1!$§.Stage
      {
         return this.§^!w§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §@B§() : flash.display.Stage
      {
         return this.§"!U§;
      }
      
      public function get §<Z§() : Boolean
      {
         return !this.§^!W§;
      }
   }
}
