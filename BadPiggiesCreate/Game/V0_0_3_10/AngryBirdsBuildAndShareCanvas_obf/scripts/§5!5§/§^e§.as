package §5!5§
{
   import §1!5§.§2§;
   import §4!S§.Texture;
   import §^I§.DisplayObject;
   import §^I§.Stage;
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
   import starling.events.§ 3§;
   import starling.events.§-B§;
   import starling.events.§?!q§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §^e§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §7!B§:§^e§;
      
      private static var §3,§:Boolean;
      
      private static var §+"#§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §0!^§:§^I§.Stage;
      
      private var §!G§:Class;
      
      private var §,@§:§^I§.DisplayObject;
      
      private var §]d§:§2§;
      
      private var §@W§:Boolean;
      
      private var §-!o§:Boolean;
      
      private var §@s§:§?"5§;
      
      private var §72§:§ 3§;
      
      private var §=S§:int;
      
      private var §=!u§:Boolean;
      
      private var §8"&§:Boolean;
      
      private var §@!$§:Number;
      
      private var §79§:Rectangle;
      
      private var §&!5§:Boolean;
      
      private var §!_§:flash.display.Stage;
      
      private var §>+§:Sprite;
      
      private var §"!§:Context3D;
      
      private var §0!V§:Dictionary;
      
      private var §7"1§:int;
      
      private var §7u§:Boolean;
      
      private var §]U§:Number;
      
      private var §@d§:Number;
      
      private var §]",§:Number;
      
      private var §,!F§:Number;
      
      private var §5!S§:Number;
      
      private var §-"$§:Number;
      
      private var §70§:Function;
      
      private var §#!j§:uint;
      
      private var §=!z§:String;
      
      private var §&!i§:Bitmap;
      
      private var §+h§:Boolean = false;
      
      private var §,"5§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §`<§:Boolean = false;
      
      public function §^e§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§]U§ = param3.width;
         this.§@d§ = param3.height;
         this.§]",§ = this.§]U§;
         this.§,!F§ = this.§@d§;
         this.§5!S§ = param2.stageWidth;
         this.§-"$§ = param2.stageHeight;
         §%d§ = true;
         this.§ !§();
         this.§!G§ = param1;
         this.§79§ = param3;
         this.mStage3D = param4;
         this.§0!^§ = new §^I§.Stage(param3.width,param3.height,param2.color);
         this.§!_§ = param2;
         this.§72§ = new § 3§(this.§0!^§);
         this.§]d§ = new §2§();
         this.§=S§ = 0;
         this.§=!u§ = false;
         this.§8"&§ = false;
         this.§@!$§ = getTimer() / 1000;
         this.§0!V§ = new Dictionary();
         for each(_loc6_ in this.§9>§)
         {
            param2.addEventListener(_loc6_,this.§%S§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§"&§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§"&§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&l§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§2"'§,false,1,true);
         this.mStage3D.visible = false;
         this.§`i§(true);
         this.§#!j§ = param2.color;
         this.§=!z§ = param5;
      }
      
      public static function get §^"!§() : Boolean
      {
         if(§-_§)
         {
            return §-_§.§7u§;
         }
         return true;
      }
      
      public static function §5!#§() : Boolean
      {
         return §7!B§ && (§7!B§.§+h§ || §7!B§.§"!§ != null && §7!B§.§"!§.driverInfo != "Disposed");
      }
      
      public static function get §-_§() : §^e§
      {
         return §7!B§;
      }
      
      public static function get §,_§() : §2§
      {
         return !!§7!B§ ? §7!B§.§,_§ : null;
      }
      
      public static function get §"!q§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §"!q§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §%d§() : Boolean
      {
         return §3,§;
      }
      
      public static function set §%d§(param1:Boolean) : void
      {
         if(§7!B§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §3,§ = param1;
      }
      
      public static function §<?§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§-_§)
         {
            return Texture.§7'§(§-_§.§"!§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§7!B§.§"!§)
         {
            §7!B§.§"!§.drawToBitmapData(param1);
         }
         else if(§7!B§.§@s§.canvas)
         {
            _loc2_ = §7!B§.§@s§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §8!7§() : §^I§.DisplayObject
      {
         return this.§,@§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§#!j§ = param1;
      }
      
      public function get §4O§() : Number
      {
         return this.§]U§;
      }
      
      public function get §6!U§() : Number
      {
         return this.§@d§;
      }
      
      public function §1!;§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§=!z§);
         }
         catch(e:Error)
         {
            §`!y§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§`<§ = true;
         this.§!_§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§"&§,false);
         this.§!_§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§"&§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&l§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§2"'§,false);
         for each(_loc1_ in this.§9>§)
         {
            this.§!_§.removeEventListener(_loc1_,this.§%S§,false);
         }
         for each(_loc2_ in this.§0!V§)
         {
            _loc2_.dispose();
         }
         if(this.§"!§)
         {
            this.§"!§.dispose();
         }
         if(this.§72§)
         {
            this.§72§.dispose();
         }
         if(this.§@s§)
         {
            this.§@s§.dispose();
         }
         if(§7!B§ == this)
         {
            §7!B§ = null;
         }
         if(this.§&!i§ && this.§&!i§.bitmapData)
         {
            this.§&!i§.bitmapData.dispose();
            this.§&!i§.bitmapData = null;
         }
      }
      
      private function §]!U§() : void
      {
         this.§"!§ = this.mStage3D.context3D;
         this.§0!V§ = new Dictionary();
         if(this.§"!§)
         {
            this.§"!§.enableErrorChecking = this.§8"&§;
            if(this.§"!§.driverInfo.indexOf("Software") >= 0)
            {
               this.§7u§ = true;
            }
         }
         else
         {
            this.§7u§ = true;
         }
         this.§0""§();
      }
      
      private function §import§() : void
      {
         if(this.§0!^§.numChildren > 0)
         {
            return;
         }
         if(this.§,@§ == null)
         {
            this.§,@§ = new this.§!G§();
         }
         if(this.§,@§ == null)
         {
            throw new Error("Invalid root class: " + this.§!G§);
         }
         this.§0!^§.addChild(this.§,@§);
      }
      
      private function §0""§() : void
      {
         this.§,"5§ = true;
         this.mStage3D.x = this.§79§.x;
         this.mStage3D.y = this.§79§.y;
      }
      
      private function render() : void
      {
         if(!§5!#§())
         {
            return;
         }
         if(this.§,"5§)
         {
            if(this.§"!§)
            {
               this.§"!§.configureBackBuffer(this.§79§.width,this.§79§.height,this.§=S§,false);
            }
            this.§,"5§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§@!$§;
         this.§@!$§ = _loc1_;
         this.§0!^§.advanceTime(_loc2_);
         this.§]d§.advanceTime(_loc2_);
         this.§72§.advanceTime(_loc2_);
         this.§@s§.§9!!§(this.§0!^§.stageWidth,this.§0!^§.stageHeight);
         this.§@s§.clear(this.§"!§,this.§#!j§,1);
         this.§@s§.§@<§(this.§"!§,this.§7"1§);
         this.§0!^§.render(this.§@s§,1);
         this.§@s§.§1!W§();
         if(this.§70§ != null)
         {
            this.§70§();
            this.§70§ = null;
         }
         this.§@s§.finishRendering(this.§"!§);
         this.§@s§.§,V§();
      }
      
      public function set §,!B§(param1:Function) : void
      {
         this.§70§ = param1;
      }
      
      private function §?"3§() : void
      {
         var _loc3_:BitmapData = null;
         this.§>+§.x = this.§79§.x;
         this.§>+§.y = this.§79§.y;
         var _loc1_:int = this.§>+§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§>+§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§!_§.addChild(this.§>+§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§!_§.removeChild(this.§>+§);
         }
         if(this.§@s§ && this.§@s§.canvas)
         {
            this.§@s§.setCanvasSize(this.§]",§,this.§,!F§,this.§79§.width / this.§0!^§.stageWidth,this.§79§.height / this.§0!^§.stageHeight);
            _loc3_ = this.§@s§.canvas;
            if(this.§&!i§.bitmapData != _loc3_)
            {
               this.§&!i§.bitmapData = _loc3_;
            }
            if(this.§!_§.getChildIndex(this.§>+§) > 0)
            {
               this.§!_§.removeChild(this.§>+§);
               this.§!_§.addChildAt(this.§>+§,0);
            }
         }
      }
      
      private function §`!y§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§0!^§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§0!^§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§0!^§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§8!_§.addChild(_loc2_);
      }
      
      public function § !§() : void
      {
         §7!B§ = this;
      }
      
      public function start() : void
      {
         this.§@W§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§@W§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §`i§(param1:Boolean) : void
      {
         this.§-!o§ = param1;
      }
      
      private function §9H§() : void
      {
         this.§+h§ = true;
         if(this.§&!i§ == null)
         {
            this.§&!i§ = new Bitmap();
            this.§8!_§.addChild(this.§&!i§);
         }
      }
      
      private function §2"'§(param1:ErrorEvent) : void
      {
         this.§9H§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §&l§(param1:flash.events.Event) : void
      {
         if(this.§`<§)
         {
            return;
         }
         ++§+"#§;
         this.§7"1§ = §+"#§;
         if(this.§@s§)
         {
            this.§@s§.dispose();
         }
         if(!§^e§.§%d§ && this.§"!§)
         {
            this.§`!y§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§ !§();
         this.§]!U§();
         this.§import§();
         if(this.§"!§ && this.§7u§)
         {
            this.mStage3DEnabled = false;
            this.§"!§ = null;
            this.§9H§();
         }
         if(this.§"!§)
         {
            this.§@s§ = new §?"5§();
         }
         else
         {
            this.§@s§ = new §[!M§();
            this.§@s§.setCanvasSize(this.§]",§,this.§,!F§,this.§79§.width / this.§0!^§.stageWidth,this.§79§.height / this.§0!^§.stageHeight);
            this.§@s§.clear(null,this.§#!j§);
         }
         this.§72§.§"5§ = this.§=!u§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§ !§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§@!$§;
         if(this.§@W§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§>+§)
         {
            this.§?"3§();
         }
      }
      
      private function §"&§(param1:flash.events.KeyboardEvent) : void
      {
         this.§ !§();
         this.§0!^§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§]U§;
         var _loc5_:Number = param2 / this.§@d§;
         if(!param3)
         {
            this.§0!^§.stageWidth = this.§]U§ * _loc4_ / _loc5_;
            this.§0!^§.stageHeight = this.§@d§;
         }
         else
         {
            this.§0!^§.stageWidth = this.§]U§;
            this.§0!^§.stageHeight = this.§@d§ * _loc5_ / _loc4_;
         }
         this.§]",§ = param1;
         this.§,!F§ = param2;
         this.§0!^§.dispatchEvent(new §?!q§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §9!P§() : void
      {
         this.setCanvasSize(this.§]U§,this.§@d§);
      }
      
      private function §%S§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§@W§ || !this.§-!o§)
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
               this.§&!5§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§&!5§ = false;
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
               _loc5_ = §-B§.§#!T§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §-B§.§@Z§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §-B§.§>!A§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §-B§.§#!T§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §-B§.§>!A§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§&!5§ ? §-B§.§@Z§ : §-B§.§3!R§;
         }
         if((_loc2_ < this.§79§.left || _loc2_ >= this.§79§.right || _loc3_ < this.§79§.top || _loc3_ >= this.§79§.bottom) && _loc5_ == §-B§.§#!T§)
         {
            return;
         }
         _loc2_ -= this.§79§.x;
         _loc3_ -= this.§79§.y;
         this.§72§.§`!w§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §9>§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §3k§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§0!V§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§"!§ != null)
         {
            (_loc4_ = this.§"!§.createProgram()).upload(param2,param3);
            this.§0!V§[param1] = _loc4_;
         }
      }
      
      public function §1!9§(param1:String) : void
      {
         var _loc2_:Program3D = this.§3"&§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§0!V§[param1];
         }
      }
      
      public function §3"&§(param1:String) : Program3D
      {
         return this.§0!V§[param1] as Program3D;
      }
      
      public function §2!I§(param1:String) : Boolean
      {
         return param1 in this.§0!V§;
      }
      
      public function get §?#§() : Boolean
      {
         return this.§@W§;
      }
      
      public function get §,_§() : §2§
      {
         return this.§]d§;
      }
      
      public function get §"5§() : Boolean
      {
         return this.§=!u§;
      }
      
      public function set §"5§(param1:Boolean) : void
      {
         this.§=!u§ = param1;
         if(this.§"!§)
         {
            this.§72§.§"5§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§8"&§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§8"&§ = param1;
         if(this.§"!§)
         {
            this.§"!§.enableErrorChecking = param1;
         }
      }
      
      public function get §-!K§() : int
      {
         return this.§=S§;
      }
      
      public function set §-!K§(param1:int) : void
      {
         this.§=S§ = param1;
         this.§0""§();
      }
      
      public function get §?%§() : Rectangle
      {
         return this.§79§.clone();
      }
      
      public function set §?%§(param1:Rectangle) : void
      {
         this.§79§ = param1.clone();
         this.§0""§();
      }
      
      public function get §8!_§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§>+§ == null)
         {
            this.§>+§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§>+§.contextMenu = _loc1_;
            this.§?"3§();
         }
         return this.§>+§;
      }
      
      public function get stage() : §^I§.Stage
      {
         return this.§0!^§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §-!?§() : flash.display.Stage
      {
         return this.§!_§;
      }
      
      public function get §8!%§() : Boolean
      {
         return !this.§+h§;
      }
   }
}
