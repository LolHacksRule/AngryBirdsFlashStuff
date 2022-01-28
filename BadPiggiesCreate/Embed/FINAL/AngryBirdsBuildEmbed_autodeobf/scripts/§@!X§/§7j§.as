package §@!X§
{
   import §,%§.§]G§;
   import §-!`§.DisplayObject;
   import §-!`§.Stage;
   import §0!-§.Texture;
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
   import starling.events.§21§;
   import starling.events.§<A§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^!4§;
   
   public class §7j§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §-!>§:§7j§;
      
      private static var §=! §:Boolean;
      
      private static var §61§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §"$§:§-!`§.Stage;
      
      private var §2!m§:Class;
      
      private var §,<§:§-!`§.DisplayObject;
      
      private var §6!l§:§]G§;
      
      private var § !X§:Boolean;
      
      private var §,v§:Boolean;
      
      private var §^!2§:§"W§;
      
      private var §!!;§:§^!4§;
      
      private var §'t§:int;
      
      private var §1!Y§:Boolean;
      
      private var §2!M§:Boolean;
      
      private var §8!F§:Number;
      
      private var §?t§:Rectangle;
      
      private var §9?§:Boolean;
      
      private var §4!O§:flash.display.Stage;
      
      private var §>!b§:Sprite;
      
      private var §3;§:Context3D;
      
      private var §6!5§:Dictionary;
      
      private var §+#§:int;
      
      private var §-!H§:Boolean;
      
      private var § !?§:Number;
      
      private var §^-§:Number;
      
      private var §7!^§:Number;
      
      private var §+![§:Number;
      
      private var §true§:Number;
      
      private var §`e§:Number;
      
      private var §+!,§:Function;
      
      private var §+h§:uint;
      
      private var § !B§:String;
      
      private var §5!a§:Bitmap;
      
      private var §@!W§:Boolean = false;
      
      private var §`!v§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §;F§:Boolean = false;
      
      public function §7j§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§ !?§ = param3.width;
         this.§^-§ = param3.height;
         this.§7!^§ = this.§ !?§;
         this.§+![§ = this.§^-§;
         this.§true§ = param2.stageWidth;
         this.§`e§ = param2.stageHeight;
         §>!Z§ = true;
         this.§7!C§();
         this.§2!m§ = param1;
         this.§?t§ = param3;
         this.mStage3D = param4;
         this.§"$§ = new §-!`§.Stage(param3.width,param3.height,param2.color);
         this.§4!O§ = param2;
         this.§!!;§ = new §^!4§(this.§"$§);
         this.§6!l§ = new §]G§();
         this.§'t§ = 0;
         this.§1!Y§ = false;
         this.§2!M§ = false;
         this.§8!F§ = getTimer() / 1000;
         this.§6!5§ = new Dictionary();
         for each(_loc6_ in this.§>5§)
         {
            param2.addEventListener(_loc6_,this.§6!j§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§=!S§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§&!C§,false,1,true);
         this.mStage3D.visible = false;
         this.§?A§(true);
         this.§+h§ = param2.color;
         this.§ !B§ = param5;
      }
      
      public static function get §?!X§() : Boolean
      {
         if(§else§)
         {
            return §else§.§-!H§;
         }
         return true;
      }
      
      public static function §!m§() : Boolean
      {
         return §-!>§ && (§-!>§.§@!W§ || §-!>§.§3;§ != null && §-!>§.§3;§.driverInfo != "Disposed");
      }
      
      public static function get §else§() : §7j§
      {
         return §-!>§;
      }
      
      public static function get §&t§() : §]G§
      {
         return !!§-!>§ ? §-!>§.§&t§ : null;
      }
      
      public static function get §3![§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §3![§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §>!Z§() : Boolean
      {
         return §=! §;
      }
      
      public static function set §>!Z§(param1:Boolean) : void
      {
         if(§-!>§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §=! § = param1;
      }
      
      public static function §[I§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§else§)
         {
            return Texture.§&!`§(§else§.§3;§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§-!>§.§3;§)
         {
            §-!>§.§3;§.drawToBitmapData(param1);
         }
         else if(§-!>§.§^!2§.canvas)
         {
            _loc2_ = §-!>§.§^!2§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §@3§() : §-!`§.DisplayObject
      {
         return this.§,<§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§+h§ = param1;
      }
      
      public function get §&!q§() : Number
      {
         return this.§ !?§;
      }
      
      public function get §3F§() : Number
      {
         return this.§^-§;
      }
      
      public function §@!M§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§ !B§);
         }
         catch(e:Error)
         {
            §;M§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§;F§ = true;
         this.§4!O§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§4!O§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§=!S§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§&!C§,false);
         for each(_loc1_ in this.§>5§)
         {
            this.§4!O§.removeEventListener(_loc1_,this.§6!j§,false);
         }
         for each(_loc2_ in this.§6!5§)
         {
            _loc2_.dispose();
         }
         if(this.§3;§)
         {
            this.§3;§.dispose();
         }
         if(this.§!!;§)
         {
            this.§!!;§.dispose();
         }
         if(this.§^!2§)
         {
            this.§^!2§.dispose();
         }
         if(§-!>§ == this)
         {
            §-!>§ = null;
         }
         if(this.§5!a§ && this.§5!a§.bitmapData)
         {
            this.§5!a§.bitmapData.dispose();
            this.§5!a§.bitmapData = null;
         }
      }
      
      private function §,!4§() : void
      {
         this.§3;§ = this.mStage3D.context3D;
         this.§6!5§ = new Dictionary();
         if(this.§3;§)
         {
            this.§3;§.enableErrorChecking = this.§2!M§;
            if(this.§3;§.driverInfo.indexOf("Software") >= 0)
            {
               this.§-!H§ = true;
            }
         }
         else
         {
            this.§-!H§ = true;
         }
         this.§7!=§();
      }
      
      private function §3"§() : void
      {
         if(this.§"$§.numChildren > 0)
         {
            return;
         }
         if(this.§,<§ == null)
         {
            this.§,<§ = new this.§2!m§();
         }
         if(this.§,<§ == null)
         {
            throw new Error("Invalid root class: " + this.§2!m§);
         }
         this.§"$§.addChild(this.§,<§);
      }
      
      private function §7!=§() : void
      {
         this.§`!v§ = true;
         this.mStage3D.x = this.§?t§.x;
         this.mStage3D.y = this.§?t§.y;
      }
      
      private function render() : void
      {
         if(!§!m§())
         {
            return;
         }
         if(this.§`!v§)
         {
            if(this.§3;§)
            {
               this.§3;§.configureBackBuffer(this.§?t§.width,this.§?t§.height,this.§'t§,false);
            }
            this.§`!v§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§8!F§;
         this.§8!F§ = _loc1_;
         this.§"$§.advanceTime(_loc2_);
         this.§6!l§.advanceTime(_loc2_);
         this.§!!;§.advanceTime(_loc2_);
         this.§^!2§.§@>§(this.§"$§.stageWidth,this.§"$§.stageHeight);
         this.§^!2§.clear(this.§3;§,this.§+h§,1);
         this.§^!2§.§#!8§(this.§3;§,this.§+#§);
         this.§"$§.render(this.§^!2§,1);
         this.§^!2§.§<Q§();
         if(this.§+!,§ != null)
         {
            this.§+!,§();
            this.§+!,§ = null;
         }
         this.§^!2§.finishRendering(this.§3;§);
         this.§^!2§.§5!k§();
      }
      
      public function set §[$§(param1:Function) : void
      {
         this.§+!,§ = param1;
      }
      
      private function §1t§() : void
      {
         var _loc3_:BitmapData = null;
         this.§>!b§.x = this.§?t§.x;
         this.§>!b§.y = this.§?t§.y;
         var _loc1_:int = this.§>!b§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§>!b§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§4!O§.addChild(this.§>!b§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§4!O§.removeChild(this.§>!b§);
         }
         if(this.§^!2§ && this.§^!2§.canvas)
         {
            this.§^!2§.setCanvasSize(this.§7!^§,this.§+![§,this.§?t§.width / this.§"$§.stageWidth,this.§?t§.height / this.§"$§.stageHeight);
            _loc3_ = this.§^!2§.canvas;
            if(this.§5!a§.bitmapData != _loc3_)
            {
               this.§5!a§.bitmapData = _loc3_;
            }
            if(this.§4!O§.getChildIndex(this.§>!b§) > 0)
            {
               this.§4!O§.removeChild(this.§>!b§);
               this.§4!O§.addChildAt(this.§>!b§,0);
            }
         }
      }
      
      private function §;M§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§"$§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§"$§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§"$§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§3g§.addChild(_loc2_);
      }
      
      public function §7!C§() : void
      {
         §-!>§ = this;
      }
      
      public function start() : void
      {
         this.§ !X§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§ !X§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §?A§(param1:Boolean) : void
      {
         this.§,v§ = param1;
      }
      
      private function §+!L§() : void
      {
         this.§@!W§ = true;
         if(this.§5!a§ == null)
         {
            this.§5!a§ = new Bitmap();
            this.§3g§.addChild(this.§5!a§);
         }
      }
      
      private function §&!C§(param1:ErrorEvent) : void
      {
         this.§+!L§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §=!S§(param1:flash.events.Event) : void
      {
         if(this.§;F§)
         {
            return;
         }
         ++§61§;
         this.§+#§ = §61§;
         if(this.§^!2§)
         {
            this.§^!2§.dispose();
         }
         if(!§7j§.§>!Z§ && this.§3;§)
         {
            this.§;M§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§7!C§();
         this.§,!4§();
         this.§3"§();
         if(this.§3;§ && this.§-!H§)
         {
            this.mStage3DEnabled = false;
            this.§3;§ = null;
            this.§+!L§();
         }
         if(this.§3;§)
         {
            this.§^!2§ = new §"W§();
         }
         else
         {
            this.§^!2§ = new §]!1§();
            this.§^!2§.setCanvasSize(this.§7!^§,this.§+![§,this.§?t§.width / this.§"$§.stageWidth,this.§?t§.height / this.§"$§.stageHeight);
            this.§^!2§.clear(null,this.§+h§);
         }
         this.§!!;§.§^8§ = this.§1!Y§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§7!C§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§8!F§;
         if(this.§ !X§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§>!b§)
         {
            this.§1t§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§7!C§();
         this.§"$§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§ !?§;
         var _loc5_:Number = param2 / this.§^-§;
         if(!param3)
         {
            this.§"$§.stageWidth = this.§ !?§ * _loc4_ / _loc5_;
            this.§"$§.stageHeight = this.§^-§;
         }
         else
         {
            this.§"$§.stageWidth = this.§ !?§;
            this.§"$§.stageHeight = this.§^-§ * _loc5_ / _loc4_;
         }
         this.§7!^§ = param1;
         this.§+![§ = param2;
         this.§"$§.dispatchEvent(new §<A§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function § !Z§() : void
      {
         this.setCanvasSize(this.§ !?§,this.§^-§);
      }
      
      private function §6!j§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§ !X§ || !this.§,v§)
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
               this.§9?§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§9?§ = false;
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
               _loc5_ = §21§.§%@§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §21§.§#!`§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §21§.§<w§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §21§.§%@§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §21§.§<w§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§9?§ ? §21§.§#!`§ : §21§.§&i§;
         }
         if((_loc2_ < this.§?t§.left || _loc2_ >= this.§?t§.right || _loc3_ < this.§?t§.top || _loc3_ >= this.§?t§.bottom) && _loc5_ == §21§.§%@§)
         {
            return;
         }
         _loc2_ -= this.§?t§.x;
         _loc3_ -= this.§?t§.y;
         this.§!!;§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §>5§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §"!U§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§6!5§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§3;§ != null)
         {
            (_loc4_ = this.§3;§.createProgram()).upload(param2,param3);
            this.§6!5§[param1] = _loc4_;
         }
      }
      
      public function §1n§(param1:String) : void
      {
         var _loc2_:Program3D = this.§+!l§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§6!5§[param1];
         }
      }
      
      public function §+!l§(param1:String) : Program3D
      {
         return this.§6!5§[param1] as Program3D;
      }
      
      public function §%!@§(param1:String) : Boolean
      {
         return param1 in this.§6!5§;
      }
      
      public function get §6s§() : Boolean
      {
         return this.§ !X§;
      }
      
      public function get §&t§() : §]G§
      {
         return this.§6!l§;
      }
      
      public function get §^8§() : Boolean
      {
         return this.§1!Y§;
      }
      
      public function set §^8§(param1:Boolean) : void
      {
         this.§1!Y§ = param1;
         if(this.§3;§)
         {
            this.§!!;§.§^8§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§2!M§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§2!M§ = param1;
         if(this.§3;§)
         {
            this.§3;§.enableErrorChecking = param1;
         }
      }
      
      public function get §9!C§() : int
      {
         return this.§'t§;
      }
      
      public function set §9!C§(param1:int) : void
      {
         this.§'t§ = param1;
         this.§7!=§();
      }
      
      public function get §84§() : Rectangle
      {
         return this.§?t§.clone();
      }
      
      public function set §84§(param1:Rectangle) : void
      {
         this.§?t§ = param1.clone();
         this.§7!=§();
      }
      
      public function get §3g§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§>!b§ == null)
         {
            this.§>!b§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§>!b§.contextMenu = _loc1_;
            this.§1t§();
         }
         return this.§>!b§;
      }
      
      public function get stage() : §-!`§.Stage
      {
         return this.§"$§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §@!5§() : flash.display.Stage
      {
         return this.§4!O§;
      }
      
      public function get §3!g§() : Boolean
      {
         return !this.§@!W§;
      }
   }
}
