package §6l§
{
   import § !K§.DisplayObject;
   import § !K§.Stage;
   import §"![§.Texture;
   import §?r§.§1^§;
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
   import starling.events.§#!_§;
   import starling.events.§9!%§;
   import starling.events.§>Z§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §79§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §^_§:§79§;
      
      private static var §5C§:Boolean;
      
      private static var §;J§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §@c§:§ !K§.Stage;
      
      private var §"!P§:Class;
      
      private var §'!`§:§ !K§.DisplayObject;
      
      private var §7!<§:§1^§;
      
      private var §<!@§:Boolean;
      
      private var §-=§:Boolean;
      
      private var §+U§:§23§;
      
      private var §"!Z§:§>Z§;
      
      private var §8_§:int;
      
      private var §]k§:Boolean;
      
      private var §3!;§:Boolean;
      
      private var §7!`§:Number;
      
      private var §6r§:Rectangle;
      
      private var §-3§:Boolean;
      
      private var §7!J§:flash.display.Stage;
      
      private var §@!'§:Sprite;
      
      private var §%Q§:Context3D;
      
      private var §+`§:Dictionary;
      
      private var §7!]§:int;
      
      private var §]!c§:Boolean;
      
      private var §-x§:Number;
      
      private var §>!#§:Number;
      
      private var §@K§:Number;
      
      private var §1k§:Number;
      
      private var §!!'§:Number;
      
      private var §!J§:Number;
      
      private var §#F§:Function;
      
      private var § var§:uint;
      
      private var § true§:String;
      
      private var § !b§:Bitmap;
      
      private var §<P§:Boolean = false;
      
      private var §#C§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §3!?§:Boolean = false;
      
      public function §79§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§-x§ = param3.width;
         this.§>!#§ = param3.height;
         this.§@K§ = this.§-x§;
         this.§1k§ = this.§>!#§;
         this.§!!'§ = param2.stageWidth;
         this.§!J§ = param2.stageHeight;
         §%!S§ = true;
         this.§46§();
         this.§"!P§ = param1;
         this.§6r§ = param3;
         this.mStage3D = param4;
         this.§@c§ = new § !K§.Stage(param3.width,param3.height,param2.color);
         this.§7!J§ = param2;
         this.§"!Z§ = new §>Z§(this.§@c§);
         this.§7!<§ = new §1^§();
         this.§8_§ = 0;
         this.§]k§ = false;
         this.§3!;§ = false;
         this.§7!`§ = getTimer() / 1000;
         this.§+`§ = new Dictionary();
         for each(_loc6_ in this.§#6§)
         {
            param2.addEventListener(_loc6_,this.§1V§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§#!6§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§#!6§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!6§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§7Y§,false,1,true);
         this.mStage3D.visible = false;
         this.§<!K§(true);
         this.§ var§ = param2.color;
         this.§ true§ = param5;
      }
      
      public static function get §,!>§() : Boolean
      {
         if(§#[§)
         {
            return §#[§.§]!c§;
         }
         return true;
      }
      
      public static function § do§() : Boolean
      {
         return §^_§ && (§^_§.§<P§ || §^_§.§%Q§ != null && §^_§.§%Q§.driverInfo != "Disposed");
      }
      
      public static function get §#[§() : §79§
      {
         return §^_§;
      }
      
      public static function get §%!H§() : §1^§
      {
         return !!§^_§ ? §^_§.§%!H§ : null;
      }
      
      public static function get §4o§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §4o§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §%!S§() : Boolean
      {
         return §5C§;
      }
      
      public static function set §%!S§(param1:Boolean) : void
      {
         if(§^_§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §5C§ = param1;
      }
      
      public static function §&!3§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§#[§)
         {
            return Texture.§@!E§(§#[§.§%Q§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§^_§.§%Q§)
         {
            §^_§.§%Q§.drawToBitmapData(param1);
         }
         else if(§^_§.§+U§.canvas)
         {
            _loc2_ = §^_§.§+U§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §&!=§() : § !K§.DisplayObject
      {
         return this.§'!`§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§ var§ = param1;
      }
      
      public function get §?!b§() : Number
      {
         return this.§-x§;
      }
      
      public function get §3#§() : Number
      {
         return this.§>!#§;
      }
      
      public function §62§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§ true§);
         }
         catch(e:Error)
         {
            §"!J§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§3!?§ = true;
         this.§7!J§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§#!6§,false);
         this.§7!J§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§#!6§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!6§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§7Y§,false);
         for each(_loc1_ in this.§#6§)
         {
            this.§7!J§.removeEventListener(_loc1_,this.§1V§,false);
         }
         for each(_loc2_ in this.§+`§)
         {
            _loc2_.dispose();
         }
         if(this.§%Q§)
         {
            this.§%Q§.dispose();
         }
         if(this.§"!Z§)
         {
            this.§"!Z§.dispose();
         }
         if(this.§+U§)
         {
            this.§+U§.dispose();
         }
         if(§^_§ == this)
         {
            §^_§ = null;
         }
         if(this.§ !b§ && this.§ !b§.bitmapData)
         {
            this.§ !b§.bitmapData.dispose();
            this.§ !b§.bitmapData = null;
         }
      }
      
      private function §=r§() : void
      {
         this.§%Q§ = this.mStage3D.context3D;
         this.§+`§ = new Dictionary();
         if(this.§%Q§)
         {
            this.§%Q§.enableErrorChecking = this.§3!;§;
            if(this.§%Q§.driverInfo.indexOf("Software") >= 0)
            {
               this.§]!c§ = true;
            }
         }
         else
         {
            this.§]!c§ = true;
         }
         this.§=z§();
      }
      
      private function §>@§() : void
      {
         if(this.§@c§.numChildren > 0)
         {
            return;
         }
         if(this.§'!`§ == null)
         {
            this.§'!`§ = new this.§"!P§();
         }
         if(this.§'!`§ == null)
         {
            throw new Error("Invalid root class: " + this.§"!P§);
         }
         this.§@c§.addChild(this.§'!`§);
      }
      
      private function §=z§() : void
      {
         this.§#C§ = true;
         this.mStage3D.x = this.§6r§.x;
         this.mStage3D.y = this.§6r§.y;
      }
      
      private function render() : void
      {
         if(!§ do§())
         {
            return;
         }
         if(this.§#C§)
         {
            if(this.§%Q§)
            {
               this.§%Q§.configureBackBuffer(this.§6r§.width,this.§6r§.height,this.§8_§,false);
            }
            this.§#C§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§7!`§;
         this.§7!`§ = _loc1_;
         this.§@c§.advanceTime(_loc2_);
         this.§7!<§.advanceTime(_loc2_);
         this.§"!Z§.advanceTime(_loc2_);
         this.§+U§.§?!`§(this.§@c§.stageWidth,this.§@c§.stageHeight);
         this.§+U§.clear(this.§%Q§,this.§ var§,1);
         this.§+U§.§5k§(this.§%Q§,this.§7!]§);
         this.§@c§.render(this.§+U§,1);
         this.§+U§.§?!Q§();
         if(this.§#F§ != null)
         {
            this.§#F§();
            this.§#F§ = null;
         }
         this.§+U§.finishRendering(this.§%Q§);
         this.§+U§.§1#§();
      }
      
      public function set §,!E§(param1:Function) : void
      {
         this.§#F§ = param1;
      }
      
      private function §;9§() : void
      {
         var _loc3_:BitmapData = null;
         this.§@!'§.x = this.§6r§.x;
         this.§@!'§.y = this.§6r§.y;
         var _loc1_:int = this.§@!'§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@!'§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§7!J§.addChild(this.§@!'§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§7!J§.removeChild(this.§@!'§);
         }
         if(this.§+U§ && this.§+U§.canvas)
         {
            this.§+U§.setCanvasSize(this.§@K§,this.§1k§,this.§6r§.width / this.§@c§.stageWidth,this.§6r§.height / this.§@c§.stageHeight);
            _loc3_ = this.§+U§.canvas;
            if(this.§ !b§.bitmapData != _loc3_)
            {
               this.§ !b§.bitmapData = _loc3_;
            }
            if(this.§7!J§.getChildIndex(this.§@!'§) > 0)
            {
               this.§7!J§.removeChild(this.§@!'§);
               this.§7!J§.addChildAt(this.§@!'§,0);
            }
         }
      }
      
      private function §"!J§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§@c§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§@c§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§@c§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§@$§.addChild(_loc2_);
      }
      
      public function §46§() : void
      {
         §^_§ = this;
      }
      
      public function start() : void
      {
         this.§<!@§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§<!@§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §<!K§(param1:Boolean) : void
      {
         this.§-=§ = param1;
      }
      
      private function §>"§() : void
      {
         this.§<P§ = true;
         if(this.§ !b§ == null)
         {
            this.§ !b§ = new Bitmap();
            this.§@$§.addChild(this.§ !b§);
         }
      }
      
      private function §7Y§(param1:ErrorEvent) : void
      {
         this.§>"§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §!6§(param1:flash.events.Event) : void
      {
         if(this.§3!?§)
         {
            return;
         }
         ++§;J§;
         this.§7!]§ = §;J§;
         if(this.§+U§)
         {
            this.§+U§.dispose();
         }
         if(!§79§.§%!S§ && this.§%Q§)
         {
            this.§"!J§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§46§();
         this.§=r§();
         this.§>@§();
         if(this.§%Q§ && this.§]!c§)
         {
            this.mStage3DEnabled = false;
            this.§%Q§ = null;
            this.§>"§();
         }
         if(this.§%Q§)
         {
            this.§+U§ = new §23§();
         }
         else
         {
            this.§+U§ = new §4#§();
            this.§+U§.setCanvasSize(this.§@K§,this.§1k§,this.§6r§.width / this.§@c§.stageWidth,this.§6r§.height / this.§@c§.stageHeight);
            this.§+U§.clear(null,this.§ var§);
         }
         this.§"!Z§.simulateMultitouch = this.§]k§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §^f§(param1:flash.events.Event) : void
      {
         this.§46§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§7!`§;
         if(this.§<!@§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§@!'§)
         {
            this.§;9§();
         }
      }
      
      private function §#!6§(param1:flash.events.KeyboardEvent) : void
      {
         this.§46§();
         this.§@c§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§-x§;
         var _loc5_:Number = param2 / this.§>!#§;
         if(!param3)
         {
            this.§@c§.stageWidth = this.§-x§ * _loc4_ / _loc5_;
            this.§@c§.stageHeight = this.§>!#§;
         }
         else
         {
            this.§@c§.stageWidth = this.§-x§;
            this.§@c§.stageHeight = this.§>!#§ * _loc5_ / _loc4_;
         }
         this.§@K§ = param1;
         this.§1k§ = param2;
         this.§@c§.dispatchEvent(new §#!_§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §4r§() : void
      {
         this.setCanvasSize(this.§-x§,this.§>!#§);
      }
      
      private function §1V§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§<!@§ || !this.§-=§)
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
               this.§-3§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§-3§ = false;
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
               _loc5_ = §9!%§.§'6§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §9!%§.§1-§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §9!%§.§^!#§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §9!%§.§'6§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §9!%§.§^!#§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§-3§ ? §9!%§.§1-§ : §9!%§.§'!!§;
         }
         if((_loc2_ < this.§6r§.left || _loc2_ >= this.§6r§.right || _loc3_ < this.§6r§.top || _loc3_ >= this.§6r§.bottom) && _loc5_ == §9!%§.§'6§)
         {
            return;
         }
         _loc2_ -= this.§6r§.x;
         _loc3_ -= this.§6r§.y;
         this.§"!Z§.§8d§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §#6§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §`T§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§+`§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§%Q§ != null)
         {
            (_loc4_ = this.§%Q§.createProgram()).upload(param2,param3);
            this.§+`§[param1] = _loc4_;
         }
      }
      
      public function §3!O§(param1:String) : void
      {
         var _loc2_:Program3D = this.§?B§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§+`§[param1];
         }
      }
      
      public function §?B§(param1:String) : Program3D
      {
         return this.§+`§[param1] as Program3D;
      }
      
      public function §]h§(param1:String) : Boolean
      {
         return param1 in this.§+`§;
      }
      
      public function get § =§() : Boolean
      {
         return this.§<!@§;
      }
      
      public function get §%!H§() : §1^§
      {
         return this.§7!<§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§]k§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§]k§ = param1;
         if(this.§%Q§)
         {
            this.§"!Z§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§3!;§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§3!;§ = param1;
         if(this.§%Q§)
         {
            this.§%Q§.enableErrorChecking = param1;
         }
      }
      
      public function get §!C§() : int
      {
         return this.§8_§;
      }
      
      public function set §!C§(param1:int) : void
      {
         this.§8_§ = param1;
         this.§=z§();
      }
      
      public function get §=!;§() : Rectangle
      {
         return this.§6r§.clone();
      }
      
      public function set §=!;§(param1:Rectangle) : void
      {
         this.§6r§ = param1.clone();
         this.§=z§();
      }
      
      public function get §@$§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§@!'§ == null)
         {
            this.§@!'§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§@!'§.contextMenu = _loc1_;
            this.§;9§();
         }
         return this.§@!'§;
      }
      
      public function get stage() : § !K§.Stage
      {
         return this.§@c§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §'w§() : flash.display.Stage
      {
         return this.§7!J§;
      }
      
      public function get §<1§() : Boolean
      {
         return !this.§<P§;
      }
   }
}
