package §=!0§
{
   import §&o§.DisplayObject;
   import §&o§.Stage;
   import §0! §.Texture;
   import §[!+§.§2^§;
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
   import starling.events.§3g§;
   import starling.events.§>;§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`^§;
   
   public class §>I§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §%!5§:Rectangle;
      
      private static var §1A§:Boolean = true;
      
      private static var §+I§:Boolean;
      
      private static var § r§:§>I§;
      
      private static var §#T§:Boolean;
      
      private static var §2!L§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §]!M§:§&o§.Stage;
      
      private var § z§:Class;
      
      private var §#3§:§&o§.DisplayObject;
      
      private var §?S§:§2^§;
      
      private var §'J§:Boolean;
      
      private var §+P§:Boolean;
      
      private var §4!'§:§2N§;
      
      private var §8S§:§3g§;
      
      private var §&J§:int;
      
      private var §"U§:Boolean;
      
      private var §!k§:Boolean;
      
      private var §<I§:Number;
      
      private var §7!L§:Boolean;
      
      private var §,3§:flash.display.Stage;
      
      private var §;!J§:Sprite;
      
      private var §3!K§:Context3D;
      
      private var §;F§:Dictionary;
      
      private var §+c§:int;
      
      private var §5!>§:Boolean;
      
      private var §]!G§:Number;
      
      private var §85§:Number;
      
      private var §9,§:Number;
      
      private var §-2§:Number;
      
      private var §;+§:Number;
      
      private var §71§:Number;
      
      private var §84§:Function;
      
      private var §2!;§:uint;
      
      private var §#g§:String;
      
      private var §`!G§:Bitmap;
      
      private var §3p§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §'!M§:Boolean = false;
      
      public function §>I§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§]!G§ = param3.width;
         this.§85§ = param3.height;
         this.§9,§ = this.§]!G§;
         this.§-2§ = this.§85§;
         this.§;+§ = param2.stageWidth;
         this.§71§ = param2.stageHeight;
         §8$§ = true;
         this.§@!N§();
         this.§ z§ = param1;
         §%!5§ = param3;
         this.mStage3D = param4;
         this.§]!M§ = new §&o§.Stage(param3.width,param3.height,param2.color);
         this.§,3§ = param2;
         this.§8S§ = new §3g§(this.§]!M§);
         this.§?S§ = new §2^§();
         this.§&J§ = 0;
         this.§"U§ = false;
         this.§!k§ = false;
         this.§<I§ = getTimer() / 1000;
         this.§;F§ = new Dictionary();
         for each(_loc6_ in this.§^O§)
         {
            param2.addEventListener(_loc6_,this.§2h§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§@!C§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§<!3§,false,1,true);
         this.mStage3D.visible = false;
         this.§ !I§(true);
         this.§2!;§ = param2.color;
         this.§#g§ = param5;
      }
      
      public static function get §0P§() : Boolean
      {
         if(§`S§)
         {
            return §`S§.§5!>§;
         }
         return true;
      }
      
      public static function §]u§() : Boolean
      {
         return § r§ && (§ r§.§3p§ || § r§.§3!K§ != null && § r§.§3!K§.driverInfo != "Disposed");
      }
      
      private static function §=l§() : void
      {
         §+I§ = true;
      }
      
      public static function get §+2§() : Rectangle
      {
         return §%!5§.clone();
      }
      
      public static function set §+2§(param1:Rectangle) : void
      {
         §%!5§ = param1.clone();
         §=l§();
      }
      
      public static function set §6+§(param1:Boolean) : void
      {
         §1A§ = param1;
      }
      
      public static function get §6+§() : Boolean
      {
         return §1A§;
      }
      
      public static function get §`S§() : §>I§
      {
         return § r§;
      }
      
      public static function get §2!@§() : §2^§
      {
         return !!§ r§ ? § r§.§2!@§ : null;
      }
      
      public static function get §]!;§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §]!;§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §8$§() : Boolean
      {
         return §#T§;
      }
      
      public static function set §8$§(param1:Boolean) : void
      {
         if(§ r§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §#T§ = param1;
      }
      
      public static function § G§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§`S§)
         {
            return Texture.§+!>§(§`S§.§3!K§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§ r§.§3!K§)
         {
            § r§.§3!K§.drawToBitmapData(param1);
         }
         else if(§ r§.§4!'§.canvas)
         {
            _loc2_ = § r§.§4!'§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §0o§() : §&o§.DisplayObject
      {
         return this.§#3§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§2!;§ = param1;
      }
      
      public function get §5_§() : Number
      {
         return this.§]!G§;
      }
      
      public function get §]T§() : Number
      {
         return this.§85§;
      }
      
      public function §?l§() : void
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
               requestContext3D(this.§#g§,profile);
            }
            else
            {
               requestContext3D(this.§#g§);
            }
         }
         catch(e:Error)
         {
            §27§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§'!M§ = true;
         this.§,3§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§,3§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§@!C§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§<!3§,false);
         for each(_loc1_ in this.§^O§)
         {
            this.§,3§.removeEventListener(_loc1_,this.§2h§,false);
         }
         for each(_loc2_ in this.§;F§)
         {
            _loc2_.dispose();
         }
         if(this.§3!K§)
         {
            this.§3!K§.dispose();
         }
         if(this.§8S§)
         {
            this.§8S§.dispose();
         }
         if(this.§4!'§)
         {
            this.§4!'§.dispose();
         }
         if(§ r§ == this)
         {
            § r§ = null;
         }
         if(this.§`!G§ && this.§`!G§.bitmapData)
         {
            this.§`!G§.bitmapData.dispose();
            this.§`!G§.bitmapData = null;
         }
      }
      
      private function §!8§() : void
      {
         this.§3!K§ = this.mStage3D.context3D;
         this.§;F§ = new Dictionary();
         if(this.§3!K§)
         {
            this.§3!K§.enableErrorChecking = this.§!k§;
            if(this.§3!K§.driverInfo.indexOf("Software") >= 0)
            {
               this.§5!>§ = true;
            }
         }
         else
         {
            this.§5!>§ = true;
         }
         §=l§();
      }
      
      private function §>!C§() : void
      {
         if(this.§]!M§.numChildren > 0)
         {
            return;
         }
         if(this.§#3§ == null)
         {
            this.§#3§ = new this.§ z§();
         }
         if(this.§#3§ == null)
         {
            throw new Error("Invalid root class: " + this.§ z§);
         }
         this.§]!M§.addChild(this.§#3§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§3!K§.configureBackBuffer(§%!5§.width,§%!5§.height,this.§&J§,false);
            §+I§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§]u§())
         {
            return;
         }
         if(§+I§)
         {
            if(this.§3!K§)
            {
               this.mStage3D.x = §%!5§.x;
               this.mStage3D.y = §%!5§.y;
               this.configureBackBuffer();
               if(§+I§)
               {
                  return;
               }
               this.setCanvasSize(§%!5§.width,§%!5§.height);
            }
            else if(this.§`!G§)
            {
               §+I§ = false;
               this.setCanvasSize(§%!5§.width,§%!5§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§<I§;
         this.§<I§ = _loc1_;
         this.§]!M§.advanceTime(_loc2_);
         this.§?S§.advanceTime(_loc2_);
         this.§8S§.advanceTime(_loc2_);
         this.§4!'§.§"! §(this.§]!M§.stageWidth,this.§]!M§.stageHeight);
         this.§4!'§.clear(this.§3!K§,this.§2!;§,1);
         this.§4!'§.§7t§(this.§3!K§,this.§+c§);
         this.§]!M§.render(this.§4!'§,1);
         this.§4!'§.§6J§();
         if(this.§84§ != null)
         {
            this.§84§();
            this.§84§ = null;
         }
         this.§4!'§.finishRendering(this.§3!K§);
         this.§4!'§.§7!§();
      }
      
      public function set §?D§(param1:Function) : void
      {
         this.§84§ = param1;
      }
      
      private function §&h§() : void
      {
         var _loc3_:BitmapData = null;
         this.§;!J§.x = §%!5§.x;
         this.§;!J§.y = §%!5§.y;
         var _loc1_:int = this.§;!J§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§;!J§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§,3§.addChild(this.§;!J§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§,3§.removeChild(this.§;!J§);
         }
         if(this.§4!'§ && this.§4!'§.canvas)
         {
            this.§4!'§.setCanvasSize(this.§9,§,this.§-2§,§%!5§.width / this.§]!M§.stageWidth,§%!5§.height / this.§]!M§.stageHeight);
            _loc3_ = this.§4!'§.canvas;
            if(this.§`!G§.bitmapData != _loc3_)
            {
               this.§`!G§.bitmapData = _loc3_;
            }
            if(this.§,3§.getChildIndex(this.§;!J§) > 0)
            {
               this.§,3§.removeChild(this.§;!J§);
               this.§,3§.addChildAt(this.§;!J§,0);
            }
         }
      }
      
      private function §27§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§]!M§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§]!M§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§]!M§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§0?§.addChild(_loc2_);
      }
      
      public function §@!N§() : void
      {
         § r§ = this;
      }
      
      public function start() : void
      {
         this.§'J§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§'J§ = false;
         this.mStage3D.visible = false;
      }
      
      public function § !I§(param1:Boolean) : void
      {
         this.§+P§ = param1;
      }
      
      private function §97§() : void
      {
         this.§3p§ = true;
         if(this.§`!G§ == null)
         {
            this.§`!G§ = new Bitmap();
            this.§0?§.addChild(this.§`!G§);
         }
      }
      
      private function §<!3§(param1:ErrorEvent) : void
      {
         this.§97§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §@!C§(param1:flash.events.Event) : void
      {
         if(this.§'!M§)
         {
            return;
         }
         ++§2!L§;
         this.§+c§ = §2!L§;
         if(this.§4!'§)
         {
            this.§4!'§.dispose();
         }
         if(!§>I§.§8$§ && this.§3!K§)
         {
            this.§27§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§@!N§();
         this.§!8§();
         this.§>!C§();
         if(this.§3!K§ && this.§5!>§)
         {
            this.mStage3DEnabled = false;
            this.§3!K§ = null;
            this.§97§();
         }
         if(this.§3!K§)
         {
            this.§4!'§ = new §2N§();
         }
         else
         {
            this.§4!'§ = new §]8§();
            this.§4!'§.setCanvasSize(this.§9,§,this.§-2§,§%!5§.width / this.§]!M§.stageWidth,§%!5§.height / this.§]!M§.stageHeight);
            this.§4!'§.clear(null,this.§2!;§);
         }
         this.§8S§.§?I§ = this.§"U§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§@!N§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§<I§;
         if(this.§'J§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§;!J§)
         {
            this.§&h§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§@!N§();
         this.§]!M§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§]!G§;
         var _loc4_:Number = param2 / this.§85§;
         if(!§6+§)
         {
            this.§]!M§.stageWidth = this.§]!G§ * _loc3_ / _loc4_;
            this.§]!M§.stageHeight = this.§85§;
         }
         else
         {
            this.§]!M§.stageWidth = this.§]!G§;
            this.§]!M§.stageHeight = this.§85§ * _loc4_ / _loc3_;
         }
         this.§9,§ = param1;
         this.§-2§ = param2;
         this.§]!M§.dispatchEvent(new §`^§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §<C§() : void
      {
         this.setCanvasSize(this.§]!G§,this.§85§);
      }
      
      private function §2h§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§'J§ || !this.§+P§)
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
               this.§7!L§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§7!L§ = false;
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
               _loc5_ = §>;§.§7!=§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §>;§.§"%§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §>;§.§1!@§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §>;§.§7!=§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §>;§.§1!@§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§7!L§ ? §>;§.§"%§ : §>;§.§+S§;
         }
         if((_loc2_ < §%!5§.left || _loc2_ >= §%!5§.right || _loc3_ < §%!5§.top || _loc3_ >= §%!5§.bottom) && _loc5_ == §>;§.§7!=§)
         {
            return;
         }
         _loc2_ -= §%!5§.x;
         _loc3_ -= §%!5§.y;
         this.§8S§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §^O§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §8!5§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§;F§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§3!K§ != null)
         {
            (_loc4_ = this.§3!K§.createProgram()).upload(param2,param3);
            this.§;F§[param1] = _loc4_;
         }
      }
      
      public function §;h§(param1:String) : void
      {
         var _loc2_:Program3D = this.§&!L§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§;F§[param1];
         }
      }
      
      public function §&!L§(param1:String) : Program3D
      {
         return this.§;F§[param1] as Program3D;
      }
      
      public function §=!8§(param1:String) : Boolean
      {
         return param1 in this.§;F§;
      }
      
      public function get §2b§() : Boolean
      {
         return this.§'J§;
      }
      
      public function get §2!@§() : §2^§
      {
         return this.§?S§;
      }
      
      public function get §?I§() : Boolean
      {
         return this.§"U§;
      }
      
      public function set §?I§(param1:Boolean) : void
      {
         this.§"U§ = param1;
         if(this.§3!K§)
         {
            this.§8S§.§?I§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§!k§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§!k§ = param1;
         if(this.§3!K§)
         {
            this.§3!K§.enableErrorChecking = param1;
         }
      }
      
      public function get §"?§() : int
      {
         return this.§&J§;
      }
      
      public function set §"?§(param1:int) : void
      {
         this.§&J§ = param1;
         §=l§();
      }
      
      public function get §0?§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§;!J§ == null)
         {
            this.§;!J§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§;!J§.contextMenu = _loc1_;
            this.§&h§();
         }
         return this.§;!J§;
      }
      
      public function get stage() : §&o§.Stage
      {
         return this.§]!M§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §2F§() : flash.display.Stage
      {
         return this.§,3§;
      }
      
      public function get §09§() : Boolean
      {
         return !this.§3p§;
      }
   }
}
