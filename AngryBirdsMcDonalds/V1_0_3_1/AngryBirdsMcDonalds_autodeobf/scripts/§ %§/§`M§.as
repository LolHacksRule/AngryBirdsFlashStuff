package § %§
{
   import §![§.§!!o§;
   import §&Y§.Texture;
   import §&c§.DisplayObject;
   import §&c§.Stage;
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
   import starling.events.§7!6§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§]!d§;
   
   public class §`M§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §,j§:§`M§;
      
      private static var §0V§:Boolean;
      
      private static var §,!V§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §=n§:§&c§.Stage;
      
      private var §"!_§:Class;
      
      private var §`1§:§&c§.DisplayObject;
      
      private var §6x§:§!!o§;
      
      private var §@! §:Boolean;
      
      private var §=_§:Boolean;
      
      private var §2!R§:§3!e§;
      
      private var §<!,§:§]!d§;
      
      private var §79§:int;
      
      private var §"6§:Boolean;
      
      private var §&!H§:Boolean;
      
      private var §3F§:Number;
      
      private var §>g§:Rectangle;
      
      private var §7?§:Boolean;
      
      private var §;!G§:flash.display.Stage;
      
      private var §^A§:Sprite;
      
      private var §7!^§:Context3D;
      
      private var §9!L§:Dictionary;
      
      private var §!!J§:int;
      
      private var §?e§:Boolean;
      
      private var §%!L§:Number;
      
      private var §8L§:Number;
      
      private var §;M§:Number;
      
      private var §%!O§:Number;
      
      private var §#d§:Number;
      
      private var §'!H§:Number;
      
      private var §9@§:Function;
      
      private var §9!X§:uint;
      
      private var §7!"§:String;
      
      private var §'1§:Bitmap;
      
      private var §-7§:Boolean = false;
      
      private var §1K§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §0!n§:Boolean = false;
      
      public function §`M§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§%!L§ = param3.width;
         this.§8L§ = param3.height;
         this.§;M§ = this.§%!L§;
         this.§%!O§ = this.§8L§;
         this.§#d§ = param2.stageWidth;
         this.§'!H§ = param2.stageHeight;
         §]!b§ = true;
         this.§#!P§();
         this.§"!_§ = param1;
         this.§>g§ = param3;
         this.mStage3D = param4;
         this.§=n§ = new §&c§.Stage(param3.width,param3.height,param2.color);
         this.§;!G§ = param2;
         this.§<!,§ = new §]!d§(this.§=n§);
         this.§6x§ = new §!!o§();
         this.§79§ = 0;
         this.§"6§ = false;
         this.§&!H§ = false;
         this.§3F§ = getTimer() / 1000;
         this.§9!L§ = new Dictionary();
         for each(_loc6_ in this.§@!§)
         {
            param2.addEventListener(_loc6_,this.§!C§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§5"§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§5"§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§[b§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§>V§,false,1,true);
         this.mStage3D.visible = false;
         this.§5%§(true);
         this.§9!X§ = param2.color;
         this.§7!"§ = param5;
      }
      
      public static function get §#z§() : Boolean
      {
         if(§93§)
         {
            return §93§.§?e§;
         }
         return true;
      }
      
      public static function §2!8§() : Boolean
      {
         return §,j§ && (§,j§.§-7§ || §,j§.§7!^§ != null && §,j§.§7!^§.driverInfo != "Disposed");
      }
      
      public static function get §93§() : §`M§
      {
         return §,j§;
      }
      
      public static function get §7!7§() : §!!o§
      {
         return !!§,j§ ? §,j§.§7!7§ : null;
      }
      
      public static function get §>!D§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §>!D§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §]!b§() : Boolean
      {
         return §0V§;
      }
      
      public static function set §]!b§(param1:Boolean) : void
      {
         if(§,j§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §0V§ = param1;
      }
      
      public static function §]?§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§93§)
         {
            return Texture.§&o§(§93§.§7!^§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§,j§.§7!^§)
         {
            §,j§.§7!^§.drawToBitmapData(param1);
         }
         else if(§,j§.§2!R§.canvas)
         {
            _loc2_ = §,j§.§2!R§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §else§() : §&c§.DisplayObject
      {
         return this.§`1§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§9!X§ = param1;
      }
      
      public function get §]l§() : Number
      {
         return this.§%!L§;
      }
      
      public function get §0!d§() : Number
      {
         return this.§8L§;
      }
      
      public function §+f§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§7!"§);
         }
         catch(e:Error)
         {
            §9d§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§0!n§ = true;
         this.§;!G§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§5"§,false);
         this.§;!G§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§5"§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§[b§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§>V§,false);
         for each(_loc1_ in this.§@!§)
         {
            this.§;!G§.removeEventListener(_loc1_,this.§!C§,false);
         }
         for each(_loc2_ in this.§9!L§)
         {
            _loc2_.dispose();
         }
         if(this.§7!^§)
         {
            this.§7!^§.dispose();
         }
         if(this.§<!,§)
         {
            this.§<!,§.dispose();
         }
         if(this.§2!R§)
         {
            this.§2!R§.dispose();
         }
         if(§,j§ == this)
         {
            §,j§ = null;
         }
         if(this.§'1§ && this.§'1§.bitmapData)
         {
            this.§'1§.bitmapData.dispose();
            this.§'1§.bitmapData = null;
         }
      }
      
      private function §6F§() : void
      {
         this.§7!^§ = this.mStage3D.context3D;
         this.§9!L§ = new Dictionary();
         if(this.§7!^§)
         {
            this.§7!^§.enableErrorChecking = this.§&!H§;
            if(this.§7!^§.driverInfo.indexOf("Software") >= 0)
            {
               this.§?e§ = true;
            }
         }
         else
         {
            this.§?e§ = true;
         }
         this.§4A§();
      }
      
      private function §]!@§() : void
      {
         if(this.§=n§.numChildren > 0)
         {
            return;
         }
         if(this.§`1§ == null)
         {
            this.§`1§ = new this.§"!_§();
         }
         if(this.§`1§ == null)
         {
            throw new Error("Invalid root class: " + this.§"!_§);
         }
         this.§=n§.addChild(this.§`1§);
      }
      
      private function §4A§() : void
      {
         this.§1K§ = true;
         this.mStage3D.x = this.§>g§.x;
         this.mStage3D.y = this.§>g§.y;
      }
      
      private function render() : void
      {
         if(!§2!8§())
         {
            return;
         }
         if(this.§1K§)
         {
            if(this.§7!^§)
            {
               this.§7!^§.configureBackBuffer(this.§>g§.width,this.§>g§.height,this.§79§,false);
            }
            this.§1K§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§3F§;
         this.§3F§ = _loc1_;
         this.§=n§.advanceTime(_loc2_);
         this.§6x§.advanceTime(_loc2_);
         this.§<!,§.advanceTime(_loc2_);
         this.§2!R§.§^X§(this.§=n§.stageWidth,this.§=n§.stageHeight);
         this.§2!R§.clear(this.§7!^§,this.§9!X§,1);
         this.§2!R§.§4!E§(this.§7!^§,this.§!!J§);
         this.§=n§.render(this.§2!R§,1);
         this.§2!R§.§ get§();
         if(this.§9@§ != null)
         {
            this.§9@§();
            this.§9@§ = null;
         }
         this.§2!R§.finishRendering(this.§7!^§);
         this.§2!R§.§7j§();
      }
      
      public function set §3j§(param1:Function) : void
      {
         this.§9@§ = param1;
      }
      
      private function §^d§() : void
      {
         var _loc3_:BitmapData = null;
         this.§^A§.x = this.§>g§.x;
         this.§^A§.y = this.§>g§.y;
         var _loc1_:int = this.§^A§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§^A§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§;!G§.addChild(this.§^A§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§;!G§.removeChild(this.§^A§);
         }
         if(this.§2!R§ && this.§2!R§.canvas)
         {
            this.§2!R§.setCanvasSize(this.§;M§,this.§%!O§,this.§>g§.width / this.§=n§.stageWidth,this.§>g§.height / this.§=n§.stageHeight);
            _loc3_ = this.§2!R§.canvas;
            if(this.§'1§.bitmapData != _loc3_)
            {
               this.§'1§.bitmapData = _loc3_;
            }
            if(this.§;!G§.getChildIndex(this.§^A§) > 0)
            {
               this.§;!G§.removeChild(this.§^A§);
               this.§;!G§.addChildAt(this.§^A§,0);
            }
         }
      }
      
      private function §9d§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§=n§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§=n§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§=n§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§+!!§.addChild(_loc2_);
      }
      
      public function §#!P§() : void
      {
         §,j§ = this;
      }
      
      public function start() : void
      {
         this.§@! § = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§@! § = false;
         this.mStage3D.visible = false;
      }
      
      public function §5%§(param1:Boolean) : void
      {
         this.§=_§ = param1;
      }
      
      private function §22§() : void
      {
         this.§-7§ = true;
         if(this.§'1§ == null)
         {
            this.§'1§ = new Bitmap();
            this.§+!!§.addChild(this.§'1§);
         }
      }
      
      private function §>V§(param1:ErrorEvent) : void
      {
         this.§22§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §[b§(param1:flash.events.Event) : void
      {
         if(this.§0!n§)
         {
            return;
         }
         ++§,!V§;
         this.§!!J§ = §,!V§;
         if(this.§2!R§)
         {
            this.§2!R§.dispose();
         }
         if(!§`M§.§]!b§ && this.§7!^§)
         {
            this.§9d§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§#!P§();
         this.§6F§();
         this.§]!@§();
         if(this.§7!^§ && this.§?e§)
         {
            this.mStage3DEnabled = false;
            this.§7!^§ = null;
            this.§22§();
         }
         if(this.§7!^§)
         {
            this.§2!R§ = new §3!e§();
         }
         else
         {
            this.§2!R§ = new §=y§();
            this.§2!R§.setCanvasSize(this.§;M§,this.§%!O§,this.§>g§.width / this.§=n§.stageWidth,this.§>g§.height / this.§=n§.stageHeight);
            this.§2!R§.clear(null,this.§9!X§);
         }
         this.§<!,§.simulateMultitouch = this.§"6§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §0W§(param1:flash.events.Event) : void
      {
         this.§#!P§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§3F§;
         if(this.§@! § || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§^A§)
         {
            this.§^d§();
         }
      }
      
      private function §5"§(param1:flash.events.KeyboardEvent) : void
      {
         this.§#!P§();
         this.§=n§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§%!L§;
         var _loc5_:Number = param2 / this.§8L§;
         if(!param3)
         {
            this.§=n§.stageWidth = this.§%!L§ * _loc4_ / _loc5_;
            this.§=n§.stageHeight = this.§8L§;
         }
         else
         {
            this.§=n§.stageWidth = this.§%!L§;
            this.§=n§.stageHeight = this.§8L§ * _loc5_ / _loc4_;
         }
         this.§;M§ = param1;
         this.§%!O§ = param2;
         this.§=n§.dispatchEvent(new §6c§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §`!c§() : void
      {
         this.setCanvasSize(this.§%!L§,this.§8L§);
      }
      
      private function §!C§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§@! § || !this.§=_§)
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
               this.§7?§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§7?§ = false;
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
               _loc5_ = §7!6§.§>! §;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §7!6§.§+9§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §7!6§.§!-§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §7!6§.§>! §;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §7!6§.§!-§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§7?§ ? §7!6§.§+9§ : §7!6§.§`P§;
         }
         if((_loc2_ < this.§>g§.left || _loc2_ >= this.§>g§.right || _loc3_ < this.§>g§.top || _loc3_ >= this.§>g§.bottom) && _loc5_ == §7!6§.§>! §)
         {
            return;
         }
         _loc2_ -= this.§>g§.x;
         _loc3_ -= this.§>g§.y;
         this.§<!,§.§catch§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §@!§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §4>§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§9!L§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§7!^§ != null)
         {
            (_loc4_ = this.§7!^§.createProgram()).upload(param2,param3);
            this.§9!L§[param1] = _loc4_;
         }
      }
      
      public function §>^§(param1:String) : void
      {
         var _loc2_:Program3D = this.§99§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§9!L§[param1];
         }
      }
      
      public function §99§(param1:String) : Program3D
      {
         return this.§9!L§[param1] as Program3D;
      }
      
      public function §%c§(param1:String) : Boolean
      {
         return param1 in this.§9!L§;
      }
      
      public function get § =§() : Boolean
      {
         return this.§@! §;
      }
      
      public function get §7!7§() : §!!o§
      {
         return this.§6x§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§"6§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§"6§ = param1;
         if(this.§7!^§)
         {
            this.§<!,§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§&!H§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§&!H§ = param1;
         if(this.§7!^§)
         {
            this.§7!^§.enableErrorChecking = param1;
         }
      }
      
      public function get §4?§() : int
      {
         return this.§79§;
      }
      
      public function set §4?§(param1:int) : void
      {
         this.§79§ = param1;
         this.§4A§();
      }
      
      public function get §%A§() : Rectangle
      {
         return this.§>g§.clone();
      }
      
      public function set §%A§(param1:Rectangle) : void
      {
         this.§>g§ = param1.clone();
         this.§4A§();
      }
      
      public function get §+!!§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§^A§ == null)
         {
            this.§^A§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§^A§.contextMenu = _loc1_;
            this.§^d§();
         }
         return this.§^A§;
      }
      
      public function get stage() : §&c§.Stage
      {
         return this.§=n§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §!§() : flash.display.Stage
      {
         return this.§;!G§;
      }
      
      public function get §2!5§() : Boolean
      {
         return !this.§-7§;
      }
   }
}
