package §0P§
{
   import §1!8§.§,!n§;
   import §1!Y§.DisplayObject;
   import §1!Y§.Stage;
   import §^i§.Texture;
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
   import starling.events.§3c§;
   import starling.events.§<!O§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§["4§;
   
   public class §!!l§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §-z§:§!!l§;
      
      private static var §[W§:Boolean;
      
      private static var §[5§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §&§:§1!Y§.Stage;
      
      private var §"!=§:Class;
      
      private var §2!S§:§1!Y§.DisplayObject;
      
      private var §8S§:§,!n§;
      
      private var native:Boolean;
      
      private var §]I§:Boolean;
      
      private var §-b§:§1!O§;
      
      private var §>Q§:§3c§;
      
      private var §=!L§:int;
      
      private var §%o§:Boolean;
      
      private var §`!V§:Boolean;
      
      private var §-!a§:Number;
      
      private var §3"1§:Rectangle;
      
      private var §^!=§:Boolean;
      
      private var §4>§:flash.display.Stage;
      
      private var §4!P§:Sprite;
      
      private var §6!,§:Context3D;
      
      private var §%!%§:Dictionary;
      
      private var §+!i§:int;
      
      private var §9c§:Boolean;
      
      private var §'!1§:Number;
      
      private var §'s§:Number;
      
      private var §7"6§:Number;
      
      private var §1"!§:Number;
      
      private var §9r§:Number;
      
      private var §1!!§:Number;
      
      private var §-Y§:Function;
      
      private var §8!r§:uint;
      
      private var §-+§:String;
      
      private var §<m§:Bitmap;
      
      private var §=!6§:Boolean = false;
      
      private var §5W§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §1m§:Boolean = false;
      
      public function §!!l§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§'!1§ = param3.width;
         this.§'s§ = param3.height;
         this.§7"6§ = this.§'!1§;
         this.§1"!§ = this.§'s§;
         this.§9r§ = param2.stageWidth;
         this.§1!!§ = param2.stageHeight;
         §2!-§ = true;
         this.§'e§();
         this.§"!=§ = param1;
         this.§3"1§ = param3;
         this.mStage3D = param4;
         this.§&§ = new §1!Y§.Stage(param3.width,param3.height,param2.color);
         this.§4>§ = param2;
         this.§>Q§ = new §3c§(this.§&§);
         this.§8S§ = new §,!n§();
         this.§=!L§ = 0;
         this.§%o§ = false;
         this.§`!V§ = false;
         this.§-!a§ = getTimer() / 1000;
         this.§%!%§ = new Dictionary();
         for each(_loc6_ in this.§#`§)
         {
            param2.addEventListener(_loc6_,this.§-R§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§?R§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§?R§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ i§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§^!7§,false,1,true);
         this.mStage3D.visible = false;
         this.§]w§(true);
         this.§8!r§ = param2.color;
         this.§-+§ = param5;
      }
      
      public static function get §`!8§() : Boolean
      {
         if(§`7§)
         {
            return §`7§.§9c§;
         }
         return true;
      }
      
      public static function §2"9§() : Boolean
      {
         return §-z§ && (§-z§.§=!6§ || §-z§.§6!,§ != null && §-z§.§6!,§.driverInfo != "Disposed");
      }
      
      public static function get §`7§() : §!!l§
      {
         return §-z§;
      }
      
      public static function get §]<§() : §,!n§
      {
         return !!§-z§ ? §-z§.§]<§ : null;
      }
      
      public static function get §&!R§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §&!R§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §2!-§() : Boolean
      {
         return §[W§;
      }
      
      public static function set §2!-§(param1:Boolean) : void
      {
         if(§-z§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §[W§ = param1;
      }
      
      public static function §[i§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§`7§)
         {
            return Texture.§0"-§(§`7§.§6!,§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§-z§.§6!,§)
         {
            §-z§.§6!,§.drawToBitmapData(param1);
         }
         else if(§-z§.§-b§.canvas)
         {
            _loc2_ = §-z§.§-b§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §1!>§() : §1!Y§.DisplayObject
      {
         return this.§2!S§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§8!r§ = param1;
      }
      
      public function get final() : Number
      {
         return this.§'!1§;
      }
      
      public function get §<b§() : Number
      {
         return this.§'s§;
      }
      
      public function §5"%§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§-+§);
         }
         catch(e:Error)
         {
            §6!O§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§1m§ = true;
         this.§4>§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§?R§,false);
         this.§4>§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§?R§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ i§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§^!7§,false);
         for each(_loc1_ in this.§#`§)
         {
            this.§4>§.removeEventListener(_loc1_,this.§-R§,false);
         }
         for each(_loc2_ in this.§%!%§)
         {
            _loc2_.dispose();
         }
         if(this.§6!,§)
         {
            this.§6!,§.dispose();
         }
         if(this.§>Q§)
         {
            this.§>Q§.dispose();
         }
         if(this.§-b§)
         {
            this.§-b§.dispose();
         }
         if(§-z§ == this)
         {
            §-z§ = null;
         }
         if(this.§<m§ && this.§<m§.bitmapData)
         {
            this.§<m§.bitmapData.dispose();
            this.§<m§.bitmapData = null;
         }
      }
      
      private function §6!H§() : void
      {
         this.§6!,§ = this.mStage3D.context3D;
         this.§%!%§ = new Dictionary();
         if(this.§6!,§)
         {
            this.§6!,§.enableErrorChecking = this.§`!V§;
            if(this.§6!,§.driverInfo.indexOf("Software") >= 0)
            {
               this.§9c§ = true;
            }
         }
         else
         {
            this.§9c§ = true;
         }
         this.§&U§();
      }
      
      private function §7!+§() : void
      {
         if(this.§&§.numChildren > 0)
         {
            return;
         }
         if(this.§2!S§ == null)
         {
            this.§2!S§ = new this.§"!=§();
         }
         if(this.§2!S§ == null)
         {
            throw new Error("Invalid root class: " + this.§"!=§);
         }
         this.§&§.addChild(this.§2!S§);
      }
      
      private function §&U§() : void
      {
         this.§5W§ = true;
         this.mStage3D.x = this.§3"1§.x;
         this.mStage3D.y = this.§3"1§.y;
      }
      
      private function render() : void
      {
         if(!§2"9§())
         {
            return;
         }
         if(this.§5W§)
         {
            if(this.§6!,§)
            {
               this.§6!,§.configureBackBuffer(this.§3"1§.width,this.§3"1§.height,this.§=!L§,false);
            }
            this.§5W§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§-!a§;
         this.§-!a§ = _loc1_;
         this.§&§.advanceTime(_loc2_);
         this.§8S§.advanceTime(_loc2_);
         this.§>Q§.advanceTime(_loc2_);
         this.§-b§.§+<§(this.§&§.stageWidth,this.§&§.stageHeight);
         this.§-b§.clear(this.§6!,§,this.§8!r§,1);
         this.§-b§.§0"3§(this.§6!,§,this.§+!i§);
         this.§&§.render(this.§-b§,1);
         this.§-b§.§%A§();
         if(this.§-Y§ != null)
         {
            this.§-Y§();
            this.§-Y§ = null;
         }
         this.§-b§.finishRendering(this.§6!,§);
         this.§-b§.§@&§();
      }
      
      public function set §;-§(param1:Function) : void
      {
         this.§-Y§ = param1;
      }
      
      private function §9W§() : void
      {
         var _loc3_:BitmapData = null;
         this.§4!P§.x = this.§3"1§.x;
         this.§4!P§.y = this.§3"1§.y;
         var _loc1_:int = this.§4!P§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§4!P§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§4>§.addChild(this.§4!P§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§4>§.removeChild(this.§4!P§);
         }
         if(this.§-b§ && this.§-b§.canvas)
         {
            this.§-b§.setCanvasSize(this.§7"6§,this.§1"!§,this.§3"1§.width / this.§&§.stageWidth,this.§3"1§.height / this.§&§.stageHeight);
            _loc3_ = this.§-b§.canvas;
            if(this.§<m§.bitmapData != _loc3_)
            {
               this.§<m§.bitmapData = _loc3_;
            }
            if(this.§4>§.getChildIndex(this.§4!P§) > 0)
            {
               this.§4>§.removeChild(this.§4!P§);
               this.§4>§.addChildAt(this.§4!P§,0);
            }
         }
      }
      
      private function §6!O§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§&§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§&§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§&§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§<7§.addChild(_loc2_);
      }
      
      public function §'e§() : void
      {
         §-z§ = this;
      }
      
      public function start() : void
      {
         this.native = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.native = false;
         this.mStage3D.visible = false;
      }
      
      public function §]w§(param1:Boolean) : void
      {
         this.§]I§ = param1;
      }
      
      private function §3H§() : void
      {
         this.§=!6§ = true;
         if(this.§<m§ == null)
         {
            this.§<m§ = new Bitmap();
            this.§<7§.addChild(this.§<m§);
         }
      }
      
      private function §^!7§(param1:ErrorEvent) : void
      {
         this.§3H§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function § i§(param1:flash.events.Event) : void
      {
         if(this.§1m§)
         {
            return;
         }
         ++§[5§;
         this.§+!i§ = §[5§;
         if(this.§-b§)
         {
            this.§-b§.dispose();
         }
         if(!§!!l§.§2!-§ && this.§6!,§)
         {
            this.§6!O§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§'e§();
         this.§6!H§();
         this.§7!+§();
         if(this.§6!,§ && this.§9c§)
         {
            this.mStage3DEnabled = false;
            this.§6!,§ = null;
            this.§3H§();
         }
         if(this.§6!,§)
         {
            this.§-b§ = new §1!O§();
         }
         else
         {
            this.§-b§ = new §@!b§();
            this.§-b§.setCanvasSize(this.§7"6§,this.§1"!§,this.§3"1§.width / this.§&§.stageWidth,this.§3"1§.height / this.§&§.stageHeight);
            this.§-b§.clear(null,this.§8!r§);
         }
         this.§>Q§.§`!q§ = this.§%o§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§'e§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§-!a§;
         if(this.native || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§4!P§)
         {
            this.§9W§();
         }
      }
      
      private function §?R§(param1:flash.events.KeyboardEvent) : void
      {
         this.§'e§();
         this.§&§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§'!1§;
         var _loc5_:Number = param2 / this.§'s§;
         if(!param3)
         {
            this.§&§.stageWidth = this.§'!1§ * _loc4_ / _loc5_;
            this.§&§.stageHeight = this.§'s§;
         }
         else
         {
            this.§&§.stageWidth = this.§'!1§;
            this.§&§.stageHeight = this.§'s§ * _loc5_ / _loc4_;
         }
         this.§7"6§ = param1;
         this.§1"!§ = param2;
         this.§&§.dispatchEvent(new §["4§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §;!o§() : void
      {
         this.setCanvasSize(this.§'!1§,this.§'s§);
      }
      
      private function §-R§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.native || !this.§]I§)
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
               this.§^!=§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§^!=§ = false;
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
               _loc5_ = §<!O§.§<z§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §<!O§.§!+§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §<!O§.§&!h§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §<!O§.§<z§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §<!O§.§&!h§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§^!=§ ? §<!O§.§!+§ : §<!O§.§9",§;
         }
         if((_loc2_ < this.§3"1§.left || _loc2_ >= this.§3"1§.right || _loc3_ < this.§3"1§.top || _loc3_ >= this.§3"1§.bottom) && _loc5_ == §<!O§.§<z§)
         {
            return;
         }
         _loc2_ -= this.§3"1§.x;
         _loc3_ -= this.§3"1§.y;
         this.§>Q§.§+"#§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §#`§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §0A§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§%!%§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§6!,§ != null)
         {
            (_loc4_ = this.§6!,§.createProgram()).upload(param2,param3);
            this.§%!%§[param1] = _loc4_;
         }
      }
      
      public function §&"+§(param1:String) : void
      {
         var _loc2_:Program3D = this.§+§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§%!%§[param1];
         }
      }
      
      public function §+§(param1:String) : Program3D
      {
         return this.§%!%§[param1] as Program3D;
      }
      
      public function §=![§(param1:String) : Boolean
      {
         return param1 in this.§%!%§;
      }
      
      public function get §[4§() : Boolean
      {
         return this.native;
      }
      
      public function get §]<§() : §,!n§
      {
         return this.§8S§;
      }
      
      public function get §`!q§() : Boolean
      {
         return this.§%o§;
      }
      
      public function set §`!q§(param1:Boolean) : void
      {
         this.§%o§ = param1;
         if(this.§6!,§)
         {
            this.§>Q§.§`!q§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§`!V§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§`!V§ = param1;
         if(this.§6!,§)
         {
            this.§6!,§.enableErrorChecking = param1;
         }
      }
      
      public function get §#H§() : int
      {
         return this.§=!L§;
      }
      
      public function set §#H§(param1:int) : void
      {
         this.§=!L§ = param1;
         this.§&U§();
      }
      
      public function get §35§() : Rectangle
      {
         return this.§3"1§.clone();
      }
      
      public function set §35§(param1:Rectangle) : void
      {
         this.§3"1§ = param1.clone();
         this.§&U§();
      }
      
      public function get §<7§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§4!P§ == null)
         {
            this.§4!P§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§4!P§.contextMenu = _loc1_;
            this.§9W§();
         }
         return this.§4!P§;
      }
      
      public function get stage() : §1!Y§.Stage
      {
         return this.§&§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §3!=§() : flash.display.Stage
      {
         return this.§4>§;
      }
      
      public function get §>!B§() : Boolean
      {
         return !this.§=!6§;
      }
   }
}
