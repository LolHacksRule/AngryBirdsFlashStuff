package §@g§
{
   import §'h§.§!#§;
   import §86§.DisplayObject;
   import §86§.Stage;
   import §[!A§.Texture;
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
   import starling.events.§#!5§;
   import starling.events.§9^§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§]!F§;
   
   public class §4!@§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §@h§:§4!@§;
      
      private static var § !;§:Boolean;
      
      private static var §+8§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §,^§:§86§.Stage;
      
      private var §^7§:Class;
      
      private var §,L§:§86§.DisplayObject;
      
      private var § Q§:§!#§;
      
      private var §<b§:Boolean;
      
      private var §'4§:Boolean;
      
      private var §2!§:§'U§;
      
      private var §3!,§:§]!F§;
      
      private var §3+§:int;
      
      private var §?K§:Boolean;
      
      private var §+d§:Boolean;
      
      private var §<!A§:Number;
      
      private var §;0§:Rectangle;
      
      private var §!!%§:Boolean;
      
      private var §0! §:flash.display.Stage;
      
      private var §@P§:Sprite;
      
      private var §`u§:Context3D;
      
      private var §>$§:Dictionary;
      
      private var § H§:int;
      
      private var §'!E§:Boolean;
      
      private var §7v§:Number;
      
      private var §>!G§:Number;
      
      private var §=_§:Number;
      
      private var §?r§:Number;
      
      private var §-q§:Number;
      
      private var §"!O§:Number;
      
      private var §%Y§:Function;
      
      private var §&§:uint;
      
      private var §[`§:String;
      
      private var §<8§:Bitmap;
      
      private var §%<§:Boolean = false;
      
      private var §<E§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §9!>§:Boolean = false;
      
      public function §4!@§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§7v§ = param3.width;
         this.§>!G§ = param3.height;
         this.§=_§ = this.§7v§;
         this.§?r§ = this.§>!G§;
         this.§-q§ = param2.stageWidth;
         this.§"!O§ = param2.stageHeight;
         §`?§ = true;
         this.§78§();
         this.§^7§ = param1;
         this.§;0§ = param3;
         this.mStage3D = param4;
         this.§,^§ = new §86§.Stage(param3.width,param3.height,param2.color);
         this.§0! § = param2;
         this.§3!,§ = new §]!F§(this.§,^§);
         this.§ Q§ = new §!#§();
         this.§3+§ = 0;
         this.§?K§ = false;
         this.§+d§ = false;
         this.§<!A§ = getTimer() / 1000;
         this.§>$§ = new Dictionary();
         for each(_loc6_ in this.§5!#§)
         {
            param2.addEventListener(_loc6_,this.§="§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0K§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0K§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#!?§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§ !!§,false,1,true);
         this.mStage3D.visible = false;
         this.§'A§(true);
         this.§&§ = param2.color;
         this.§[`§ = param5;
      }
      
      public static function get §@m§() : Boolean
      {
         if(§ C§)
         {
            return § C§.§'!E§;
         }
         return true;
      }
      
      public static function §<<§() : Boolean
      {
         return §@h§ && (§@h§.§%<§ || §@h§.§`u§ != null && §@h§.§`u§.driverInfo != "Disposed");
      }
      
      public static function get § C§() : §4!@§
      {
         return §@h§;
      }
      
      public static function get §<!!§() : §!#§
      {
         return !!§@h§ ? §@h§.§<!!§ : null;
      }
      
      public static function get §9!@§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §9!@§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §`?§() : Boolean
      {
         return § !;§;
      }
      
      public static function set §`?§(param1:Boolean) : void
      {
         if(§@h§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         § !;§ = param1;
      }
      
      public static function §extends§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§ C§)
         {
            return Texture.§+!5§(§ C§.§`u§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§@h§.§`u§)
         {
            §@h§.§`u§.drawToBitmapData(param1);
         }
         else if(§@h§.§2!§.canvas)
         {
            _loc2_ = §@h§.§2!§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §!J§() : §86§.DisplayObject
      {
         return this.§,L§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§&§ = param1;
      }
      
      public function get §"F§() : Number
      {
         return this.§7v§;
      }
      
      public function get §!!=§() : Number
      {
         return this.§>!G§;
      }
      
      public function §+w§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§[`§);
         }
         catch(e:Error)
         {
            §6g§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§9!>§ = true;
         this.§0! §.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0K§,false);
         this.§0! §.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0K§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#!?§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§ !!§,false);
         for each(_loc1_ in this.§5!#§)
         {
            this.§0! §.removeEventListener(_loc1_,this.§="§,false);
         }
         for each(_loc2_ in this.§>$§)
         {
            _loc2_.dispose();
         }
         if(this.§`u§)
         {
            this.§`u§.dispose();
         }
         if(this.§3!,§)
         {
            this.§3!,§.dispose();
         }
         if(this.§2!§)
         {
            this.§2!§.dispose();
         }
         if(§@h§ == this)
         {
            §@h§ = null;
         }
         if(this.§<8§ && this.§<8§.bitmapData)
         {
            this.§<8§.bitmapData.dispose();
            this.§<8§.bitmapData = null;
         }
      }
      
      private function §]L§() : void
      {
         this.§`u§ = this.mStage3D.context3D;
         this.§>$§ = new Dictionary();
         if(this.§`u§)
         {
            this.§`u§.enableErrorChecking = this.§+d§;
            if(this.§`u§.driverInfo.indexOf("Software") >= 0)
            {
               this.§'!E§ = true;
            }
         }
         else
         {
            this.§'!E§ = true;
         }
         this.§7s§();
      }
      
      private function §!;§() : void
      {
         if(this.§,^§.numChildren > 0)
         {
            return;
         }
         if(this.§,L§ == null)
         {
            this.§,L§ = new this.§^7§();
         }
         if(this.§,L§ == null)
         {
            throw new Error("Invalid root class: " + this.§^7§);
         }
         this.§,^§.addChild(this.§,L§);
      }
      
      private function §7s§() : void
      {
         this.§<E§ = true;
         this.mStage3D.x = this.§;0§.x;
         this.mStage3D.y = this.§;0§.y;
      }
      
      private function render() : void
      {
         if(!§<<§())
         {
            return;
         }
         if(this.§<E§)
         {
            if(this.§`u§)
            {
               this.§`u§.configureBackBuffer(this.§;0§.width,this.§;0§.height,this.§3+§,false);
            }
            this.§<E§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§<!A§;
         this.§<!A§ = _loc1_;
         this.§,^§.advanceTime(_loc2_);
         this.§ Q§.advanceTime(_loc2_);
         this.§3!,§.advanceTime(_loc2_);
         this.§2!§.§%r§(this.§,^§.stageWidth,this.§,^§.stageHeight);
         this.§2!§.clear(this.§`u§,this.§&§,1);
         this.§2!§.§8y§(this.§`u§,this.§ H§);
         this.§,^§.render(this.§2!§,1);
         this.§2!§.§[!&§();
         if(this.§%Y§ != null)
         {
            this.§%Y§();
            this.§%Y§ = null;
         }
         this.§2!§.finishRendering(this.§`u§);
         this.§2!§.§`!M§();
      }
      
      public function set §;j§(param1:Function) : void
      {
         this.§%Y§ = param1;
      }
      
      private function § T§() : void
      {
         var _loc3_:BitmapData = null;
         this.§@P§.x = this.§;0§.x;
         this.§@P§.y = this.§;0§.y;
         var _loc1_:int = this.§@P§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@P§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§0! §.addChild(this.§@P§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§0! §.removeChild(this.§@P§);
         }
         if(this.§2!§ && this.§2!§.canvas)
         {
            this.§2!§.setCanvasSize(this.§=_§,this.§?r§,this.§;0§.width / this.§,^§.stageWidth,this.§;0§.height / this.§,^§.stageHeight);
            _loc3_ = this.§2!§.canvas;
            if(this.§<8§.bitmapData != _loc3_)
            {
               this.§<8§.bitmapData = _loc3_;
            }
            if(this.§0! §.getChildIndex(this.§@P§) > 0)
            {
               this.§0! §.removeChild(this.§@P§);
               this.§0! §.addChildAt(this.§@P§,0);
            }
         }
      }
      
      private function §6g§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§,^§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§,^§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§,^§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§4B§.addChild(_loc2_);
      }
      
      public function §78§() : void
      {
         §@h§ = this;
      }
      
      public function start() : void
      {
         this.§<b§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§<b§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §'A§(param1:Boolean) : void
      {
         this.§'4§ = param1;
      }
      
      private function §;<§() : void
      {
         this.§%<§ = true;
         if(this.§<8§ == null)
         {
            this.§<8§ = new Bitmap();
            this.§4B§.addChild(this.§<8§);
         }
      }
      
      private function § !!§(param1:ErrorEvent) : void
      {
         this.§;<§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §#!?§(param1:flash.events.Event) : void
      {
         if(this.§9!>§)
         {
            return;
         }
         ++§+8§;
         this.§ H§ = §+8§;
         if(this.§2!§)
         {
            this.§2!§.dispose();
         }
         if(!§4!@§.§`?§ && this.§`u§)
         {
            this.§6g§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§78§();
         this.§]L§();
         this.§!;§();
         if(this.§`u§ && this.§'!E§)
         {
            this.mStage3DEnabled = false;
            this.§`u§ = null;
            this.§;<§();
         }
         if(this.§`u§)
         {
            this.§2!§ = new §'U§();
         }
         else
         {
            this.§2!§ = new §@D§();
            this.§2!§.setCanvasSize(this.§=_§,this.§?r§,this.§;0§.width / this.§,^§.stageWidth,this.§;0§.height / this.§,^§.stageHeight);
            this.§2!§.clear(null,this.§&§);
         }
         this.§3!,§.§1!7§ = this.§?K§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§78§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§<!A§;
         if(this.§<b§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§@P§)
         {
            this.§ T§();
         }
      }
      
      private function §0K§(param1:flash.events.KeyboardEvent) : void
      {
         this.§78§();
         this.§,^§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§7v§;
         var _loc5_:Number = param2 / this.§>!G§;
         if(!param3)
         {
            this.§,^§.stageWidth = this.§7v§ * _loc4_ / _loc5_;
            this.§,^§.stageHeight = this.§>!G§;
         }
         else
         {
            this.§,^§.stageWidth = this.§7v§;
            this.§,^§.stageHeight = this.§>!G§ * _loc5_ / _loc4_;
         }
         this.§=_§ = param1;
         this.§?r§ = param2;
         this.§,^§.dispatchEvent(new §#!5§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §,S§() : void
      {
         this.setCanvasSize(this.§7v§,this.§>!G§);
      }
      
      private function §="§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§<b§ || !this.§'4§)
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
               this.§!!%§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§!!%§ = false;
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
               _loc5_ = §9^§.§83§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §9^§.§ v§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §9^§.§'R§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §9^§.§83§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §9^§.§'R§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§!!%§ ? §9^§.§ v§ : §9^§.§]!#§;
         }
         if((_loc2_ < this.§;0§.left || _loc2_ >= this.§;0§.right || _loc3_ < this.§;0§.top || _loc3_ >= this.§;0§.bottom) && _loc5_ == §9^§.§83§)
         {
            return;
         }
         _loc2_ -= this.§;0§.x;
         _loc3_ -= this.§;0§.y;
         this.§3!,§.§?o§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §5!#§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §@6§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§>$§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§`u§ != null)
         {
            (_loc4_ = this.§`u§.createProgram()).upload(param2,param3);
            this.§>$§[param1] = _loc4_;
         }
      }
      
      public function §&!-§(param1:String) : void
      {
         var _loc2_:Program3D = this.§=!=§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§>$§[param1];
         }
      }
      
      public function §=!=§(param1:String) : Program3D
      {
         return this.§>$§[param1] as Program3D;
      }
      
      public function §!U§(param1:String) : Boolean
      {
         return param1 in this.§>$§;
      }
      
      public function get §-;§() : Boolean
      {
         return this.§<b§;
      }
      
      public function get §<!!§() : §!#§
      {
         return this.§ Q§;
      }
      
      public function get §1!7§() : Boolean
      {
         return this.§?K§;
      }
      
      public function set §1!7§(param1:Boolean) : void
      {
         this.§?K§ = param1;
         if(this.§`u§)
         {
            this.§3!,§.§1!7§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+d§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§+d§ = param1;
         if(this.§`u§)
         {
            this.§`u§.enableErrorChecking = param1;
         }
      }
      
      public function get § >§() : int
      {
         return this.§3+§;
      }
      
      public function set § >§(param1:int) : void
      {
         this.§3+§ = param1;
         this.§7s§();
      }
      
      public function get §9_§() : Rectangle
      {
         return this.§;0§.clone();
      }
      
      public function set §9_§(param1:Rectangle) : void
      {
         this.§;0§ = param1.clone();
         this.§7s§();
      }
      
      public function get §4B§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§@P§ == null)
         {
            this.§@P§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§@P§.contextMenu = _loc1_;
            this.§ T§();
         }
         return this.§@P§;
      }
      
      public function get stage() : §86§.Stage
      {
         return this.§,^§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get § X§() : flash.display.Stage
      {
         return this.§0! §;
      }
      
      public function get §=q§() : Boolean
      {
         return !this.§%<§;
      }
   }
}
