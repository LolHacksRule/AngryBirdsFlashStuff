package §+&§
{
   import §&!9§.DisplayObject;
   import §&!9§.Stage;
   import §6!4§.Texture;
   import §>S§.§,[§;
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
   import starling.events.§,O§;
   import starling.events.§4!c§;
   import starling.events.§5o§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §?y§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §4!8§:§?y§;
      
      private static var §^f§:Boolean;
      
      private static var §]]§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §@!c§:§&!9§.Stage;
      
      private var §5!'§:Class;
      
      private var §"u§:§&!9§.DisplayObject;
      
      private var § !]§:§,[§;
      
      private var §3p§:Boolean;
      
      private var §'!&§:Boolean;
      
      private var § !#§:§;J§;
      
      private var §4z§:§,O§;
      
      private var §3!S§:int;
      
      private var §-E§:Boolean;
      
      private var §&!&§:Boolean;
      
      private var §-#§:Number;
      
      private var §`C§:Rectangle;
      
      private var §^,§:Boolean;
      
      private var §@t§:flash.display.Stage;
      
      private var §]!7§:Sprite;
      
      private var §,k§:Context3D;
      
      private var §0!4§:Dictionary;
      
      private var §8!<§:int;
      
      private var §?!?§:Boolean;
      
      private var §;!a§:Number;
      
      private var §=H§:Number;
      
      private var §-R§:Number;
      
      private var §<!3§:Number;
      
      private var §,R§:Number;
      
      private var §=!;§:Number;
      
      private var §]!%§:Function;
      
      private var §&!^§:uint;
      
      private var § w§:String;
      
      private var §7R§:Bitmap;
      
      private var §-!E§:Boolean = false;
      
      private var §+#§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §0Q§:Boolean = false;
      
      public function §?y§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§;!a§ = param3.width;
         this.§=H§ = param3.height;
         this.§-R§ = this.§;!a§;
         this.§<!3§ = this.§=H§;
         this.§,R§ = param2.stageWidth;
         this.§=!;§ = param2.stageHeight;
         §12§ = true;
         this.§3d§();
         this.§5!'§ = param1;
         this.§`C§ = param3;
         this.mStage3D = param4;
         this.§@!c§ = new §&!9§.Stage(param3.width,param3.height,param2.color);
         this.§@t§ = param2;
         this.§4z§ = new §,O§(this.§@!c§);
         this.§ !]§ = new §,[§();
         this.§3!S§ = 0;
         this.§-E§ = false;
         this.§&!&§ = false;
         this.§-#§ = getTimer() / 1000;
         this.§0!4§ = new Dictionary();
         for each(_loc6_ in this.§ !W§)
         {
            param2.addEventListener(_loc6_,this.§<!V§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§2i§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§2i§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§>l§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§`L§,false,1,true);
         this.mStage3D.visible = false;
         this.§!!W§(true);
         this.§&!^§ = param2.color;
         this.§ w§ = param5;
      }
      
      public static function get §+r§() : Boolean
      {
         if(§,u§)
         {
            return §,u§.§?!?§;
         }
         return true;
      }
      
      public static function §1L§() : Boolean
      {
         return §4!8§ && (§4!8§.§-!E§ || §4!8§.§,k§ != null && §4!8§.§,k§.driverInfo != "Disposed");
      }
      
      public static function get §,u§() : §?y§
      {
         return §4!8§;
      }
      
      public static function get §0&§() : §,[§
      {
         return !!§4!8§ ? §4!8§.§0&§ : null;
      }
      
      public static function get §<!G§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §<!G§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §12§() : Boolean
      {
         return §^f§;
      }
      
      public static function set §12§(param1:Boolean) : void
      {
         if(§4!8§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §^f§ = param1;
      }
      
      public static function §,!]§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§,u§)
         {
            return Texture.§=!%§(§,u§.§,k§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§4!8§.§,k§)
         {
            §4!8§.§,k§.drawToBitmapData(param1);
         }
         else if(§4!8§.§ !#§.canvas)
         {
            _loc2_ = §4!8§.§ !#§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §<!,§() : §&!9§.DisplayObject
      {
         return this.§"u§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§&!^§ = param1;
      }
      
      public function get §=!!§() : Number
      {
         return this.§;!a§;
      }
      
      public function get §var§() : Number
      {
         return this.§=H§;
      }
      
      public function §4e§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§ w§);
         }
         catch(e:Error)
         {
            §9V§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§0Q§ = true;
         this.§@t§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§2i§,false);
         this.§@t§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§2i§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§>l§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§`L§,false);
         for each(_loc1_ in this.§ !W§)
         {
            this.§@t§.removeEventListener(_loc1_,this.§<!V§,false);
         }
         for each(_loc2_ in this.§0!4§)
         {
            _loc2_.dispose();
         }
         if(this.§,k§)
         {
            this.§,k§.dispose();
         }
         if(this.§4z§)
         {
            this.§4z§.dispose();
         }
         if(this.§ !#§)
         {
            this.§ !#§.dispose();
         }
         if(§4!8§ == this)
         {
            §4!8§ = null;
         }
         if(this.§7R§ && this.§7R§.bitmapData)
         {
            this.§7R§.bitmapData.dispose();
            this.§7R§.bitmapData = null;
         }
      }
      
      private function §4?§() : void
      {
         this.§,k§ = this.mStage3D.context3D;
         this.§0!4§ = new Dictionary();
         if(this.§,k§)
         {
            this.§,k§.enableErrorChecking = this.§&!&§;
            if(this.§,k§.driverInfo.indexOf("Software") >= 0)
            {
               this.§?!?§ = true;
            }
         }
         else
         {
            this.§?!?§ = true;
         }
         this.§9'§();
      }
      
      private function §#L§() : void
      {
         if(this.§@!c§.numChildren > 0)
         {
            return;
         }
         if(this.§"u§ == null)
         {
            this.§"u§ = new this.§5!'§();
         }
         if(this.§"u§ == null)
         {
            throw new Error("Invalid root class: " + this.§5!'§);
         }
         this.§@!c§.addChild(this.§"u§);
      }
      
      private function §9'§() : void
      {
         this.§+#§ = true;
         this.mStage3D.x = this.§`C§.x;
         this.mStage3D.y = this.§`C§.y;
      }
      
      private function render() : void
      {
         if(!§1L§())
         {
            return;
         }
         if(this.§+#§)
         {
            if(this.§,k§)
            {
               this.§,k§.configureBackBuffer(this.§`C§.width,this.§`C§.height,this.§3!S§,false);
            }
            this.§+#§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§-#§;
         this.§-#§ = _loc1_;
         this.§@!c§.advanceTime(_loc2_);
         this.§ !]§.advanceTime(_loc2_);
         this.§4z§.advanceTime(_loc2_);
         this.§ !#§.§!1§(this.§@!c§.stageWidth,this.§@!c§.stageHeight);
         this.§ !#§.clear(this.§,k§,this.§&!^§,1);
         this.§ !#§.§5!#§(this.§,k§,this.§8!<§);
         this.§@!c§.render(this.§ !#§,1);
         this.§ !#§.§;5§();
         if(this.§]!%§ != null)
         {
            this.§]!%§();
            this.§]!%§ = null;
         }
         this.§ !#§.finishRendering(this.§,k§);
         this.§ !#§.§]@§();
      }
      
      public function set §#!Q§(param1:Function) : void
      {
         this.§]!%§ = param1;
      }
      
      private function §4§() : void
      {
         var _loc3_:BitmapData = null;
         this.§]!7§.x = this.§`C§.x;
         this.§]!7§.y = this.§`C§.y;
         var _loc1_:int = this.§]!7§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§]!7§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§@t§.addChild(this.§]!7§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§@t§.removeChild(this.§]!7§);
         }
         if(this.§ !#§ && this.§ !#§.canvas)
         {
            this.§ !#§.setCanvasSize(this.§-R§,this.§<!3§,this.§`C§.width / this.§@!c§.stageWidth,this.§`C§.height / this.§@!c§.stageHeight);
            _loc3_ = this.§ !#§.canvas;
            if(this.§7R§.bitmapData != _loc3_)
            {
               this.§7R§.bitmapData = _loc3_;
            }
            if(this.§@t§.getChildIndex(this.§]!7§) > 0)
            {
               this.§@t§.removeChild(this.§]!7§);
               this.§@t§.addChildAt(this.§]!7§,0);
            }
         }
      }
      
      private function §9V§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§@!c§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§@!c§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§@!c§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§<!§.addChild(_loc2_);
      }
      
      public function §3d§() : void
      {
         §4!8§ = this;
      }
      
      public function start() : void
      {
         this.§3p§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§3p§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §!!W§(param1:Boolean) : void
      {
         this.§'!&§ = param1;
      }
      
      private function §=!A§() : void
      {
         this.§-!E§ = true;
         if(this.§7R§ == null)
         {
            this.§7R§ = new Bitmap();
            this.§<!§.addChild(this.§7R§);
         }
      }
      
      private function §`L§(param1:ErrorEvent) : void
      {
         this.§=!A§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §>l§(param1:flash.events.Event) : void
      {
         if(this.§0Q§)
         {
            return;
         }
         ++§]]§;
         this.§8!<§ = §]]§;
         if(this.§ !#§)
         {
            this.§ !#§.dispose();
         }
         if(!§?y§.§12§ && this.§,k§)
         {
            this.§9V§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§3d§();
         this.§4?§();
         this.§#L§();
         if(this.§,k§ && this.§?!?§)
         {
            this.mStage3DEnabled = false;
            this.§,k§ = null;
            this.§=!A§();
         }
         if(this.§,k§)
         {
            this.§ !#§ = new §;J§();
         }
         else
         {
            this.§ !#§ = new §3y§();
            this.§ !#§.setCanvasSize(this.§-R§,this.§<!3§,this.§`C§.width / this.§@!c§.stageWidth,this.§`C§.height / this.§@!c§.stageHeight);
            this.§ !#§.clear(null,this.§&!^§);
         }
         this.§4z§.simulateMultitouch = this.§-E§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §3!I§(param1:flash.events.Event) : void
      {
         this.§3d§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§-#§;
         if(this.§3p§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§]!7§)
         {
            this.§4§();
         }
      }
      
      private function §2i§(param1:flash.events.KeyboardEvent) : void
      {
         this.§3d§();
         this.§@!c§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§;!a§;
         var _loc5_:Number = param2 / this.§=H§;
         if(!param3)
         {
            this.§@!c§.stageWidth = this.§;!a§ * _loc4_ / _loc5_;
            this.§@!c§.stageHeight = this.§=H§;
         }
         else
         {
            this.§@!c§.stageWidth = this.§;!a§;
            this.§@!c§.stageHeight = this.§=H§ * _loc5_ / _loc4_;
         }
         this.§-R§ = param1;
         this.§<!3§ = param2;
         this.§@!c§.dispatchEvent(new §4!c§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §`l§() : void
      {
         this.setCanvasSize(this.§;!a§,this.§=H§);
      }
      
      private function §<!V§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§3p§ || !this.§'!&§)
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
               this.§^,§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§^,§ = false;
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
               _loc5_ = §5o§.§"[§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §5o§.§!P§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §5o§.§0!+§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §5o§.§"[§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §5o§.§0!+§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§^,§ ? §5o§.§!P§ : §5o§.§>p§;
         }
         if((_loc2_ < this.§`C§.left || _loc2_ >= this.§`C§.right || _loc3_ < this.§`C§.top || _loc3_ >= this.§`C§.bottom) && _loc5_ == §5o§.§"[§)
         {
            return;
         }
         _loc2_ -= this.§`C§.x;
         _loc3_ -= this.§`C§.y;
         this.§4z§.§=#§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get § !W§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §<l§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§0!4§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§,k§ != null)
         {
            (_loc4_ = this.§,k§.createProgram()).upload(param2,param3);
            this.§0!4§[param1] = _loc4_;
         }
      }
      
      public function §01§(param1:String) : void
      {
         var _loc2_:Program3D = this.§9`§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§0!4§[param1];
         }
      }
      
      public function §9`§(param1:String) : Program3D
      {
         return this.§0!4§[param1] as Program3D;
      }
      
      public function §=7§(param1:String) : Boolean
      {
         return param1 in this.§0!4§;
      }
      
      public function get §,!>§() : Boolean
      {
         return this.§3p§;
      }
      
      public function get §0&§() : §,[§
      {
         return this.§ !]§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§-E§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§-E§ = param1;
         if(this.§,k§)
         {
            this.§4z§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§&!&§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§&!&§ = param1;
         if(this.§,k§)
         {
            this.§,k§.enableErrorChecking = param1;
         }
      }
      
      public function get §->§() : int
      {
         return this.§3!S§;
      }
      
      public function set §->§(param1:int) : void
      {
         this.§3!S§ = param1;
         this.§9'§();
      }
      
      public function get §@f§() : Rectangle
      {
         return this.§`C§.clone();
      }
      
      public function set §@f§(param1:Rectangle) : void
      {
         this.§`C§ = param1.clone();
         this.§9'§();
      }
      
      public function get §<!§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§]!7§ == null)
         {
            this.§]!7§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§]!7§.contextMenu = _loc1_;
            this.§4§();
         }
         return this.§]!7§;
      }
      
      public function get stage() : §&!9§.Stage
      {
         return this.§@!c§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §7b§() : flash.display.Stage
      {
         return this.§@t§;
      }
      
      public function get §>-§() : Boolean
      {
         return !this.§-!E§;
      }
   }
}
