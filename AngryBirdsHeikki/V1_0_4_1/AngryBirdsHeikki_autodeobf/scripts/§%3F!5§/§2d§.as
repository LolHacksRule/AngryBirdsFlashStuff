package §?!5§
{
   import §"!<§.Texture;
   import §8!1§.§3!`§;
   import §<!-§.DisplayObject;
   import §<!-§.Stage;
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
   import starling.events.§,!c§;
   import starling.events.§-W§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.set;
   
   public class §2d§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §>!5§:§2d§;
      
      private static var §6C§:Boolean;
      
      private static var §#6§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §>>§:§<!-§.Stage;
      
      private var §@!O§:Class;
      
      private var §`e§:§<!-§.DisplayObject;
      
      private var §"X§:§3!`§;
      
      private var §2!K§:Boolean;
      
      private var §;s§:Boolean;
      
      private var §2n§:§;P§;
      
      private var §true §:§-W§;
      
      private var §"[§:int;
      
      private var §]I§:Boolean;
      
      private var §,b§:Boolean;
      
      private var §^5§:Number;
      
      private var §7A§:Rectangle;
      
      private var §1§:Boolean;
      
      private var §'D§:flash.display.Stage;
      
      private var §const§:Sprite;
      
      private var §&5§:Context3D;
      
      private var §;!T§:Dictionary;
      
      private var §6r§:int;
      
      private var §^D§:Boolean;
      
      private var §^e§:Number;
      
      private var §<y§:Number;
      
      private var §6!#§:Number;
      
      private var § t§:Number;
      
      private var §^0§:Number;
      
      private var §9"§:Number;
      
      private var §;3§:Function;
      
      private var §;&§:uint;
      
      private var §@A§:String;
      
      private var §46§:Bitmap;
      
      private var §]c§:Boolean = false;
      
      private var §'o§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §"!@§:Boolean = false;
      
      public function §2d§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§^e§ = param3.width;
         this.§<y§ = param3.height;
         this.§6!#§ = this.§^e§;
         this.§ t§ = this.§<y§;
         this.§^0§ = param2.stageWidth;
         this.§9"§ = param2.stageHeight;
         §'i§ = true;
         this.§?!=§();
         this.§@!O§ = param1;
         this.§7A§ = param3;
         this.mStage3D = param4;
         this.§>>§ = new §<!-§.Stage(param3.width,param3.height,param2.color);
         this.§'D§ = param2;
         this.§true § = new §-W§(this.§>>§);
         this.§"X§ = new §3!`§();
         this.§"[§ = 0;
         this.§]I§ = false;
         this.§,b§ = false;
         this.§^5§ = getTimer() / 1000;
         this.§;!T§ = new Dictionary();
         for each(_loc6_ in this.§8c§)
         {
            param2.addEventListener(_loc6_,this.§4!8§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§3!B§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§3!B§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#>§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§[H§,false,1,true);
         this.mStage3D.visible = false;
         this.§[8§(true);
         this.§;&§ = param2.color;
         this.§@A§ = param5;
      }
      
      public static function get §#<§() : Boolean
      {
         if(§0A§)
         {
            return §0A§.§^D§;
         }
         return true;
      }
      
      public static function §!!L§() : Boolean
      {
         return §>!5§ && (§>!5§.§]c§ || §>!5§.§&5§ != null && §>!5§.§&5§.driverInfo != "Disposed");
      }
      
      public static function get §0A§() : §2d§
      {
         return §>!5§;
      }
      
      public static function get §8e§() : §3!`§
      {
         return !!§>!5§ ? §>!5§.§8e§ : null;
      }
      
      public static function get §>t§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §>t§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §'i§() : Boolean
      {
         return §6C§;
      }
      
      public static function set §'i§(param1:Boolean) : void
      {
         if(§>!5§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §6C§ = param1;
      }
      
      public static function §@j§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§0A§)
         {
            return Texture.§=!@§(§0A§.§&5§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§>!5§.§&5§)
         {
            §>!5§.§&5§.drawToBitmapData(param1);
         }
         else if(§>!5§.§2n§.canvas)
         {
            _loc2_ = §>!5§.§2n§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §8A§() : §<!-§.DisplayObject
      {
         return this.§`e§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§;&§ = param1;
      }
      
      public function get §>5§() : Number
      {
         return this.§^e§;
      }
      
      public function get §]!-§() : Number
      {
         return this.§<y§;
      }
      
      public function §"!;§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§@A§);
         }
         catch(e:Error)
         {
            §8!]§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§"!@§ = true;
         this.§'D§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§3!B§,false);
         this.§'D§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§3!B§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#>§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§[H§,false);
         for each(_loc1_ in this.§8c§)
         {
            this.§'D§.removeEventListener(_loc1_,this.§4!8§,false);
         }
         for each(_loc2_ in this.§;!T§)
         {
            _loc2_.dispose();
         }
         if(this.§&5§)
         {
            this.§&5§.dispose();
         }
         if(this.§true §)
         {
            this.§true §.dispose();
         }
         if(this.§2n§)
         {
            this.§2n§.dispose();
         }
         if(§>!5§ == this)
         {
            §>!5§ = null;
         }
         if(this.§46§ && this.§46§.bitmapData)
         {
            this.§46§.bitmapData.dispose();
            this.§46§.bitmapData = null;
         }
      }
      
      private function §#!;§() : void
      {
         this.§&5§ = this.mStage3D.context3D;
         this.§;!T§ = new Dictionary();
         if(this.§&5§)
         {
            this.§&5§.enableErrorChecking = this.§,b§;
            if(this.§&5§.driverInfo.indexOf("Software") >= 0)
            {
               this.§^D§ = true;
            }
         }
         else
         {
            this.§^D§ = true;
         }
         this.§9!L§();
      }
      
      private function §5Q§() : void
      {
         if(this.§>>§.numChildren > 0)
         {
            return;
         }
         if(this.§`e§ == null)
         {
            this.§`e§ = new this.§@!O§();
         }
         if(this.§`e§ == null)
         {
            throw new Error("Invalid root class: " + this.§@!O§);
         }
         this.§>>§.addChild(this.§`e§);
      }
      
      private function §9!L§() : void
      {
         this.§'o§ = true;
         this.mStage3D.x = this.§7A§.x;
         this.mStage3D.y = this.§7A§.y;
      }
      
      private function render() : void
      {
         if(!§!!L§())
         {
            return;
         }
         if(this.§'o§)
         {
            if(this.§&5§)
            {
               this.§&5§.configureBackBuffer(this.§7A§.width,this.§7A§.height,this.§"[§,false);
            }
            this.§'o§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§^5§;
         this.§^5§ = _loc1_;
         this.§>>§.advanceTime(_loc2_);
         this.§"X§.advanceTime(_loc2_);
         this.§true §.advanceTime(_loc2_);
         this.§2n§.§`!6§(this.§>>§.stageWidth,this.§>>§.stageHeight);
         this.§2n§.clear(this.§&5§,this.§;&§,1);
         this.§2n§.§`!0§(this.§&5§,this.§6r§);
         this.§>>§.render(this.§2n§,1);
         this.§2n§.§-J§();
         if(this.§;3§ != null)
         {
            this.§;3§();
            this.§;3§ = null;
         }
         this.§2n§.finishRendering(this.§&5§);
         this.§2n§.§2!c§();
      }
      
      public function set §;![§(param1:Function) : void
      {
         this.§;3§ = param1;
      }
      
      private function §`T§() : void
      {
         var _loc3_:BitmapData = null;
         this.§const§.x = this.§7A§.x;
         this.§const§.y = this.§7A§.y;
         var _loc1_:int = this.§const§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§const§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§'D§.addChild(this.§const§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§'D§.removeChild(this.§const§);
         }
         if(this.§2n§ && this.§2n§.canvas)
         {
            this.§2n§.setCanvasSize(this.§6!#§,this.§ t§,this.§7A§.width / this.§>>§.stageWidth,this.§7A§.height / this.§>>§.stageHeight);
            _loc3_ = this.§2n§.canvas;
            if(this.§46§.bitmapData != _loc3_)
            {
               this.§46§.bitmapData = _loc3_;
            }
            if(this.§'D§.getChildIndex(this.§const§) > 0)
            {
               this.§'D§.removeChild(this.§const§);
               this.§'D§.addChildAt(this.§const§,0);
            }
         }
      }
      
      private function §8!]§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§>>§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§>>§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§>>§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§!!^§.addChild(_loc2_);
      }
      
      public function §?!=§() : void
      {
         §>!5§ = this;
      }
      
      public function start() : void
      {
         this.§2!K§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§2!K§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §[8§(param1:Boolean) : void
      {
         this.§;s§ = param1;
      }
      
      private function §?l§() : void
      {
         this.§]c§ = true;
         if(this.§46§ == null)
         {
            this.§46§ = new Bitmap();
            this.§!!^§.addChild(this.§46§);
         }
      }
      
      private function §[H§(param1:ErrorEvent) : void
      {
         this.§?l§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §#>§(param1:flash.events.Event) : void
      {
         if(this.§"!@§)
         {
            return;
         }
         ++§#6§;
         this.§6r§ = §#6§;
         if(this.§2n§)
         {
            this.§2n§.dispose();
         }
         if(!§2d§.§'i§ && this.§&5§)
         {
            this.§8!]§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§?!=§();
         this.§#!;§();
         this.§5Q§();
         if(this.§&5§ && this.§^D§)
         {
            this.mStage3DEnabled = false;
            this.§&5§ = null;
            this.§?l§();
         }
         if(this.§&5§)
         {
            this.§2n§ = new §;P§();
         }
         else
         {
            this.§2n§ = new final();
            this.§2n§.setCanvasSize(this.§6!#§,this.§ t§,this.§7A§.width / this.§>>§.stageWidth,this.§7A§.height / this.§>>§.stageHeight);
            this.§2n§.clear(null,this.§;&§);
         }
         this.§true §.simulateMultitouch = this.§]I§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §8!a§(param1:flash.events.Event) : void
      {
         this.§?!=§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§^5§;
         if(this.§2!K§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§const§)
         {
            this.§`T§();
         }
      }
      
      private function §3!B§(param1:flash.events.KeyboardEvent) : void
      {
         this.§?!=§();
         this.§>>§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§^e§;
         var _loc5_:Number = param2 / this.§<y§;
         if(!param3)
         {
            this.§>>§.stageWidth = this.§^e§ * _loc4_ / _loc5_;
            this.§>>§.stageHeight = this.§<y§;
         }
         else
         {
            this.§>>§.stageWidth = this.§^e§;
            this.§>>§.stageHeight = this.§<y§ * _loc5_ / _loc4_;
         }
         this.§6!#§ = param1;
         this.§ t§ = param2;
         this.§>>§.dispatchEvent(new §,!c§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §7R§() : void
      {
         this.setCanvasSize(this.§^e§,this.§<y§);
      }
      
      private function §4!8§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§2!K§ || !this.§;s§)
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
               this.§1§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§1§ = false;
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
               _loc5_ = set.§!n§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = set.§#!2§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = set.§!!]§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = set.§!n§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = set.§!!]§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§1§ ? set.§#!2§ : set.§2!A§;
         }
         if((_loc2_ < this.§7A§.left || _loc2_ >= this.§7A§.right || _loc3_ < this.§7A§.top || _loc3_ >= this.§7A§.bottom) && _loc5_ == set.§!n§)
         {
            return;
         }
         _loc2_ -= this.§7A§.x;
         _loc3_ -= this.§7A§.y;
         this.§true §.§ 1§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §8c§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §5!M§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§;!T§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§&5§ != null)
         {
            (_loc4_ = this.§&5§.createProgram()).upload(param2,param3);
            this.§;!T§[param1] = _loc4_;
         }
      }
      
      public function §=j§(param1:String) : void
      {
         var _loc2_:Program3D = this.§3!<§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§;!T§[param1];
         }
      }
      
      public function §3!<§(param1:String) : Program3D
      {
         return this.§;!T§[param1] as Program3D;
      }
      
      public function §&!;§(param1:String) : Boolean
      {
         return param1 in this.§;!T§;
      }
      
      public function get §;!R§() : Boolean
      {
         return this.§2!K§;
      }
      
      public function get §8e§() : §3!`§
      {
         return this.§"X§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§]I§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§]I§ = param1;
         if(this.§&5§)
         {
            this.§true §.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§,b§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§,b§ = param1;
         if(this.§&5§)
         {
            this.§&5§.enableErrorChecking = param1;
         }
      }
      
      public function get §[U§() : int
      {
         return this.§"[§;
      }
      
      public function set §[U§(param1:int) : void
      {
         this.§"[§ = param1;
         this.§9!L§();
      }
      
      public function get §?!>§() : Rectangle
      {
         return this.§7A§.clone();
      }
      
      public function set §?!>§(param1:Rectangle) : void
      {
         this.§7A§ = param1.clone();
         this.§9!L§();
      }
      
      public function get §!!^§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§const§ == null)
         {
            this.§const§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§const§.contextMenu = _loc1_;
            this.§`T§();
         }
         return this.§const§;
      }
      
      public function get stage() : §<!-§.Stage
      {
         return this.§>>§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §3!K§() : flash.display.Stage
      {
         return this.§'D§;
      }
      
      public function get §'!c§() : Boolean
      {
         return !this.§]c§;
      }
   }
}
