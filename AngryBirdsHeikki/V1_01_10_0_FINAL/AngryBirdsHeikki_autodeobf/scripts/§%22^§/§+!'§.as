package §"^§
{
   import §,M§.§3!2§;
   import §2Y§.DisplayObject;
   import §2Y§.Stage;
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
   import starling.events.§5k§;
   import starling.events.§8U§;
   import starling.events.§9i§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §+!'§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §[U§:§+!'§;
      
      private static var §@q§:Boolean;
      
      private static var §]!4§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §18§:§2Y§.Stage;
      
      private var §'7§:Class;
      
      private var §,=§:§2Y§.DisplayObject;
      
      private var §@U§:§3!2§;
      
      private var §+!A§:Boolean;
      
      private var §%!`§:Boolean;
      
      private var §@!Z§:§'X§;
      
      private var §]!P§:§8U§;
      
      private var §[§:int;
      
      private var §5>§:Boolean;
      
      private var §<V§:Boolean;
      
      private var §;X§:Number;
      
      private var §2!"§:Rectangle;
      
      private var §<!8§:Boolean;
      
      private var §0!A§:flash.display.Stage;
      
      private var §&!W§:Sprite;
      
      private var §`!D§:Context3D;
      
      private var §?#§:Dictionary;
      
      private var §!M§:int;
      
      private var §'x§:Boolean;
      
      private var §[!L§:Number;
      
      private var §68§:Number;
      
      private var §+;§:Number;
      
      private var §5!F§:Number;
      
      private var §!!a§:Number;
      
      private var §2%§:Number;
      
      private var §,!D§:Function;
      
      private var §`!G§:uint;
      
      private var §^!d§:String;
      
      private var §&!J§:Bitmap;
      
      private var §"&§:Boolean = false;
      
      private var §54§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §8N§:Boolean = false;
      
      public function §+!'§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§[!L§ = param3.width;
         this.§68§ = param3.height;
         this.§+;§ = this.§[!L§;
         this.§5!F§ = this.§68§;
         this.§!!a§ = param2.stageWidth;
         this.§2%§ = param2.stageHeight;
         §@N§ = true;
         this.§>`§();
         this.§'7§ = param1;
         this.§2!"§ = param3;
         this.mStage3D = param4;
         this.§18§ = new §2Y§.Stage(param3.width,param3.height,param2.color);
         this.§0!A§ = param2;
         this.§]!P§ = new §8U§(this.§18§);
         this.§@U§ = new §3!2§();
         this.§[§ = 0;
         this.§5>§ = false;
         this.§<V§ = false;
         this.§;X§ = getTimer() / 1000;
         this.§?#§ = new Dictionary();
         for each(_loc6_ in this.§@f§)
         {
            param2.addEventListener(_loc6_,this.§%!+§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'!7§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'!7§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!c§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§0%§,false,1,true);
         this.mStage3D.visible = false;
         this.§]K§(true);
         this.§`!G§ = param2.color;
         this.§^!d§ = param5;
      }
      
      public static function get §"!#§() : Boolean
      {
         if(§2d§)
         {
            return §2d§.§'x§;
         }
         return true;
      }
      
      public static function §`4§() : Boolean
      {
         return §[U§ && (§[U§.§"&§ || §[U§.§`!D§ != null && §[U§.§`!D§.driverInfo != "Disposed");
      }
      
      public static function get §2d§() : §+!'§
      {
         return §[U§;
      }
      
      public static function get §9!;§() : §3!2§
      {
         return !!§[U§ ? §[U§.§9!;§ : null;
      }
      
      public static function get §85§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §85§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §@N§() : Boolean
      {
         return §@q§;
      }
      
      public static function set §@N§(param1:Boolean) : void
      {
         if(§[U§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §@q§ = param1;
      }
      
      public static function §!a§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§2d§)
         {
            return Texture.§!?§(§2d§.§`!D§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§[U§.§`!D§)
         {
            §[U§.§`!D§.drawToBitmapData(param1);
         }
         else if(§[U§.§@!Z§.canvas)
         {
            _loc2_ = §[U§.§@!Z§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §&i§() : §2Y§.DisplayObject
      {
         return this.§,=§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§`!G§ = param1;
      }
      
      public function get §[!D§() : Number
      {
         return this.§[!L§;
      }
      
      public function get §1l§() : Number
      {
         return this.§68§;
      }
      
      public function §+T§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§^!d§);
         }
         catch(e:Error)
         {
            §@!B§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§8N§ = true;
         this.§0!A§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'!7§,false);
         this.§0!A§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'!7§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!c§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§0%§,false);
         for each(_loc1_ in this.§@f§)
         {
            this.§0!A§.removeEventListener(_loc1_,this.§%!+§,false);
         }
         for each(_loc2_ in this.§?#§)
         {
            _loc2_.dispose();
         }
         if(this.§`!D§)
         {
            this.§`!D§.dispose();
         }
         if(this.§]!P§)
         {
            this.§]!P§.dispose();
         }
         if(this.§@!Z§)
         {
            this.§@!Z§.dispose();
         }
         if(§[U§ == this)
         {
            §[U§ = null;
         }
         if(this.§&!J§ && this.§&!J§.bitmapData)
         {
            this.§&!J§.bitmapData.dispose();
            this.§&!J§.bitmapData = null;
         }
      }
      
      private function §89§() : void
      {
         this.§`!D§ = this.mStage3D.context3D;
         this.§?#§ = new Dictionary();
         if(this.§`!D§)
         {
            this.§`!D§.enableErrorChecking = this.§<V§;
            if(this.§`!D§.driverInfo.indexOf("Software") >= 0)
            {
               this.§'x§ = true;
            }
         }
         else
         {
            this.§'x§ = true;
         }
         this.§?!P§();
      }
      
      private function §8!'§() : void
      {
         if(this.§18§.numChildren > 0)
         {
            return;
         }
         if(this.§,=§ == null)
         {
            this.§,=§ = new this.§'7§();
         }
         if(this.§,=§ == null)
         {
            throw new Error("Invalid root class: " + this.§'7§);
         }
         this.§18§.addChild(this.§,=§);
      }
      
      private function §?!P§() : void
      {
         this.§54§ = true;
         this.mStage3D.x = this.§2!"§.x;
         this.mStage3D.y = this.§2!"§.y;
      }
      
      private function render() : void
      {
         if(!§`4§())
         {
            return;
         }
         if(this.§54§)
         {
            if(this.§`!D§)
            {
               this.§`!D§.configureBackBuffer(this.§2!"§.width,this.§2!"§.height,this.§[§,false);
            }
            this.§54§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§;X§;
         this.§;X§ = _loc1_;
         this.§18§.advanceTime(_loc2_);
         this.§@U§.advanceTime(_loc2_);
         this.§]!P§.advanceTime(_loc2_);
         this.§@!Z§.§1!9§(this.§18§.stageWidth,this.§18§.stageHeight);
         this.§@!Z§.clear(this.§`!D§,this.§`!G§,1);
         this.§@!Z§.§4B§(this.§`!D§,this.§!M§);
         this.§18§.render(this.§@!Z§,1);
         this.§@!Z§.§;!S§();
         if(this.§,!D§ != null)
         {
            this.§,!D§();
            this.§,!D§ = null;
         }
         this.§@!Z§.finishRendering(this.§`!D§);
         this.§@!Z§.§extends§();
      }
      
      public function set §83§(param1:Function) : void
      {
         this.§,!D§ = param1;
      }
      
      private function §8!>§() : void
      {
         var _loc3_:BitmapData = null;
         this.§&!W§.x = this.§2!"§.x;
         this.§&!W§.y = this.§2!"§.y;
         var _loc1_:int = this.§&!W§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§&!W§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§0!A§.addChild(this.§&!W§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§0!A§.removeChild(this.§&!W§);
         }
         if(this.§@!Z§ && this.§@!Z§.canvas)
         {
            this.§@!Z§.setCanvasSize(this.§+;§,this.§5!F§,this.§2!"§.width / this.§18§.stageWidth,this.§2!"§.height / this.§18§.stageHeight);
            _loc3_ = this.§@!Z§.canvas;
            if(this.§&!J§.bitmapData != _loc3_)
            {
               this.§&!J§.bitmapData = _loc3_;
            }
            if(this.§0!A§.getChildIndex(this.§&!W§) > 0)
            {
               this.§0!A§.removeChild(this.§&!W§);
               this.§0!A§.addChildAt(this.§&!W§,0);
            }
         }
      }
      
      private function §@!B§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§18§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§18§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§18§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§<!#§.addChild(_loc2_);
      }
      
      public function §>`§() : void
      {
         §[U§ = this;
      }
      
      public function start() : void
      {
         this.§+!A§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§+!A§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §]K§(param1:Boolean) : void
      {
         this.§%!`§ = param1;
      }
      
      private function §]H§() : void
      {
         this.§"&§ = true;
         if(this.§&!J§ == null)
         {
            this.§&!J§ = new Bitmap();
            this.§<!#§.addChild(this.§&!J§);
         }
      }
      
      private function §0%§(param1:ErrorEvent) : void
      {
         this.§]H§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §3!c§(param1:flash.events.Event) : void
      {
         if(this.§8N§)
         {
            return;
         }
         ++§]!4§;
         this.§!M§ = §]!4§;
         if(this.§@!Z§)
         {
            this.§@!Z§.dispose();
         }
         if(!§+!'§.§@N§ && this.§`!D§)
         {
            this.§@!B§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§>`§();
         this.§89§();
         this.§8!'§();
         if(this.§`!D§ && this.§'x§)
         {
            this.mStage3DEnabled = false;
            this.§`!D§ = null;
            this.§]H§();
         }
         if(this.§`!D§)
         {
            this.§@!Z§ = new §'X§();
         }
         else
         {
            this.§@!Z§ = new §5I§();
            this.§@!Z§.setCanvasSize(this.§+;§,this.§5!F§,this.§2!"§.width / this.§18§.stageWidth,this.§2!"§.height / this.§18§.stageHeight);
            this.§@!Z§.clear(null,this.§`!G§);
         }
         this.§]!P§.simulateMultitouch = this.§5>§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §@8§(param1:flash.events.Event) : void
      {
         this.§>`§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§;X§;
         if(this.§+!A§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§&!W§)
         {
            this.§8!>§();
         }
      }
      
      private function §'!7§(param1:flash.events.KeyboardEvent) : void
      {
         this.§>`§();
         this.§18§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§[!L§;
         var _loc5_:Number = param2 / this.§68§;
         if(!param3)
         {
            this.§18§.stageWidth = this.§[!L§ * _loc4_ / _loc5_;
            this.§18§.stageHeight = this.§68§;
         }
         else
         {
            this.§18§.stageWidth = this.§[!L§;
            this.§18§.stageHeight = this.§68§ * _loc5_ / _loc4_;
         }
         this.§+;§ = param1;
         this.§5!F§ = param2;
         this.§18§.dispatchEvent(new §5k§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §^!&§() : void
      {
         this.setCanvasSize(this.§[!L§,this.§68§);
      }
      
      private function §%!+§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§+!A§ || !this.§%!`§)
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
               this.§<!8§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§<!8§ = false;
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
               _loc5_ = §9i§.§%J§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §9i§.§]W§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §9i§.§9a§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §9i§.§%J§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §9i§.§9a§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§<!8§ ? §9i§.§]W§ : §9i§.§'+§;
         }
         if((_loc2_ < this.§2!"§.left || _loc2_ >= this.§2!"§.right || _loc3_ < this.§2!"§.top || _loc3_ >= this.§2!"§.bottom) && _loc5_ == §9i§.§%J§)
         {
            return;
         }
         _loc2_ -= this.§2!"§.x;
         _loc3_ -= this.§2!"§.y;
         this.§]!P§.§&I§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §@f§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §;!a§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§?#§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§`!D§ != null)
         {
            (_loc4_ = this.§`!D§.createProgram()).upload(param2,param3);
            this.§?#§[param1] = _loc4_;
         }
      }
      
      public function §!!W§(param1:String) : void
      {
         var _loc2_:Program3D = this.§>!T§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§?#§[param1];
         }
      }
      
      public function §>!T§(param1:String) : Program3D
      {
         return this.§?#§[param1] as Program3D;
      }
      
      public function §9!A§(param1:String) : Boolean
      {
         return param1 in this.§?#§;
      }
      
      public function get §@!c§() : Boolean
      {
         return this.§+!A§;
      }
      
      public function get §9!;§() : §3!2§
      {
         return this.§@U§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§5>§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§5>§ = param1;
         if(this.§`!D§)
         {
            this.§]!P§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§<V§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§<V§ = param1;
         if(this.§`!D§)
         {
            this.§`!D§.enableErrorChecking = param1;
         }
      }
      
      public function get §<!W§() : int
      {
         return this.§[§;
      }
      
      public function set §<!W§(param1:int) : void
      {
         this.§[§ = param1;
         this.§?!P§();
      }
      
      public function get §9!_§() : Rectangle
      {
         return this.§2!"§.clone();
      }
      
      public function set §9!_§(param1:Rectangle) : void
      {
         this.§2!"§ = param1.clone();
         this.§?!P§();
      }
      
      public function get §<!#§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§&!W§ == null)
         {
            this.§&!W§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§&!W§.contextMenu = _loc1_;
            this.§8!>§();
         }
         return this.§&!W§;
      }
      
      public function get stage() : §2Y§.Stage
      {
         return this.§18§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §%4§() : flash.display.Stage
      {
         return this.§0!A§;
      }
      
      public function get §<!]§() : Boolean
      {
         return !this.§"&§;
      }
   }
}
