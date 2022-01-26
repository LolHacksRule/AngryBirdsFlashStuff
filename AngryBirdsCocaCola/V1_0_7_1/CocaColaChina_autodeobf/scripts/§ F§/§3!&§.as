package § F§
{
   import §+!S§.Texture;
   import §,!Q§.DisplayObject;
   import §,!Q§.Stage;
   import §<_§.§1>§;
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
   import starling.events.§!!S§;
   import starling.events.§6=§;
   import starling.events.§=!=§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §3!&§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §%!H§:§3!&§;
      
      private static var §!C§:Boolean;
      
      private static var §=!;§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §@c§:§,!Q§.Stage;
      
      private var §4!Z§:Class;
      
      private var §"7§:§,!Q§.DisplayObject;
      
      private var §+!+§:§1>§;
      
      private var §>i§:Boolean;
      
      private var §6l§:Boolean;
      
      private var §79§:§,!>§;
      
      private var §"!P§:§=!=§;
      
      private var §'!`§:int;
      
      private var §7!<§:Boolean;
      
      private var §<!@§:Boolean;
      
      private var §-=§:Number;
      
      private var §+U§:Rectangle;
      
      private var §"!Z§:Boolean;
      
      private var §8_§:flash.display.Stage;
      
      private var §]k§:Sprite;
      
      private var §3!;§:Context3D;
      
      private var §7!`§:Dictionary;
      
      private var §6r§:int;
      
      private var §-3§:Boolean;
      
      private var §7!J§:Number;
      
      private var §@!'§:Number;
      
      private var §%Q§:Number;
      
      private var §+`§:Number;
      
      private var §7!]§:Number;
      
      private var §]!c§:Number;
      
      private var §-x§:Function;
      
      private var § var§:uint;
      
      private var §>!#§:String;
      
      private var §@K§:Bitmap;
      
      private var §1k§:Boolean = false;
      
      private var §!!'§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §!J§:Boolean = false;
      
      public function §3!&§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§7!J§ = param3.width;
         this.§@!'§ = param3.height;
         this.§%Q§ = this.§7!J§;
         this.§+`§ = this.§@!'§;
         this.§7!]§ = param2.stageWidth;
         this.§]!c§ = param2.stageHeight;
         §5C§ = true;
         this.§=r§();
         this.§4!Z§ = param1;
         this.§+U§ = param3;
         this.mStage3D = param4;
         this.§@c§ = new §,!Q§.Stage(param3.width,param3.height,param2.color);
         this.§8_§ = param2;
         this.§"!P§ = new §=!=§(this.§@c§);
         this.§+!+§ = new §1>§();
         this.§'!`§ = 0;
         this.§7!<§ = false;
         this.§<!@§ = false;
         this.§-=§ = getTimer() / 1000;
         this.§7!`§ = new Dictionary();
         for each(_loc6_ in this.§>"§)
         {
            param2.addEventListener(_loc6_,this.§<!K§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§"!J§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§"!J§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!6§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§,!E§,false,1,true);
         this.mStage3D.visible = false;
         this.§>@§(true);
         this.§ var§ = param2.color;
         this.§>!#§ = param5;
      }
      
      public static function get §@$§() : Boolean
      {
         if(§<1§)
         {
            return §<1§.§-3§;
         }
         return true;
      }
      
      public static function §'w§() : Boolean
      {
         return §%!H§ && (§%!H§.§1k§ || §%!H§.§3!;§ != null && §%!H§.§3!;§.driverInfo != "Disposed");
      }
      
      public static function get §<1§() : §3!&§
      {
         return §%!H§;
      }
      
      public static function get §#6§() : §1>§
      {
         return !!§%!H§ ? §%!H§.§#6§ : null;
      }
      
      public static function get §^_§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §^_§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §5C§() : Boolean
      {
         return §!C§;
      }
      
      public static function set §5C§(param1:Boolean) : void
      {
         if(§%!H§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §!C§ = param1;
      }
      
      public static function §;J§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§<1§)
         {
            return Texture.§8W§(§<1§.§3!;§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§%!H§.§3!;§)
         {
            §%!H§.§3!;§.drawToBitmapData(param1);
         }
         else if(§%!H§.§79§.canvas)
         {
            _loc2_ = §%!H§.§79§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §#F§() : §,!Q§.DisplayObject
      {
         return this.§"7§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§ var§ = param1;
      }
      
      public function get § true§() : Number
      {
         return this.§7!J§;
      }
      
      public function get § !b§() : Number
      {
         return this.§@!'§;
      }
      
      public function §<P§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§>!#§);
         }
         catch(e:Error)
         {
            §62§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§!J§ = true;
         this.§8_§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§"!J§,false);
         this.§8_§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§"!J§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§!6§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§,!E§,false);
         for each(_loc1_ in this.§>"§)
         {
            this.§8_§.removeEventListener(_loc1_,this.§<!K§,false);
         }
         for each(_loc2_ in this.§7!`§)
         {
            _loc2_.dispose();
         }
         if(this.§3!;§)
         {
            this.§3!;§.dispose();
         }
         if(this.§"!P§)
         {
            this.§"!P§.dispose();
         }
         if(this.§79§)
         {
            this.§79§.dispose();
         }
         if(§%!H§ == this)
         {
            §%!H§ = null;
         }
         if(this.§@K§ && this.§@K§.bitmapData)
         {
            this.§@K§.bitmapData.dispose();
            this.§@K§.bitmapData = null;
         }
      }
      
      private function §#C§() : void
      {
         this.§3!;§ = this.mStage3D.context3D;
         this.§7!`§ = new Dictionary();
         if(this.§3!;§)
         {
            this.§3!;§.enableErrorChecking = this.§<!@§;
            if(this.§3!;§.driverInfo.indexOf("Software") >= 0)
            {
               this.§-3§ = true;
            }
         }
         else
         {
            this.§-3§ = true;
         }
         this.§&!=§();
      }
      
      private function §3!?§() : void
      {
         if(this.§@c§.numChildren > 0)
         {
            return;
         }
         if(this.§"7§ == null)
         {
            this.§"7§ = new this.§4!Z§();
         }
         if(this.§"7§ == null)
         {
            throw new Error("Invalid root class: " + this.§4!Z§);
         }
         this.§@c§.addChild(this.§"7§);
      }
      
      private function §&!=§() : void
      {
         this.§!!'§ = true;
         this.mStage3D.x = this.§+U§.x;
         this.mStage3D.y = this.§+U§.y;
      }
      
      private function render() : void
      {
         if(!§'w§())
         {
            return;
         }
         if(this.§!!'§)
         {
            if(this.§3!;§)
            {
               this.§3!;§.configureBackBuffer(this.§+U§.width,this.§+U§.height,this.§'!`§,false);
            }
            this.§!!'§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§-=§;
         this.§-=§ = _loc1_;
         this.§@c§.advanceTime(_loc2_);
         this.§+!+§.advanceTime(_loc2_);
         this.§"!P§.advanceTime(_loc2_);
         this.§79§.§]2§(this.§@c§.stageWidth,this.§@c§.stageHeight);
         this.§79§.clear(this.§3!;§,this.§ var§,1);
         this.§79§.§+!3§(this.§3!;§,this.§6r§);
         this.§@c§.render(this.§79§,1);
         this.§79§.§0;§();
         if(this.§-x§ != null)
         {
            this.§-x§();
            this.§-x§ = null;
         }
         this.§79§.finishRendering(this.§3!;§);
         this.§79§.§8!-§();
      }
      
      public function set §?!b§(param1:Function) : void
      {
         this.§-x§ = param1;
      }
      
      private function §3#§() : void
      {
         var _loc3_:BitmapData = null;
         this.§]k§.x = this.§+U§.x;
         this.§]k§.y = this.§+U§.y;
         var _loc1_:int = this.§]k§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§]k§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§8_§.addChild(this.§]k§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§8_§.removeChild(this.§]k§);
         }
         if(this.§79§ && this.§79§.canvas)
         {
            this.§79§.setCanvasSize(this.§%Q§,this.§+`§,this.§+U§.width / this.§@c§.stageWidth,this.§+U§.height / this.§@c§.stageHeight);
            _loc3_ = this.§79§.canvas;
            if(this.§@K§.bitmapData != _loc3_)
            {
               this.§@K§.bitmapData = _loc3_;
            }
            if(this.§8_§.getChildIndex(this.§]k§) > 0)
            {
               this.§8_§.removeChild(this.§]k§);
               this.§8_§.addChildAt(this.§]k§,0);
            }
         }
      }
      
      private function §62§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§@c§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§@c§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§@c§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§?B§.addChild(_loc2_);
      }
      
      public function §=r§() : void
      {
         §%!H§ = this;
      }
      
      public function start() : void
      {
         this.§>i§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§>i§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §>@§(param1:Boolean) : void
      {
         this.§6l§ = param1;
      }
      
      private function §=z§() : void
      {
         this.§1k§ = true;
         if(this.§@K§ == null)
         {
            this.§@K§ = new Bitmap();
            this.§?B§.addChild(this.§@K§);
         }
      }
      
      private function §,!E§(param1:ErrorEvent) : void
      {
         this.§=z§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §!6§(param1:flash.events.Event) : void
      {
         if(this.§!J§)
         {
            return;
         }
         ++§=!;§;
         this.§6r§ = §=!;§;
         if(this.§79§)
         {
            this.§79§.dispose();
         }
         if(!§3!&§.§5C§ && this.§3!;§)
         {
            this.§62§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§=r§();
         this.§#C§();
         this.§3!?§();
         if(this.§3!;§ && this.§-3§)
         {
            this.mStage3DEnabled = false;
            this.§3!;§ = null;
            this.§=z§();
         }
         if(this.§3!;§)
         {
            this.§79§ = new §,!>§();
         }
         else
         {
            this.§79§ = new §,!F§();
            this.§79§.setCanvasSize(this.§%Q§,this.§+`§,this.§+U§.width / this.§@c§.stageWidth,this.§+U§.height / this.§@c§.stageHeight);
            this.§79§.clear(null,this.§ var§);
         }
         this.§"!P§.simulateMultitouch = this.§7!<§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §;9§(param1:flash.events.Event) : void
      {
         this.§=r§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§-=§;
         if(this.§>i§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§]k§)
         {
            this.§3#§();
         }
      }
      
      private function §"!J§(param1:flash.events.KeyboardEvent) : void
      {
         this.§=r§();
         this.§@c§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§7!J§;
         var _loc5_:Number = param2 / this.§@!'§;
         if(!param3)
         {
            this.§@c§.stageWidth = this.§7!J§ * _loc4_ / _loc5_;
            this.§@c§.stageHeight = this.§@!'§;
         }
         else
         {
            this.§@c§.stageWidth = this.§7!J§;
            this.§@c§.stageHeight = this.§@!'§ * _loc5_ / _loc4_;
         }
         this.§%Q§ = param1;
         this.§+`§ = param2;
         this.§@c§.dispatchEvent(new §6=§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §46§() : void
      {
         this.setCanvasSize(this.§7!J§,this.§@!'§);
      }
      
      private function §<!K§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§>i§ || !this.§6l§)
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
               this.§"!Z§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§"!Z§ = false;
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
               _loc5_ = §!!S§.§,![§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §!!S§.§9!K§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §!!S§.§3§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §!!S§.§,![§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §!!S§.§3§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§"!Z§ ? §!!S§.§9!K§ : §!!S§.§54§;
         }
         if((_loc2_ < this.§+U§.left || _loc2_ >= this.§+U§.right || _loc3_ < this.§+U§.top || _loc3_ >= this.§+U§.bottom) && _loc5_ == §!!S§.§,![§)
         {
            return;
         }
         _loc2_ -= this.§+U§.x;
         _loc3_ -= this.§+U§.y;
         this.§"!P§.§&!<§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §>"§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §7Y§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§7!`§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§3!;§ != null)
         {
            (_loc4_ = this.§3!;§.createProgram()).upload(param2,param3);
            this.§7!`§[param1] = _loc4_;
         }
      }
      
      public function §^f§(param1:String) : void
      {
         var _loc2_:Program3D = this.§#!6§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§7!`§[param1];
         }
      }
      
      public function §#!6§(param1:String) : Program3D
      {
         return this.§7!`§[param1] as Program3D;
      }
      
      public function §4r§(param1:String) : Boolean
      {
         return param1 in this.§7!`§;
      }
      
      public function get §1V§() : Boolean
      {
         return this.§>i§;
      }
      
      public function get §#6§() : §1>§
      {
         return this.§+!+§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§7!<§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§7!<§ = param1;
         if(this.§3!;§)
         {
            this.§"!P§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§<!@§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§<!@§ = param1;
         if(this.§3!;§)
         {
            this.§3!;§.enableErrorChecking = param1;
         }
      }
      
      public function get §`T§() : int
      {
         return this.§'!`§;
      }
      
      public function set §`T§(param1:int) : void
      {
         this.§'!`§ = param1;
         this.§&!=§();
      }
      
      public function get §3!O§() : Rectangle
      {
         return this.§+U§.clone();
      }
      
      public function set §3!O§(param1:Rectangle) : void
      {
         this.§+U§ = param1.clone();
         this.§&!=§();
      }
      
      public function get §?B§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§]k§ == null)
         {
            this.§]k§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§]k§.contextMenu = _loc1_;
            this.§3#§();
         }
         return this.§]k§;
      }
      
      public function get stage() : §,!Q§.Stage
      {
         return this.§@c§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §]h§() : flash.display.Stage
      {
         return this.§8_§;
      }
      
      public function get § =§() : Boolean
      {
         return !this.§1k§;
      }
   }
}
