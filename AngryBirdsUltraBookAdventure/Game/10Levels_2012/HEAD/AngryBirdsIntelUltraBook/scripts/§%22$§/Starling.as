package §"$§
{
   import §'_§.Texture;
   import §1!&§.DisplayObject;
   import §1!&§.Stage;
   import §;v§.Juggler;
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
   import starling.events.§&#§;
   import starling.events.§0M§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.TouchProcessor;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §5!V§:Starling;
      
      private static var §9!"§:Boolean;
      
      private static var §6!]§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §?_§:§1!&§.Stage;
      
      private var §,=§:Class;
      
      private var §#w§:§1!&§.DisplayObject;
      
      private var §>A§:Juggler;
      
      private var §+!X§:Boolean;
      
      private var §>'§:Boolean;
      
      private var §=D§:RenderSupport;
      
      private var §1!j§:TouchProcessor;
      
      private var §&-§:int;
      
      private var §[!W§:Boolean;
      
      private var §,o§:Boolean;
      
      private var §0z§:Number;
      
      private var §=!P§:Rectangle;
      
      private var §@!6§:Boolean;
      
      private var §@e§:flash.display.Stage;
      
      private var §7&§:Sprite;
      
      private var §&F§:Context3D;
      
      private var §&b§:Dictionary;
      
      private var §4A§:int;
      
      private var §2!F§:Boolean;
      
      private var §7!>§:Number;
      
      private var §0!K§:Number;
      
      private var §8!5§:Number;
      
      private var §`J§:Number;
      
      private var §`3§:Number;
      
      private var §+;§:Number;
      
      private var §-!"§:Function;
      
      private var §"p§:uint;
      
      private var §!!h§:String;
      
      private var §4&§:Bitmap;
      
      private var §?c§:Boolean = false;
      
      private var §@u§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §7N§:Boolean = false;
      
      public function Starling(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§7!>§ = param3.width;
         this.§0!K§ = param3.height;
         this.§8!5§ = this.§7!>§;
         this.§`J§ = this.§0!K§;
         this.§`3§ = param2.stageWidth;
         this.§+;§ = param2.stageHeight;
         §6_§ = true;
         this.§'!3§();
         this.§,=§ = param1;
         this.§=!P§ = param3;
         this.mStage3D = param4;
         this.§?_§ = new §1!&§.Stage(param3.width,param3.height,param2.color);
         this.§@e§ = param2;
         this.§1!j§ = new TouchProcessor(this.§?_§);
         this.§>A§ = new Juggler();
         this.§&-§ = 0;
         this.§[!W§ = false;
         this.§,o§ = false;
         this.§0z§ = getTimer() / 1000;
         this.§&b§ = new Dictionary();
         for each(_loc6_ in this.§!U§)
         {
            param2.addEventListener(_loc6_,this.§=o§,false,0,true);
         }
         param2.addEventListener(KeyboardEvent.KEY_DOWN,this.§@!,§,false,0,true);
         param2.addEventListener(KeyboardEvent.KEY_UP,this.§@!,§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§>!R§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§;3§,false,1,true);
         this.mStage3D.visible = false;
         this.§>w§(true);
         this.§"p§ = param2.color;
         this.§!!h§ = param5;
      }
      
      public static function get isSoftware() : Boolean
      {
         if(§'!A§)
         {
            return §'!A§.§2!F§;
         }
         return true;
      }
      
      public static function §]c§() : Boolean
      {
         return §5!V§ && (§5!V§.§?c§ || §5!V§.§&F§ != null && §5!V§.§&F§.driverInfo != "Disposed");
      }
      
      public static function get §'!A§() : Starling
      {
         return §5!V§;
      }
      
      public static function get §@7§() : Juggler
      {
         return Boolean(§5!V§) ? §5!V§.§@7§ : null;
      }
      
      public static function get §!!k§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §!!k§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §6_§() : Boolean
      {
         return §9!"§;
      }
      
      public static function set §6_§(param1:Boolean) : void
      {
         if(§5!V§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §9!"§ = param1;
      }
      
      public static function §7]§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§'!A§)
         {
            return Texture.§?h§(§'!A§.§&F§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§5!V§.§&F§)
         {
            §5!V§.§&F§.drawToBitmapData(param1);
         }
         else if(§5!V§.§=D§.canvas)
         {
            _loc2_ = §5!V§.§=D§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get set() : §1!&§.DisplayObject
      {
         return this.§#w§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§"p§ = param1;
      }
      
      public function get §;l§() : Number
      {
         return this.§7!>§;
      }
      
      public function get §6z§() : Number
      {
         return this.§0!K§;
      }
      
      public function § Z§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§!!h§);
         }
         catch(e:Error)
         {
            §+!i§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§7N§ = true;
         this.§@e§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§@!,§,false);
         this.§@e§.removeEventListener(KeyboardEvent.KEY_UP,this.§@!,§,false);
         this.mStage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§>!R§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§;3§,false);
         for each(_loc1_ in this.§!U§)
         {
            this.§@e§.removeEventListener(_loc1_,this.§=o§,false);
         }
         for each(_loc2_ in this.§&b§)
         {
            _loc2_.dispose();
         }
         if(this.§&F§)
         {
            this.§&F§.dispose();
         }
         if(this.§1!j§)
         {
            this.§1!j§.dispose();
         }
         if(this.§=D§)
         {
            this.§=D§.dispose();
         }
         if(§5!V§ == this)
         {
            §5!V§ = null;
         }
         if(this.§4&§ && this.§4&§.bitmapData)
         {
            this.§4&§.bitmapData.dispose();
            this.§4&§.bitmapData = null;
         }
      }
      
      private function §^M§() : void
      {
         this.§&F§ = this.mStage3D.context3D;
         this.§&b§ = new Dictionary();
         if(this.§&F§)
         {
            this.§&F§.enableErrorChecking = this.§,o§;
            if(this.§&F§.driverInfo.indexOf("Software") >= 0)
            {
               this.§2!F§ = true;
            }
         }
         else
         {
            this.§2!F§ = true;
         }
         this.§9z§();
      }
      
      private function §[V§() : void
      {
         if(this.§?_§.numChildren > 0)
         {
            return;
         }
         if(this.§#w§ == null)
         {
            this.§#w§ = new this.§,=§();
         }
         if(this.§#w§ == null)
         {
            throw new Error("Invalid root class: " + this.§,=§);
         }
         this.§?_§.addChild(this.§#w§);
      }
      
      private function §9z§() : void
      {
         this.§@u§ = true;
         this.mStage3D.x = this.§=!P§.x;
         this.mStage3D.y = this.§=!P§.y;
      }
      
      private function render() : void
      {
         if(!§]c§())
         {
            return;
         }
         if(this.§@u§)
         {
            if(this.§&F§)
            {
               this.§&F§.configureBackBuffer(this.§=!P§.width,this.§=!P§.height,this.§&-§,false);
            }
            this.§@u§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§0z§;
         this.§0z§ = _loc1_;
         this.§?_§.advanceTime(_loc2_);
         this.§>A§.advanceTime(_loc2_);
         this.§1!j§.advanceTime(_loc2_);
         this.§=D§.§ !O§(this.§?_§.stageWidth,this.§?_§.stageHeight);
         this.§=D§.clear(this.§&F§,this.§"p§,1);
         this.§=D§.§55§(this.§&F§,this.§4A§);
         this.§?_§.render(this.§=D§,1);
         this.§=D§.§&M§();
         if(this.§-!"§ != null)
         {
            this.§-!"§();
            this.§-!"§ = null;
         }
         this.§=D§.finishRendering(this.§&F§);
         this.§=D§.§^![§();
      }
      
      public function set §#"§(param1:Function) : void
      {
         this.§-!"§ = param1;
      }
      
      private function §3!3§() : void
      {
         var _loc3_:BitmapData = null;
         this.§7&§.x = this.§=!P§.x;
         this.§7&§.y = this.§=!P§.y;
         var _loc1_:int = this.§7&§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§7&§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§@e§.addChild(this.§7&§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§@e§.removeChild(this.§7&§);
         }
         if(this.§=D§ && this.§=D§.canvas)
         {
            this.§=D§.setCanvasSize(this.§8!5§,this.§`J§,this.§=!P§.width / this.§?_§.stageWidth,this.§=!P§.height / this.§?_§.stageHeight);
            _loc3_ = this.§=D§.canvas;
            if(this.§4&§.bitmapData != _loc3_)
            {
               this.§4&§.bitmapData = _loc3_;
            }
            if(this.§@e§.getChildIndex(this.§7&§) > 0)
            {
               this.§@e§.removeChild(this.§7&§);
               this.§@e§.addChildAt(this.§7&§,0);
            }
         }
      }
      
      private function §+!i§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§?_§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§?_§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§?_§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§4!5§.addChild(_loc2_);
      }
      
      public function §'!3§() : void
      {
         §5!V§ = this;
      }
      
      public function start() : void
      {
         this.§+!X§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§+!X§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §>w§(param1:Boolean) : void
      {
         this.§>'§ = param1;
      }
      
      private function §9?§() : void
      {
         this.§?c§ = true;
         if(this.§4&§ == null)
         {
            this.§4&§ = new Bitmap();
            this.§4!5§.addChild(this.§4&§);
         }
      }
      
      private function §;3§(param1:ErrorEvent) : void
      {
         this.§9?§();
         this.mStage3D.dispatchEvent(new flash.events.Event(Event.CONTEXT3D_CREATE));
      }
      
      private function §>!R§(param1:flash.events.Event) : void
      {
         if(this.§7N§)
         {
            return;
         }
         ++§6!]§;
         this.§4A§ = §6!]§;
         if(this.§=D§)
         {
            this.§=D§.dispose();
         }
         if(!Starling.§6_§ && this.§&F§)
         {
            this.§+!i§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§'!3§();
         this.§^M§();
         this.§[V§();
         if(this.§&F§ && this.§2!F§)
         {
            this.mStage3DEnabled = false;
            this.§&F§ = null;
            this.§9?§();
         }
         if(this.§&F§)
         {
            this.§=D§ = new RenderSupport();
         }
         else
         {
            this.§=D§ = new BitmapDataRenderSupport();
            this.§=D§.setCanvasSize(this.§8!5§,this.§`J§,this.§=!P§.width / this.§?_§.stageWidth,this.§=!P§.height / this.§?_§.stageHeight);
            this.§=D§.clear(null,this.§"p§);
         }
         this.§1!j§.§]<§ = this.§[!W§;
         dispatchEvent(new starling.events.Event(Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§'!3§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§0z§;
         if(this.§+!X§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§7&§)
         {
            this.§3!3§();
         }
      }
      
      private function §@!,§(param1:flash.events.KeyboardEvent) : void
      {
         this.§'!3§();
         this.§?_§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§7!>§;
         var _loc5_:Number = param2 / this.§0!K§;
         if(!param3)
         {
            this.§?_§.stageWidth = this.§7!>§ * _loc4_ / _loc5_;
            this.§?_§.stageHeight = this.§0!K§;
         }
         else
         {
            this.§?_§.stageWidth = this.§7!>§;
            this.§?_§.stageHeight = this.§0!K§ * _loc5_ / _loc4_;
         }
         this.§8!5§ = param1;
         this.§`J§ = param2;
         this.§?_§.dispatchEvent(new §&#§(Event.RESIZE,param1,param2));
      }
      
      public function §'a§() : void
      {
         this.setCanvasSize(this.§7!>§,this.§0!K§);
      }
      
      private function §=o§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§+!X§ || !this.§>'§)
         {
            return;
         }
         if(param1 is MouseEvent)
         {
            _loc6_ = param1 as MouseEvent;
            _loc2_ = _loc6_.stageX;
            _loc3_ = _loc6_.stageY;
            _loc4_ = 0;
            if(param1.type == MouseEvent.MOUSE_DOWN)
            {
               this.§@!6§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§@!6§ = false;
            }
         }
         else
         {
            _loc7_ = param1 as TouchEvent;
            _loc2_ = _loc7_.stageX;
            _loc3_ = _loc7_.stageY;
            _loc4_ = _loc7_.touchPointID;
         }
         switch(param1.type)
         {
            case TouchEvent.TOUCH_BEGIN:
               _loc5_ = §0M§.§+!$§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §0M§.§-!Y§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §0M§.§!!C§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §0M§.§+!$§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §0M§.§!!C§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§@!6§ ? §0M§.§-!Y§ : §0M§.§'p§;
         }
         if((_loc2_ < this.§=!P§.left || _loc2_ >= this.§=!P§.right || _loc3_ < this.§=!P§.top || _loc3_ >= this.§=!P§.bottom) && _loc5_ == §0M§.§+!$§)
         {
            return;
         }
         _loc2_ -= this.§=!P§.x;
         _loc3_ -= this.§=!P§.y;
         this.§1!j§.§9y§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §!U§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §8V§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§&b§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§&F§ != null)
         {
            _loc4_ = this.§&F§.createProgram();
            _loc4_.upload(param2,param3);
            this.§&b§[param1] = _loc4_;
         }
      }
      
      public function §`D§(param1:String) : void
      {
         var _loc2_:Program3D = this.§3t§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§&b§[param1];
         }
      }
      
      public function §3t§(param1:String) : Program3D
      {
         return this.§&b§[param1] as Program3D;
      }
      
      public function §@!Q§(param1:String) : Boolean
      {
         return param1 in this.§&b§;
      }
      
      public function get §5!R§() : Boolean
      {
         return this.§+!X§;
      }
      
      public function get §@7§() : Juggler
      {
         return this.§>A§;
      }
      
      public function get §]<§() : Boolean
      {
         return this.§[!W§;
      }
      
      public function set §]<§(param1:Boolean) : void
      {
         this.§[!W§ = param1;
         if(this.§&F§)
         {
            this.§1!j§.§]<§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§,o§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§,o§ = param1;
         if(this.§&F§)
         {
            this.§&F§.enableErrorChecking = param1;
         }
      }
      
      public function get §=6§() : int
      {
         return this.§&-§;
      }
      
      public function set §=6§(param1:int) : void
      {
         this.§&-§ = param1;
         this.§9z§();
      }
      
      public function get §<H§() : Rectangle
      {
         return this.§=!P§.clone();
      }
      
      public function set §<H§(param1:Rectangle) : void
      {
         this.§=!P§ = param1.clone();
         this.§9z§();
      }
      
      public function get §4!5§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§7&§ == null)
         {
            this.§7&§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§7&§.contextMenu = _loc1_;
            this.§3!3§();
         }
         return this.§7&§;
      }
      
      public function get stage() : §1!&§.Stage
      {
         return this.§?_§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §0y§() : flash.display.Stage
      {
         return this.§@e§;
      }
      
      public function get §6?§() : Boolean
      {
         return !this.§?c§;
      }
   }
}
