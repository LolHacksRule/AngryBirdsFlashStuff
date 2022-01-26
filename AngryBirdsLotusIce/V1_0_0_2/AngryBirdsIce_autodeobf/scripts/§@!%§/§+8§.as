package §@!%§
{
   import §""§.§%c§;
   import §%?§.Texture;
   import §@!=§.DisplayObject;
   import §@!=§.Stage;
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
   import starling.events.§,U§;
   import starling.events.§=S§;
   import starling.events.§>w§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §+8§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §]1§:§+8§;
      
      private static var §&F§:Boolean;
      
      private static var §@! §:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §>t§:§@!=§.Stage;
      
      private var §=!C§:Class;
      
      private var §+<§:§@!=§.DisplayObject;
      
      private var §#p§:§%c§;
      
      private var §[!"§:Boolean;
      
      private var §1y§:Boolean;
      
      private var §=3§:§]A§;
      
      private var §?0§:§=S§;
      
      private var §"_§:int;
      
      private var §3A§:Boolean;
      
      private var §^]§:Boolean;
      
      private var §!n§:Number;
      
      private var §&v§:Rectangle;
      
      private var §76§:Boolean;
      
      private var §"d§:flash.display.Stage;
      
      private var §+p§:Sprite;
      
      private var §[!3§:Context3D;
      
      private var § !§:Dictionary;
      
      private var §0&§:int;
      
      private var §0!A§:Boolean;
      
      private var §`_§:Number;
      
      private var §9Y§:Number;
      
      private var §43§:Number;
      
      private var §[B§:Number;
      
      private var §<C§:Number;
      
      private var §[!;§:Number;
      
      private var § if§:Function;
      
      private var §]O§:uint;
      
      private var §1r§:String;
      
      private var §&!9§:Bitmap;
      
      private var §<^§:Boolean = false;
      
      private var §[W§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §[U§:Boolean = false;
      
      public function §+8§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§`_§ = param3.width;
         this.§9Y§ = param3.height;
         this.§43§ = this.§`_§;
         this.§[B§ = this.§9Y§;
         this.§<C§ = param2.stageWidth;
         this.§[!;§ = param2.stageHeight;
         §3Q§ = true;
         this.§@!#§();
         this.§=!C§ = param1;
         this.§&v§ = param3;
         this.mStage3D = param4;
         this.§>t§ = new §@!=§.Stage(param3.width,param3.height,param2.color);
         this.§"d§ = param2;
         this.§?0§ = new §=S§(this.§>t§);
         this.§#p§ = new §%c§();
         this.§"_§ = 0;
         this.§3A§ = false;
         this.§^]§ = false;
         this.§!n§ = getTimer() / 1000;
         this.§ !§ = new Dictionary();
         for each(_loc6_ in this.§5a§)
         {
            param2.addEventListener(_loc6_,this.§`O§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§`4§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§ Q§,false,1,true);
         this.mStage3D.visible = false;
         this.§'!3§(true);
         this.§]O§ = param2.color;
         this.§1r§ = param5;
      }
      
      public static function get §-]§() : Boolean
      {
         if(§-2§)
         {
            return §-2§.§0!A§;
         }
         return true;
      }
      
      public static function §#!<§() : Boolean
      {
         return §]1§ && (§]1§.§<^§ || §]1§.§[!3§ != null && §]1§.§[!3§.driverInfo != "Disposed");
      }
      
      public static function get §-2§() : §+8§
      {
         return §]1§;
      }
      
      public static function get §`!;§() : §%c§
      {
         return !!§]1§ ? §]1§.§`!;§ : null;
      }
      
      public static function get §^J§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §^J§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §3Q§() : Boolean
      {
         return §&F§;
      }
      
      public static function set §3Q§(param1:Boolean) : void
      {
         if(§]1§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §&F§ = param1;
      }
      
      public static function §5D§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§-2§)
         {
            return Texture.§''§(§-2§.§[!3§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§]1§.§[!3§)
         {
            §]1§.§[!3§.drawToBitmapData(param1);
         }
         else if(§]1§.§=3§.canvas)
         {
            _loc2_ = §]1§.§=3§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §[!2§() : §@!=§.DisplayObject
      {
         return this.§+<§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§]O§ = param1;
      }
      
      public function get §!!H§() : Number
      {
         return this.§`_§;
      }
      
      public function get §%L§() : Number
      {
         return this.§9Y§;
      }
      
      public function §-M§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§1r§);
         }
         catch(e:Error)
         {
            §3c§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§[U§ = true;
         this.§"d§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§"d§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§`4§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§ Q§,false);
         for each(_loc1_ in this.§5a§)
         {
            this.§"d§.removeEventListener(_loc1_,this.§`O§,false);
         }
         for each(_loc2_ in this.§ !§)
         {
            _loc2_.dispose();
         }
         if(this.§[!3§)
         {
            this.§[!3§.dispose();
         }
         if(this.§?0§)
         {
            this.§?0§.dispose();
         }
         if(this.§=3§)
         {
            this.§=3§.dispose();
         }
         if(§]1§ == this)
         {
            §]1§ = null;
         }
         if(this.§&!9§ && this.§&!9§.bitmapData)
         {
            this.§&!9§.bitmapData.dispose();
            this.§&!9§.bitmapData = null;
         }
      }
      
      private function § !H§() : void
      {
         this.§[!3§ = this.mStage3D.context3D;
         this.§ !§ = new Dictionary();
         if(this.§[!3§)
         {
            this.§[!3§.enableErrorChecking = this.§^]§;
            if(this.§[!3§.driverInfo.indexOf("Software") >= 0)
            {
               this.§0!A§ = true;
            }
         }
         else
         {
            this.§0!A§ = true;
         }
         this.§,L§();
      }
      
      private function §<=§() : void
      {
         if(this.§>t§.numChildren > 0)
         {
            return;
         }
         if(this.§+<§ == null)
         {
            this.§+<§ = new this.§=!C§();
         }
         if(this.§+<§ == null)
         {
            throw new Error("Invalid root class: " + this.§=!C§);
         }
         this.§>t§.addChild(this.§+<§);
      }
      
      private function §,L§() : void
      {
         this.§[W§ = true;
         this.mStage3D.x = this.§&v§.x;
         this.mStage3D.y = this.§&v§.y;
      }
      
      private function render() : void
      {
         if(!§#!<§())
         {
            return;
         }
         if(this.§[W§)
         {
            if(this.§[!3§)
            {
               this.§[!3§.configureBackBuffer(this.§&v§.width,this.§&v§.height,this.§"_§,false);
            }
            this.§[W§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§!n§;
         this.§!n§ = _loc1_;
         this.§>t§.advanceTime(_loc2_);
         this.§#p§.advanceTime(_loc2_);
         this.§?0§.advanceTime(_loc2_);
         this.§=3§.§"!;§(this.§>t§.stageWidth,this.§>t§.stageHeight);
         this.§=3§.clear(this.§[!3§,this.§]O§,1);
         this.§=3§.§2!G§(this.§[!3§,this.§0&§);
         this.§>t§.render(this.§=3§,1);
         this.§=3§.§7[§();
         if(this.§ if§ != null)
         {
            this.§ if§();
            this.§ if§ = null;
         }
         this.§=3§.finishRendering(this.§[!3§);
         this.§=3§.§;@§();
      }
      
      public function set §!!$§(param1:Function) : void
      {
         this.§ if§ = param1;
      }
      
      private function §5r§() : void
      {
         var _loc3_:BitmapData = null;
         this.§+p§.x = this.§&v§.x;
         this.§+p§.y = this.§&v§.y;
         var _loc1_:int = this.§+p§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§+p§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§"d§.addChild(this.§+p§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§"d§.removeChild(this.§+p§);
         }
         if(this.§=3§ && this.§=3§.canvas)
         {
            this.§=3§.setCanvasSize(this.§43§,this.§[B§,this.§&v§.width / this.§>t§.stageWidth,this.§&v§.height / this.§>t§.stageHeight);
            _loc3_ = this.§=3§.canvas;
            if(this.§&!9§.bitmapData != _loc3_)
            {
               this.§&!9§.bitmapData = _loc3_;
            }
            if(this.§"d§.getChildIndex(this.§+p§) > 0)
            {
               this.§"d§.removeChild(this.§+p§);
               this.§"d§.addChildAt(this.§+p§,0);
            }
         }
      }
      
      private function §3c§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§>t§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§>t§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§>t§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§3!F§.addChild(_loc2_);
      }
      
      public function §@!#§() : void
      {
         §]1§ = this;
      }
      
      public function start() : void
      {
         this.§[!"§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§[!"§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §'!3§(param1:Boolean) : void
      {
         this.§1y§ = param1;
      }
      
      private function §>X§() : void
      {
         this.§<^§ = true;
         if(this.§&!9§ == null)
         {
            this.§&!9§ = new Bitmap();
            this.§3!F§.addChild(this.§&!9§);
         }
      }
      
      private function § Q§(param1:ErrorEvent) : void
      {
         this.§>X§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §`4§(param1:flash.events.Event) : void
      {
         if(this.§[U§)
         {
            return;
         }
         ++§@! §;
         this.§0&§ = §@! §;
         if(this.§=3§)
         {
            this.§=3§.dispose();
         }
         if(!§+8§.§3Q§ && this.§[!3§)
         {
            this.§3c§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§@!#§();
         this.§ !H§();
         this.§<=§();
         if(this.§[!3§ && this.§0!A§)
         {
            this.mStage3DEnabled = false;
            this.§[!3§ = null;
            this.§>X§();
         }
         if(this.§[!3§)
         {
            this.§=3§ = new §]A§();
         }
         else
         {
            this.§=3§ = new §null §();
            this.§=3§.setCanvasSize(this.§43§,this.§[B§,this.§&v§.width / this.§>t§.stageWidth,this.§&v§.height / this.§>t§.stageHeight);
            this.§=3§.clear(null,this.§]O§);
         }
         this.§?0§.§=!$§ = this.§3A§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§@!#§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§!n§;
         if(this.§[!"§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§+p§)
         {
            this.§5r§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§@!#§();
         this.§>t§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§`_§;
         var _loc5_:Number = param2 / this.§9Y§;
         if(!param3)
         {
            this.§>t§.stageWidth = this.§`_§ * _loc4_ / _loc5_;
            this.§>t§.stageHeight = this.§9Y§;
         }
         else
         {
            this.§>t§.stageWidth = this.§`_§;
            this.§>t§.stageHeight = this.§9Y§ * _loc5_ / _loc4_;
         }
         this.§43§ = param1;
         this.§[B§ = param2;
         this.§>t§.dispatchEvent(new §,U§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §-U§() : void
      {
         this.setCanvasSize(this.§`_§,this.§9Y§);
      }
      
      private function §`O§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§[!"§ || !this.§1y§)
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
               this.§76§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§76§ = false;
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
               _loc5_ = §>w§.§9a§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §>w§.§`'§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §>w§.§[s§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §>w§.§9a§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §>w§.§[s§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§76§ ? §>w§.§`'§ : §>w§.§#j§;
         }
         if((_loc2_ < this.§&v§.left || _loc2_ >= this.§&v§.right || _loc3_ < this.§&v§.top || _loc3_ >= this.§&v§.bottom) && _loc5_ == §>w§.§9a§)
         {
            return;
         }
         _loc2_ -= this.§&v§.x;
         _loc3_ -= this.§&v§.y;
         this.§?0§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §5a§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §5f§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§ !§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§[!3§ != null)
         {
            (_loc4_ = this.§[!3§.createProgram()).upload(param2,param3);
            this.§ !§[param1] = _loc4_;
         }
      }
      
      public function §>5§(param1:String) : void
      {
         var _loc2_:Program3D = this.§7X§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§ !§[param1];
         }
      }
      
      public function §7X§(param1:String) : Program3D
      {
         return this.§ !§[param1] as Program3D;
      }
      
      public function §0!$§(param1:String) : Boolean
      {
         return param1 in this.§ !§;
      }
      
      public function get §83§() : Boolean
      {
         return this.§[!"§;
      }
      
      public function get §`!;§() : §%c§
      {
         return this.§#p§;
      }
      
      public function get §=!$§() : Boolean
      {
         return this.§3A§;
      }
      
      public function set §=!$§(param1:Boolean) : void
      {
         this.§3A§ = param1;
         if(this.§[!3§)
         {
            this.§?0§.§=!$§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§^]§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§^]§ = param1;
         if(this.§[!3§)
         {
            this.§[!3§.enableErrorChecking = param1;
         }
      }
      
      public function get §;!D§() : int
      {
         return this.§"_§;
      }
      
      public function set §;!D§(param1:int) : void
      {
         this.§"_§ = param1;
         this.§,L§();
      }
      
      public function get §&<§() : Rectangle
      {
         return this.§&v§.clone();
      }
      
      public function set §&<§(param1:Rectangle) : void
      {
         this.§&v§ = param1.clone();
         this.§,L§();
      }
      
      public function get §3!F§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§+p§ == null)
         {
            this.§+p§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§+p§.contextMenu = _loc1_;
            this.§5r§();
         }
         return this.§+p§;
      }
      
      public function get stage() : §@!=§.Stage
      {
         return this.§>t§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §``§() : flash.display.Stage
      {
         return this.§"d§;
      }
      
      public function get §#'§() : Boolean
      {
         return !this.§<^§;
      }
   }
}
