package §"v§
{
   import §1!#§.§0!H§;
   import §2!g§.DisplayObject;
   import §2!g§.Stage;
   import §@j§.Texture;
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
   import starling.events.§&!'§;
   import starling.events.§0-§;
   import starling.events.§<!e§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §5!T§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §6!"§:§5!T§;
      
      private static var §8!K§:Boolean;
      
      private static var §"N§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §&!M§:§2!g§.Stage;
      
      private var §46§:Class;
      
      private var §-!B§:§2!g§.DisplayObject;
      
      private var §9!a§:§0!H§;
      
      private var §0d§:Boolean;
      
      private var §#'§:Boolean;
      
      private var §8!+§:§&!i§;
      
      private var §-l§:§<!e§;
      
      private var §<!a§:int;
      
      private var §0!G§:Boolean;
      
      private var §+0§:Boolean;
      
      private var §]g§:Number;
      
      private var §<9§:Rectangle;
      
      private var §!o§:Boolean;
      
      private var §2,§:flash.display.Stage;
      
      private var §#B§:Sprite;
      
      private var §,I§:Context3D;
      
      private var §,!?§:Dictionary;
      
      private var §90§:int;
      
      private var §=p§:Boolean;
      
      private var §[0§:Number;
      
      private var §;!h§:Number;
      
      private var §@!d§:Number;
      
      private var §<K§:Number;
      
      private var §[!§:Number;
      
      private var §>!7§:Number;
      
      private var §2m§:Function;
      
      private var §]k§:uint;
      
      private var §'[§:String;
      
      private var §&p§:Bitmap;
      
      private var §8j§:Boolean = false;
      
      private var §1q§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §,!V§:Boolean = false;
      
      public function §5!T§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§[0§ = param3.width;
         this.§;!h§ = param3.height;
         this.§@!d§ = this.§[0§;
         this.§<K§ = this.§;!h§;
         this.§[!§ = param2.stageWidth;
         this.§>!7§ = param2.stageHeight;
         §!!X§ = true;
         this.§ !9§();
         this.§46§ = param1;
         this.§<9§ = param3;
         this.mStage3D = param4;
         this.§&!M§ = new §2!g§.Stage(param3.width,param3.height,param2.color);
         this.§2,§ = param2;
         this.§-l§ = new §<!e§(this.§&!M§);
         this.§9!a§ = new §0!H§();
         this.§<!a§ = 0;
         this.§0!G§ = false;
         this.§+0§ = false;
         this.§]g§ = getTimer() / 1000;
         this.§,!?§ = new Dictionary();
         for each(_loc6_ in this.§7]§)
         {
            param2.addEventListener(_loc6_,this.§&!,§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§"!e§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§"!e§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§0!^§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§2`§,false,1,true);
         this.mStage3D.visible = false;
         this.§,v§(true);
         this.§]k§ = param2.color;
         this.§'[§ = param5;
      }
      
      public static function get §3h§() : Boolean
      {
         if(§!e§)
         {
            return §!e§.§=p§;
         }
         return true;
      }
      
      public static function §<f§() : Boolean
      {
         return §6!"§ && (§6!"§.§8j§ || §6!"§.§,I§ != null && §6!"§.§,I§.driverInfo != "Disposed");
      }
      
      public static function get §!e§() : §5!T§
      {
         return §6!"§;
      }
      
      public static function get §7U§() : §0!H§
      {
         return !!§6!"§ ? §6!"§.§7U§ : null;
      }
      
      public static function get §2!Z§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §2!Z§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §!!X§() : Boolean
      {
         return §8!K§;
      }
      
      public static function set §!!X§(param1:Boolean) : void
      {
         if(§6!"§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §8!K§ = param1;
      }
      
      public static function §#F§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§!e§)
         {
            return Texture.§&%§(§!e§.§,I§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§6!"§.§,I§)
         {
            §6!"§.§,I§.drawToBitmapData(param1);
         }
         else if(§6!"§.§8!+§.canvas)
         {
            _loc2_ = §6!"§.§8!+§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §]!>§() : §2!g§.DisplayObject
      {
         return this.§-!B§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§]k§ = param1;
      }
      
      public function get §3!D§() : Number
      {
         return this.§[0§;
      }
      
      public function get §7!h§() : Number
      {
         return this.§;!h§;
      }
      
      public function §3!g§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§'[§);
         }
         catch(e:Error)
         {
            §8R§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§,!V§ = true;
         this.§2,§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§"!e§,false);
         this.§2,§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§"!e§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§0!^§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§2`§,false);
         for each(_loc1_ in this.§7]§)
         {
            this.§2,§.removeEventListener(_loc1_,this.§&!,§,false);
         }
         for each(_loc2_ in this.§,!?§)
         {
            _loc2_.dispose();
         }
         if(this.§,I§)
         {
            this.§,I§.dispose();
         }
         if(this.§-l§)
         {
            this.§-l§.dispose();
         }
         if(this.§8!+§)
         {
            this.§8!+§.dispose();
         }
         if(§6!"§ == this)
         {
            §6!"§ = null;
         }
         if(this.§&p§ && this.§&p§.bitmapData)
         {
            this.§&p§.bitmapData.dispose();
            this.§&p§.bitmapData = null;
         }
      }
      
      private function § ?§() : void
      {
         this.§,I§ = this.mStage3D.context3D;
         this.§,!?§ = new Dictionary();
         if(this.§,I§)
         {
            this.§,I§.enableErrorChecking = this.§+0§;
            if(this.§,I§.driverInfo.indexOf("Software") >= 0)
            {
               this.§=p§ = true;
            }
         }
         else
         {
            this.§=p§ = true;
         }
         this.§5!9§();
      }
      
      private function §+!Q§() : void
      {
         if(this.§&!M§.numChildren > 0)
         {
            return;
         }
         if(this.§-!B§ == null)
         {
            this.§-!B§ = new this.§46§();
         }
         if(this.§-!B§ == null)
         {
            throw new Error("Invalid root class: " + this.§46§);
         }
         this.§&!M§.addChild(this.§-!B§);
      }
      
      private function §5!9§() : void
      {
         this.§1q§ = true;
         this.mStage3D.x = this.§<9§.x;
         this.mStage3D.y = this.§<9§.y;
      }
      
      private function render() : void
      {
         if(!§<f§())
         {
            return;
         }
         if(this.§1q§)
         {
            if(this.§,I§)
            {
               this.§,I§.configureBackBuffer(this.§<9§.width,this.§<9§.height,this.§<!a§,false);
            }
            this.§1q§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§]g§;
         this.§]g§ = _loc1_;
         this.§&!M§.advanceTime(_loc2_);
         this.§9!a§.advanceTime(_loc2_);
         this.§-l§.advanceTime(_loc2_);
         this.§8!+§.§"P§(this.§&!M§.stageWidth,this.§&!M§.stageHeight);
         this.§8!+§.clear(this.§,I§,this.§]k§,1);
         this.§8!+§.§[!F§(this.§,I§,this.§90§);
         this.§&!M§.render(this.§8!+§,1);
         this.§8!+§.§^§();
         if(this.§2m§ != null)
         {
            this.§2m§();
            this.§2m§ = null;
         }
         this.§8!+§.finishRendering(this.§,I§);
         this.§8!+§.§&B§();
      }
      
      public function set §=!l§(param1:Function) : void
      {
         this.§2m§ = param1;
      }
      
      private function §98§() : void
      {
         var _loc3_:BitmapData = null;
         this.§#B§.x = this.§<9§.x;
         this.§#B§.y = this.§<9§.y;
         var _loc1_:int = this.§#B§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§#B§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§2,§.addChild(this.§#B§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§2,§.removeChild(this.§#B§);
         }
         if(this.§8!+§ && this.§8!+§.canvas)
         {
            this.§8!+§.setCanvasSize(this.§@!d§,this.§<K§,this.§<9§.width / this.§&!M§.stageWidth,this.§<9§.height / this.§&!M§.stageHeight);
            _loc3_ = this.§8!+§.canvas;
            if(this.§&p§.bitmapData != _loc3_)
            {
               this.§&p§.bitmapData = _loc3_;
            }
            if(this.§2,§.getChildIndex(this.§#B§) > 0)
            {
               this.§2,§.removeChild(this.§#B§);
               this.§2,§.addChildAt(this.§#B§,0);
            }
         }
      }
      
      private function §8R§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§&!M§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§&!M§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§&!M§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§^e§.addChild(_loc2_);
      }
      
      public function § !9§() : void
      {
         §6!"§ = this;
      }
      
      public function start() : void
      {
         this.§0d§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§0d§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §,v§(param1:Boolean) : void
      {
         this.§#'§ = param1;
      }
      
      private function §2! §() : void
      {
         this.§8j§ = true;
         if(this.§&p§ == null)
         {
            this.§&p§ = new Bitmap();
            this.§^e§.addChild(this.§&p§);
         }
      }
      
      private function §2`§(param1:ErrorEvent) : void
      {
         this.§2! §();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §0!^§(param1:flash.events.Event) : void
      {
         if(this.§,!V§)
         {
            return;
         }
         ++§"N§;
         this.§90§ = §"N§;
         if(this.§8!+§)
         {
            this.§8!+§.dispose();
         }
         if(!§5!T§.§!!X§ && this.§,I§)
         {
            this.§8R§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§ !9§();
         this.§ ?§();
         this.§+!Q§();
         if(this.§,I§ && this.§=p§)
         {
            this.mStage3DEnabled = false;
            this.§,I§ = null;
            this.§2! §();
         }
         if(this.§,I§)
         {
            this.§8!+§ = new §&!i§();
         }
         else
         {
            this.§8!+§ = new §@L§();
            this.§8!+§.setCanvasSize(this.§@!d§,this.§<K§,this.§<9§.width / this.§&!M§.stageWidth,this.§<9§.height / this.§&!M§.stageHeight);
            this.§8!+§.clear(null,this.§]k§);
         }
         this.§-l§.simulateMultitouch = this.§0!G§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §1%§(param1:flash.events.Event) : void
      {
         this.§ !9§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§]g§;
         if(this.§0d§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§#B§)
         {
            this.§98§();
         }
      }
      
      private function §"!e§(param1:flash.events.KeyboardEvent) : void
      {
         this.§ !9§();
         this.§&!M§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§[0§;
         var _loc5_:Number = param2 / this.§;!h§;
         if(!param3)
         {
            this.§&!M§.stageWidth = this.§[0§ * _loc4_ / _loc5_;
            this.§&!M§.stageHeight = this.§;!h§;
         }
         else
         {
            this.§&!M§.stageWidth = this.§[0§;
            this.§&!M§.stageHeight = this.§;!h§ * _loc5_ / _loc4_;
         }
         this.§@!d§ = param1;
         this.§<K§ = param2;
         this.§&!M§.dispatchEvent(new §0-§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §%Y§() : void
      {
         this.setCanvasSize(this.§[0§,this.§;!h§);
      }
      
      private function §&!,§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§0d§ || !this.§#'§)
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
               this.§!o§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§!o§ = false;
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
               _loc5_ = §&!'§.§6m§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §&!'§.§@!H§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §&!'§.§-u§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §&!'§.§6m§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §&!'§.§-u§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§!o§ ? §&!'§.§@!H§ : §&!'§.§%! §;
         }
         if((_loc2_ < this.§<9§.left || _loc2_ >= this.§<9§.right || _loc3_ < this.§<9§.top || _loc3_ >= this.§<9§.bottom) && _loc5_ == §&!'§.§6m§)
         {
            return;
         }
         _loc2_ -= this.§<9§.x;
         _loc3_ -= this.§<9§.y;
         this.§-l§.§=N§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §7]§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §6!]§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§,!?§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§,I§ != null)
         {
            (_loc4_ = this.§,I§.createProgram()).upload(param2,param3);
            this.§,!?§[param1] = _loc4_;
         }
      }
      
      public function §!j§(param1:String) : void
      {
         var _loc2_:Program3D = this.§+-§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§,!?§[param1];
         }
      }
      
      public function §+-§(param1:String) : Program3D
      {
         return this.§,!?§[param1] as Program3D;
      }
      
      public function §&H§(param1:String) : Boolean
      {
         return param1 in this.§,!?§;
      }
      
      public function get §27§() : Boolean
      {
         return this.§0d§;
      }
      
      public function get §7U§() : §0!H§
      {
         return this.§9!a§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§0!G§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§0!G§ = param1;
         if(this.§,I§)
         {
            this.§-l§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+0§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§+0§ = param1;
         if(this.§,I§)
         {
            this.§,I§.enableErrorChecking = param1;
         }
      }
      
      public function get §9!,§() : int
      {
         return this.§<!a§;
      }
      
      public function set §9!,§(param1:int) : void
      {
         this.§<!a§ = param1;
         this.§5!9§();
      }
      
      public function get §@!j§() : Rectangle
      {
         return this.§<9§.clone();
      }
      
      public function set §@!j§(param1:Rectangle) : void
      {
         this.§<9§ = param1.clone();
         this.§5!9§();
      }
      
      public function get §^e§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§#B§ == null)
         {
            this.§#B§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§#B§.contextMenu = _loc1_;
            this.§98§();
         }
         return this.§#B§;
      }
      
      public function get stage() : §2!g§.Stage
      {
         return this.§&!M§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §7E§() : flash.display.Stage
      {
         return this.§2,§;
      }
      
      public function get §2!#§() : Boolean
      {
         return !this.§8j§;
      }
   }
}
