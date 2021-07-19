package §`!a§
{
   import §%q§.Texture;
   import §6![§.DisplayObject;
   import §6![§.Stage;
   import §9!B§.§?![§;
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
   import starling.events.§"",§;
   import starling.events.§+Y§;
   import starling.events.§4"!§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §1"&§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §['§:Rectangle;
      
      private static var §5e§:Boolean = true;
      
      private static var §3!p§:Boolean;
      
      private static var §7!v§:§1"&§;
      
      private static var §]g§:Boolean;
      
      private static var § c§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §7Y§:§6![§.Stage;
      
      private var §8!V§:Class;
      
      private var §&!P§:§6![§.DisplayObject;
      
      private var §!!6§:§?![§;
      
      private var §"r§:Boolean;
      
      private var §%$§:Boolean;
      
      private var §&>§:§0L§;
      
      private var §"`§:§4"!§;
      
      private var §>!3§:int;
      
      private var §>'§:Boolean;
      
      private var §2&§:Boolean;
      
      private var §<!j§:Number;
      
      private var §<!>§:Boolean;
      
      private var §;"-§:flash.display.Stage;
      
      private var §#!T§:Sprite;
      
      private var §@"#§:Context3D;
      
      private var §=k§:Dictionary;
      
      private var §'K§:int;
      
      private var §@!V§:Boolean;
      
      private var §8z§:Number;
      
      private var §96§:Number;
      
      private var §8!L§:Number;
      
      private var §0S§:Number;
      
      private var §+N§:Number;
      
      private var §^7§:Number;
      
      private var §@_§:Function;
      
      private var §@=§:uint;
      
      private var §^!<§:String;
      
      private var §^r§:Bitmap;
      
      private var §>!q§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §>!i§:Boolean = false;
      
      private var §#?§:Boolean = false;
      
      public function §1"&§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§8z§ = param3.width;
         this.§96§ = param3.height;
         this.§8!L§ = this.§8z§;
         this.§0S§ = this.§96§;
         this.§+N§ = param2.stageWidth;
         this.§^7§ = param2.stageHeight;
         §;J§ = true;
         this.§4u§();
         this.§8!V§ = param1;
         §['§ = param3;
         this.mStage3D = param4;
         this.§7Y§ = new §6![§.Stage(param3.width,param3.height,param2.color);
         this.§;"-§ = param2;
         this.§"`§ = new §4"!§(this.§7Y§);
         this.§!!6§ = new §?![§();
         this.§>!3§ = 0;
         this.§>'§ = false;
         this.§2&§ = false;
         this.§<!j§ = getTimer() / 1000;
         this.§=k§ = new Dictionary();
         for each(_loc6_ in this.§-!§)
         {
            param2.addEventListener(_loc6_,this.§&r§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=h§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=h§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%;§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§,!f§,false,1,true);
         this.mStage3D.visible = false;
         this.§1J§(true);
         this.§@=§ = param2.color;
         this.§^!<§ = param5;
      }
      
      public static function get §'!g§() : Boolean
      {
         if(§1i§)
         {
            return §1i§.§@!V§;
         }
         return true;
      }
      
      public static function § !R§() : Boolean
      {
         return §7!v§ && (§7!v§.§>!q§ || §7!v§.§@"#§ != null && §7!v§.§@"#§.driverInfo != "Disposed");
      }
      
      private static function §4x§() : void
      {
         §3!p§ = true;
      }
      
      public static function get §>!m§() : Rectangle
      {
         return §['§.clone();
      }
      
      public static function set §>!m§(param1:Rectangle) : void
      {
         §['§ = param1.clone();
         §4x§();
      }
      
      public static function set §"C§(param1:Boolean) : void
      {
         §5e§ = param1;
      }
      
      public static function get §"C§() : Boolean
      {
         return §5e§;
      }
      
      public static function get §1i§() : §1"&§
      {
         return §7!v§;
      }
      
      public static function get §"!U§() : §?![§
      {
         return !!§7!v§ ? §7!v§.§"!U§ : null;
      }
      
      public static function get §@!;§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §@!;§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §;J§() : Boolean
      {
         return §]g§;
      }
      
      public static function set §;J§(param1:Boolean) : void
      {
         if(§7!v§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §]g§ = param1;
      }
      
      public static function §7!#§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§1i§)
         {
            return Texture.§5r§(§1i§.§@"#§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§7!v§.§@"#§)
         {
            §7!v§.§@"#§.drawToBitmapData(param1);
         }
         else if(§7!v§.§&>§.canvas)
         {
            _loc2_ = §7!v§.§&>§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §8U§() : §6![§.DisplayObject
      {
         return this.§&!P§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§@=§ = param1;
      }
      
      public function get §5_§() : Number
      {
         return this.§8z§;
      }
      
      public function get §1!b§() : Number
      {
         return this.§96§;
      }
      
      public function §4![§() : void
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
               profile = !!this.§#?§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§^!<§,profile);
            }
            else
            {
               requestContext3D(this.§^!<§);
            }
         }
         catch(e:Error)
         {
            §8g§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§>!i§ = true;
         this.§;"-§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=h§,false);
         this.§;"-§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=h§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%;§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§,!f§,false);
         for each(_loc1_ in this.§-!§)
         {
            this.§;"-§.removeEventListener(_loc1_,this.§&r§,false);
         }
         for each(_loc2_ in this.§=k§)
         {
            _loc2_.dispose();
         }
         if(this.§@"#§)
         {
            this.§@"#§.dispose();
         }
         if(this.§"`§)
         {
            this.§"`§.dispose();
         }
         if(this.§&>§)
         {
            this.§&>§.dispose();
         }
         if(§7!v§ == this)
         {
            §7!v§ = null;
         }
         if(this.§^r§ && this.§^r§.bitmapData)
         {
            this.§^r§.bitmapData.dispose();
            this.§^r§.bitmapData = null;
         }
      }
      
      private function §4!i§() : void
      {
         this.§@"#§ = this.mStage3D.context3D;
         this.§=k§ = new Dictionary();
         if(this.§@"#§)
         {
            this.§@"#§.enableErrorChecking = this.§2&§;
            if(this.§@"#§.driverInfo.indexOf("Software") >= 0)
            {
               this.§@!V§ = true;
            }
         }
         else
         {
            this.§@!V§ = true;
         }
         §4x§();
      }
      
      private function §&f§() : void
      {
         if(this.§7Y§.numChildren > 0)
         {
            return;
         }
         if(this.§&!P§ == null)
         {
            this.§&!P§ = new this.§8!V§();
         }
         if(this.§&!P§ == null)
         {
            throw new Error("Invalid root class: " + this.§8!V§);
         }
         this.§7Y§.addChild(this.§&!P§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§@"#§.configureBackBuffer(§['§.width,§['§.height,this.§>!3§,false);
            §3!p§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§ !R§())
         {
            return;
         }
         if(§3!p§)
         {
            if(this.§@"#§)
            {
               this.mStage3D.x = §['§.x;
               this.mStage3D.y = §['§.y;
               this.configureBackBuffer();
               if(§3!p§)
               {
                  return;
               }
               this.setCanvasSize(§['§.width,§['§.height);
            }
            else if(this.§^r§)
            {
               §3!p§ = false;
               this.setCanvasSize(§['§.width,§['§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§<!j§;
         this.§<!j§ = _loc1_;
         this.§7Y§.advanceTime(_loc2_);
         this.§!!6§.advanceTime(_loc2_);
         this.§"`§.advanceTime(_loc2_);
         this.§&>§.§0!n§(this.§7Y§.stageWidth,this.§7Y§.stageHeight);
         this.§&>§.clear(this.§@"#§,this.§@=§,1);
         this.§&>§.§ N§(this.§@"#§,this.§'K§);
         this.§7Y§.render(this.§&>§,1);
         this.§&>§.§6"$§();
         if(this.§@_§ != null)
         {
            this.§@_§();
            this.§@_§ = null;
         }
         this.§&>§.finishRendering(this.§@"#§);
         this.§&>§.nextFrame();
      }
      
      public function set §7!]§(param1:Function) : void
      {
         this.§@_§ = param1;
      }
      
      private function §4"'§() : void
      {
         var _loc3_:BitmapData = null;
         this.§#!T§.x = §['§.x;
         this.§#!T§.y = §['§.y;
         var _loc1_:int = this.§#!T§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§#!T§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§;"-§.addChild(this.§#!T§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§;"-§.removeChild(this.§#!T§);
         }
         if(this.§&>§ && this.§&>§.canvas)
         {
            this.§&>§.setCanvasSize(this.§8!L§,this.§0S§,§['§.width / this.§7Y§.stageWidth,§['§.height / this.§7Y§.stageHeight);
            _loc3_ = this.§&>§.canvas;
            if(this.§^r§.bitmapData != _loc3_)
            {
               this.§^r§.bitmapData = _loc3_;
            }
            if(this.§;"-§.getChildIndex(this.§#!T§) > 0)
            {
               this.§;"-§.removeChild(this.§#!T§);
               this.§;"-§.addChildAt(this.§#!T§,0);
            }
         }
      }
      
      private function §8g§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§7Y§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§7Y§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§7Y§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§2!u§.addChild(_loc2_);
      }
      
      public function §4u§() : void
      {
         §7!v§ = this;
      }
      
      public function start() : void
      {
         this.§"r§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§"r§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §1J§(param1:Boolean) : void
      {
         this.§%$§ = param1;
      }
      
      private function §^@§() : void
      {
         this.§>!q§ = true;
         if(this.§^r§ == null)
         {
            this.§^r§ = new Bitmap();
            this.§2!u§.addChild(this.§^r§);
         }
      }
      
      private function §,!f§(param1:ErrorEvent) : void
      {
         this.§^@§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §%;§(param1:flash.events.Event) : void
      {
         if(this.§>!i§)
         {
            return;
         }
         if(!this.§#?§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
         {
            this.§#?§ = true;
            this.§4![§();
            return;
         }
         ++§ c§;
         this.§'K§ = § c§;
         if(this.§&>§)
         {
            this.§&>§.dispose();
         }
         if(!§1"&§.§;J§ && this.§@"#§)
         {
            this.§8g§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§4u§();
         this.§4!i§();
         this.§&f§();
         if(this.§@"#§ && this.§@!V§)
         {
            this.mStage3DEnabled = false;
            this.§@"#§ = null;
            this.§^@§();
         }
         if(this.§@"#§)
         {
            this.§&>§ = new §0L§();
         }
         else
         {
            this.§&>§ = new §=!W§();
            this.§&>§.setCanvasSize(this.§8!L§,this.§0S§,§['§.width / this.§7Y§.stageWidth,§['§.height / this.§7Y§.stageHeight);
            this.§&>§.clear(null,this.§@=§);
         }
         this.§"`§.§+_§ = this.§>'§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§4u§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§<!j§;
         if(this.§"r§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§#!T§)
         {
            this.§4"'§();
         }
      }
      
      private function §=h§(param1:flash.events.KeyboardEvent) : void
      {
         this.§4u§();
         this.§7Y§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§8z§;
         var _loc4_:Number = param2 / this.§96§;
         if(!§"C§)
         {
            this.§7Y§.stageWidth = this.§8z§ * _loc3_ / _loc4_;
            this.§7Y§.stageHeight = this.§96§;
         }
         else
         {
            this.§7Y§.stageWidth = this.§8z§;
            this.§7Y§.stageHeight = this.§96§ * _loc4_ / _loc3_;
         }
         this.§8!L§ = param1;
         this.§0S§ = param2;
         this.§7Y§.dispatchEvent(new §+Y§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §&!x§() : void
      {
         this.setCanvasSize(this.§8z§,this.§96§);
      }
      
      private function §&r§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§"r§ || !this.§%$§)
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
               this.§<!>§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§<!>§ = false;
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
               _loc5_ = §"",§.§"!A§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §"",§.§#D§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §"",§.§5!=§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §"",§.§"!A§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §"",§.§5!=§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§<!>§ ? §"",§.§#D§ : §"",§.HOVER;
         }
         if((_loc2_ < §['§.left || _loc2_ >= §['§.right || _loc3_ < §['§.top || _loc3_ >= §['§.bottom) && _loc5_ == §"",§.§"!A§)
         {
            return;
         }
         _loc2_ -= §['§.x;
         _loc3_ -= §['§.y;
         this.§"`§.§5!?§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §-!§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §'!B§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§=k§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§@"#§ != null)
         {
            (_loc4_ = this.§@"#§.createProgram()).upload(param2,param3);
            this.§=k§[param1] = _loc4_;
         }
      }
      
      public function §2!P§(param1:String) : void
      {
         var _loc2_:Program3D = this.§>p§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§=k§[param1];
         }
      }
      
      public function §>p§(param1:String) : Program3D
      {
         return this.§=k§[param1] as Program3D;
      }
      
      public function §^-§(param1:String) : Boolean
      {
         return param1 in this.§=k§;
      }
      
      public function get §<![§() : Boolean
      {
         return this.§"r§;
      }
      
      public function get §"!U§() : §?![§
      {
         return this.§!!6§;
      }
      
      public function get §+_§() : Boolean
      {
         return this.§>'§;
      }
      
      public function set §+_§(param1:Boolean) : void
      {
         this.§>'§ = param1;
         if(this.§@"#§)
         {
            this.§"`§.§+_§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§2&§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§2&§ = param1;
         if(this.§@"#§)
         {
            this.§@"#§.enableErrorChecking = param1;
         }
      }
      
      public function get §"'§() : int
      {
         return this.§>!3§;
      }
      
      public function set §"'§(param1:int) : void
      {
         this.§>!3§ = param1;
         §4x§();
      }
      
      public function get §2!u§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§#!T§ == null)
         {
            this.§#!T§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§#!T§.contextMenu = _loc1_;
            this.§4"'§();
         }
         return this.§#!T§;
      }
      
      public function get stage() : §6![§.Stage
      {
         return this.§7Y§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §#!x§() : flash.display.Stage
      {
         return this.§;"-§;
      }
      
      public function get §]!8§() : Boolean
      {
         return !this.§>!q§;
      }
   }
}
