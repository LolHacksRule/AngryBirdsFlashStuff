package §6p§
{
   import §+!Y§.§]!S§;
   import §7R§.Texture;
   import §default§.DisplayObject;
   import §default§.Stage;
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
   import starling.events.§6c§;
   import starling.events.§<!h§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`Q§;
   
   public class §?%§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §<!f§:§?%§;
      
      private static var §2G§:Boolean;
      
      private static var §0U§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var § "3§:§default§.Stage;
      
      private var §;"!§:Class;
      
      private var §1&§:§default§.DisplayObject;
      
      private var §1#§:§]!S§;
      
      private var §@P§:Boolean;
      
      private var §-6§:Boolean;
      
      private var §?!x§:§5!W§;
      
      private var §9`§:§`Q§;
      
      private var §2!P§:int;
      
      private var §+5§:Boolean;
      
      private var §+!r§:Boolean;
      
      private var §6!y§:Number;
      
      private var §^!S§:Rectangle;
      
      private var §!!x§:Boolean;
      
      private var §%0§:flash.display.Stage;
      
      private var §7!C§:Sprite;
      
      private var §6![§:Context3D;
      
      private var §@!Z§:Dictionary;
      
      private var §%"1§:int;
      
      private var §;!>§:Boolean;
      
      private var §+n§:Number;
      
      private var §&";§:Number;
      
      private var §9A§:Number;
      
      private var §catch§:Number;
      
      private var §!"7§:Number;
      
      private var §9c§:Number;
      
      private var §8&§:Function;
      
      private var §;!`§:uint;
      
      private var §^E§:String;
      
      private var §3",§:Bitmap;
      
      private var §=n§:Boolean = false;
      
      private var §%B§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §<b§:Boolean = false;
      
      public function §?%§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§+n§ = param3.width;
         this.§&";§ = param3.height;
         this.§9A§ = this.§+n§;
         this.§catch§ = this.§&";§;
         this.§!"7§ = param2.stageWidth;
         this.§9c§ = param2.stageHeight;
         § !O§ = true;
         this.§2"%§();
         this.§;"!§ = param1;
         this.§^!S§ = param3;
         this.mStage3D = param4;
         this.§ "3§ = new §default§.Stage(param3.width,param3.height,param2.color);
         this.§%0§ = param2;
         this.§9`§ = new §`Q§(this.§ "3§);
         this.§1#§ = new §]!S§();
         this.§2!P§ = 0;
         this.§+5§ = false;
         this.§+!r§ = false;
         this.§6!y§ = getTimer() / 1000;
         this.§@!Z§ = new Dictionary();
         for each(_loc6_ in this.§`u§)
         {
            param2.addEventListener(_loc6_,this.§9R§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§;P§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§;P§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§6h§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§"B§,false,1,true);
         this.mStage3D.visible = false;
         this.§+H§(true);
         this.§;!`§ = param2.color;
         this.§^E§ = param5;
      }
      
      public static function get § !J§() : Boolean
      {
         if(§%b§)
         {
            return §%b§.§;!>§;
         }
         return true;
      }
      
      public static function §]p§() : Boolean
      {
         return §<!f§ && (§<!f§.§=n§ || §<!f§.§6![§ != null && §<!f§.§6![§.driverInfo != "Disposed");
      }
      
      public static function get §%b§() : §?%§
      {
         return §<!f§;
      }
      
      public static function get §",§() : §]!S§
      {
         return !!§<!f§ ? §<!f§.§",§ : null;
      }
      
      public static function get §[V§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §[V§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get § !O§() : Boolean
      {
         return §2G§;
      }
      
      public static function set § !O§(param1:Boolean) : void
      {
         if(§<!f§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §2G§ = param1;
      }
      
      public static function §1J§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§%b§)
         {
            return Texture.§@6§(§%b§.§6![§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§<!f§.§6![§)
         {
            §<!f§.§6![§.drawToBitmapData(param1);
         }
         else if(§<!f§.§?!x§.canvas)
         {
            _loc2_ = §<!f§.§?!x§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §,x§() : §default§.DisplayObject
      {
         return this.§1&§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§;!`§ = param1;
      }
      
      public function get § 4§() : Number
      {
         return this.§+n§;
      }
      
      public function get §5"0§() : Number
      {
         return this.§&";§;
      }
      
      public function §"!t§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§^E§);
         }
         catch(e:Error)
         {
            §5<§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§<b§ = true;
         this.§%0§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§;P§,false);
         this.§%0§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§;P§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§6h§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§"B§,false);
         for each(_loc1_ in this.§`u§)
         {
            this.§%0§.removeEventListener(_loc1_,this.§9R§,false);
         }
         for each(_loc2_ in this.§@!Z§)
         {
            _loc2_.dispose();
         }
         if(this.§6![§)
         {
            this.§6![§.dispose();
         }
         if(this.§9`§)
         {
            this.§9`§.dispose();
         }
         if(this.§?!x§)
         {
            this.§?!x§.dispose();
         }
         if(§<!f§ == this)
         {
            §<!f§ = null;
         }
         if(this.§3",§ && this.§3",§.bitmapData)
         {
            this.§3",§.bitmapData.dispose();
            this.§3",§.bitmapData = null;
         }
      }
      
      private function §'-§() : void
      {
         this.§6![§ = this.mStage3D.context3D;
         this.§@!Z§ = new Dictionary();
         if(this.§6![§)
         {
            this.§6![§.enableErrorChecking = this.§+!r§;
            if(this.§6![§.driverInfo.indexOf("Software") >= 0)
            {
               this.§;!>§ = true;
            }
         }
         else
         {
            this.§;!>§ = true;
         }
         this.§'#§();
      }
      
      private function §-,§() : void
      {
         if(this.§ "3§.numChildren > 0)
         {
            return;
         }
         if(this.§1&§ == null)
         {
            this.§1&§ = new this.§;"!§();
         }
         if(this.§1&§ == null)
         {
            throw new Error("Invalid root class: " + this.§;"!§);
         }
         this.§ "3§.addChild(this.§1&§);
      }
      
      private function §'#§() : void
      {
         this.§%B§ = true;
         this.mStage3D.x = this.§^!S§.x;
         this.mStage3D.y = this.§^!S§.y;
      }
      
      private function render() : void
      {
         if(!§]p§())
         {
            return;
         }
         if(this.§%B§)
         {
            if(this.§6![§)
            {
               this.§6![§.configureBackBuffer(this.§^!S§.width,this.§^!S§.height,this.§2!P§,false);
            }
            this.§%B§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§6!y§;
         this.§6!y§ = _loc1_;
         this.§ "3§.advanceTime(_loc2_);
         this.§1#§.advanceTime(_loc2_);
         this.§9`§.advanceTime(_loc2_);
         this.§?!x§.§=]§(this.§ "3§.stageWidth,this.§ "3§.stageHeight);
         this.§?!x§.clear(this.§6![§,this.§;!`§,1);
         this.§?!x§.§>;§(this.§6![§,this.§%"1§);
         this.§ "3§.render(this.§?!x§,1);
         this.§?!x§.§"F§();
         if(this.§8&§ != null)
         {
            this.§8&§();
            this.§8&§ = null;
         }
         this.§?!x§.finishRendering(this.§6![§);
         this.§?!x§.§;!C§();
      }
      
      public function set §[!Z§(param1:Function) : void
      {
         this.§8&§ = param1;
      }
      
      private function §]1§() : void
      {
         var _loc3_:BitmapData = null;
         this.§7!C§.x = this.§^!S§.x;
         this.§7!C§.y = this.§^!S§.y;
         var _loc1_:int = this.§7!C§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§7!C§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§%0§.addChild(this.§7!C§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§%0§.removeChild(this.§7!C§);
         }
         if(this.§?!x§ && this.§?!x§.canvas)
         {
            this.§?!x§.setCanvasSize(this.§9A§,this.§catch§,this.§^!S§.width / this.§ "3§.stageWidth,this.§^!S§.height / this.§ "3§.stageHeight);
            _loc3_ = this.§?!x§.canvas;
            if(this.§3",§.bitmapData != _loc3_)
            {
               this.§3",§.bitmapData = _loc3_;
            }
            if(this.§%0§.getChildIndex(this.§7!C§) > 0)
            {
               this.§%0§.removeChild(this.§7!C§);
               this.§%0§.addChildAt(this.§7!C§,0);
            }
         }
      }
      
      private function §5<§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§ "3§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§ "3§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§ "3§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§&J§.addChild(_loc2_);
      }
      
      public function §2"%§() : void
      {
         §<!f§ = this;
      }
      
      public function start() : void
      {
         this.§@P§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§@P§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §+H§(param1:Boolean) : void
      {
         this.§-6§ = param1;
      }
      
      private function §9!>§() : void
      {
         this.§=n§ = true;
         if(this.§3",§ == null)
         {
            this.§3",§ = new Bitmap();
            this.§&J§.addChild(this.§3",§);
         }
      }
      
      private function §"B§(param1:ErrorEvent) : void
      {
         this.§9!>§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §6h§(param1:flash.events.Event) : void
      {
         if(this.§<b§)
         {
            return;
         }
         ++§0U§;
         this.§%"1§ = §0U§;
         if(this.§?!x§)
         {
            this.§?!x§.dispose();
         }
         if(!§?%§.§ !O§ && this.§6![§)
         {
            this.§5<§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§2"%§();
         this.§'-§();
         this.§-,§();
         if(this.§6![§ && this.§;!>§)
         {
            this.mStage3DEnabled = false;
            this.§6![§ = null;
            this.§9!>§();
         }
         if(this.§6![§)
         {
            this.§?!x§ = new §5!W§();
         }
         else
         {
            this.§?!x§ = new §<!7§();
            this.§?!x§.setCanvasSize(this.§9A§,this.§catch§,this.§^!S§.width / this.§ "3§.stageWidth,this.§^!S§.height / this.§ "3§.stageHeight);
            this.§?!x§.clear(null,this.§;!`§);
         }
         this.§9`§.§6"§ = this.§+5§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§2"%§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§6!y§;
         if(this.§@P§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§7!C§)
         {
            this.§]1§();
         }
      }
      
      private function §;P§(param1:flash.events.KeyboardEvent) : void
      {
         this.§2"%§();
         this.§ "3§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§+n§;
         var _loc5_:Number = param2 / this.§&";§;
         if(!param3)
         {
            this.§ "3§.stageWidth = this.§+n§ * _loc4_ / _loc5_;
            this.§ "3§.stageHeight = this.§&";§;
         }
         else
         {
            this.§ "3§.stageWidth = this.§+n§;
            this.§ "3§.stageHeight = this.§&";§ * _loc5_ / _loc4_;
         }
         this.§9A§ = param1;
         this.§catch§ = param2;
         this.§ "3§.dispatchEvent(new §6c§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §[!#§() : void
      {
         this.setCanvasSize(this.§+n§,this.§&";§);
      }
      
      private function §9R§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§@P§ || !this.§-6§)
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
               this.§!!x§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§!!x§ = false;
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
               _loc5_ = §<!h§.§?!o§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §<!h§.§-!V§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §<!h§.§,"#§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §<!h§.§?!o§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §<!h§.§,"#§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§!!x§ ? §<!h§.§-!V§ : §<!h§.§"W§;
         }
         if((_loc2_ < this.§^!S§.left || _loc2_ >= this.§^!S§.right || _loc3_ < this.§^!S§.top || _loc3_ >= this.§^!S§.bottom) && _loc5_ == §<!h§.§?!o§)
         {
            return;
         }
         _loc2_ -= this.§^!S§.x;
         _loc3_ -= this.§^!S§.y;
         this.§9`§.§&!d§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §`u§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §3A§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§@!Z§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§6![§ != null)
         {
            (_loc4_ = this.§6![§.createProgram()).upload(param2,param3);
            this.§@!Z§[param1] = _loc4_;
         }
      }
      
      public function §2o§(param1:String) : void
      {
         var _loc2_:Program3D = this.§!!t§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§@!Z§[param1];
         }
      }
      
      public function §!!t§(param1:String) : Program3D
      {
         return this.§@!Z§[param1] as Program3D;
      }
      
      public function §`!z§(param1:String) : Boolean
      {
         return param1 in this.§@!Z§;
      }
      
      public function get § get§() : Boolean
      {
         return this.§@P§;
      }
      
      public function get §",§() : §]!S§
      {
         return this.§1#§;
      }
      
      public function get §6"§() : Boolean
      {
         return this.§+5§;
      }
      
      public function set §6"§(param1:Boolean) : void
      {
         this.§+5§ = param1;
         if(this.§6![§)
         {
            this.§9`§.§6"§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+!r§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§+!r§ = param1;
         if(this.§6![§)
         {
            this.§6![§.enableErrorChecking = param1;
         }
      }
      
      public function get §0P§() : int
      {
         return this.§2!P§;
      }
      
      public function set §0P§(param1:int) : void
      {
         this.§2!P§ = param1;
         this.§'#§();
      }
      
      public function get §[A§() : Rectangle
      {
         return this.§^!S§.clone();
      }
      
      public function set §[A§(param1:Rectangle) : void
      {
         this.§^!S§ = param1.clone();
         this.§'#§();
      }
      
      public function get §&J§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§7!C§ == null)
         {
            this.§7!C§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§7!C§.contextMenu = _loc1_;
            this.§]1§();
         }
         return this.§7!C§;
      }
      
      public function get stage() : §default§.Stage
      {
         return this.§ "3§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §!1§() : flash.display.Stage
      {
         return this.§%0§;
      }
      
      public function get §=7§() : Boolean
      {
         return !this.§=n§;
      }
   }
}
