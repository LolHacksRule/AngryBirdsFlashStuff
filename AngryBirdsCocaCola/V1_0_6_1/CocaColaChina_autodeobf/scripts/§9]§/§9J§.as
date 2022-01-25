package §9]§
{
   import §8!R§.§>[§;
   import §<!$§.DisplayObject;
   import §<!$§.Stage;
   import §@'§.Texture;
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
   import starling.events.§&!L§;
   import starling.events.§3`§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`!Z§;
   
   public class §9J§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §!!V§:§9J§;
      
      private static var §=!O§:Boolean;
      
      private static var §'!Y§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §[V§:§<!$§.Stage;
      
      private var §`!,§:Class;
      
      private var §;1§:§<!$§.DisplayObject;
      
      private var §,@§:§>[§;
      
      private var §4`§:Boolean;
      
      private var §,`§:Boolean;
      
      private var §3!7§:§0`§;
      
      private var §=!C§:§`!Z§;
      
      private var §!!!§:int;
      
      private var §,y§:Boolean;
      
      private var §?x§:Boolean;
      
      private var §0!7§:Number;
      
      private var §-t§:Rectangle;
      
      private var §%Z§:Boolean;
      
      private var §4I§:flash.display.Stage;
      
      private var §[8§:Sprite;
      
      private var §^2§:Context3D;
      
      private var §%!9§:Dictionary;
      
      private var §5!Y§:int;
      
      private var §'!T§:Boolean;
      
      private var §7!Z§:Number;
      
      private var §]1§:Number;
      
      private var §39§:Number;
      
      private var §<;§:Number;
      
      private var §0e§:Number;
      
      private var §0!`§:Number;
      
      private var §?n§:Function;
      
      private var §?!,§:uint;
      
      private var §<!8§:String;
      
      private var §^_§:Bitmap;
      
      private var §&!J§:Boolean = false;
      
      private var §2B§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §?!G§:Boolean = false;
      
      public function §9J§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§7!Z§ = param3.width;
         this.§]1§ = param3.height;
         this.§39§ = this.§7!Z§;
         this.§<;§ = this.§]1§;
         this.§0e§ = param2.stageWidth;
         this.§0!`§ = param2.stageHeight;
         §=!7§ = true;
         this.§2!W§();
         this.§`!,§ = param1;
         this.§-t§ = param3;
         this.mStage3D = param4;
         this.§[V§ = new §<!$§.Stage(param3.width,param3.height,param2.color);
         this.§4I§ = param2;
         this.§=!C§ = new §`!Z§(this.§[V§);
         this.§,@§ = new §>[§();
         this.§!!!§ = 0;
         this.§,y§ = false;
         this.§?x§ = false;
         this.§0!7§ = getTimer() / 1000;
         this.§%!9§ = new Dictionary();
         for each(_loc6_ in this.§+y§)
         {
            param2.addEventListener(_loc6_,this.§1!Q§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§`!-§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§`!-§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!G§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§<^§,false,1,true);
         this.mStage3D.visible = false;
         this.§-p§(true);
         this.§?!,§ = param2.color;
         this.§<!8§ = param5;
      }
      
      public static function get §=n§() : Boolean
      {
         if(§?X§)
         {
            return §?X§.§'!T§;
         }
         return true;
      }
      
      public static function §[!7§() : Boolean
      {
         return §!!V§ && (§!!V§.§&!J§ || §!!V§.§^2§ != null && §!!V§.§^2§.driverInfo != "Disposed");
      }
      
      public static function get §?X§() : §9J§
      {
         return §!!V§;
      }
      
      public static function get §!L§() : §>[§
      {
         return !!§!!V§ ? §!!V§.§!L§ : null;
      }
      
      public static function get §7Q§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §7Q§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §=!7§() : Boolean
      {
         return §=!O§;
      }
      
      public static function set §=!7§(param1:Boolean) : void
      {
         if(§!!V§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §=!O§ = param1;
      }
      
      public static function §"'§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§?X§)
         {
            return Texture.§<!=§(§?X§.§^2§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§!!V§.§^2§)
         {
            §!!V§.§^2§.drawToBitmapData(param1);
         }
         else if(§!!V§.§3!7§.canvas)
         {
            _loc2_ = §!!V§.§3!7§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §!E§() : §<!$§.DisplayObject
      {
         return this.§;1§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§?!,§ = param1;
      }
      
      public function get §`!^§() : Number
      {
         return this.§7!Z§;
      }
      
      public function get §&!K§() : Number
      {
         return this.§]1§;
      }
      
      public function §?`§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§<!8§);
         }
         catch(e:Error)
         {
            §0#§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§?!G§ = true;
         this.§4I§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§`!-§,false);
         this.§4I§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§`!-§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!G§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§<^§,false);
         for each(_loc1_ in this.§+y§)
         {
            this.§4I§.removeEventListener(_loc1_,this.§1!Q§,false);
         }
         for each(_loc2_ in this.§%!9§)
         {
            _loc2_.dispose();
         }
         if(this.§^2§)
         {
            this.§^2§.dispose();
         }
         if(this.§=!C§)
         {
            this.§=!C§.dispose();
         }
         if(this.§3!7§)
         {
            this.§3!7§.dispose();
         }
         if(§!!V§ == this)
         {
            §!!V§ = null;
         }
         if(this.§^_§ && this.§^_§.bitmapData)
         {
            this.§^_§.bitmapData.dispose();
            this.§^_§.bitmapData = null;
         }
      }
      
      private function §0!G§() : void
      {
         this.§^2§ = this.mStage3D.context3D;
         this.§%!9§ = new Dictionary();
         if(this.§^2§)
         {
            this.§^2§.enableErrorChecking = this.§?x§;
            if(this.§^2§.driverInfo.indexOf("Software") >= 0)
            {
               this.§'!T§ = true;
            }
         }
         else
         {
            this.§'!T§ = true;
         }
         this.§>E§();
      }
      
      private function §,!F§() : void
      {
         if(this.§[V§.numChildren > 0)
         {
            return;
         }
         if(this.§;1§ == null)
         {
            this.§;1§ = new this.§`!,§();
         }
         if(this.§;1§ == null)
         {
            throw new Error("Invalid root class: " + this.§`!,§);
         }
         this.§[V§.addChild(this.§;1§);
      }
      
      private function §>E§() : void
      {
         this.§2B§ = true;
         this.mStage3D.x = this.§-t§.x;
         this.mStage3D.y = this.§-t§.y;
      }
      
      private function render() : void
      {
         if(!§[!7§())
         {
            return;
         }
         if(this.§2B§)
         {
            if(this.§^2§)
            {
               this.§^2§.configureBackBuffer(this.§-t§.width,this.§-t§.height,this.§!!!§,false);
            }
            this.§2B§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§0!7§;
         this.§0!7§ = _loc1_;
         this.§[V§.advanceTime(_loc2_);
         this.§,@§.advanceTime(_loc2_);
         this.§=!C§.advanceTime(_loc2_);
         this.§3!7§.§!!2§(this.§[V§.stageWidth,this.§[V§.stageHeight);
         this.§3!7§.clear(this.§^2§,this.§?!,§,1);
         this.§3!7§.§4_§(this.§^2§,this.§5!Y§);
         this.§[V§.render(this.§3!7§,1);
         this.§3!7§.§"!6§();
         if(this.§?n§ != null)
         {
            this.§?n§();
            this.§?n§ = null;
         }
         this.§3!7§.finishRendering(this.§^2§);
         this.§3!7§.§%X§();
      }
      
      public function set §3d§(param1:Function) : void
      {
         this.§?n§ = param1;
      }
      
      private function §8b§() : void
      {
         var _loc3_:BitmapData = null;
         this.§[8§.x = this.§-t§.x;
         this.§[8§.y = this.§-t§.y;
         var _loc1_:int = this.§[8§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§[8§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§4I§.addChild(this.§[8§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§4I§.removeChild(this.§[8§);
         }
         if(this.§3!7§ && this.§3!7§.canvas)
         {
            this.§3!7§.setCanvasSize(this.§39§,this.§<;§,this.§-t§.width / this.§[V§.stageWidth,this.§-t§.height / this.§[V§.stageHeight);
            _loc3_ = this.§3!7§.canvas;
            if(this.§^_§.bitmapData != _loc3_)
            {
               this.§^_§.bitmapData = _loc3_;
            }
            if(this.§4I§.getChildIndex(this.§[8§) > 0)
            {
               this.§4I§.removeChild(this.§[8§);
               this.§4I§.addChildAt(this.§[8§,0);
            }
         }
      }
      
      private function §0#§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§[V§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§[V§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§[V§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§7!c§.addChild(_loc2_);
      }
      
      public function §2!W§() : void
      {
         §!!V§ = this;
      }
      
      public function start() : void
      {
         this.§4`§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§4`§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §-p§(param1:Boolean) : void
      {
         this.§,`§ = param1;
      }
      
      private function §while§() : void
      {
         this.§&!J§ = true;
         if(this.§^_§ == null)
         {
            this.§^_§ = new Bitmap();
            this.§7!c§.addChild(this.§^_§);
         }
      }
      
      private function §<^§(param1:ErrorEvent) : void
      {
         this.§while§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §!G§(param1:flash.events.Event) : void
      {
         if(this.§?!G§)
         {
            return;
         }
         ++§'!Y§;
         this.§5!Y§ = §'!Y§;
         if(this.§3!7§)
         {
            this.§3!7§.dispose();
         }
         if(!§9J§.§=!7§ && this.§^2§)
         {
            this.§0#§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§2!W§();
         this.§0!G§();
         this.§,!F§();
         if(this.§^2§ && this.§'!T§)
         {
            this.mStage3DEnabled = false;
            this.§^2§ = null;
            this.§while§();
         }
         if(this.§^2§)
         {
            this.§3!7§ = new §0`§();
         }
         else
         {
            this.§3!7§ = new §+i§();
            this.§3!7§.setCanvasSize(this.§39§,this.§<;§,this.§-t§.width / this.§[V§.stageWidth,this.§-t§.height / this.§[V§.stageHeight);
            this.§3!7§.clear(null,this.§?!,§);
         }
         this.§=!C§.simulateMultitouch = this.§,y§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §6!2§(param1:flash.events.Event) : void
      {
         this.§2!W§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§0!7§;
         if(this.§4`§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§[8§)
         {
            this.§8b§();
         }
      }
      
      private function §`!-§(param1:flash.events.KeyboardEvent) : void
      {
         this.§2!W§();
         this.§[V§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§7!Z§;
         var _loc5_:Number = param2 / this.§]1§;
         if(!param3)
         {
            this.§[V§.stageWidth = this.§7!Z§ * _loc4_ / _loc5_;
            this.§[V§.stageHeight = this.§]1§;
         }
         else
         {
            this.§[V§.stageWidth = this.§7!Z§;
            this.§[V§.stageHeight = this.§]1§ * _loc5_ / _loc4_;
         }
         this.§39§ = param1;
         this.§<;§ = param2;
         this.§[V§.dispatchEvent(new §3`§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §4M§() : void
      {
         this.setCanvasSize(this.§7!Z§,this.§]1§);
      }
      
      private function §1!Q§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§4`§ || !this.§,`§)
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
               this.§%Z§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§%Z§ = false;
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
               _loc5_ = §&!L§.§";§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §&!L§.§2S§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §&!L§.§"Z§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §&!L§.§";§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §&!L§.§"Z§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§%Z§ ? §&!L§.§2S§ : §&!L§.§;!@§;
         }
         if((_loc2_ < this.§-t§.left || _loc2_ >= this.§-t§.right || _loc3_ < this.§-t§.top || _loc3_ >= this.§-t§.bottom) && _loc5_ == §&!L§.§";§)
         {
            return;
         }
         _loc2_ -= this.§-t§.x;
         _loc3_ -= this.§-t§.y;
         this.§=!C§.§;<§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §+y§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function § !I§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§%!9§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§^2§ != null)
         {
            (_loc4_ = this.§^2§.createProgram()).upload(param2,param3);
            this.§%!9§[param1] = _loc4_;
         }
      }
      
      public function §!!d§(param1:String) : void
      {
         var _loc2_:Program3D = this.§?!B§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§%!9§[param1];
         }
      }
      
      public function §?!B§(param1:String) : Program3D
      {
         return this.§%!9§[param1] as Program3D;
      }
      
      public function §8!V§(param1:String) : Boolean
      {
         return param1 in this.§%!9§;
      }
      
      public function get §@4§() : Boolean
      {
         return this.§4`§;
      }
      
      public function get §!L§() : §>[§
      {
         return this.§,@§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§,y§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§,y§ = param1;
         if(this.§^2§)
         {
            this.§=!C§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§?x§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§?x§ = param1;
         if(this.§^2§)
         {
            this.§^2§.enableErrorChecking = param1;
         }
      }
      
      public function get §"?§() : int
      {
         return this.§!!!§;
      }
      
      public function set §"?§(param1:int) : void
      {
         this.§!!!§ = param1;
         this.§>E§();
      }
      
      public function get §+T§() : Rectangle
      {
         return this.§-t§.clone();
      }
      
      public function set §+T§(param1:Rectangle) : void
      {
         this.§-t§ = param1.clone();
         this.§>E§();
      }
      
      public function get §7!c§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§[8§ == null)
         {
            this.§[8§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§[8§.contextMenu = _loc1_;
            this.§8b§();
         }
         return this.§[8§;
      }
      
      public function get stage() : §<!$§.Stage
      {
         return this.§[V§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §9!&§() : flash.display.Stage
      {
         return this.§4I§;
      }
      
      public function get §-a§() : Boolean
      {
         return !this.§&!J§;
      }
   }
}
