package §8!#§
{
   import §#v§.§@H§;
   import §>u§.Texture;
   import §]!6§.DisplayObject;
   import §]!6§.Stage;
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
   import starling.events.§29§;
   import starling.events.§?c§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§]<§;
   
   public class §<n§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §1@§:§<n§;
      
      private static var §6!2§:Boolean;
      
      private static var §9l§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §6Y§:§]!6§.Stage;
      
      private var §"k§:Class;
      
      private var §@M§:§]!6§.DisplayObject;
      
      private var §+!"§:§@H§;
      
      private var §4&§:Boolean;
      
      private var §%!0§:Boolean;
      
      private var §2D§:§-!§;
      
      private var §48§:§]<§;
      
      private var §3!#§:int;
      
      private var §3E§:Boolean;
      
      private var §8!-§:Boolean;
      
      private var §=!,§:Number;
      
      private var §3!§:Rectangle;
      
      private var § e§:Boolean;
      
      private var §0!@§:flash.display.Stage;
      
      private var §@<§:Sprite;
      
      private var §>!=§:Context3D;
      
      private var §5S§:Dictionary;
      
      private var §=!0§:int;
      
      private var §"!6§:Boolean;
      
      private var §[Y§:Number;
      
      private var §<"§:Number;
      
      private var §2_§:Number;
      
      private var §=k§:Number;
      
      private var §`!%§:Number;
      
      private var §5J§:Number;
      
      private var §9T§:Function;
      
      private var §`E§:uint;
      
      private var §1!-§:String;
      
      private var §4P§:Bitmap;
      
      private var §0l§:Boolean = false;
      
      private var §1H§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §8?§:Boolean = false;
      
      public function §<n§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§[Y§ = param3.width;
         this.§<"§ = param3.height;
         this.§2_§ = this.§[Y§;
         this.§=k§ = this.§<"§;
         this.§`!%§ = param2.stageWidth;
         this.§5J§ = param2.stageHeight;
         §>m§ = true;
         this.§'y§();
         this.§"k§ = param1;
         this.§3!§ = param3;
         this.mStage3D = param4;
         this.§6Y§ = new §]!6§.Stage(param3.width,param3.height,param2.color);
         this.§0!@§ = param2;
         this.§48§ = new §]<§(this.§6Y§);
         this.§+!"§ = new §@H§();
         this.§3!#§ = 0;
         this.§3E§ = false;
         this.§8!-§ = false;
         this.§=!,§ = getTimer() / 1000;
         this.§5S§ = new Dictionary();
         for each(_loc6_ in this.§0=§)
         {
            param2.addEventListener(_loc6_,this.§"!F§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§80§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§<!=§,false,1,true);
         this.mStage3D.visible = false;
         this.§&!§(true);
         this.§`E§ = param2.color;
         this.§1!-§ = param5;
      }
      
      public static function get §;!?§() : Boolean
      {
         if(§?@§)
         {
            return §?@§.§"!6§;
         }
         return true;
      }
      
      public static function §+0§() : Boolean
      {
         return §1@§ && (§1@§.§0l§ || §1@§.§>!=§ != null && §1@§.§>!=§.driverInfo != "Disposed");
      }
      
      public static function get §?@§() : §<n§
      {
         return §1@§;
      }
      
      public static function get §6f§() : §@H§
      {
         return !!§1@§ ? §1@§.§6f§ : null;
      }
      
      public static function get §]V§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §]V§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §>m§() : Boolean
      {
         return §6!2§;
      }
      
      public static function set §>m§(param1:Boolean) : void
      {
         if(§1@§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §6!2§ = param1;
      }
      
      public static function §4T§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§?@§)
         {
            return Texture.§#n§(§?@§.§>!=§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§1@§.§>!=§)
         {
            §1@§.§>!=§.drawToBitmapData(param1);
         }
         else if(§1@§.§2D§.canvas)
         {
            _loc2_ = §1@§.§2D§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §&@§() : §]!6§.DisplayObject
      {
         return this.§@M§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§`E§ = param1;
      }
      
      public function get §?z§() : Number
      {
         return this.§[Y§;
      }
      
      public function get §%G§() : Number
      {
         return this.§<"§;
      }
      
      public function §%z§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§1!-§);
         }
         catch(e:Error)
         {
            §#!$§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§8?§ = true;
         this.§0!@§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§0!@§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§80§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§<!=§,false);
         for each(_loc1_ in this.§0=§)
         {
            this.§0!@§.removeEventListener(_loc1_,this.§"!F§,false);
         }
         for each(_loc2_ in this.§5S§)
         {
            _loc2_.dispose();
         }
         if(this.§>!=§)
         {
            this.§>!=§.dispose();
         }
         if(this.§48§)
         {
            this.§48§.dispose();
         }
         if(this.§2D§)
         {
            this.§2D§.dispose();
         }
         if(§1@§ == this)
         {
            §1@§ = null;
         }
         if(this.§4P§ && this.§4P§.bitmapData)
         {
            this.§4P§.bitmapData.dispose();
            this.§4P§.bitmapData = null;
         }
      }
      
      private function §'H§() : void
      {
         this.§>!=§ = this.mStage3D.context3D;
         this.§5S§ = new Dictionary();
         if(this.§>!=§)
         {
            this.§>!=§.enableErrorChecking = this.§8!-§;
            if(this.§>!=§.driverInfo.indexOf("Software") >= 0)
            {
               this.§"!6§ = true;
            }
         }
         else
         {
            this.§"!6§ = true;
         }
         this.§&[§();
      }
      
      private function §,Q§() : void
      {
         if(this.§6Y§.numChildren > 0)
         {
            return;
         }
         if(this.§@M§ == null)
         {
            this.§@M§ = new this.§"k§();
         }
         if(this.§@M§ == null)
         {
            throw new Error("Invalid root class: " + this.§"k§);
         }
         this.§6Y§.addChild(this.§@M§);
      }
      
      private function §&[§() : void
      {
         this.§1H§ = true;
         this.mStage3D.x = this.§3!§.x;
         this.mStage3D.y = this.§3!§.y;
      }
      
      private function render() : void
      {
         if(!§+0§())
         {
            return;
         }
         if(this.§1H§)
         {
            if(this.§>!=§)
            {
               this.§>!=§.configureBackBuffer(this.§3!§.width,this.§3!§.height,this.§3!#§,false);
            }
            this.§1H§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§=!,§;
         this.§=!,§ = _loc1_;
         this.§6Y§.advanceTime(_loc2_);
         this.§+!"§.advanceTime(_loc2_);
         this.§48§.advanceTime(_loc2_);
         this.§2D§.§"V§(this.§6Y§.stageWidth,this.§6Y§.stageHeight);
         this.§2D§.clear(this.§>!=§,this.§`E§,1);
         this.§2D§.§^R§(this.§>!=§,this.§=!0§);
         this.§6Y§.render(this.§2D§,1);
         this.§2D§.§+y§();
         if(this.§9T§ != null)
         {
            this.§9T§();
            this.§9T§ = null;
         }
         this.§2D§.finishRendering(this.§>!=§);
         this.§2D§.§'Q§();
      }
      
      public function set §>!"§(param1:Function) : void
      {
         this.§9T§ = param1;
      }
      
      private function §default§() : void
      {
         var _loc3_:BitmapData = null;
         this.§@<§.x = this.§3!§.x;
         this.§@<§.y = this.§3!§.y;
         var _loc1_:int = this.§@<§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@<§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§0!@§.addChild(this.§@<§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§0!@§.removeChild(this.§@<§);
         }
         if(this.§2D§ && this.§2D§.canvas)
         {
            this.§2D§.setCanvasSize(this.§2_§,this.§=k§,this.§3!§.width / this.§6Y§.stageWidth,this.§3!§.height / this.§6Y§.stageHeight);
            _loc3_ = this.§2D§.canvas;
            if(this.§4P§.bitmapData != _loc3_)
            {
               this.§4P§.bitmapData = _loc3_;
            }
            if(this.§0!@§.getChildIndex(this.§@<§) > 0)
            {
               this.§0!@§.removeChild(this.§@<§);
               this.§0!@§.addChildAt(this.§@<§,0);
            }
         }
      }
      
      private function §#!$§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§6Y§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§6Y§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§6Y§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§4!G§.addChild(_loc2_);
      }
      
      public function §'y§() : void
      {
         §1@§ = this;
      }
      
      public function start() : void
      {
         this.§4&§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§4&§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §&!§(param1:Boolean) : void
      {
         this.§%!0§ = param1;
      }
      
      private function §;W§() : void
      {
         this.§0l§ = true;
         if(this.§4P§ == null)
         {
            this.§4P§ = new Bitmap();
            this.§4!G§.addChild(this.§4P§);
         }
      }
      
      private function §<!=§(param1:ErrorEvent) : void
      {
         this.§;W§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §80§(param1:flash.events.Event) : void
      {
         if(this.§8?§)
         {
            return;
         }
         ++§9l§;
         this.§=!0§ = §9l§;
         if(this.§2D§)
         {
            this.§2D§.dispose();
         }
         if(!§<n§.§>m§ && this.§>!=§)
         {
            this.§#!$§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§'y§();
         this.§'H§();
         this.§,Q§();
         if(this.§>!=§ && this.§"!6§)
         {
            this.mStage3DEnabled = false;
            this.§>!=§ = null;
            this.§;W§();
         }
         if(this.§>!=§)
         {
            this.§2D§ = new §-!§();
         }
         else
         {
            this.§2D§ = new §&G§();
            this.§2D§.setCanvasSize(this.§2_§,this.§=k§,this.§3!§.width / this.§6Y§.stageWidth,this.§3!§.height / this.§6Y§.stageHeight);
            this.§2D§.clear(null,this.§`E§);
         }
         this.§48§.§"e§ = this.§3E§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§'y§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§=!,§;
         if(this.§4&§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§@<§)
         {
            this.§default§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§'y§();
         this.§6Y§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§[Y§;
         var _loc5_:Number = param2 / this.§<"§;
         if(!param3)
         {
            this.§6Y§.stageWidth = this.§[Y§ * _loc4_ / _loc5_;
            this.§6Y§.stageHeight = this.§<"§;
         }
         else
         {
            this.§6Y§.stageWidth = this.§[Y§;
            this.§6Y§.stageHeight = this.§<"§ * _loc5_ / _loc4_;
         }
         this.§2_§ = param1;
         this.§=k§ = param2;
         this.§6Y§.dispatchEvent(new §29§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §]!<§() : void
      {
         this.setCanvasSize(this.§[Y§,this.§<"§);
      }
      
      private function §"!F§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§4&§ || !this.§%!0§)
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
               this.§ e§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§ e§ = false;
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
               _loc5_ = §?c§.§?!§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §?c§.§7z§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §?c§.§,F§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §?c§.§?!§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §?c§.§,F§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§ e§ ? §?c§.§7z§ : §?c§.§0!2§;
         }
         if((_loc2_ < this.§3!§.left || _loc2_ >= this.§3!§.right || _loc3_ < this.§3!§.top || _loc3_ >= this.§3!§.bottom) && _loc5_ == §?c§.§?!§)
         {
            return;
         }
         _loc2_ -= this.§3!§.x;
         _loc3_ -= this.§3!§.y;
         this.§48§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §0=§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §#z§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§5S§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§>!=§ != null)
         {
            (_loc4_ = this.§>!=§.createProgram()).upload(param2,param3);
            this.§5S§[param1] = _loc4_;
         }
      }
      
      public function §]e§(param1:String) : void
      {
         var _loc2_:Program3D = this.§8T§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§5S§[param1];
         }
      }
      
      public function §8T§(param1:String) : Program3D
      {
         return this.§5S§[param1] as Program3D;
      }
      
      public function §&!>§(param1:String) : Boolean
      {
         return param1 in this.§5S§;
      }
      
      public function get §2!9§() : Boolean
      {
         return this.§4&§;
      }
      
      public function get §6f§() : §@H§
      {
         return this.§+!"§;
      }
      
      public function get §"e§() : Boolean
      {
         return this.§3E§;
      }
      
      public function set §"e§(param1:Boolean) : void
      {
         this.§3E§ = param1;
         if(this.§>!=§)
         {
            this.§48§.§"e§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§8!-§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§8!-§ = param1;
         if(this.§>!=§)
         {
            this.§>!=§.enableErrorChecking = param1;
         }
      }
      
      public function get §`l§() : int
      {
         return this.§3!#§;
      }
      
      public function set §`l§(param1:int) : void
      {
         this.§3!#§ = param1;
         this.§&[§();
      }
      
      public function get §"c§() : Rectangle
      {
         return this.§3!§.clone();
      }
      
      public function set §"c§(param1:Rectangle) : void
      {
         this.§3!§ = param1.clone();
         this.§&[§();
      }
      
      public function get §4!G§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§@<§ == null)
         {
            this.§@<§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§@<§.contextMenu = _loc1_;
            this.§default§();
         }
         return this.§@<§;
      }
      
      public function get stage() : §]!6§.Stage
      {
         return this.§6Y§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §,C§() : flash.display.Stage
      {
         return this.§0!@§;
      }
      
      public function get §5+§() : Boolean
      {
         return !this.§0l§;
      }
   }
}
