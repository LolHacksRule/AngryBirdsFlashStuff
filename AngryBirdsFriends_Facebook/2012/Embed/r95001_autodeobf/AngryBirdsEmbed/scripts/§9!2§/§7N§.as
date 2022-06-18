package §9!2§
{
   import §9! §.§7X§;
   import §<-§.Texture;
   import §<k§.DisplayObject;
   import §<k§.Stage;
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
   import starling.events.§#z§;
   import starling.events.§8P§;
   import starling.events.§=T§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §7N§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var § ?§:§7N§;
      
      private static var §1!4§:Boolean;
      
      private static var §[!B§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var § d§:§<k§.Stage;
      
      private var §=i§:Class;
      
      private var §6!5§:§<k§.DisplayObject;
      
      private var §&i§:§7X§;
      
      private var §]2§:Boolean;
      
      private var §7?§:Boolean;
      
      private var §&D§:§>P§;
      
      private var §1E§:§#z§;
      
      private var §#>§:int;
      
      private var §0E§:Boolean;
      
      private var §]!F§:Boolean;
      
      private var §%a§:Number;
      
      private var §&#§:Rectangle;
      
      private var §+!%§:Boolean;
      
      private var §8!D§:flash.display.Stage;
      
      private var §#§:Sprite;
      
      private var §7u§:Context3D;
      
      private var §;B§:Dictionary;
      
      private var §@V§:int;
      
      private var §"!7§:Boolean;
      
      private var §]Q§:Number;
      
      private var §--§:Number;
      
      private var §^!2§:Number;
      
      private var §&`§:Number;
      
      private var §?!E§:Number;
      
      private var §?!!§:Number;
      
      private var §&!!§:Function;
      
      private var §%L§:uint;
      
      private var §!!E§:String;
      
      private var §-!8§:Bitmap;
      
      private var §?!,§:Boolean = false;
      
      private var §'!-§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §6! §:Boolean = false;
      
      public function §7N§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§]Q§ = param3.width;
         this.§--§ = param3.height;
         this.§^!2§ = this.§]Q§;
         this.§&`§ = this.§--§;
         this.§?!E§ = param2.stageWidth;
         this.§?!!§ = param2.stageHeight;
         §!!!§ = true;
         this.§ _§();
         this.§=i§ = param1;
         this.§&#§ = param3;
         this.mStage3D = param4;
         this.§ d§ = new §<k§.Stage(param3.width,param3.height,param2.color);
         this.§8!D§ = param2;
         this.§1E§ = new §#z§(this.§ d§);
         this.§&i§ = new §7X§();
         this.§#>§ = 0;
         this.§0E§ = false;
         this.§]!F§ = false;
         this.§%a§ = getTimer() / 1000;
         this.§;B§ = new Dictionary();
         for each(_loc6_ in this.§<%§)
         {
            param2.addEventListener(_loc6_,this.§%r§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§=7§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§!'§,false,1,true);
         this.mStage3D.visible = false;
         this.§]!8§(true);
         this.§%L§ = param2.color;
         this.§!!E§ = param5;
      }
      
      public static function get §;Y§() : Boolean
      {
         if(§17§)
         {
            return §17§.§"!7§;
         }
         return true;
      }
      
      public static function §&Z§() : Boolean
      {
         return § ?§ && (§ ?§.§?!,§ || § ?§.§7u§ != null && § ?§.§7u§.driverInfo != "Disposed");
      }
      
      public static function get §17§() : §7N§
      {
         return § ?§;
      }
      
      public static function get §<Y§() : §7X§
      {
         return !!§ ?§ ? § ?§.§<Y§ : null;
      }
      
      public static function get §&!?§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §&!?§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §!!!§() : Boolean
      {
         return §1!4§;
      }
      
      public static function set §!!!§(param1:Boolean) : void
      {
         if(§ ?§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §1!4§ = param1;
      }
      
      public static function §7!1§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§17§)
         {
            return Texture.§ O§(§17§.§7u§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§ ?§.§7u§)
         {
            § ?§.§7u§.drawToBitmapData(param1);
         }
         else if(§ ?§.§&D§.canvas)
         {
            _loc2_ = § ?§.§&D§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §4!9§() : §<k§.DisplayObject
      {
         return this.§6!5§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§%L§ = param1;
      }
      
      public function get §@W§() : Number
      {
         return this.§]Q§;
      }
      
      public function get §@!1§() : Number
      {
         return this.§--§;
      }
      
      public function § !&§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§!!E§);
         }
         catch(e:Error)
         {
            §9O§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§6! § = true;
         this.§8!D§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§8!D§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§=7§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§!'§,false);
         for each(_loc1_ in this.§<%§)
         {
            this.§8!D§.removeEventListener(_loc1_,this.§%r§,false);
         }
         for each(_loc2_ in this.§;B§)
         {
            _loc2_.dispose();
         }
         if(this.§7u§)
         {
            this.§7u§.dispose();
         }
         if(this.§1E§)
         {
            this.§1E§.dispose();
         }
         if(this.§&D§)
         {
            this.§&D§.dispose();
         }
         if(§ ?§ == this)
         {
            § ?§ = null;
         }
         if(this.§-!8§ && this.§-!8§.bitmapData)
         {
            this.§-!8§.bitmapData.dispose();
            this.§-!8§.bitmapData = null;
         }
      }
      
      private function §+7§() : void
      {
         this.§7u§ = this.mStage3D.context3D;
         this.§;B§ = new Dictionary();
         if(this.§7u§)
         {
            this.§7u§.enableErrorChecking = this.§]!F§;
            if(this.§7u§.driverInfo.indexOf("Software") >= 0)
            {
               this.§"!7§ = true;
            }
         }
         else
         {
            this.§"!7§ = true;
         }
         this.§]u§();
      }
      
      private function §!R§() : void
      {
         if(this.§ d§.numChildren > 0)
         {
            return;
         }
         if(this.§6!5§ == null)
         {
            this.§6!5§ = new this.§=i§();
         }
         if(this.§6!5§ == null)
         {
            throw new Error("Invalid root class: " + this.§=i§);
         }
         this.§ d§.addChild(this.§6!5§);
      }
      
      private function §]u§() : void
      {
         this.§'!-§ = true;
         this.mStage3D.x = this.§&#§.x;
         this.mStage3D.y = this.§&#§.y;
      }
      
      private function render() : void
      {
         if(!§&Z§())
         {
            return;
         }
         if(this.§'!-§)
         {
            if(this.§7u§)
            {
               this.§7u§.configureBackBuffer(this.§&#§.width,this.§&#§.height,this.§#>§,false);
            }
            this.§'!-§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§%a§;
         this.§%a§ = _loc1_;
         this.§ d§.advanceTime(_loc2_);
         this.§&i§.advanceTime(_loc2_);
         this.§1E§.advanceTime(_loc2_);
         this.§&D§.§<P§(this.§ d§.stageWidth,this.§ d§.stageHeight);
         this.§&D§.clear(this.§7u§,this.§%L§,1);
         this.§&D§.§@E§(this.§7u§,this.§@V§);
         this.§ d§.render(this.§&D§,1);
         this.§&D§.§%!G§();
         if(this.§&!!§ != null)
         {
            this.§&!!§();
            this.§&!!§ = null;
         }
         this.§&D§.finishRendering(this.§7u§);
         this.§&D§.§^z§();
      }
      
      public function set §?!D§(param1:Function) : void
      {
         this.§&!!§ = param1;
      }
      
      private function §@x§() : void
      {
         var _loc3_:BitmapData = null;
         this.§#§.x = this.§&#§.x;
         this.§#§.y = this.§&#§.y;
         var _loc1_:int = this.§#§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§#§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§8!D§.addChild(this.§#§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§8!D§.removeChild(this.§#§);
         }
         if(this.§&D§ && this.§&D§.canvas)
         {
            this.§&D§.setCanvasSize(this.§^!2§,this.§&`§,this.§&#§.width / this.§ d§.stageWidth,this.§&#§.height / this.§ d§.stageHeight);
            _loc3_ = this.§&D§.canvas;
            if(this.§-!8§.bitmapData != _loc3_)
            {
               this.§-!8§.bitmapData = _loc3_;
            }
            if(this.§8!D§.getChildIndex(this.§#§) > 0)
            {
               this.§8!D§.removeChild(this.§#§);
               this.§8!D§.addChildAt(this.§#§,0);
            }
         }
      }
      
      private function §9O§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§ d§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§ d§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§ d§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§0Q§.addChild(_loc2_);
      }
      
      public function § _§() : void
      {
         § ?§ = this;
      }
      
      public function start() : void
      {
         this.§]2§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§]2§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §]!8§(param1:Boolean) : void
      {
         this.§7?§ = param1;
      }
      
      private function §`@§() : void
      {
         this.§?!,§ = true;
         if(this.§-!8§ == null)
         {
            this.§-!8§ = new Bitmap();
            this.§0Q§.addChild(this.§-!8§);
         }
      }
      
      private function §!'§(param1:ErrorEvent) : void
      {
         this.§`@§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §=7§(param1:flash.events.Event) : void
      {
         if(this.§6! §)
         {
            return;
         }
         ++§[!B§;
         this.§@V§ = §[!B§;
         if(this.§&D§)
         {
            this.§&D§.dispose();
         }
         if(!§7N§.§!!!§ && this.§7u§)
         {
            this.§9O§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§ _§();
         this.§+7§();
         this.§!R§();
         if(this.§7u§ && this.§"!7§)
         {
            this.mStage3DEnabled = false;
            this.§7u§ = null;
            this.§`@§();
         }
         if(this.§7u§)
         {
            this.§&D§ = new §>P§();
         }
         else
         {
            this.§&D§ = new §^9§();
            this.§&D§.setCanvasSize(this.§^!2§,this.§&`§,this.§&#§.width / this.§ d§.stageWidth,this.§&#§.height / this.§ d§.stageHeight);
            this.§&D§.clear(null,this.§%L§);
         }
         this.§1E§.§]l§ = this.§0E§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§ _§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§%a§;
         if(this.§]2§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§#§)
         {
            this.§@x§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§ _§();
         this.§ d§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§]Q§;
         var _loc5_:Number = param2 / this.§--§;
         if(!param3)
         {
            this.§ d§.stageWidth = this.§]Q§ * _loc4_ / _loc5_;
            this.§ d§.stageHeight = this.§--§;
         }
         else
         {
            this.§ d§.stageWidth = this.§]Q§;
            this.§ d§.stageHeight = this.§--§ * _loc5_ / _loc4_;
         }
         this.§^!2§ = param1;
         this.§&`§ = param2;
         this.§ d§.dispatchEvent(new §=T§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §2+§() : void
      {
         this.setCanvasSize(this.§]Q§,this.§--§);
      }
      
      private function §%r§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§]2§ || !this.§7?§)
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
               this.§+!%§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§+!%§ = false;
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
               _loc5_ = §8P§.§>[§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §8P§.§5x§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §8P§.§ G§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §8P§.§>[§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §8P§.§ G§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§+!%§ ? §8P§.§5x§ : §8P§.§5!"§;
         }
         if((_loc2_ < this.§&#§.left || _loc2_ >= this.§&#§.right || _loc3_ < this.§&#§.top || _loc3_ >= this.§&#§.bottom) && _loc5_ == §8P§.§>[§)
         {
            return;
         }
         _loc2_ -= this.§&#§.x;
         _loc3_ -= this.§&#§.y;
         this.§1E§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §<%§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §#"§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§;B§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§7u§ != null)
         {
            (_loc4_ = this.§7u§.createProgram()).upload(param2,param3);
            this.§;B§[param1] = _loc4_;
         }
      }
      
      public function §9p§(param1:String) : void
      {
         var _loc2_:Program3D = this.§5!+§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§;B§[param1];
         }
      }
      
      public function §5!+§(param1:String) : Program3D
      {
         return this.§;B§[param1] as Program3D;
      }
      
      public function §<@§(param1:String) : Boolean
      {
         return param1 in this.§;B§;
      }
      
      public function get §%H§() : Boolean
      {
         return this.§]2§;
      }
      
      public function get §<Y§() : §7X§
      {
         return this.§&i§;
      }
      
      public function get §]l§() : Boolean
      {
         return this.§0E§;
      }
      
      public function set §]l§(param1:Boolean) : void
      {
         this.§0E§ = param1;
         if(this.§7u§)
         {
            this.§1E§.§]l§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§]!F§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§]!F§ = param1;
         if(this.§7u§)
         {
            this.§7u§.enableErrorChecking = param1;
         }
      }
      
      public function get §^O§() : int
      {
         return this.§#>§;
      }
      
      public function set §^O§(param1:int) : void
      {
         this.§#>§ = param1;
         this.§]u§();
      }
      
      public function get §-4§() : Rectangle
      {
         return this.§&#§.clone();
      }
      
      public function set §-4§(param1:Rectangle) : void
      {
         this.§&#§ = param1.clone();
         this.§]u§();
      }
      
      public function get §0Q§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§#§ == null)
         {
            this.§#§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§#§.contextMenu = _loc1_;
            this.§@x§();
         }
         return this.§#§;
      }
      
      public function get stage() : §<k§.Stage
      {
         return this.§ d§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §+0§() : flash.display.Stage
      {
         return this.§8!D§;
      }
      
      public function get §[v§() : Boolean
      {
         return !this.§?!,§;
      }
   }
}
