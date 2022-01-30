package §5!W§
{
   import §0!Y§.DisplayObject;
   import §0!Y§.Stage;
   import §@!Z§.§7!B§;
   import §^z§.Texture;
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
   import starling.events.§2d§;
   import starling.events.§7!8§;
   import starling.events.§<x§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §>P§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §@p§:Rectangle;
      
      private static var §,6§:Boolean = true;
      
      private static var §4#§:Boolean;
      
      private static var §,!C§:§>P§;
      
      private static var §;7§:Boolean;
      
      private static var §7f§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §9!I§:§0!Y§.Stage;
      
      private var §6!N§:Class;
      
      private var §7t§:§0!Y§.DisplayObject;
      
      private var §2]§:§7!B§;
      
      private var §<""§:Boolean;
      
      private var §4!V§:Boolean;
      
      private var §;,§:§`+§;
      
      private var §>-§:§<x§;
      
      private var §>+§:int;
      
      private var §"q§:Boolean;
      
      private var §,!?§:Boolean;
      
      private var §]!k§:Number;
      
      private var §@P§:Boolean;
      
      private var §,"5§:flash.display.Stage;
      
      private var §`,§:Sprite;
      
      private var §32§:Context3D;
      
      private var § !N§:Dictionary;
      
      private var §9"%§:int;
      
      private var § !9§:Boolean;
      
      private var §3s§:Number;
      
      private var §?l§:Number;
      
      private var §<k§:Number;
      
      private var §+!@§:Number;
      
      private var §=!t§:Number;
      
      private var §9!-§:Number;
      
      private var §2"$§:Function;
      
      private var §;!G§:uint;
      
      private var §2!z§:String;
      
      private var §]i§:Bitmap;
      
      private var §`D§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §>0§:Boolean = false;
      
      public function §>P§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§3s§ = param3.width;
         this.§?l§ = param3.height;
         this.§<k§ = this.§3s§;
         this.§+!@§ = this.§?l§;
         this.§=!t§ = param2.stageWidth;
         this.§9!-§ = param2.stageHeight;
         §=!l§ = true;
         this.§1I§();
         this.§6!N§ = param1;
         §@p§ = param3;
         this.mStage3D = param4;
         this.§9!I§ = new §0!Y§.Stage(param3.width,param3.height,param2.color);
         this.§,"5§ = param2;
         this.§>-§ = new §<x§(this.§9!I§);
         this.§2]§ = new §7!B§();
         this.§>+§ = 0;
         this.§"q§ = false;
         this.§,!?§ = false;
         this.§]!k§ = getTimer() / 1000;
         this.§ !N§ = new Dictionary();
         for each(_loc6_ in this.§"!P§)
         {
            param2.addEventListener(_loc6_,this.§ "§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§#!P§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§#!P§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ !<§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§!!]§,false,1,true);
         this.mStage3D.visible = false;
         this.§[2§(true);
         this.§;!G§ = param2.color;
         this.§2!z§ = param5;
      }
      
      public static function get §case §() : Boolean
      {
         if(§;_§)
         {
            return §;_§.§ !9§;
         }
         return true;
      }
      
      public static function §1Y§() : Boolean
      {
         return §,!C§ && (§,!C§.§`D§ || §,!C§.§32§ != null && §,!C§.§32§.driverInfo != "Disposed");
      }
      
      private static function §7E§() : void
      {
         §4#§ = true;
      }
      
      public static function get §5R§() : Rectangle
      {
         return §@p§.clone();
      }
      
      public static function set §5R§(param1:Rectangle) : void
      {
         §@p§ = param1.clone();
         §7E§();
      }
      
      public static function set §85§(param1:Boolean) : void
      {
         §,6§ = param1;
      }
      
      public static function get §85§() : Boolean
      {
         return §,6§;
      }
      
      public static function get §;_§() : §>P§
      {
         return §,!C§;
      }
      
      public static function get §'8§() : §7!B§
      {
         return !!§,!C§ ? §,!C§.§'8§ : null;
      }
      
      public static function get §2+§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §2+§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §=!l§() : Boolean
      {
         return §;7§;
      }
      
      public static function set §=!l§(param1:Boolean) : void
      {
         if(§,!C§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §;7§ = param1;
      }
      
      public static function §-S§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§;_§)
         {
            return Texture.§each §(§;_§.§32§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§,!C§.§32§)
         {
            §,!C§.§32§.drawToBitmapData(param1);
         }
         else if(§,!C§.§;,§.canvas)
         {
            _loc2_ = §,!C§.§;,§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §5!3§() : §0!Y§.DisplayObject
      {
         return this.§7t§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§;!G§ = param1;
      }
      
      public function get §`"%§() : Number
      {
         return this.§3s§;
      }
      
      public function get §+S§() : Number
      {
         return this.§?l§;
      }
      
      public function § else§() : void
      {
         var contextProfileClass:String = null;
         var requestContext3D:Function = null;
         var moreThanOne:Boolean = false;
         var profile:String = null;
         try
         {
            contextProfileClass = "flash.display3D.Context3DProfile";
            requestContext3D = this.mStage3D.requestContext3D;
            moreThanOne = requestContext3D.length > 1;
            if(moreThanOne)
            {
               profile = "baselineConstrained";
               requestContext3D(this.§2!z§,profile);
            }
            else
            {
               requestContext3D(this.§2!z§);
            }
         }
         catch(e:Error)
         {
            §3!R§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§>0§ = true;
         this.§,"5§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§#!P§,false);
         this.§,"5§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§#!P§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ !<§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§!!]§,false);
         for each(_loc1_ in this.§"!P§)
         {
            this.§,"5§.removeEventListener(_loc1_,this.§ "§,false);
         }
         for each(_loc2_ in this.§ !N§)
         {
            _loc2_.dispose();
         }
         if(this.§32§)
         {
            this.§32§.dispose();
         }
         if(this.§>-§)
         {
            this.§>-§.dispose();
         }
         if(this.§;,§)
         {
            this.§;,§.dispose();
         }
         if(§,!C§ == this)
         {
            §,!C§ = null;
         }
         if(this.§]i§ && this.§]i§.bitmapData)
         {
            this.§]i§.bitmapData.dispose();
            this.§]i§.bitmapData = null;
         }
      }
      
      private function §&D§() : void
      {
         this.§32§ = this.mStage3D.context3D;
         this.§ !N§ = new Dictionary();
         if(this.§32§)
         {
            this.§32§.enableErrorChecking = this.§,!?§;
            if(this.§32§.driverInfo.indexOf("Software") >= 0)
            {
               this.§ !9§ = true;
            }
         }
         else
         {
            this.§ !9§ = true;
         }
         §7E§();
      }
      
      private function §+"§() : void
      {
         if(this.§9!I§.numChildren > 0)
         {
            return;
         }
         if(this.§7t§ == null)
         {
            this.§7t§ = new this.§6!N§();
         }
         if(this.§7t§ == null)
         {
            throw new Error("Invalid root class: " + this.§6!N§);
         }
         this.§9!I§.addChild(this.§7t§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§32§.configureBackBuffer(§@p§.width,§@p§.height,this.§>+§,false);
            §4#§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§1Y§())
         {
            return;
         }
         if(§4#§)
         {
            if(this.§32§)
            {
               this.mStage3D.x = §@p§.x;
               this.mStage3D.y = §@p§.y;
               this.configureBackBuffer();
               if(§4#§)
               {
                  return;
               }
               this.setCanvasSize(§@p§.width,§@p§.height);
            }
            else if(this.§]i§)
            {
               §4#§ = false;
               this.setCanvasSize(§@p§.width,§@p§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§]!k§;
         this.§]!k§ = _loc1_;
         this.§9!I§.advanceTime(_loc2_);
         this.§2]§.advanceTime(_loc2_);
         this.§>-§.advanceTime(_loc2_);
         this.§;,§.§-,§(this.§9!I§.stageWidth,this.§9!I§.stageHeight);
         this.§;,§.clear(this.§32§,this.§;!G§,1);
         this.§;,§.§ "5§(this.§32§,this.§9"%§);
         this.§9!I§.render(this.§;,§,1);
         this.§;,§.§9e§();
         if(this.§2"$§ != null)
         {
            this.§2"$§();
            this.§2"$§ = null;
         }
         this.§;,§.finishRendering(this.§32§);
         this.§;,§.nextFrame();
      }
      
      public function set §#!<§(param1:Function) : void
      {
         this.§2"$§ = param1;
      }
      
      private function §""1§() : void
      {
         var _loc3_:BitmapData = null;
         this.§`,§.x = §@p§.x;
         this.§`,§.y = §@p§.y;
         var _loc1_:int = this.§`,§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§`,§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§,"5§.addChild(this.§`,§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§,"5§.removeChild(this.§`,§);
         }
         if(this.§;,§ && this.§;,§.canvas)
         {
            this.§;,§.setCanvasSize(this.§<k§,this.§+!@§,§@p§.width / this.§9!I§.stageWidth,§@p§.height / this.§9!I§.stageHeight);
            _loc3_ = this.§;,§.canvas;
            if(this.§]i§.bitmapData != _loc3_)
            {
               this.§]i§.bitmapData = _loc3_;
            }
            if(this.§,"5§.getChildIndex(this.§`,§) > 0)
            {
               this.§,"5§.removeChild(this.§`,§);
               this.§,"5§.addChildAt(this.§`,§,0);
            }
         }
      }
      
      private function §3!R§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§9!I§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§9!I§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§9!I§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§>!,§.addChild(_loc2_);
      }
      
      public function §1I§() : void
      {
         §,!C§ = this;
      }
      
      public function start() : void
      {
         this.§<""§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§<""§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §[2§(param1:Boolean) : void
      {
         this.§4!V§ = param1;
      }
      
      private function §]!p§() : void
      {
         this.§`D§ = true;
         if(this.§]i§ == null)
         {
            this.§]i§ = new Bitmap();
            this.§>!,§.addChild(this.§]i§);
         }
      }
      
      private function §!!]§(param1:ErrorEvent) : void
      {
         this.§]!p§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function § !<§(param1:flash.events.Event) : void
      {
         if(this.§>0§)
         {
            return;
         }
         ++§7f§;
         this.§9"%§ = §7f§;
         if(this.§;,§)
         {
            this.§;,§.dispose();
         }
         if(!§>P§.§=!l§ && this.§32§)
         {
            this.§3!R§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§1I§();
         this.§&D§();
         this.§+"§();
         if(this.§32§ && this.§ !9§)
         {
            this.mStage3DEnabled = false;
            this.§32§ = null;
            this.§]!p§();
         }
         if(this.§32§)
         {
            this.§;,§ = new §`+§();
         }
         else
         {
            this.§;,§ = new §+!Z§();
            this.§;,§.setCanvasSize(this.§<k§,this.§+!@§,§@p§.width / this.§9!I§.stageWidth,§@p§.height / this.§9!I§.stageHeight);
            this.§;,§.clear(null,this.§;!G§);
         }
         this.§>-§.§9m§ = this.§"q§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§1I§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§]!k§;
         if(this.§<""§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§`,§)
         {
            this.§""1§();
         }
      }
      
      private function §#!P§(param1:flash.events.KeyboardEvent) : void
      {
         this.§1I§();
         this.§9!I§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§3s§;
         var _loc4_:Number = param2 / this.§?l§;
         if(!§85§)
         {
            this.§9!I§.stageWidth = this.§3s§ * _loc3_ / _loc4_;
            this.§9!I§.stageHeight = this.§?l§;
         }
         else
         {
            this.§9!I§.stageWidth = this.§3s§;
            this.§9!I§.stageHeight = this.§?l§ * _loc4_ / _loc3_;
         }
         this.§<k§ = param1;
         this.§+!@§ = param2;
         this.§9!I§.dispatchEvent(new §7!8§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §4!?§() : void
      {
         this.setCanvasSize(this.§3s§,this.§?l§);
      }
      
      private function § "§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§<""§ || !this.§4!V§)
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
               this.§@P§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§@P§ = false;
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
               _loc5_ = §2d§.§ M§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §2d§.§+!!§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §2d§.§&W§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §2d§.§ M§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §2d§.§&W§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§@P§ ? §2d§.§+!!§ : §2d§.HOVER;
         }
         if((_loc2_ < §@p§.left || _loc2_ >= §@p§.right || _loc3_ < §@p§.top || _loc3_ >= §@p§.bottom) && _loc5_ == §2d§.§ M§)
         {
            return;
         }
         _loc2_ -= §@p§.x;
         _loc3_ -= §@p§.y;
         this.§>-§.§6+§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §"!P§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §9!8§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§ !N§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§32§ != null)
         {
            (_loc4_ = this.§32§.createProgram()).upload(param2,param3);
            this.§ !N§[param1] = _loc4_;
         }
      }
      
      public function §0!d§(param1:String) : void
      {
         var _loc2_:Program3D = this.§<!M§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§ !N§[param1];
         }
      }
      
      public function §<!M§(param1:String) : Program3D
      {
         return this.§ !N§[param1] as Program3D;
      }
      
      public function §]@§(param1:String) : Boolean
      {
         return param1 in this.§ !N§;
      }
      
      public function get §8!L§() : Boolean
      {
         return this.§<""§;
      }
      
      public function get §'8§() : §7!B§
      {
         return this.§2]§;
      }
      
      public function get §9m§() : Boolean
      {
         return this.§"q§;
      }
      
      public function set §9m§(param1:Boolean) : void
      {
         this.§"q§ = param1;
         if(this.§32§)
         {
            this.§>-§.§9m§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§,!?§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§,!?§ = param1;
         if(this.§32§)
         {
            this.§32§.enableErrorChecking = param1;
         }
      }
      
      public function get §2!C§() : int
      {
         return this.§>+§;
      }
      
      public function set §2!C§(param1:int) : void
      {
         this.§>+§ = param1;
         §7E§();
      }
      
      public function get §>!,§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§`,§ == null)
         {
            this.§`,§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§`,§.contextMenu = _loc1_;
            this.§""1§();
         }
         return this.§`,§;
      }
      
      public function get stage() : §0!Y§.Stage
      {
         return this.§9!I§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §1;§() : flash.display.Stage
      {
         return this.§,"5§;
      }
      
      public function get §'B§() : Boolean
      {
         return !this.§`D§;
      }
   }
}
