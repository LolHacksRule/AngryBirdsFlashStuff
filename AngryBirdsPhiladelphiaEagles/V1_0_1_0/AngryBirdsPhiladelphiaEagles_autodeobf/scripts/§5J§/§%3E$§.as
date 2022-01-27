package §5J§
{
   import §0l§.Texture;
   import §3H§.DisplayObject;
   import §3H§.Stage;
   import §=R§.§9Y§;
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
   import starling.events.§&3§;
   import starling.events.§0v§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§]o§;
   
   public class §>$§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §!!"§:§>$§;
      
      private static var §"-§:Boolean;
      
      private static var § !H§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §<!#§:§3H§.Stage;
      
      private var §#!E§:Class;
      
      private var §^H§:§3H§.DisplayObject;
      
      private var §>7§:§9Y§;
      
      private var §,!@§:Boolean;
      
      private var §&!;§:Boolean;
      
      private var §]T§:§4!3§;
      
      private var §%!-§:§]o§;
      
      private var §]!=§:int;
      
      private var §!-§:Boolean;
      
      private var §&!G§:Boolean;
      
      private var §7!D§:Number;
      
      private var §`!$§:Rectangle;
      
      private var §>!N§:Boolean;
      
      private var §^!C§:flash.display.Stage;
      
      private var §2!P§:Sprite;
      
      private var §?<§:Context3D;
      
      private var §^!,§:Dictionary;
      
      private var §6_§:int;
      
      private var §!i§:Boolean;
      
      private var §'!M§:Number;
      
      private var §'r§:Number;
      
      private var §17§:Number;
      
      private var §7'§:Number;
      
      private var §!g§:Number;
      
      private var §%?§:Number;
      
      private var §'!0§:Function;
      
      private var §-S§:uint;
      
      private var override:String;
      
      private var §2L§:Bitmap;
      
      private var §=X§:Boolean = false;
      
      private var §?!6§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §`!%§:Boolean = false;
      
      public function §>$§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§'!M§ = param3.width;
         this.§'r§ = param3.height;
         this.§17§ = this.§'!M§;
         this.§7'§ = this.§'r§;
         this.§!g§ = param2.stageWidth;
         this.§%?§ = param2.stageHeight;
         §9!B§ = true;
         this.§8,§();
         this.§#!E§ = param1;
         this.§`!$§ = param3;
         this.mStage3D = param4;
         this.§<!#§ = new §3H§.Stage(param3.width,param3.height,param2.color);
         this.§^!C§ = param2;
         this.§%!-§ = new §]o§(this.§<!#§);
         this.§>7§ = new §9Y§();
         this.§]!=§ = 0;
         this.§!-§ = false;
         this.§&!G§ = false;
         this.§7!D§ = getTimer() / 1000;
         this.§^!,§ = new Dictionary();
         for each(_loc6_ in this.§ !'§)
         {
            param2.addEventListener(_loc6_,this.§8H§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[M§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[M§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§8x§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§3!@§,false,1,true);
         this.mStage3D.visible = false;
         this.§,s§(true);
         this.§-S§ = param2.color;
         this.override = param5;
      }
      
      public static function get §<8§() : Boolean
      {
         if(§-U§)
         {
            return §-U§.§!i§;
         }
         return true;
      }
      
      public static function §[i§() : Boolean
      {
         return §!!"§ && (§!!"§.§=X§ || §!!"§.§?<§ != null && §!!"§.§?<§.driverInfo != "Disposed");
      }
      
      public static function get §-U§() : §>$§
      {
         return §!!"§;
      }
      
      public static function get §3D§() : §9Y§
      {
         return !!§!!"§ ? §!!"§.§3D§ : null;
      }
      
      public static function get §for§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §for§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §9!B§() : Boolean
      {
         return §"-§;
      }
      
      public static function set §9!B§(param1:Boolean) : void
      {
         if(§!!"§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §"-§ = param1;
      }
      
      public static function §7$§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§-U§)
         {
            return Texture.§&5§(§-U§.§?<§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§!!"§.§?<§)
         {
            §!!"§.§?<§.drawToBitmapData(param1);
         }
         else if(§!!"§.§]T§.canvas)
         {
            _loc2_ = §!!"§.§]T§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §9p§() : §3H§.DisplayObject
      {
         return this.§^H§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§-S§ = param1;
      }
      
      public function get §8F§() : Number
      {
         return this.§'!M§;
      }
      
      public function get §]_§() : Number
      {
         return this.§'r§;
      }
      
      public function §`;§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.override);
         }
         catch(e:Error)
         {
            §?R§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§`!%§ = true;
         this.§^!C§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[M§,false);
         this.§^!C§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[M§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§8x§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§3!@§,false);
         for each(_loc1_ in this.§ !'§)
         {
            this.§^!C§.removeEventListener(_loc1_,this.§8H§,false);
         }
         for each(_loc2_ in this.§^!,§)
         {
            _loc2_.dispose();
         }
         if(this.§?<§)
         {
            this.§?<§.dispose();
         }
         if(this.§%!-§)
         {
            this.§%!-§.dispose();
         }
         if(this.§]T§)
         {
            this.§]T§.dispose();
         }
         if(§!!"§ == this)
         {
            §!!"§ = null;
         }
         if(this.§2L§ && this.§2L§.bitmapData)
         {
            this.§2L§.bitmapData.dispose();
            this.§2L§.bitmapData = null;
         }
      }
      
      private function §,#§() : void
      {
         this.§?<§ = this.mStage3D.context3D;
         this.§^!,§ = new Dictionary();
         if(this.§?<§)
         {
            this.§?<§.enableErrorChecking = this.§&!G§;
            if(this.§?<§.driverInfo.indexOf("Software") >= 0)
            {
               this.§!i§ = true;
            }
         }
         else
         {
            this.§!i§ = true;
         }
         this.§9!"§();
      }
      
      private function §3>§() : void
      {
         if(this.§<!#§.numChildren > 0)
         {
            return;
         }
         if(this.§^H§ == null)
         {
            this.§^H§ = new this.§#!E§();
         }
         if(this.§^H§ == null)
         {
            throw new Error("Invalid root class: " + this.§#!E§);
         }
         this.§<!#§.addChild(this.§^H§);
      }
      
      private function §9!"§() : void
      {
         this.§?!6§ = true;
         this.mStage3D.x = this.§`!$§.x;
         this.mStage3D.y = this.§`!$§.y;
      }
      
      private function render() : void
      {
         if(!§[i§())
         {
            return;
         }
         if(this.§?!6§)
         {
            if(this.§?<§)
            {
               this.§?<§.configureBackBuffer(this.§`!$§.width,this.§`!$§.height,this.§]!=§,false);
            }
            this.§?!6§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§7!D§;
         this.§7!D§ = _loc1_;
         this.§<!#§.advanceTime(_loc2_);
         this.§>7§.advanceTime(_loc2_);
         this.§%!-§.advanceTime(_loc2_);
         this.§]T§.§@U§(this.§<!#§.stageWidth,this.§<!#§.stageHeight);
         this.§]T§.clear(this.§?<§,this.§-S§,1);
         this.§]T§.§"!;§(this.§?<§,this.§6_§);
         this.§<!#§.render(this.§]T§,1);
         this.§]T§.§1F§();
         if(this.§'!0§ != null)
         {
            this.§'!0§();
            this.§'!0§ = null;
         }
         this.§]T§.finishRendering(this.§?<§);
         this.§]T§.§@Z§();
      }
      
      public function set §%!A§(param1:Function) : void
      {
         this.§'!0§ = param1;
      }
      
      private function §8j§() : void
      {
         var _loc3_:BitmapData = null;
         this.§2!P§.x = this.§`!$§.x;
         this.§2!P§.y = this.§`!$§.y;
         var _loc1_:int = this.§2!P§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§2!P§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§^!C§.addChild(this.§2!P§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§^!C§.removeChild(this.§2!P§);
         }
         if(this.§]T§ && this.§]T§.canvas)
         {
            this.§]T§.setCanvasSize(this.§17§,this.§7'§,this.§`!$§.width / this.§<!#§.stageWidth,this.§`!$§.height / this.§<!#§.stageHeight);
            _loc3_ = this.§]T§.canvas;
            if(this.§2L§.bitmapData != _loc3_)
            {
               this.§2L§.bitmapData = _loc3_;
            }
            if(this.§^!C§.getChildIndex(this.§2!P§) > 0)
            {
               this.§^!C§.removeChild(this.§2!P§);
               this.§^!C§.addChildAt(this.§2!P§,0);
            }
         }
      }
      
      private function §?R§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§<!#§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§<!#§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§<!#§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§2V§.addChild(_loc2_);
      }
      
      public function §8,§() : void
      {
         §!!"§ = this;
      }
      
      public function start() : void
      {
         this.§,!@§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§,!@§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §,s§(param1:Boolean) : void
      {
         this.§&!;§ = param1;
      }
      
      private function § !C§() : void
      {
         this.§=X§ = true;
         if(this.§2L§ == null)
         {
            this.§2L§ = new Bitmap();
            this.§2V§.addChild(this.§2L§);
         }
      }
      
      private function §3!@§(param1:ErrorEvent) : void
      {
         this.§ !C§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §8x§(param1:flash.events.Event) : void
      {
         if(this.§`!%§)
         {
            return;
         }
         ++§ !H§;
         this.§6_§ = § !H§;
         if(this.§]T§)
         {
            this.§]T§.dispose();
         }
         if(!§>$§.§9!B§ && this.§?<§)
         {
            this.§?R§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§8,§();
         this.§,#§();
         this.§3>§();
         if(this.§?<§ && this.§!i§)
         {
            this.mStage3DEnabled = false;
            this.§?<§ = null;
            this.§ !C§();
         }
         if(this.§?<§)
         {
            this.§]T§ = new §4!3§();
         }
         else
         {
            this.§]T§ = new §^m§();
            this.§]T§.setCanvasSize(this.§17§,this.§7'§,this.§`!$§.width / this.§<!#§.stageWidth,this.§`!$§.height / this.§<!#§.stageHeight);
            this.§]T§.clear(null,this.§-S§);
         }
         this.§%!-§.§"p§ = this.§!-§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§8,§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§7!D§;
         if(this.§,!@§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§2!P§)
         {
            this.§8j§();
         }
      }
      
      private function §[M§(param1:flash.events.KeyboardEvent) : void
      {
         this.§8,§();
         this.§<!#§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§'!M§;
         var _loc5_:Number = param2 / this.§'r§;
         if(!param3)
         {
            this.§<!#§.stageWidth = this.§'!M§ * _loc4_ / _loc5_;
            this.§<!#§.stageHeight = this.§'r§;
         }
         else
         {
            this.§<!#§.stageWidth = this.§'!M§;
            this.§<!#§.stageHeight = this.§'r§ * _loc5_ / _loc4_;
         }
         this.§17§ = param1;
         this.§7'§ = param2;
         this.§<!#§.dispatchEvent(new §0v§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §;Y§() : void
      {
         this.setCanvasSize(this.§'!M§,this.§'r§);
      }
      
      private function §8H§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§,!@§ || !this.§&!;§)
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
               this.§>!N§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§>!N§ = false;
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
               _loc5_ = §&3§.§'i§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §&3§.§3!J§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §&3§.§9!>§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §&3§.§'i§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §&3§.§9!>§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§>!N§ ? §&3§.§3!J§ : §&3§.§0r§;
         }
         if((_loc2_ < this.§`!$§.left || _loc2_ >= this.§`!$§.right || _loc3_ < this.§`!$§.top || _loc3_ >= this.§`!$§.bottom) && _loc5_ == §&3§.§'i§)
         {
            return;
         }
         _loc2_ -= this.§`!$§.x;
         _loc3_ -= this.§`!$§.y;
         this.§%!-§.§[!3§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get § !'§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §"#§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§^!,§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§?<§ != null)
         {
            (_loc4_ = this.§?<§.createProgram()).upload(param2,param3);
            this.§^!,§[param1] = _loc4_;
         }
      }
      
      public function §=@§(param1:String) : void
      {
         var _loc2_:Program3D = this.§,!>§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§^!,§[param1];
         }
      }
      
      public function §,!>§(param1:String) : Program3D
      {
         return this.§^!,§[param1] as Program3D;
      }
      
      public function §>%§(param1:String) : Boolean
      {
         return param1 in this.§^!,§;
      }
      
      public function get §&V§() : Boolean
      {
         return this.§,!@§;
      }
      
      public function get §3D§() : §9Y§
      {
         return this.§>7§;
      }
      
      public function get §"p§() : Boolean
      {
         return this.§!-§;
      }
      
      public function set §"p§(param1:Boolean) : void
      {
         this.§!-§ = param1;
         if(this.§?<§)
         {
            this.§%!-§.§"p§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§&!G§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§&!G§ = param1;
         if(this.§?<§)
         {
            this.§?<§.enableErrorChecking = param1;
         }
      }
      
      public function get §4a§() : int
      {
         return this.§]!=§;
      }
      
      public function set §4a§(param1:int) : void
      {
         this.§]!=§ = param1;
         this.§9!"§();
      }
      
      public function get §%B§() : Rectangle
      {
         return this.§`!$§.clone();
      }
      
      public function set §%B§(param1:Rectangle) : void
      {
         this.§`!$§ = param1.clone();
         this.§9!"§();
      }
      
      public function get §2V§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§2!P§ == null)
         {
            this.§2!P§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§2!P§.contextMenu = _loc1_;
            this.§8j§();
         }
         return this.§2!P§;
      }
      
      public function get stage() : §3H§.Stage
      {
         return this.§<!#§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §"Y§() : flash.display.Stage
      {
         return this.§^!C§;
      }
      
      public function get §`!3§() : Boolean
      {
         return !this.§=X§;
      }
   }
}
