package §5Q§
{
   import §7!8§.DisplayObject;
   import §7!8§.Stage;
   import §>!7§.§0![§;
   import §`!#§.Texture;
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
   import starling.events.§#<§;
   import starling.events.§0!]§;
   import starling.events.§@M§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §^!e§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §4!D§:Rectangle;
      
      private static var §!A§:Boolean = true;
      
      private static var §6>§:Boolean;
      
      private static var §#]§:§^!e§;
      
      private static var §<p§:Boolean;
      
      private static var §5!4§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §#[§:§7!8§.Stage;
      
      private var §=!o§:Class;
      
      private var §'!o§:§7!8§.DisplayObject;
      
      private var §8M§:§0![§;
      
      private var §8[§:Boolean;
      
      private var §9! §:Boolean;
      
      private var §-k§:§%!t§;
      
      private var §-!S§:§#<§;
      
      private var §^i§:int;
      
      private var §=A§:Boolean;
      
      private var §3!#§:Boolean;
      
      private var §%"E§:Number;
      
      private var §5"D§:Boolean;
      
      private var §8!G§:flash.display.Stage;
      
      private var §6X§:Sprite;
      
      private var §1X§:Context3D;
      
      private var §[!i§:Dictionary;
      
      private var §1z§:int;
      
      private var §do §:Boolean;
      
      private var §"!<§:Number;
      
      private var §58§:Number;
      
      private var §2"0§:Number;
      
      private var §37§:Number;
      
      private var §6h§:Number;
      
      private var §6"A§:Number;
      
      private var § !5§:Function;
      
      private var §4"%§:uint;
      
      private var §>]§:String;
      
      private var §0"4§:Bitmap;
      
      private var §0g§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §"!N§:Boolean = false;
      
      public function §^!e§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§"!<§ = param3.width;
         this.§58§ = param3.height;
         this.§2"0§ = this.§"!<§;
         this.§37§ = this.§58§;
         this.§6h§ = param2.stageWidth;
         this.§6"A§ = param2.stageHeight;
         §<S§ = true;
         this.§"!h§();
         this.§=!o§ = param1;
         §4!D§ = param3;
         this.mStage3D = param4;
         this.§#[§ = new §7!8§.Stage(param3.width,param3.height,param2.color);
         this.§8!G§ = param2;
         this.§-!S§ = new §#<§(this.§#[§);
         this.§8M§ = new §0![§();
         this.§^i§ = 0;
         this.§=A§ = false;
         this.§3!#§ = false;
         this.§%"E§ = getTimer() / 1000;
         this.§[!i§ = new Dictionary();
         for each(_loc6_ in this.§%!7§)
         {
            param2.addEventListener(_loc6_,this.§&"9§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=k§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=k§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§2"'§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§4!5§,false,1,true);
         this.mStage3D.visible = false;
         this.§=!g§(true);
         this.§4"%§ = param2.color;
         this.§>]§ = param5;
      }
      
      public static function get §use§() : Boolean
      {
         if(§`?§)
         {
            return §`?§.§do §;
         }
         return true;
      }
      
      public static function §>c§() : Boolean
      {
         return §#]§ && (§#]§.§0g§ || §#]§.§1X§ != null && §#]§.§1X§.driverInfo != "Disposed");
      }
      
      private static function §8u§() : void
      {
         §6>§ = true;
      }
      
      public static function get §;b§() : Rectangle
      {
         return §4!D§.clone();
      }
      
      public static function set §;b§(param1:Rectangle) : void
      {
         §4!D§ = param1.clone();
         §8u§();
      }
      
      public static function set §4""§(param1:Boolean) : void
      {
         §!A§ = param1;
      }
      
      public static function get §4""§() : Boolean
      {
         return §!A§;
      }
      
      public static function get §`?§() : §^!e§
      {
         return §#]§;
      }
      
      public static function get §1!P§() : §0![§
      {
         return !!§#]§ ? §#]§.§1!P§ : null;
      }
      
      public static function get §1!o§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §1!o§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §<S§() : Boolean
      {
         return §<p§;
      }
      
      public static function set §<S§(param1:Boolean) : void
      {
         if(§#]§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §<p§ = param1;
      }
      
      public static function §<'§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§`?§)
         {
            return Texture.§"A§(§`?§.§1X§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§#]§.§1X§)
         {
            §#]§.§1X§.drawToBitmapData(param1);
         }
         else if(§#]§.§-k§.canvas)
         {
            _loc2_ = §#]§.§-k§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §?"=§() : §7!8§.DisplayObject
      {
         return this.§'!o§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§4"%§ = param1;
      }
      
      public function get §8!0§() : Number
      {
         return this.§"!<§;
      }
      
      public function get §7^§() : Number
      {
         return this.§58§;
      }
      
      public function §6!m§() : void
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
               requestContext3D(this.§>]§,profile);
            }
            else
            {
               requestContext3D(this.§>]§);
            }
         }
         catch(e:Error)
         {
            §4"5§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§"!N§ = true;
         this.§8!G§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=k§,false);
         this.§8!G§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=k§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§2"'§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§4!5§,false);
         for each(_loc1_ in this.§%!7§)
         {
            this.§8!G§.removeEventListener(_loc1_,this.§&"9§,false);
         }
         for each(_loc2_ in this.§[!i§)
         {
            _loc2_.dispose();
         }
         if(this.§1X§)
         {
            this.§1X§.dispose();
         }
         if(this.§-!S§)
         {
            this.§-!S§.dispose();
         }
         if(this.§-k§)
         {
            this.§-k§.dispose();
         }
         if(§#]§ == this)
         {
            §#]§ = null;
         }
         if(this.§0"4§ && this.§0"4§.bitmapData)
         {
            this.§0"4§.bitmapData.dispose();
            this.§0"4§.bitmapData = null;
         }
      }
      
      private function §4U§() : void
      {
         this.§1X§ = this.mStage3D.context3D;
         this.§[!i§ = new Dictionary();
         if(this.§1X§)
         {
            this.§1X§.enableErrorChecking = this.§3!#§;
            if(this.§1X§.driverInfo.indexOf("Software") >= 0)
            {
               this.§do § = true;
            }
         }
         else
         {
            this.§do § = true;
         }
         §8u§();
      }
      
      private function §`"3§() : void
      {
         if(this.§#[§.numChildren > 0)
         {
            return;
         }
         if(this.§'!o§ == null)
         {
            this.§'!o§ = new this.§=!o§();
         }
         if(this.§'!o§ == null)
         {
            throw new Error("Invalid root class: " + this.§=!o§);
         }
         this.§#[§.addChild(this.§'!o§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§1X§.configureBackBuffer(§4!D§.width,§4!D§.height,this.§^i§,false);
            §6>§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§>c§())
         {
            return;
         }
         if(§6>§)
         {
            if(this.§1X§)
            {
               this.mStage3D.x = §4!D§.x;
               this.mStage3D.y = §4!D§.y;
               this.configureBackBuffer();
               if(§6>§)
               {
                  return;
               }
               this.setCanvasSize(§4!D§.width,§4!D§.height);
            }
            else if(this.§0"4§)
            {
               §6>§ = false;
               this.setCanvasSize(§4!D§.width,§4!D§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§%"E§;
         this.§%"E§ = _loc1_;
         this.§#[§.advanceTime(_loc2_);
         this.§8M§.advanceTime(_loc2_);
         this.§-!S§.advanceTime(_loc2_);
         this.§-k§.§%>§(this.§#[§.stageWidth,this.§#[§.stageHeight);
         this.§-k§.clear(this.§1X§,this.§4"%§,1);
         this.§-k§.§4!,§(this.§1X§,this.§1z§);
         this.§#[§.render(this.§-k§,1);
         this.§-k§.§2!Y§();
         if(this.§ !5§ != null)
         {
            this.§ !5§();
            this.§ !5§ = null;
         }
         this.§-k§.finishRendering(this.§1X§);
         this.§-k§.nextFrame();
      }
      
      public function set §,!h§(param1:Function) : void
      {
         this.§ !5§ = param1;
      }
      
      private function §=!B§() : void
      {
         var _loc3_:BitmapData = null;
         this.§6X§.x = §4!D§.x;
         this.§6X§.y = §4!D§.y;
         var _loc1_:int = this.§6X§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§6X§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§8!G§.addChild(this.§6X§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§8!G§.removeChild(this.§6X§);
         }
         if(this.§-k§ && this.§-k§.canvas)
         {
            this.§-k§.setCanvasSize(this.§2"0§,this.§37§,§4!D§.width / this.§#[§.stageWidth,§4!D§.height / this.§#[§.stageHeight);
            _loc3_ = this.§-k§.canvas;
            if(this.§0"4§.bitmapData != _loc3_)
            {
               this.§0"4§.bitmapData = _loc3_;
            }
            if(this.§8!G§.getChildIndex(this.§6X§) > 0)
            {
               this.§8!G§.removeChild(this.§6X§);
               this.§8!G§.addChildAt(this.§6X§,0);
            }
         }
      }
      
      private function §4"5§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§#[§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§#[§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§#[§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§[""§.addChild(_loc2_);
      }
      
      public function §"!h§() : void
      {
         §#]§ = this;
      }
      
      public function start() : void
      {
         this.§8[§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§8[§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §=!g§(param1:Boolean) : void
      {
         this.§9! § = param1;
      }
      
      private function §"0§() : void
      {
         this.§0g§ = true;
         if(this.§0"4§ == null)
         {
            this.§0"4§ = new Bitmap();
            this.§[""§.addChild(this.§0"4§);
         }
      }
      
      private function §4!5§(param1:ErrorEvent) : void
      {
         this.§"0§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §2"'§(param1:flash.events.Event) : void
      {
         if(this.§"!N§)
         {
            return;
         }
         ++§5!4§;
         this.§1z§ = §5!4§;
         if(this.§-k§)
         {
            this.§-k§.dispose();
         }
         if(!§^!e§.§<S§ && this.§1X§)
         {
            this.§4"5§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§"!h§();
         this.§4U§();
         this.§`"3§();
         if(this.§1X§ && this.§do §)
         {
            this.mStage3DEnabled = false;
            this.§1X§ = null;
            this.§"0§();
         }
         if(this.§1X§)
         {
            this.§-k§ = new §%!t§();
         }
         else
         {
            this.§-k§ = new §6!A§();
            this.§-k§.setCanvasSize(this.§2"0§,this.§37§,§4!D§.width / this.§#[§.stageWidth,§4!D§.height / this.§#[§.stageHeight);
            this.§-k§.clear(null,this.§4"%§);
         }
         this.§-!S§.§-&§ = this.§=A§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§"!h§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§%"E§;
         if(this.§8[§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§6X§)
         {
            this.§=!B§();
         }
      }
      
      private function §=k§(param1:flash.events.KeyboardEvent) : void
      {
         this.§"!h§();
         this.§#[§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§"!<§;
         var _loc4_:Number = param2 / this.§58§;
         if(!§4""§)
         {
            this.§#[§.stageWidth = this.§"!<§ * _loc3_ / _loc4_;
            this.§#[§.stageHeight = this.§58§;
         }
         else
         {
            this.§#[§.stageWidth = this.§"!<§;
            this.§#[§.stageHeight = this.§58§ * _loc4_ / _loc3_;
         }
         this.§2"0§ = param1;
         this.§37§ = param2;
         this.§#[§.dispatchEvent(new §0!]§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §5'§() : void
      {
         this.setCanvasSize(this.§"!<§,this.§58§);
      }
      
      private function §&"9§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§8[§ || !this.§9! §)
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
               this.§5"D§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§5"D§ = false;
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
               _loc5_ = §@M§.§>!A§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §@M§.§[!c§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §@M§.§2_§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §@M§.§>!A§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §@M§.§2_§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§5"D§ ? §@M§.§[!c§ : §@M§.§2"@§;
         }
         if((_loc2_ < §4!D§.left || _loc2_ >= §4!D§.right || _loc3_ < §4!D§.top || _loc3_ >= §4!D§.bottom) && _loc5_ == §@M§.§>!A§)
         {
            return;
         }
         _loc2_ -= §4!D§.x;
         _loc3_ -= §4!D§.y;
         this.§-!S§.§5!J§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §%!7§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §<6§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§[!i§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§1X§ != null)
         {
            (_loc4_ = this.§1X§.createProgram()).upload(param2,param3);
            this.§[!i§[param1] = _loc4_;
         }
      }
      
      public function §+!]§(param1:String) : void
      {
         var _loc2_:Program3D = this.§ §(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§[!i§[param1];
         }
      }
      
      public function § §(param1:String) : Program3D
      {
         return this.§[!i§[param1] as Program3D;
      }
      
      public function §9!@§(param1:String) : Boolean
      {
         return param1 in this.§[!i§;
      }
      
      public function get §0!d§() : Boolean
      {
         return this.§8[§;
      }
      
      public function get §1!P§() : §0![§
      {
         return this.§8M§;
      }
      
      public function get §-&§() : Boolean
      {
         return this.§=A§;
      }
      
      public function set §-&§(param1:Boolean) : void
      {
         this.§=A§ = param1;
         if(this.§1X§)
         {
            this.§-!S§.§-&§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§3!#§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§3!#§ = param1;
         if(this.§1X§)
         {
            this.§1X§.enableErrorChecking = param1;
         }
      }
      
      public function get §+E§() : int
      {
         return this.§^i§;
      }
      
      public function set §+E§(param1:int) : void
      {
         this.§^i§ = param1;
         §8u§();
      }
      
      public function get §[""§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§6X§ == null)
         {
            this.§6X§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§6X§.contextMenu = _loc1_;
            this.§=!B§();
         }
         return this.§6X§;
      }
      
      public function get stage() : §7!8§.Stage
      {
         return this.§#[§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §'C§() : flash.display.Stage
      {
         return this.§8!G§;
      }
      
      public function get §;!I§() : Boolean
      {
         return !this.§0g§;
      }
   }
}
