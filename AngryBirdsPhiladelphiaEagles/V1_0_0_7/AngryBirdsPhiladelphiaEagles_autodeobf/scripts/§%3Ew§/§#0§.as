package §>w§
{
   import §"`§.Texture;
   import §4G§.DisplayObject;
   import §4G§.Stage;
   import §8H§.§2h§;
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
   import starling.events.§ else§;
   import starling.events.§6G§;
   import starling.events.§?T§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §#0§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §^!1§:§#0§;
      
      private static var §6z§:Boolean;
      
      private static var §5O§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §`v§:§4G§.Stage;
      
      private var §8S§:Class;
      
      private var §8=§:§4G§.DisplayObject;
      
      private var §@,§:§2h§;
      
      private var §,U§:Boolean;
      
      private var §"E§:Boolean;
      
      private var §"_§:§"!,§;
      
      private var §7d§:§6G§;
      
      private var §3!-§:int;
      
      private var § in§:Boolean;
      
      private var §=%§:Boolean;
      
      private var §1!2§:Number;
      
      private var §!4§:Rectangle;
      
      private var §8!@§:Boolean;
      
      private var §@'§:flash.display.Stage;
      
      private var §6!§:Sprite;
      
      private var §#%§:Context3D;
      
      private var §3#§:Dictionary;
      
      private var §-!C§:int;
      
      private var §2%§:Boolean;
      
      private var §5y§:Number;
      
      private var §=!J§:Number;
      
      private var §4N§:Number;
      
      private var §#p§:Number;
      
      private var §<e§:Number;
      
      private var §@!N§:Number;
      
      private var §]+§:Function;
      
      private var §+H§:uint;
      
      private var §`3§:String;
      
      private var §5!"§:Bitmap;
      
      private var §5_§:Boolean = false;
      
      private var § !P§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var § !+§:Boolean = false;
      
      public function §#0§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§5y§ = param3.width;
         this.§=!J§ = param3.height;
         this.§4N§ = this.§5y§;
         this.§#p§ = this.§=!J§;
         this.§<e§ = param2.stageWidth;
         this.§@!N§ = param2.stageHeight;
         §!m§ = true;
         this.§%M§();
         this.§8S§ = param1;
         this.§!4§ = param3;
         this.mStage3D = param4;
         this.§`v§ = new §4G§.Stage(param3.width,param3.height,param2.color);
         this.§@'§ = param2;
         this.§7d§ = new §6G§(this.§`v§);
         this.§@,§ = new §2h§();
         this.§3!-§ = 0;
         this.§ in§ = false;
         this.§=%§ = false;
         this.§1!2§ = getTimer() / 1000;
         this.§3#§ = new Dictionary();
         for each(_loc6_ in this.§%§)
         {
            param2.addEventListener(_loc6_,this.§class§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8!O§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8!O§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§[?§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§1b§,false,1,true);
         this.mStage3D.visible = false;
         this.§[]§(true);
         this.§+H§ = param2.color;
         this.§`3§ = param5;
      }
      
      public static function get §3!<§() : Boolean
      {
         if(§#4§)
         {
            return §#4§.§2%§;
         }
         return true;
      }
      
      public static function §!!B§() : Boolean
      {
         return §^!1§ && (§^!1§.§5_§ || §^!1§.§#%§ != null && §^!1§.§#%§.driverInfo != "Disposed");
      }
      
      public static function get §#4§() : §#0§
      {
         return §^!1§;
      }
      
      public static function get §]!=§() : §2h§
      {
         return !!§^!1§ ? §^!1§.§]!=§ : null;
      }
      
      public static function get §>R§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §>R§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §!m§() : Boolean
      {
         return §6z§;
      }
      
      public static function set §!m§(param1:Boolean) : void
      {
         if(§^!1§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §6z§ = param1;
      }
      
      public static function §6!F§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§#4§)
         {
            return Texture.§ !C§(§#4§.§#%§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§^!1§.§#%§)
         {
            §^!1§.§#%§.drawToBitmapData(param1);
         }
         else if(§^!1§.§"_§.canvas)
         {
            _loc2_ = §^!1§.§"_§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §0!"§() : §4G§.DisplayObject
      {
         return this.§8=§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§+H§ = param1;
      }
      
      public function get §'!N§() : Number
      {
         return this.§5y§;
      }
      
      public function get § !>§() : Number
      {
         return this.§=!J§;
      }
      
      public function §'2§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§`3§);
         }
         catch(e:Error)
         {
            §<!M§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§ !+§ = true;
         this.§@'§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8!O§,false);
         this.§@'§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8!O§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§[?§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§1b§,false);
         for each(_loc1_ in this.§%§)
         {
            this.§@'§.removeEventListener(_loc1_,this.§class§,false);
         }
         for each(_loc2_ in this.§3#§)
         {
            _loc2_.dispose();
         }
         if(this.§#%§)
         {
            this.§#%§.dispose();
         }
         if(this.§7d§)
         {
            this.§7d§.dispose();
         }
         if(this.§"_§)
         {
            this.§"_§.dispose();
         }
         if(§^!1§ == this)
         {
            §^!1§ = null;
         }
         if(this.§5!"§ && this.§5!"§.bitmapData)
         {
            this.§5!"§.bitmapData.dispose();
            this.§5!"§.bitmapData = null;
         }
      }
      
      private function §!!J§() : void
      {
         this.§#%§ = this.mStage3D.context3D;
         this.§3#§ = new Dictionary();
         if(this.§#%§)
         {
            this.§#%§.enableErrorChecking = this.§=%§;
            if(this.§#%§.driverInfo.indexOf("Software") >= 0)
            {
               this.§2%§ = true;
            }
         }
         else
         {
            this.§2%§ = true;
         }
         this.§5H§();
      }
      
      private function §-V§() : void
      {
         if(this.§`v§.numChildren > 0)
         {
            return;
         }
         if(this.§8=§ == null)
         {
            this.§8=§ = new this.§8S§();
         }
         if(this.§8=§ == null)
         {
            throw new Error("Invalid root class: " + this.§8S§);
         }
         this.§`v§.addChild(this.§8=§);
      }
      
      private function §5H§() : void
      {
         this.§ !P§ = true;
         this.mStage3D.x = this.§!4§.x;
         this.mStage3D.y = this.§!4§.y;
      }
      
      private function render() : void
      {
         if(!§!!B§())
         {
            return;
         }
         if(this.§ !P§)
         {
            if(this.§#%§)
            {
               this.§#%§.configureBackBuffer(this.§!4§.width,this.§!4§.height,this.§3!-§,false);
            }
            this.§ !P§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§1!2§;
         this.§1!2§ = _loc1_;
         this.§`v§.advanceTime(_loc2_);
         this.§@,§.advanceTime(_loc2_);
         this.§7d§.advanceTime(_loc2_);
         this.§"_§.§@!A§(this.§`v§.stageWidth,this.§`v§.stageHeight);
         this.§"_§.clear(this.§#%§,this.§+H§,1);
         this.§"_§.§@!8§(this.§#%§,this.§-!C§);
         this.§`v§.render(this.§"_§,1);
         this.§"_§.§`X§();
         if(this.§]+§ != null)
         {
            this.§]+§();
            this.§]+§ = null;
         }
         this.§"_§.finishRendering(this.§#%§);
         this.§"_§.§4!A§();
      }
      
      public function set §,8§(param1:Function) : void
      {
         this.§]+§ = param1;
      }
      
      private function §`!3§() : void
      {
         var _loc3_:BitmapData = null;
         this.§6!§.x = this.§!4§.x;
         this.§6!§.y = this.§!4§.y;
         var _loc1_:int = this.§6!§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§6!§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§@'§.addChild(this.§6!§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§@'§.removeChild(this.§6!§);
         }
         if(this.§"_§ && this.§"_§.canvas)
         {
            this.§"_§.setCanvasSize(this.§4N§,this.§#p§,this.§!4§.width / this.§`v§.stageWidth,this.§!4§.height / this.§`v§.stageHeight);
            _loc3_ = this.§"_§.canvas;
            if(this.§5!"§.bitmapData != _loc3_)
            {
               this.§5!"§.bitmapData = _loc3_;
            }
            if(this.§@'§.getChildIndex(this.§6!§) > 0)
            {
               this.§@'§.removeChild(this.§6!§);
               this.§@'§.addChildAt(this.§6!§,0);
            }
         }
      }
      
      private function §<!M§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§`v§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§`v§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§`v§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§ ]§.addChild(_loc2_);
      }
      
      public function §%M§() : void
      {
         §^!1§ = this;
      }
      
      public function start() : void
      {
         this.§,U§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§,U§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §[]§(param1:Boolean) : void
      {
         this.§"E§ = param1;
      }
      
      private function §2!A§() : void
      {
         this.§5_§ = true;
         if(this.§5!"§ == null)
         {
            this.§5!"§ = new Bitmap();
            this.§ ]§.addChild(this.§5!"§);
         }
      }
      
      private function §1b§(param1:ErrorEvent) : void
      {
         this.§2!A§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §[?§(param1:flash.events.Event) : void
      {
         if(this.§ !+§)
         {
            return;
         }
         ++§5O§;
         this.§-!C§ = §5O§;
         if(this.§"_§)
         {
            this.§"_§.dispose();
         }
         if(!§#0§.§!m§ && this.§#%§)
         {
            this.§<!M§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§%M§();
         this.§!!J§();
         this.§-V§();
         if(this.§#%§ && this.§2%§)
         {
            this.mStage3DEnabled = false;
            this.§#%§ = null;
            this.§2!A§();
         }
         if(this.§#%§)
         {
            this.§"_§ = new §"!,§();
         }
         else
         {
            this.§"_§ = new §]b§();
            this.§"_§.setCanvasSize(this.§4N§,this.§#p§,this.§!4§.width / this.§`v§.stageWidth,this.§!4§.height / this.§`v§.stageHeight);
            this.§"_§.clear(null,this.§+H§);
         }
         this.§7d§.§2`§ = this.§ in§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§%M§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§1!2§;
         if(this.§,U§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§6!§)
         {
            this.§`!3§();
         }
      }
      
      private function §8!O§(param1:flash.events.KeyboardEvent) : void
      {
         this.§%M§();
         this.§`v§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§5y§;
         var _loc5_:Number = param2 / this.§=!J§;
         if(!param3)
         {
            this.§`v§.stageWidth = this.§5y§ * _loc4_ / _loc5_;
            this.§`v§.stageHeight = this.§=!J§;
         }
         else
         {
            this.§`v§.stageWidth = this.§5y§;
            this.§`v§.stageHeight = this.§=!J§ * _loc5_ / _loc4_;
         }
         this.§4N§ = param1;
         this.§#p§ = param2;
         this.§`v§.dispatchEvent(new §?T§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §9!7§() : void
      {
         this.setCanvasSize(this.§5y§,this.§=!J§);
      }
      
      private function §class§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§,U§ || !this.§"E§)
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
               this.§8!@§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§8!@§ = false;
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
               _loc5_ = § else§.§#!&§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = § else§.§'!0§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = § else§.§&!2§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = § else§.§#!&§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = § else§.§&!2§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§8!@§ ? § else§.§'!0§ : § else§.§<!;§;
         }
         if((_loc2_ < this.§!4§.left || _loc2_ >= this.§!4§.right || _loc3_ < this.§!4§.top || _loc3_ >= this.§!4§.bottom) && _loc5_ == § else§.§#!&§)
         {
            return;
         }
         _loc2_ -= this.§!4§.x;
         _loc3_ -= this.§!4§.y;
         this.§7d§.include(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §%§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §=Y§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§3#§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§#%§ != null)
         {
            (_loc4_ = this.§#%§.createProgram()).upload(param2,param3);
            this.§3#§[param1] = _loc4_;
         }
      }
      
      public function §8E§(param1:String) : void
      {
         var _loc2_:Program3D = this.§ x§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§3#§[param1];
         }
      }
      
      public function § x§(param1:String) : Program3D
      {
         return this.§3#§[param1] as Program3D;
      }
      
      public function §<i§(param1:String) : Boolean
      {
         return param1 in this.§3#§;
      }
      
      public function get §]o§() : Boolean
      {
         return this.§,U§;
      }
      
      public function get §]!=§() : §2h§
      {
         return this.§@,§;
      }
      
      public function get §2`§() : Boolean
      {
         return this.§ in§;
      }
      
      public function set §2`§(param1:Boolean) : void
      {
         this.§ in§ = param1;
         if(this.§#%§)
         {
            this.§7d§.§2`§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§=%§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§=%§ = param1;
         if(this.§#%§)
         {
            this.§#%§.enableErrorChecking = param1;
         }
      }
      
      public function get § S§() : int
      {
         return this.§3!-§;
      }
      
      public function set § S§(param1:int) : void
      {
         this.§3!-§ = param1;
         this.§5H§();
      }
      
      public function get §7!$§() : Rectangle
      {
         return this.§!4§.clone();
      }
      
      public function set §7!$§(param1:Rectangle) : void
      {
         this.§!4§ = param1.clone();
         this.§5H§();
      }
      
      public function get § ]§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§6!§ == null)
         {
            this.§6!§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§6!§.contextMenu = _loc1_;
            this.§`!3§();
         }
         return this.§6!§;
      }
      
      public function get stage() : §4G§.Stage
      {
         return this.§`v§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §&"§() : flash.display.Stage
      {
         return this.§@'§;
      }
      
      public function get §6!7§() : Boolean
      {
         return !this.§5_§;
      }
   }
}
