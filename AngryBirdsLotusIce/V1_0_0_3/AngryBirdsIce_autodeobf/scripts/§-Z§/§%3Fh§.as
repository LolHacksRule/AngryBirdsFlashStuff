package §-Z§
{
   import § F§.§3!E§;
   import §[P§.Texture;
   import §^V§.DisplayObject;
   import §^V§.Stage;
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
   import starling.events.§"e§;
   import starling.events.§%S§;
   import starling.events.§0!?§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §?h§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §8J§:§?h§;
      
      private static var §=P§:Boolean;
      
      private static var §]Y§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §8!G§:§^V§.Stage;
      
      private var §5,§:Class;
      
      private var §81§:§^V§.DisplayObject;
      
      private var §>M§:§3!E§;
      
      private var § !C§:Boolean;
      
      private var §=V§:Boolean;
      
      private var §6m§:§ G§;
      
      private var §7s§:§0!?§;
      
      private var §`_§:int;
      
      private var §'!+§:Boolean;
      
      private var §0t§:Boolean;
      
      private var §+G§:Number;
      
      private var §9h§:Rectangle;
      
      private var §`!7§:Boolean;
      
      private var §'G§:flash.display.Stage;
      
      private var §>u§:Sprite;
      
      private var §]p§:Context3D;
      
      private var §#Q§:Dictionary;
      
      private var §^R§:int;
      
      private var §@m§:Boolean;
      
      private var §4@§:Number;
      
      private var §8!B§:Number;
      
      private var §0'§:Number;
      
      private var §8!5§:Number;
      
      private var §5!&§:Number;
      
      private var §2i§:Number;
      
      private var §4Y§:Function;
      
      private var §^!7§:uint;
      
      private var §?0§:String;
      
      private var §0?§:Bitmap;
      
      private var §+H§:Boolean = false;
      
      private var §3!&§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §9E§:Boolean = false;
      
      public function §?h§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§4@§ = param3.width;
         this.§8!B§ = param3.height;
         this.§0'§ = this.§4@§;
         this.§8!5§ = this.§8!B§;
         this.§5!&§ = param2.stageWidth;
         this.§2i§ = param2.stageHeight;
         §6!#§ = true;
         this.§^c§();
         this.§5,§ = param1;
         this.§9h§ = param3;
         this.mStage3D = param4;
         this.§8!G§ = new §^V§.Stage(param3.width,param3.height,param2.color);
         this.§'G§ = param2;
         this.§7s§ = new §0!?§(this.§8!G§);
         this.§>M§ = new §3!E§();
         this.§`_§ = 0;
         this.§'!+§ = false;
         this.§0t§ = false;
         this.§+G§ = getTimer() / 1000;
         this.§#Q§ = new Dictionary();
         for each(_loc6_ in this.§#?§)
         {
            param2.addEventListener(_loc6_,this.§&=§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ ,§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§8!7§,false,1,true);
         this.mStage3D.visible = false;
         this.§>!@§(true);
         this.§^!7§ = param2.color;
         this.§?0§ = param5;
      }
      
      public static function get §7"§() : Boolean
      {
         if(§ n§)
         {
            return § n§.§@m§;
         }
         return true;
      }
      
      public static function §6t§() : Boolean
      {
         return §8J§ && (§8J§.§+H§ || §8J§.§]p§ != null && §8J§.§]p§.driverInfo != "Disposed");
      }
      
      public static function get § n§() : §?h§
      {
         return §8J§;
      }
      
      public static function get §;B§() : §3!E§
      {
         return !!§8J§ ? §8J§.§;B§ : null;
      }
      
      public static function get §]!-§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §]!-§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §6!#§() : Boolean
      {
         return §=P§;
      }
      
      public static function set §6!#§(param1:Boolean) : void
      {
         if(§8J§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §=P§ = param1;
      }
      
      public static function §8g§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§ n§)
         {
            return Texture.§+u§(§ n§.§]p§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§8J§.§]p§)
         {
            §8J§.§]p§.drawToBitmapData(param1);
         }
         else if(§8J§.§6m§.canvas)
         {
            _loc2_ = §8J§.§6m§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §6!"§() : §^V§.DisplayObject
      {
         return this.§81§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§^!7§ = param1;
      }
      
      public function get §,i§() : Number
      {
         return this.§4@§;
      }
      
      public function get §<v§() : Number
      {
         return this.§8!B§;
      }
      
      public function §#c§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§?0§);
         }
         catch(e:Error)
         {
            §8U§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§9E§ = true;
         this.§'G§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§'G§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ ,§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§8!7§,false);
         for each(_loc1_ in this.§#?§)
         {
            this.§'G§.removeEventListener(_loc1_,this.§&=§,false);
         }
         for each(_loc2_ in this.§#Q§)
         {
            _loc2_.dispose();
         }
         if(this.§]p§)
         {
            this.§]p§.dispose();
         }
         if(this.§7s§)
         {
            this.§7s§.dispose();
         }
         if(this.§6m§)
         {
            this.§6m§.dispose();
         }
         if(§8J§ == this)
         {
            §8J§ = null;
         }
         if(this.§0?§ && this.§0?§.bitmapData)
         {
            this.§0?§.bitmapData.dispose();
            this.§0?§.bitmapData = null;
         }
      }
      
      private function §&+§() : void
      {
         this.§]p§ = this.mStage3D.context3D;
         this.§#Q§ = new Dictionary();
         if(this.§]p§)
         {
            this.§]p§.enableErrorChecking = this.§0t§;
            if(this.§]p§.driverInfo.indexOf("Software") >= 0)
            {
               this.§@m§ = true;
            }
         }
         else
         {
            this.§@m§ = true;
         }
         this.§'^§();
      }
      
      private function §=q§() : void
      {
         if(this.§8!G§.numChildren > 0)
         {
            return;
         }
         if(this.§81§ == null)
         {
            this.§81§ = new this.§5,§();
         }
         if(this.§81§ == null)
         {
            throw new Error("Invalid root class: " + this.§5,§);
         }
         this.§8!G§.addChild(this.§81§);
      }
      
      private function §'^§() : void
      {
         this.§3!&§ = true;
         this.mStage3D.x = this.§9h§.x;
         this.mStage3D.y = this.§9h§.y;
      }
      
      private function render() : void
      {
         if(!§6t§())
         {
            return;
         }
         if(this.§3!&§)
         {
            if(this.§]p§)
            {
               this.§]p§.configureBackBuffer(this.§9h§.width,this.§9h§.height,this.§`_§,false);
            }
            this.§3!&§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§+G§;
         this.§+G§ = _loc1_;
         this.§8!G§.advanceTime(_loc2_);
         this.§>M§.advanceTime(_loc2_);
         this.§7s§.advanceTime(_loc2_);
         this.§6m§.§0!%§(this.§8!G§.stageWidth,this.§8!G§.stageHeight);
         this.§6m§.clear(this.§]p§,this.§^!7§,1);
         this.§6m§.§case§(this.§]p§,this.§^R§);
         this.§8!G§.render(this.§6m§,1);
         this.§6m§.§ ]§();
         if(this.§4Y§ != null)
         {
            this.§4Y§();
            this.§4Y§ = null;
         }
         this.§6m§.finishRendering(this.§]p§);
         this.§6m§.§3o§();
      }
      
      public function set §5R§(param1:Function) : void
      {
         this.§4Y§ = param1;
      }
      
      private function §]f§() : void
      {
         var _loc3_:BitmapData = null;
         this.§>u§.x = this.§9h§.x;
         this.§>u§.y = this.§9h§.y;
         var _loc1_:int = this.§>u§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§>u§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§'G§.addChild(this.§>u§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§'G§.removeChild(this.§>u§);
         }
         if(this.§6m§ && this.§6m§.canvas)
         {
            this.§6m§.setCanvasSize(this.§0'§,this.§8!5§,this.§9h§.width / this.§8!G§.stageWidth,this.§9h§.height / this.§8!G§.stageHeight);
            _loc3_ = this.§6m§.canvas;
            if(this.§0?§.bitmapData != _loc3_)
            {
               this.§0?§.bitmapData = _loc3_;
            }
            if(this.§'G§.getChildIndex(this.§>u§) > 0)
            {
               this.§'G§.removeChild(this.§>u§);
               this.§'G§.addChildAt(this.§>u§,0);
            }
         }
      }
      
      private function §8U§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§8!G§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§8!G§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§8!G§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§=2§.addChild(_loc2_);
      }
      
      public function §^c§() : void
      {
         §8J§ = this;
      }
      
      public function start() : void
      {
         this.§ !C§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§ !C§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §>!@§(param1:Boolean) : void
      {
         this.§=V§ = param1;
      }
      
      private function § !@§() : void
      {
         this.§+H§ = true;
         if(this.§0?§ == null)
         {
            this.§0?§ = new Bitmap();
            this.§=2§.addChild(this.§0?§);
         }
      }
      
      private function §8!7§(param1:ErrorEvent) : void
      {
         this.§ !@§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function § ,§(param1:flash.events.Event) : void
      {
         if(this.§9E§)
         {
            return;
         }
         ++§]Y§;
         this.§^R§ = §]Y§;
         if(this.§6m§)
         {
            this.§6m§.dispose();
         }
         if(!§?h§.§6!#§ && this.§]p§)
         {
            this.§8U§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§^c§();
         this.§&+§();
         this.§=q§();
         if(this.§]p§ && this.§@m§)
         {
            this.mStage3DEnabled = false;
            this.§]p§ = null;
            this.§ !@§();
         }
         if(this.§]p§)
         {
            this.§6m§ = new § G§();
         }
         else
         {
            this.§6m§ = new §#M§();
            this.§6m§.setCanvasSize(this.§0'§,this.§8!5§,this.§9h§.width / this.§8!G§.stageWidth,this.§9h§.height / this.§8!G§.stageHeight);
            this.§6m§.clear(null,this.§^!7§);
         }
         this.§7s§.§5U§ = this.§'!+§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§^c§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§+G§;
         if(this.§ !C§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§>u§)
         {
            this.§]f§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§^c§();
         this.§8!G§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§4@§;
         var _loc5_:Number = param2 / this.§8!B§;
         if(!param3)
         {
            this.§8!G§.stageWidth = this.§4@§ * _loc4_ / _loc5_;
            this.§8!G§.stageHeight = this.§8!B§;
         }
         else
         {
            this.§8!G§.stageWidth = this.§4@§;
            this.§8!G§.stageHeight = this.§8!B§ * _loc5_ / _loc4_;
         }
         this.§0'§ = param1;
         this.§8!5§ = param2;
         this.§8!G§.dispatchEvent(new §%S§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §'!D§() : void
      {
         this.setCanvasSize(this.§4@§,this.§8!B§);
      }
      
      private function §&=§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§ !C§ || !this.§=V§)
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
               this.§`!7§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§`!7§ = false;
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
               _loc5_ = §"e§.§'D§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §"e§.§76§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §"e§.§"m§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §"e§.§'D§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §"e§.§"m§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§`!7§ ? §"e§.§76§ : §"e§.§2!7§;
         }
         if((_loc2_ < this.§9h§.left || _loc2_ >= this.§9h§.right || _loc3_ < this.§9h§.top || _loc3_ >= this.§9h§.bottom) && _loc5_ == §"e§.§'D§)
         {
            return;
         }
         _loc2_ -= this.§9h§.x;
         _loc3_ -= this.§9h§.y;
         this.§7s§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §#?§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §-V§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§#Q§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§]p§ != null)
         {
            (_loc4_ = this.§]p§.createProgram()).upload(param2,param3);
            this.§#Q§[param1] = _loc4_;
         }
      }
      
      public function §7y§(param1:String) : void
      {
         var _loc2_:Program3D = this.§;?§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§#Q§[param1];
         }
      }
      
      public function §;?§(param1:String) : Program3D
      {
         return this.§#Q§[param1] as Program3D;
      }
      
      public function §7g§(param1:String) : Boolean
      {
         return param1 in this.§#Q§;
      }
      
      public function get §3!'§() : Boolean
      {
         return this.§ !C§;
      }
      
      public function get §;B§() : §3!E§
      {
         return this.§>M§;
      }
      
      public function get §5U§() : Boolean
      {
         return this.§'!+§;
      }
      
      public function set §5U§(param1:Boolean) : void
      {
         this.§'!+§ = param1;
         if(this.§]p§)
         {
            this.§7s§.§5U§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§0t§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§0t§ = param1;
         if(this.§]p§)
         {
            this.§]p§.enableErrorChecking = param1;
         }
      }
      
      public function get §5=§() : int
      {
         return this.§`_§;
      }
      
      public function set §5=§(param1:int) : void
      {
         this.§`_§ = param1;
         this.§'^§();
      }
      
      public function get §"C§() : Rectangle
      {
         return this.§9h§.clone();
      }
      
      public function set §"C§(param1:Rectangle) : void
      {
         this.§9h§ = param1.clone();
         this.§'^§();
      }
      
      public function get §=2§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§>u§ == null)
         {
            this.§>u§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§>u§.contextMenu = _loc1_;
            this.§]f§();
         }
         return this.§>u§;
      }
      
      public function get stage() : §^V§.Stage
      {
         return this.§8!G§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §4"§() : flash.display.Stage
      {
         return this.§'G§;
      }
      
      public function get §,!A§() : Boolean
      {
         return !this.§+H§;
      }
   }
}
