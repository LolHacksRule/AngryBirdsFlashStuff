package §+R§
{
   import §#!a§.Texture;
   import §;t§.DisplayObject;
   import §;t§.Stage;
   import §@@§.§;!G§;
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
   import starling.events.§3!?§;
   import starling.events.§50§;
   import starling.events.§><§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §0O§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §[!L§:§0O§;
      
      private static var §`+§:Boolean;
      
      private static var §<!Y§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §7>§:§;t§.Stage;
      
      private var §1!-§:Class;
      
      private var §7;§:§;t§.DisplayObject;
      
      private var §@!M§:§;!G§;
      
      private var §;W§:Boolean;
      
      private var §;!c§:Boolean;
      
      private var §]k§:§4!b§;
      
      private var §'k§:§3!?§;
      
      private var §6!3§:int;
      
      private var §4!A§:Boolean;
      
      private var §67§:Boolean;
      
      private var §&!Y§:Number;
      
      private var § >§:Rectangle;
      
      private var §5[§:Boolean;
      
      private var §[p§:flash.display.Stage;
      
      private var §8E§:Sprite;
      
      private var §`d§:Context3D;
      
      private var §"Q§:Dictionary;
      
      private var §9!S§:int;
      
      private var §]M§:Boolean;
      
      private var §@7§:Number;
      
      private var §7![§:Number;
      
      private var §,$§:Number;
      
      private var §=[§:Number;
      
      private var §2!-§:Number;
      
      private var §7m§:Number;
      
      private var §!!0§:Function;
      
      private var §9!4§:uint;
      
      private var §=! §:String;
      
      private var §"w§:Bitmap;
      
      private var §<!9§:Boolean = false;
      
      private var §;!R§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §;%§:Boolean = false;
      
      public function §0O§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§@7§ = param3.width;
         this.§7![§ = param3.height;
         this.§,$§ = this.§@7§;
         this.§=[§ = this.§7![§;
         this.§2!-§ = param2.stageWidth;
         this.§7m§ = param2.stageHeight;
         §5D§ = true;
         this.§6!6§();
         this.§1!-§ = param1;
         this.§ >§ = param3;
         this.mStage3D = param4;
         this.§7>§ = new §;t§.Stage(param3.width,param3.height,param2.color);
         this.§[p§ = param2;
         this.§'k§ = new §3!?§(this.§7>§);
         this.§@!M§ = new §;!G§();
         this.§6!3§ = 0;
         this.§4!A§ = false;
         this.§67§ = false;
         this.§&!Y§ = getTimer() / 1000;
         this.§"Q§ = new Dictionary();
         for each(_loc6_ in this.§4!_§)
         {
            param2.addEventListener(_loc6_,this.§#s§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§if §,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§if §,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-b§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§'!]§,false,1,true);
         this.mStage3D.visible = false;
         this.§##§(true);
         this.§9!4§ = param2.color;
         this.§=! § = param5;
      }
      
      public static function get §3Z§() : Boolean
      {
         if(§=&§)
         {
            return §=&§.§]M§;
         }
         return true;
      }
      
      public static function §`T§() : Boolean
      {
         return §[!L§ && (§[!L§.§<!9§ || §[!L§.§`d§ != null && §[!L§.§`d§.driverInfo != "Disposed");
      }
      
      public static function get §=&§() : §0O§
      {
         return §[!L§;
      }
      
      public static function get §&H§() : §;!G§
      {
         return !!§[!L§ ? §[!L§.§&H§ : null;
      }
      
      public static function get §%!"§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §%!"§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §5D§() : Boolean
      {
         return §`+§;
      }
      
      public static function set §5D§(param1:Boolean) : void
      {
         if(§[!L§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §`+§ = param1;
      }
      
      public static function §;S§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§=&§)
         {
            return Texture.§@0§(§=&§.§`d§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§[!L§.§`d§)
         {
            §[!L§.§`d§.drawToBitmapData(param1);
         }
         else if(§[!L§.§]k§.canvas)
         {
            _loc2_ = §[!L§.§]k§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §<[§() : §;t§.DisplayObject
      {
         return this.§7;§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§9!4§ = param1;
      }
      
      public function get §@a§() : Number
      {
         return this.§@7§;
      }
      
      public function get §41§() : Number
      {
         return this.§7![§;
      }
      
      public function §]b§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§=! §);
         }
         catch(e:Error)
         {
            §&i§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§;%§ = true;
         this.§[p§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§if §,false);
         this.§[p§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§if §,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-b§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§'!]§,false);
         for each(_loc1_ in this.§4!_§)
         {
            this.§[p§.removeEventListener(_loc1_,this.§#s§,false);
         }
         for each(_loc2_ in this.§"Q§)
         {
            _loc2_.dispose();
         }
         if(this.§`d§)
         {
            this.§`d§.dispose();
         }
         if(this.§'k§)
         {
            this.§'k§.dispose();
         }
         if(this.§]k§)
         {
            this.§]k§.dispose();
         }
         if(§[!L§ == this)
         {
            §[!L§ = null;
         }
         if(this.§"w§ && this.§"w§.bitmapData)
         {
            this.§"w§.bitmapData.dispose();
            this.§"w§.bitmapData = null;
         }
      }
      
      private function §0y§() : void
      {
         this.§`d§ = this.mStage3D.context3D;
         this.§"Q§ = new Dictionary();
         if(this.§`d§)
         {
            this.§`d§.enableErrorChecking = this.§67§;
            if(this.§`d§.driverInfo.indexOf("Software") >= 0)
            {
               this.§]M§ = true;
            }
         }
         else
         {
            this.§]M§ = true;
         }
         this.§?Y§();
      }
      
      private function §#y§() : void
      {
         if(this.§7>§.numChildren > 0)
         {
            return;
         }
         if(this.§7;§ == null)
         {
            this.§7;§ = new this.§1!-§();
         }
         if(this.§7;§ == null)
         {
            throw new Error("Invalid root class: " + this.§1!-§);
         }
         this.§7>§.addChild(this.§7;§);
      }
      
      private function §?Y§() : void
      {
         this.§;!R§ = true;
         this.mStage3D.x = this.§ >§.x;
         this.mStage3D.y = this.§ >§.y;
      }
      
      private function render() : void
      {
         if(!§`T§())
         {
            return;
         }
         if(this.§;!R§)
         {
            if(this.§`d§)
            {
               this.§`d§.configureBackBuffer(this.§ >§.width,this.§ >§.height,this.§6!3§,false);
            }
            this.§;!R§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§&!Y§;
         this.§&!Y§ = _loc1_;
         this.§7>§.advanceTime(_loc2_);
         this.§@!M§.advanceTime(_loc2_);
         this.§'k§.advanceTime(_loc2_);
         this.§]k§.§0!8§(this.§7>§.stageWidth,this.§7>§.stageHeight);
         this.§]k§.clear(this.§`d§,this.§9!4§,1);
         this.§]k§.§2=§(this.§`d§,this.§9!S§);
         this.§7>§.render(this.§]k§,1);
         this.§]k§.§]!C§();
         if(this.§!!0§ != null)
         {
            this.§!!0§();
            this.§!!0§ = null;
         }
         this.§]k§.finishRendering(this.§`d§);
         this.§]k§.§,j§();
      }
      
      public function set §"]§(param1:Function) : void
      {
         this.§!!0§ = param1;
      }
      
      private function §7l§() : void
      {
         var _loc3_:BitmapData = null;
         this.§8E§.x = this.§ >§.x;
         this.§8E§.y = this.§ >§.y;
         var _loc1_:int = this.§8E§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§8E§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§[p§.addChild(this.§8E§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§[p§.removeChild(this.§8E§);
         }
         if(this.§]k§ && this.§]k§.canvas)
         {
            this.§]k§.setCanvasSize(this.§,$§,this.§=[§,this.§ >§.width / this.§7>§.stageWidth,this.§ >§.height / this.§7>§.stageHeight);
            _loc3_ = this.§]k§.canvas;
            if(this.§"w§.bitmapData != _loc3_)
            {
               this.§"w§.bitmapData = _loc3_;
            }
            if(this.§[p§.getChildIndex(this.§8E§) > 0)
            {
               this.§[p§.removeChild(this.§8E§);
               this.§[p§.addChildAt(this.§8E§,0);
            }
         }
      }
      
      private function §&i§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§7>§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§7>§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§7>§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§2p§.addChild(_loc2_);
      }
      
      public function §6!6§() : void
      {
         §[!L§ = this;
      }
      
      public function start() : void
      {
         this.§;W§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§;W§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §##§(param1:Boolean) : void
      {
         this.§;!c§ = param1;
      }
      
      private function §[m§() : void
      {
         this.§<!9§ = true;
         if(this.§"w§ == null)
         {
            this.§"w§ = new Bitmap();
            this.§2p§.addChild(this.§"w§);
         }
      }
      
      private function §'!]§(param1:ErrorEvent) : void
      {
         this.§[m§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §-b§(param1:flash.events.Event) : void
      {
         if(this.§;%§)
         {
            return;
         }
         ++§<!Y§;
         this.§9!S§ = §<!Y§;
         if(this.§]k§)
         {
            this.§]k§.dispose();
         }
         if(!§0O§.§5D§ && this.§`d§)
         {
            this.§&i§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§6!6§();
         this.§0y§();
         this.§#y§();
         if(this.§`d§ && this.§]M§)
         {
            this.mStage3DEnabled = false;
            this.§`d§ = null;
            this.§[m§();
         }
         if(this.§`d§)
         {
            this.§]k§ = new §4!b§();
         }
         else
         {
            this.§]k§ = new §>L§();
            this.§]k§.setCanvasSize(this.§,$§,this.§=[§,this.§ >§.width / this.§7>§.stageWidth,this.§ >§.height / this.§7>§.stageHeight);
            this.§]k§.clear(null,this.§9!4§);
         }
         this.§'k§.simulateMultitouch = this.§4!A§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §#@§(param1:flash.events.Event) : void
      {
         this.§6!6§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§&!Y§;
         if(this.§;W§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§8E§)
         {
            this.§7l§();
         }
      }
      
      private function §if §(param1:flash.events.KeyboardEvent) : void
      {
         this.§6!6§();
         this.§7>§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§@7§;
         var _loc5_:Number = param2 / this.§7![§;
         if(!param3)
         {
            this.§7>§.stageWidth = this.§@7§ * _loc4_ / _loc5_;
            this.§7>§.stageHeight = this.§7![§;
         }
         else
         {
            this.§7>§.stageWidth = this.§@7§;
            this.§7>§.stageHeight = this.§7![§ * _loc5_ / _loc4_;
         }
         this.§,$§ = param1;
         this.§=[§ = param2;
         this.§7>§.dispatchEvent(new §50§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §5!I§() : void
      {
         this.setCanvasSize(this.§@7§,this.§7![§);
      }
      
      private function §#s§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§;W§ || !this.§;!c§)
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
               this.§5[§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§5[§ = false;
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
               _loc5_ = §><§.§"z§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §><§.§3!H§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §><§.§1e§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §><§.§"z§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §><§.§1e§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§5[§ ? §><§.§3!H§ : §><§.§#z§;
         }
         if((_loc2_ < this.§ >§.left || _loc2_ >= this.§ >§.right || _loc3_ < this.§ >§.top || _loc3_ >= this.§ >§.bottom) && _loc5_ == §><§.§"z§)
         {
            return;
         }
         _loc2_ -= this.§ >§.x;
         _loc3_ -= this.§ >§.y;
         this.§'k§.§"e§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §4!_§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §`!_§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§"Q§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§`d§ != null)
         {
            (_loc4_ = this.§`d§.createProgram()).upload(param2,param3);
            this.§"Q§[param1] = _loc4_;
         }
      }
      
      public function §5P§(param1:String) : void
      {
         var _loc2_:Program3D = this.§8!b§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§"Q§[param1];
         }
      }
      
      public function §8!b§(param1:String) : Program3D
      {
         return this.§"Q§[param1] as Program3D;
      }
      
      public function §94§(param1:String) : Boolean
      {
         return param1 in this.§"Q§;
      }
      
      public function get §%!`§() : Boolean
      {
         return this.§;W§;
      }
      
      public function get §&H§() : §;!G§
      {
         return this.§@!M§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§4!A§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§4!A§ = param1;
         if(this.§`d§)
         {
            this.§'k§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§67§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§67§ = param1;
         if(this.§`d§)
         {
            this.§`d§.enableErrorChecking = param1;
         }
      }
      
      public function get §1r§() : int
      {
         return this.§6!3§;
      }
      
      public function set §1r§(param1:int) : void
      {
         this.§6!3§ = param1;
         this.§?Y§();
      }
      
      public function get §+;§() : Rectangle
      {
         return this.§ >§.clone();
      }
      
      public function set §+;§(param1:Rectangle) : void
      {
         this.§ >§ = param1.clone();
         this.§?Y§();
      }
      
      public function get §2p§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§8E§ == null)
         {
            this.§8E§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§8E§.contextMenu = _loc1_;
            this.§7l§();
         }
         return this.§8E§;
      }
      
      public function get stage() : §;t§.Stage
      {
         return this.§7>§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §!L§() : flash.display.Stage
      {
         return this.§[p§;
      }
      
      public function get §?]§() : Boolean
      {
         return !this.§<!9§;
      }
   }
}
