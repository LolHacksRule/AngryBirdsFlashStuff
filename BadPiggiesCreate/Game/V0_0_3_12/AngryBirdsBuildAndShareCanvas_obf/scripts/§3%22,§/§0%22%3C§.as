package §3",§
{
   import §+A§.§&g§;
   import §@!i§.DisplayObject;
   import §@!i§.Stage;
   import §^Q§.Texture;
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
   import starling.events.§&"0§;
   import starling.events.§5" §;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§[b§;
   
   public class §0"<§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §4""§:§0"<§;
      
      private static var §9"&§:Boolean;
      
      private static var §<A§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var § null§:§@!i§.Stage;
      
      private var §"Z§:Class;
      
      private var §@§:§@!i§.DisplayObject;
      
      private var §[!!§:§&g§;
      
      private var §5p§:Boolean;
      
      private var §-!p§:Boolean;
      
      private var §=!x§:§'5§;
      
      private var §9![§:§&"0§;
      
      private var §&"5§:int;
      
      private var §3e§:Boolean;
      
      private var §`U§:Boolean;
      
      private var §&" §:Number;
      
      private var §1F§:Rectangle;
      
      private var §;"&§:Boolean;
      
      private var §5!'§:flash.display.Stage;
      
      private var §`"%§:Sprite;
      
      private var §`@§:Context3D;
      
      private var §@!P§:Dictionary;
      
      private var §8L§:int;
      
      private var §^&§:Boolean;
      
      private var §1=§:Number;
      
      private var §`]§:Number;
      
      private var §!M§:Number;
      
      private var §>!,§:Number;
      
      private var §&k§:Number;
      
      private var §^>§:Number;
      
      private var §@+§:Function;
      
      private var §?!0§:uint;
      
      private var §1"6§:String;
      
      private var § !%§:Bitmap;
      
      private var §0![§:Boolean = false;
      
      private var §#5§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §[l§:Boolean = false;
      
      public function §0"<§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§1=§ = param3.width;
         this.§`]§ = param3.height;
         this.§!M§ = this.§1=§;
         this.§>!,§ = this.§`]§;
         this.§&k§ = param2.stageWidth;
         this.§^>§ = param2.stageHeight;
         §5C§ = true;
         this.§'0§();
         this.§"Z§ = param1;
         this.§1F§ = param3;
         this.mStage3D = param4;
         this.§ null§ = new §@!i§.Stage(param3.width,param3.height,param2.color);
         this.§5!'§ = param2;
         this.§9![§ = new §&"0§(this.§ null§);
         this.§[!!§ = new §&g§();
         this.§&"5§ = 0;
         this.§3e§ = false;
         this.§`U§ = false;
         this.§&" § = getTimer() / 1000;
         this.§@!P§ = new Dictionary();
         for each(_loc6_ in this.§7`§)
         {
            param2.addEventListener(_loc6_,this.§-!L§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!B§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!B§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§9!g§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§#Z§,false,1,true);
         this.mStage3D.visible = false;
         this.§^!D§(true);
         this.§?!0§ = param2.color;
         this.§1"6§ = param5;
      }
      
      public static function get §4§() : Boolean
      {
         if(§<?§)
         {
            return §<?§.§^&§;
         }
         return true;
      }
      
      public static function §>",§() : Boolean
      {
         return §4""§ && (§4""§.§0![§ || §4""§.§`@§ != null && §4""§.§`@§.driverInfo != "Disposed");
      }
      
      public static function get §<?§() : §0"<§
      {
         return §4""§;
      }
      
      public static function get §1!G§() : §&g§
      {
         return !!§4""§ ? §4""§.§1!G§ : null;
      }
      
      public static function get §6!3§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §6!3§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §5C§() : Boolean
      {
         return §9"&§;
      }
      
      public static function set §5C§(param1:Boolean) : void
      {
         if(§4""§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §9"&§ = param1;
      }
      
      public static function §!!K§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§<?§)
         {
            return Texture.§%<§(§<?§.§`@§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§4""§.§`@§)
         {
            §4""§.§`@§.drawToBitmapData(param1);
         }
         else if(§4""§.§=!x§.canvas)
         {
            _loc2_ = §4""§.§=!x§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §0!§() : §@!i§.DisplayObject
      {
         return this.§@§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§?!0§ = param1;
      }
      
      public function get §=?§() : Number
      {
         return this.§1=§;
      }
      
      public function get §2!B§() : Number
      {
         return this.§`]§;
      }
      
      public function §>r§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§1"6§);
         }
         catch(e:Error)
         {
            §#&§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§[l§ = true;
         this.§5!'§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!B§,false);
         this.§5!'§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!B§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§9!g§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§#Z§,false);
         for each(_loc1_ in this.§7`§)
         {
            this.§5!'§.removeEventListener(_loc1_,this.§-!L§,false);
         }
         for each(_loc2_ in this.§@!P§)
         {
            _loc2_.dispose();
         }
         if(this.§`@§)
         {
            this.§`@§.dispose();
         }
         if(this.§9![§)
         {
            this.§9![§.dispose();
         }
         if(this.§=!x§)
         {
            this.§=!x§.dispose();
         }
         if(§4""§ == this)
         {
            §4""§ = null;
         }
         if(this.§ !%§ && this.§ !%§.bitmapData)
         {
            this.§ !%§.bitmapData.dispose();
            this.§ !%§.bitmapData = null;
         }
      }
      
      private function §>!j§() : void
      {
         this.§`@§ = this.mStage3D.context3D;
         this.§@!P§ = new Dictionary();
         if(this.§`@§)
         {
            this.§`@§.enableErrorChecking = this.§`U§;
            if(this.§`@§.driverInfo.indexOf("Software") >= 0)
            {
               this.§^&§ = true;
            }
         }
         else
         {
            this.§^&§ = true;
         }
         this.§8!8§();
      }
      
      private function §"@§() : void
      {
         if(this.§ null§.numChildren > 0)
         {
            return;
         }
         if(this.§@§ == null)
         {
            this.§@§ = new this.§"Z§();
         }
         if(this.§@§ == null)
         {
            throw new Error("Invalid root class: " + this.§"Z§);
         }
         this.§ null§.addChild(this.§@§);
      }
      
      private function §8!8§() : void
      {
         this.§#5§ = true;
         this.mStage3D.x = this.§1F§.x;
         this.mStage3D.y = this.§1F§.y;
      }
      
      private function render() : void
      {
         if(!§>",§())
         {
            return;
         }
         if(this.§#5§)
         {
            if(this.§`@§)
            {
               this.§`@§.configureBackBuffer(this.§1F§.width,this.§1F§.height,this.§&"5§,false);
            }
            this.§#5§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§&" §;
         this.§&" § = _loc1_;
         this.§ null§.advanceTime(_loc2_);
         this.§[!!§.advanceTime(_loc2_);
         this.§9![§.advanceTime(_loc2_);
         this.§=!x§.§ C§(this.§ null§.stageWidth,this.§ null§.stageHeight);
         this.§=!x§.clear(this.§`@§,this.§?!0§,1);
         this.§=!x§.§%!3§(this.§`@§,this.§8L§);
         this.§ null§.render(this.§=!x§,1);
         this.§=!x§.§+!P§();
         if(this.§@+§ != null)
         {
            this.§@+§();
            this.§@+§ = null;
         }
         this.§=!x§.finishRendering(this.§`@§);
         this.§=!x§.§""4§();
      }
      
      public function set §4!V§(param1:Function) : void
      {
         this.§@+§ = param1;
      }
      
      private function §@"7§() : void
      {
         var _loc3_:BitmapData = null;
         this.§`"%§.x = this.§1F§.x;
         this.§`"%§.y = this.§1F§.y;
         var _loc1_:int = this.§`"%§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§`"%§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§5!'§.addChild(this.§`"%§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§5!'§.removeChild(this.§`"%§);
         }
         if(this.§=!x§ && this.§=!x§.canvas)
         {
            this.§=!x§.setCanvasSize(this.§!M§,this.§>!,§,this.§1F§.width / this.§ null§.stageWidth,this.§1F§.height / this.§ null§.stageHeight);
            _loc3_ = this.§=!x§.canvas;
            if(this.§ !%§.bitmapData != _loc3_)
            {
               this.§ !%§.bitmapData = _loc3_;
            }
            if(this.§5!'§.getChildIndex(this.§`"%§) > 0)
            {
               this.§5!'§.removeChild(this.§`"%§);
               this.§5!'§.addChildAt(this.§`"%§,0);
            }
         }
      }
      
      private function §#&§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§ null§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§ null§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§ null§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§0A§.addChild(_loc2_);
      }
      
      public function §'0§() : void
      {
         §4""§ = this;
      }
      
      public function start() : void
      {
         this.§5p§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§5p§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §^!D§(param1:Boolean) : void
      {
         this.§-!p§ = param1;
      }
      
      private function §<#§() : void
      {
         this.§0![§ = true;
         if(this.§ !%§ == null)
         {
            this.§ !%§ = new Bitmap();
            this.§0A§.addChild(this.§ !%§);
         }
      }
      
      private function §#Z§(param1:ErrorEvent) : void
      {
         this.§<#§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §9!g§(param1:flash.events.Event) : void
      {
         if(this.§[l§)
         {
            return;
         }
         ++§<A§;
         this.§8L§ = §<A§;
         if(this.§=!x§)
         {
            this.§=!x§.dispose();
         }
         if(!§0"<§.§5C§ && this.§`@§)
         {
            this.§#&§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§'0§();
         this.§>!j§();
         this.§"@§();
         if(this.§`@§ && this.§^&§)
         {
            this.mStage3DEnabled = false;
            this.§`@§ = null;
            this.§<#§();
         }
         if(this.§`@§)
         {
            this.§=!x§ = new §'5§();
         }
         else
         {
            this.§=!x§ = new §4m§();
            this.§=!x§.setCanvasSize(this.§!M§,this.§>!,§,this.§1F§.width / this.§ null§.stageWidth,this.§1F§.height / this.§ null§.stageHeight);
            this.§=!x§.clear(null,this.§?!0§);
         }
         this.§9![§.§ K§ = this.§3e§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§'0§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§&" §;
         if(this.§5p§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§`"%§)
         {
            this.§@"7§();
         }
      }
      
      private function §%!B§(param1:flash.events.KeyboardEvent) : void
      {
         this.§'0§();
         this.§ null§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§1=§;
         var _loc5_:Number = param2 / this.§`]§;
         if(!param3)
         {
            this.§ null§.stageWidth = this.§1=§ * _loc4_ / _loc5_;
            this.§ null§.stageHeight = this.§`]§;
         }
         else
         {
            this.§ null§.stageWidth = this.§1=§;
            this.§ null§.stageHeight = this.§`]§ * _loc5_ / _loc4_;
         }
         this.§!M§ = param1;
         this.§>!,§ = param2;
         this.§ null§.dispatchEvent(new §5" §(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §7?§() : void
      {
         this.setCanvasSize(this.§1=§,this.§`]§);
      }
      
      private function §-!L§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§5p§ || !this.§-!p§)
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
               this.§;"&§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§;"&§ = false;
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
               _loc5_ = §[b§.§^!x§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §[b§.§?!6§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §[b§.§%"%§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §[b§.§^!x§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §[b§.§%"%§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§;"&§ ? §[b§.§?!6§ : §[b§.§+!9§;
         }
         if((_loc2_ < this.§1F§.left || _loc2_ >= this.§1F§.right || _loc3_ < this.§1F§.top || _loc3_ >= this.§1F§.bottom) && _loc5_ == §[b§.§^!x§)
         {
            return;
         }
         _loc2_ -= this.§1F§.x;
         _loc3_ -= this.§1F§.y;
         this.§9![§.§0"5§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §7`§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §`D§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§@!P§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§`@§ != null)
         {
            (_loc4_ = this.§`@§.createProgram()).upload(param2,param3);
            this.§@!P§[param1] = _loc4_;
         }
      }
      
      public function §#m§(param1:String) : void
      {
         var _loc2_:Program3D = this.§%" §(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§@!P§[param1];
         }
      }
      
      public function §%" §(param1:String) : Program3D
      {
         return this.§@!P§[param1] as Program3D;
      }
      
      public function §[Z§(param1:String) : Boolean
      {
         return param1 in this.§@!P§;
      }
      
      public function get §@C§() : Boolean
      {
         return this.§5p§;
      }
      
      public function get §1!G§() : §&g§
      {
         return this.§[!!§;
      }
      
      public function get § K§() : Boolean
      {
         return this.§3e§;
      }
      
      public function set § K§(param1:Boolean) : void
      {
         this.§3e§ = param1;
         if(this.§`@§)
         {
            this.§9![§.§ K§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§`U§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§`U§ = param1;
         if(this.§`@§)
         {
            this.§`@§.enableErrorChecking = param1;
         }
      }
      
      public function get §%R§() : int
      {
         return this.§&"5§;
      }
      
      public function set §%R§(param1:int) : void
      {
         this.§&"5§ = param1;
         this.§8!8§();
      }
      
      public function get §9R§() : Rectangle
      {
         return this.§1F§.clone();
      }
      
      public function set §9R§(param1:Rectangle) : void
      {
         this.§1F§ = param1.clone();
         this.§8!8§();
      }
      
      public function get §0A§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§`"%§ == null)
         {
            this.§`"%§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§`"%§.contextMenu = _loc1_;
            this.§@"7§();
         }
         return this.§`"%§;
      }
      
      public function get stage() : §@!i§.Stage
      {
         return this.§ null§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §8T§() : flash.display.Stage
      {
         return this.§5!'§;
      }
      
      public function get §2F§() : Boolean
      {
         return !this.§0![§;
      }
   }
}
