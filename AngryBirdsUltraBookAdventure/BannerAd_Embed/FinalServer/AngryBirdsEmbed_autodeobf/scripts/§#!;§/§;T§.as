package §#!;§
{
   import § M§.§+M§;
   import §5!@§.Texture;
   import §9W§.DisplayObject;
   import §9W§.Stage;
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
   import starling.events.§&!6§;
   import starling.events.§-1§;
   import starling.events.§<e§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §;T§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §@=§:§;T§;
      
      private static var §>!9§:Boolean;
      
      private static var §7C§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §%E§:§9W§.Stage;
      
      private var §;!<§:Class;
      
      private var §0M§:§9W§.DisplayObject;
      
      private var §',§:§+M§;
      
      private var §<=§:Boolean;
      
      private var §[I§:Boolean;
      
      private var §=3§:§?h§;
      
      private var §4M§:§&!6§;
      
      private var §[1§:int;
      
      private var §0G§:Boolean;
      
      private var §5N§:Boolean;
      
      private var §'?§:Number;
      
      private var §^f§:Rectangle;
      
      private var §>F§:Boolean;
      
      private var §^7§:flash.display.Stage;
      
      private var §1!1§:Sprite;
      
      private var §">§:Context3D;
      
      private var §'s§:Dictionary;
      
      private var §?!>§:int;
      
      private var §<p§:Boolean;
      
      private var §?W§:Number;
      
      private var §3%§:Number;
      
      private var §`@§:Number;
      
      private var §<!"§:Number;
      
      private var §!f§:Number;
      
      private var §>"§:Number;
      
      private var §,!=§:Function;
      
      private var §,X§:uint;
      
      private var §,!$§:String;
      
      private var §"P§:Bitmap;
      
      private var §0q§:Boolean = false;
      
      private var §!!B§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §4!=§:Boolean = false;
      
      public function §;T§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§?W§ = param3.width;
         this.§3%§ = param3.height;
         this.§`@§ = this.§?W§;
         this.§<!"§ = this.§3%§;
         this.§!f§ = param2.stageWidth;
         this.§>"§ = param2.stageHeight;
         §&H§ = true;
         this.§%!G§();
         this.§;!<§ = param1;
         this.§^f§ = param3;
         this.mStage3D = param4;
         this.§%E§ = new §9W§.Stage(param3.width,param3.height,param2.color);
         this.§^7§ = param2;
         this.§4M§ = new §&!6§(this.§%E§);
         this.§',§ = new §+M§();
         this.§[1§ = 0;
         this.§0G§ = false;
         this.§5N§ = false;
         this.§'?§ = getTimer() / 1000;
         this.§'s§ = new Dictionary();
         for each(_loc6_ in this.§-F§)
         {
            param2.addEventListener(_loc6_,this.§1H§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§'!0§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§finally§,false,1,true);
         this.mStage3D.visible = false;
         this.§4-§(true);
         this.§,X§ = param2.color;
         this.§,!$§ = param5;
      }
      
      public static function get §>!,§() : Boolean
      {
         if(§,H§)
         {
            return §,H§.§<p§;
         }
         return true;
      }
      
      public static function §>!@§() : Boolean
      {
         return §@=§ && (§@=§.§0q§ || §@=§.§">§ != null && §@=§.§">§.driverInfo != "Disposed");
      }
      
      public static function get §,H§() : §;T§
      {
         return §@=§;
      }
      
      public static function get §1I§() : §+M§
      {
         return !!§@=§ ? §@=§.§1I§ : null;
      }
      
      public static function get §@d§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §@d§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §&H§() : Boolean
      {
         return §>!9§;
      }
      
      public static function set §&H§(param1:Boolean) : void
      {
         if(§@=§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §>!9§ = param1;
      }
      
      public static function §2!0§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§,H§)
         {
            return Texture.§3+§(§,H§.§">§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§@=§.§">§)
         {
            §@=§.§">§.drawToBitmapData(param1);
         }
         else if(§@=§.§=3§.canvas)
         {
            _loc2_ = §@=§.§=3§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get § !D§() : §9W§.DisplayObject
      {
         return this.§0M§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§,X§ = param1;
      }
      
      public function get §"F§() : Number
      {
         return this.§?W§;
      }
      
      public function get §,^§() : Number
      {
         return this.§3%§;
      }
      
      public function §3k§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§,!$§);
         }
         catch(e:Error)
         {
            §5!&§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§4!=§ = true;
         this.§^7§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§^7§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§'!0§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§finally§,false);
         for each(_loc1_ in this.§-F§)
         {
            this.§^7§.removeEventListener(_loc1_,this.§1H§,false);
         }
         for each(_loc2_ in this.§'s§)
         {
            _loc2_.dispose();
         }
         if(this.§">§)
         {
            this.§">§.dispose();
         }
         if(this.§4M§)
         {
            this.§4M§.dispose();
         }
         if(this.§=3§)
         {
            this.§=3§.dispose();
         }
         if(§@=§ == this)
         {
            §@=§ = null;
         }
         if(this.§"P§ && this.§"P§.bitmapData)
         {
            this.§"P§.bitmapData.dispose();
            this.§"P§.bitmapData = null;
         }
      }
      
      private function §-J§() : void
      {
         this.§">§ = this.mStage3D.context3D;
         this.§'s§ = new Dictionary();
         if(this.§">§)
         {
            this.§">§.enableErrorChecking = this.§5N§;
            if(this.§">§.driverInfo.indexOf("Software") >= 0)
            {
               this.§<p§ = true;
            }
         }
         else
         {
            this.§<p§ = true;
         }
         this.§[!3§();
      }
      
      private function § get§() : void
      {
         if(this.§%E§.numChildren > 0)
         {
            return;
         }
         if(this.§0M§ == null)
         {
            this.§0M§ = new this.§;!<§();
         }
         if(this.§0M§ == null)
         {
            throw new Error("Invalid root class: " + this.§;!<§);
         }
         this.§%E§.addChild(this.§0M§);
      }
      
      private function §[!3§() : void
      {
         this.§!!B§ = true;
         this.mStage3D.x = this.§^f§.x;
         this.mStage3D.y = this.§^f§.y;
      }
      
      private function render() : void
      {
         if(!§>!@§())
         {
            return;
         }
         if(this.§!!B§)
         {
            if(this.§">§)
            {
               this.§">§.configureBackBuffer(this.§^f§.width,this.§^f§.height,this.§[1§,false);
            }
            this.§!!B§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§'?§;
         this.§'?§ = _loc1_;
         this.§%E§.advanceTime(_loc2_);
         this.§',§.advanceTime(_loc2_);
         this.§4M§.advanceTime(_loc2_);
         this.§=3§.§'B§(this.§%E§.stageWidth,this.§%E§.stageHeight);
         this.§=3§.clear(this.§">§,this.§,X§,1);
         this.§=3§.§51§(this.§">§,this.§?!>§);
         this.§%E§.render(this.§=3§,1);
         this.§=3§.§?Y§();
         if(this.§,!=§ != null)
         {
            this.§,!=§();
            this.§,!=§ = null;
         }
         this.§=3§.finishRendering(this.§">§);
         this.§=3§.§#7§();
      }
      
      public function set §"e§(param1:Function) : void
      {
         this.§,!=§ = param1;
      }
      
      private function §><§() : void
      {
         var _loc3_:BitmapData = null;
         this.§1!1§.x = this.§^f§.x;
         this.§1!1§.y = this.§^f§.y;
         var _loc1_:int = this.§1!1§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§1!1§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§^7§.addChild(this.§1!1§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§^7§.removeChild(this.§1!1§);
         }
         if(this.§=3§ && this.§=3§.canvas)
         {
            this.§=3§.setCanvasSize(this.§`@§,this.§<!"§,this.§^f§.width / this.§%E§.stageWidth,this.§^f§.height / this.§%E§.stageHeight);
            _loc3_ = this.§=3§.canvas;
            if(this.§"P§.bitmapData != _loc3_)
            {
               this.§"P§.bitmapData = _loc3_;
            }
            if(this.§^7§.getChildIndex(this.§1!1§) > 0)
            {
               this.§^7§.removeChild(this.§1!1§);
               this.§^7§.addChildAt(this.§1!1§,0);
            }
         }
      }
      
      private function §5!&§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§%E§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§%E§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§%E§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§]F§.addChild(_loc2_);
      }
      
      public function §%!G§() : void
      {
         §@=§ = this;
      }
      
      public function start() : void
      {
         this.§<=§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§<=§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §4-§(param1:Boolean) : void
      {
         this.§[I§ = param1;
      }
      
      private function §^I§() : void
      {
         this.§0q§ = true;
         if(this.§"P§ == null)
         {
            this.§"P§ = new Bitmap();
            this.§]F§.addChild(this.§"P§);
         }
      }
      
      private function §finally§(param1:ErrorEvent) : void
      {
         this.§^I§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §'!0§(param1:flash.events.Event) : void
      {
         if(this.§4!=§)
         {
            return;
         }
         ++§7C§;
         this.§?!>§ = §7C§;
         if(this.§=3§)
         {
            this.§=3§.dispose();
         }
         if(!§;T§.§&H§ && this.§">§)
         {
            this.§5!&§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§%!G§();
         this.§-J§();
         this.§ get§();
         if(this.§">§ && this.§<p§)
         {
            this.mStage3DEnabled = false;
            this.§">§ = null;
            this.§^I§();
         }
         if(this.§">§)
         {
            this.§=3§ = new §?h§();
         }
         else
         {
            this.§=3§ = new §1O§();
            this.§=3§.setCanvasSize(this.§`@§,this.§<!"§,this.§^f§.width / this.§%E§.stageWidth,this.§^f§.height / this.§%E§.stageHeight);
            this.§=3§.clear(null,this.§,X§);
         }
         this.§4M§.§ 4§ = this.§0G§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§%!G§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§'?§;
         if(this.§<=§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§1!1§)
         {
            this.§><§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§%!G§();
         this.§%E§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§?W§;
         var _loc5_:Number = param2 / this.§3%§;
         if(!param3)
         {
            this.§%E§.stageWidth = this.§?W§ * _loc4_ / _loc5_;
            this.§%E§.stageHeight = this.§3%§;
         }
         else
         {
            this.§%E§.stageWidth = this.§?W§;
            this.§%E§.stageHeight = this.§3%§ * _loc5_ / _loc4_;
         }
         this.§`@§ = param1;
         this.§<!"§ = param2;
         this.§%E§.dispatchEvent(new §-1§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §8!9§() : void
      {
         this.setCanvasSize(this.§?W§,this.§3%§);
      }
      
      private function §1H§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§<=§ || !this.§[I§)
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
               this.§>F§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§>F§ = false;
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
               _loc5_ = §<e§.§"=§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §<e§.§!C§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §<e§.§4[§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §<e§.§"=§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §<e§.§4[§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§>F§ ? §<e§.§!C§ : §<e§.§8;§;
         }
         if((_loc2_ < this.§^f§.left || _loc2_ >= this.§^f§.right || _loc3_ < this.§^f§.top || _loc3_ >= this.§^f§.bottom) && _loc5_ == §<e§.§"=§)
         {
            return;
         }
         _loc2_ -= this.§^f§.x;
         _loc3_ -= this.§^f§.y;
         this.§4M§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §-F§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §0§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§'s§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§">§ != null)
         {
            (_loc4_ = this.§">§.createProgram()).upload(param2,param3);
            this.§'s§[param1] = _loc4_;
         }
      }
      
      public function §5M§(param1:String) : void
      {
         var _loc2_:Program3D = this.§-=§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§'s§[param1];
         }
      }
      
      public function §-=§(param1:String) : Program3D
      {
         return this.§'s§[param1] as Program3D;
      }
      
      public function §&!D§(param1:String) : Boolean
      {
         return param1 in this.§'s§;
      }
      
      public function get §19§() : Boolean
      {
         return this.§<=§;
      }
      
      public function get §1I§() : §+M§
      {
         return this.§',§;
      }
      
      public function get § 4§() : Boolean
      {
         return this.§0G§;
      }
      
      public function set § 4§(param1:Boolean) : void
      {
         this.§0G§ = param1;
         if(this.§">§)
         {
            this.§4M§.§ 4§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§5N§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§5N§ = param1;
         if(this.§">§)
         {
            this.§">§.enableErrorChecking = param1;
         }
      }
      
      public function get §&2§() : int
      {
         return this.§[1§;
      }
      
      public function set §&2§(param1:int) : void
      {
         this.§[1§ = param1;
         this.§[!3§();
      }
      
      public function get §2!&§() : Rectangle
      {
         return this.§^f§.clone();
      }
      
      public function set §2!&§(param1:Rectangle) : void
      {
         this.§^f§ = param1.clone();
         this.§[!3§();
      }
      
      public function get §]F§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§1!1§ == null)
         {
            this.§1!1§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§1!1§.contextMenu = _loc1_;
            this.§><§();
         }
         return this.§1!1§;
      }
      
      public function get stage() : §9W§.Stage
      {
         return this.§%E§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §@!D§() : flash.display.Stage
      {
         return this.§^7§;
      }
      
      public function get §=8§() : Boolean
      {
         return !this.§0q§;
      }
   }
}
