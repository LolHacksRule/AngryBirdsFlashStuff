package §0!F§
{
   import §%x§.§=!U§;
   import §3!U§.Texture;
   import §]!2§.DisplayObject;
   import §]!2§.Stage;
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
   import starling.events.§#"#§;
   import starling.events.§3>§;
   import starling.events.§7M§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §^d§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §<" §:§^d§;
      
      private static var §&!Q§:Boolean;
      
      private static var §>!7§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §,![§:§]!2§.Stage;
      
      private var §4!<§:Class;
      
      private var §@7§:§]!2§.DisplayObject;
      
      private var §-3§:§=!U§;
      
      private var §each §:Boolean;
      
      private var §;a§:Boolean;
      
      private var §]§:§3`§;
      
      private var §4O§:§7M§;
      
      private var §#§:int;
      
      private var §""#§:Boolean;
      
      private var §1E§:Boolean;
      
      private var §0,§:Number;
      
      private var §1+§:Rectangle;
      
      private var §!"'§:Boolean;
      
      private var §%;§:flash.display.Stage;
      
      private var §;8§:Sprite;
      
      private var §0!h§:Context3D;
      
      private var § "2§:Dictionary;
      
      private var §5=§:int;
      
      private var §;!W§:Boolean;
      
      private var §0"2§:Number;
      
      private var §"!m§:Number;
      
      private var §6'§:Number;
      
      private var §,2§:Number;
      
      private var §`!W§:Number;
      
      private var §`!!§:Number;
      
      private var §>V§:Function;
      
      private var §%v§:uint;
      
      private var §&!§:String;
      
      private var §&8§:Bitmap;
      
      private var §<!N§:Boolean = false;
      
      private var §1r§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §5!Y§:Boolean = false;
      
      public function §^d§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§0"2§ = param3.width;
         this.§"!m§ = param3.height;
         this.§6'§ = this.§0"2§;
         this.§,2§ = this.§"!m§;
         this.§`!W§ = param2.stageWidth;
         this.§`!!§ = param2.stageHeight;
         §=",§ = true;
         this.§8a§();
         this.§4!<§ = param1;
         this.§1+§ = param3;
         this.mStage3D = param4;
         this.§,![§ = new §]!2§.Stage(param3.width,param3.height,param2.color);
         this.§%;§ = param2;
         this.§4O§ = new §7M§(this.§,![§);
         this.§-3§ = new §=!U§();
         this.§#§ = 0;
         this.§""#§ = false;
         this.§1E§ = false;
         this.§0,§ = getTimer() / 1000;
         this.§ "2§ = new Dictionary();
         for each(_loc6_ in this.§1!?§)
         {
            param2.addEventListener(_loc6_,this.§-y§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§switch§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§switch§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§6I§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§%"#§,false,1,true);
         this.mStage3D.visible = false;
         this.§3G§(true);
         this.§%v§ = param2.color;
         this.§&!§ = param5;
      }
      
      public static function get §4!8§() : Boolean
      {
         if(§+!f§)
         {
            return §+!f§.§;!W§;
         }
         return true;
      }
      
      public static function §+>§() : Boolean
      {
         return §<" § && (§<" §.§<!N§ || §<" §.§0!h§ != null && §<" §.§0!h§.driverInfo != "Disposed");
      }
      
      public static function get §+!f§() : §^d§
      {
         return §<" §;
      }
      
      public static function get §,"'§() : §=!U§
      {
         return !!§<" § ? §<" §.§,"'§ : null;
      }
      
      public static function get §";§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §";§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §=",§() : Boolean
      {
         return §&!Q§;
      }
      
      public static function set §=",§(param1:Boolean) : void
      {
         if(§<" § != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §&!Q§ = param1;
      }
      
      public static function §5G§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§+!f§)
         {
            return Texture.§`4§(§+!f§.§0!h§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§<" §.§0!h§)
         {
            §<" §.§0!h§.drawToBitmapData(param1);
         }
         else if(§<" §.§]§.canvas)
         {
            _loc2_ = §<" §.§]§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §>d§() : §]!2§.DisplayObject
      {
         return this.§@7§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§%v§ = param1;
      }
      
      public function get § S§() : Number
      {
         return this.§0"2§;
      }
      
      public function get §5%§() : Number
      {
         return this.§"!m§;
      }
      
      public function §2f§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§&!§);
         }
         catch(e:Error)
         {
            §;_§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§5!Y§ = true;
         this.§%;§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§switch§,false);
         this.§%;§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§switch§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§6I§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§%"#§,false);
         for each(_loc1_ in this.§1!?§)
         {
            this.§%;§.removeEventListener(_loc1_,this.§-y§,false);
         }
         for each(_loc2_ in this.§ "2§)
         {
            _loc2_.dispose();
         }
         if(this.§0!h§)
         {
            this.§0!h§.dispose();
         }
         if(this.§4O§)
         {
            this.§4O§.dispose();
         }
         if(this.§]§)
         {
            this.§]§.dispose();
         }
         if(§<" § == this)
         {
            §<" § = null;
         }
         if(this.§&8§ && this.§&8§.bitmapData)
         {
            this.§&8§.bitmapData.dispose();
            this.§&8§.bitmapData = null;
         }
      }
      
      private function §9! §() : void
      {
         this.§0!h§ = this.mStage3D.context3D;
         this.§ "2§ = new Dictionary();
         if(this.§0!h§)
         {
            this.§0!h§.enableErrorChecking = this.§1E§;
            if(this.§0!h§.driverInfo.indexOf("Software") >= 0)
            {
               this.§;!W§ = true;
            }
         }
         else
         {
            this.§;!W§ = true;
         }
         this.§6K§();
      }
      
      private function §]!%§() : void
      {
         if(this.§,![§.numChildren > 0)
         {
            return;
         }
         if(this.§@7§ == null)
         {
            this.§@7§ = new this.§4!<§();
         }
         if(this.§@7§ == null)
         {
            throw new Error("Invalid root class: " + this.§4!<§);
         }
         this.§,![§.addChild(this.§@7§);
      }
      
      private function §6K§() : void
      {
         this.§1r§ = true;
         this.mStage3D.x = this.§1+§.x;
         this.mStage3D.y = this.§1+§.y;
      }
      
      private function render() : void
      {
         if(!§+>§())
         {
            return;
         }
         if(this.§1r§)
         {
            if(this.§0!h§)
            {
               this.§0!h§.configureBackBuffer(this.§1+§.width,this.§1+§.height,this.§#§,false);
            }
            this.§1r§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§0,§;
         this.§0,§ = _loc1_;
         this.§,![§.advanceTime(_loc2_);
         this.§-3§.advanceTime(_loc2_);
         this.§4O§.advanceTime(_loc2_);
         this.§]§.§<]§(this.§,![§.stageWidth,this.§,![§.stageHeight);
         this.§]§.clear(this.§0!h§,this.§%v§,1);
         this.§]§.§<"0§(this.§0!h§,this.§5=§);
         this.§,![§.render(this.§]§,1);
         this.§]§.§#T§();
         if(this.§>V§ != null)
         {
            this.§>V§();
            this.§>V§ = null;
         }
         this.§]§.finishRendering(this.§0!h§);
         this.§]§.§[!q§();
      }
      
      public function set §+!^§(param1:Function) : void
      {
         this.§>V§ = param1;
      }
      
      private function §41§() : void
      {
         var _loc3_:BitmapData = null;
         this.§;8§.x = this.§1+§.x;
         this.§;8§.y = this.§1+§.y;
         var _loc1_:int = this.§;8§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§;8§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§%;§.addChild(this.§;8§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§%;§.removeChild(this.§;8§);
         }
         if(this.§]§ && this.§]§.canvas)
         {
            this.§]§.setCanvasSize(this.§6'§,this.§,2§,this.§1+§.width / this.§,![§.stageWidth,this.§1+§.height / this.§,![§.stageHeight);
            _loc3_ = this.§]§.canvas;
            if(this.§&8§.bitmapData != _loc3_)
            {
               this.§&8§.bitmapData = _loc3_;
            }
            if(this.§%;§.getChildIndex(this.§;8§) > 0)
            {
               this.§%;§.removeChild(this.§;8§);
               this.§%;§.addChildAt(this.§;8§,0);
            }
         }
      }
      
      private function §;_§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§,![§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§,![§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§,![§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§84§.addChild(_loc2_);
      }
      
      public function §8a§() : void
      {
         §<" § = this;
      }
      
      public function start() : void
      {
         this.§each § = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§each § = false;
         this.mStage3D.visible = false;
      }
      
      public function §3G§(param1:Boolean) : void
      {
         this.§;a§ = param1;
      }
      
      private function §`!C§() : void
      {
         this.§<!N§ = true;
         if(this.§&8§ == null)
         {
            this.§&8§ = new Bitmap();
            this.§84§.addChild(this.§&8§);
         }
      }
      
      private function §%"#§(param1:ErrorEvent) : void
      {
         this.§`!C§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §6I§(param1:flash.events.Event) : void
      {
         if(this.§5!Y§)
         {
            return;
         }
         ++§>!7§;
         this.§5=§ = §>!7§;
         if(this.§]§)
         {
            this.§]§.dispose();
         }
         if(!§^d§.§=",§ && this.§0!h§)
         {
            this.§;_§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§8a§();
         this.§9! §();
         this.§]!%§();
         if(this.§0!h§ && this.§;!W§)
         {
            this.mStage3DEnabled = false;
            this.§0!h§ = null;
            this.§`!C§();
         }
         if(this.§0!h§)
         {
            this.§]§ = new §3`§();
         }
         else
         {
            this.§]§ = new §8=§();
            this.§]§.setCanvasSize(this.§6'§,this.§,2§,this.§1+§.width / this.§,![§.stageWidth,this.§1+§.height / this.§,![§.stageHeight);
            this.§]§.clear(null,this.§%v§);
         }
         this.§4O§.§%N§ = this.§""#§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§8a§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§0,§;
         if(this.§each § || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§;8§)
         {
            this.§41§();
         }
      }
      
      private function §switch§(param1:flash.events.KeyboardEvent) : void
      {
         this.§8a§();
         this.§,![§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§0"2§;
         var _loc5_:Number = param2 / this.§"!m§;
         if(!param3)
         {
            this.§,![§.stageWidth = this.§0"2§ * _loc4_ / _loc5_;
            this.§,![§.stageHeight = this.§"!m§;
         }
         else
         {
            this.§,![§.stageWidth = this.§0"2§;
            this.§,![§.stageHeight = this.§"!m§ * _loc5_ / _loc4_;
         }
         this.§6'§ = param1;
         this.§,2§ = param2;
         this.§,![§.dispatchEvent(new §3>§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §5P§() : void
      {
         this.setCanvasSize(this.§0"2§,this.§"!m§);
      }
      
      private function §-y§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§each § || !this.§;a§)
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
               this.§!"'§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§!"'§ = false;
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
               _loc5_ = §#"#§.§ "$§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §#"#§.§?9§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §#"#§.§ '§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §#"#§.§ "$§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §#"#§.§ '§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§!"'§ ? §#"#§.§?9§ : §#"#§.§-^§;
         }
         if((_loc2_ < this.§1+§.left || _loc2_ >= this.§1+§.right || _loc3_ < this.§1+§.top || _loc3_ >= this.§1+§.bottom) && _loc5_ == §#"#§.§ "$§)
         {
            return;
         }
         _loc2_ -= this.§1+§.x;
         _loc3_ -= this.§1+§.y;
         this.§4O§.§8q§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §1!?§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §1e§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§ "2§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§0!h§ != null)
         {
            (_loc4_ = this.§0!h§.createProgram()).upload(param2,param3);
            this.§ "2§[param1] = _loc4_;
         }
      }
      
      public function §`" §(param1:String) : void
      {
         var _loc2_:Program3D = this.§]!P§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§ "2§[param1];
         }
      }
      
      public function §]!P§(param1:String) : Program3D
      {
         return this.§ "2§[param1] as Program3D;
      }
      
      public function §>F§(param1:String) : Boolean
      {
         return param1 in this.§ "2§;
      }
      
      public function get § !j§() : Boolean
      {
         return this.§each §;
      }
      
      public function get §,"'§() : §=!U§
      {
         return this.§-3§;
      }
      
      public function get §%N§() : Boolean
      {
         return this.§""#§;
      }
      
      public function set §%N§(param1:Boolean) : void
      {
         this.§""#§ = param1;
         if(this.§0!h§)
         {
            this.§4O§.§%N§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§1E§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§1E§ = param1;
         if(this.§0!h§)
         {
            this.§0!h§.enableErrorChecking = param1;
         }
      }
      
      public function get §=!G§() : int
      {
         return this.§#§;
      }
      
      public function set §=!G§(param1:int) : void
      {
         this.§#§ = param1;
         this.§6K§();
      }
      
      public function get §#%§() : Rectangle
      {
         return this.§1+§.clone();
      }
      
      public function set §#%§(param1:Rectangle) : void
      {
         this.§1+§ = param1.clone();
         this.§6K§();
      }
      
      public function get §84§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§;8§ == null)
         {
            this.§;8§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§;8§.contextMenu = _loc1_;
            this.§41§();
         }
         return this.§;8§;
      }
      
      public function get stage() : §]!2§.Stage
      {
         return this.§,![§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §implements§() : flash.display.Stage
      {
         return this.§%;§;
      }
      
      public function get §0!@§() : Boolean
      {
         return !this.§<!N§;
      }
   }
}
