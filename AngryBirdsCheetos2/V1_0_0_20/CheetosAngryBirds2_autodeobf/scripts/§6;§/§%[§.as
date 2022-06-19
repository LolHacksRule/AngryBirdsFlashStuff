package §6;§
{
   import §[!-§.§]-§;
   import §]!a§.Texture;
   import §^a§.DisplayObject;
   import §^a§.Stage;
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
   import starling.events.§1a§;
   import starling.events.§?!E§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^!c§;
   
   public class §%[§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §4#§:Rectangle;
      
      private static var §^!=§:Boolean = true;
      
      private static var §"!O§:Boolean;
      
      private static var §8U§:§%[§;
      
      private static var §1!g§:Boolean;
      
      private static var §7h§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §!H§:§^a§.Stage;
      
      private var §1x§:Class;
      
      private var §-u§:§^a§.DisplayObject;
      
      private var §9a§:§]-§;
      
      private var §1!5§:Boolean;
      
      private var §%+§:Boolean;
      
      private var §!_§:§2^§;
      
      private var §'l§:§1a§;
      
      private var §,!8§:int;
      
      private var §-W§:Boolean;
      
      private var §;y§:Boolean;
      
      private var §<,§:Number;
      
      private var § !V§:Boolean;
      
      private var §8T§:flash.display.Stage;
      
      private var §1!i§:Sprite;
      
      private var §<S§:Context3D;
      
      private var §3!N§:Dictionary;
      
      private var §%"§:int;
      
      private var §?F§:Boolean;
      
      private var §7L§:Number;
      
      private var §4!V§:Number;
      
      private var §-R§:Number;
      
      private var §?f§:Number;
      
      private var §7k§:Number;
      
      private var §0H§:Number;
      
      private var §'!W§:Function;
      
      private var §^!0§:uint;
      
      private var §9P§:String;
      
      private var §6n§:Bitmap;
      
      private var §=!L§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §`!<§:Boolean = false;
      
      public function §%[§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§7L§ = param3.width;
         this.§4!V§ = param3.height;
         this.§-R§ = this.§7L§;
         this.§?f§ = this.§4!V§;
         this.§7k§ = param2.stageWidth;
         this.§0H§ = param2.stageHeight;
         §[!e§ = true;
         this.§ !]§();
         this.§1x§ = param1;
         §4#§ = param3;
         this.mStage3D = param4;
         this.§!H§ = new §^a§.Stage(param3.width,param3.height,param2.color);
         this.§8T§ = param2;
         this.§'l§ = new §1a§(this.§!H§);
         this.§9a§ = new §]-§();
         this.§,!8§ = 0;
         this.§-W§ = false;
         this.§;y§ = false;
         this.§<,§ = getTimer() / 1000;
         this.§3!N§ = new Dictionary();
         for each(_loc6_ in this.§'<§)
         {
            param2.addEventListener(_loc6_,this.§#!f§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'t§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'t§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&!S§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§^d§,false,1,true);
         this.mStage3D.visible = false;
         this.§8!L§(true);
         this.§^!0§ = param2.color;
         this.§9P§ = param5;
      }
      
      public static function get §4$§() : Boolean
      {
         if(§`1§)
         {
            return §`1§.§?F§;
         }
         return true;
      }
      
      public static function §2U§() : Boolean
      {
         return §8U§ && (§8U§.§=!L§ || §8U§.§<S§ != null && §8U§.§<S§.driverInfo != "Disposed");
      }
      
      private static function §9!R§() : void
      {
         §"!O§ = true;
      }
      
      public static function get §^'§() : Rectangle
      {
         return §4#§.clone();
      }
      
      public static function set §^'§(param1:Rectangle) : void
      {
         §4#§ = param1.clone();
         §9!R§();
      }
      
      public static function set §%!=§(param1:Boolean) : void
      {
         §^!=§ = param1;
      }
      
      public static function get §%!=§() : Boolean
      {
         return §^!=§;
      }
      
      public static function get §`1§() : §%[§
      {
         return §8U§;
      }
      
      public static function get §6+§() : §]-§
      {
         return !!§8U§ ? §8U§.§6+§ : null;
      }
      
      public static function get §;'§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;'§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §[!e§() : Boolean
      {
         return §1!g§;
      }
      
      public static function set §[!e§(param1:Boolean) : void
      {
         if(§8U§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §1!g§ = param1;
      }
      
      public static function §&!>§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§`1§)
         {
            return Texture.§%!8§(§`1§.§<S§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§8U§.§<S§)
         {
            §8U§.§<S§.drawToBitmapData(param1);
         }
         else if(§8U§.§!_§.canvas)
         {
            _loc2_ = §8U§.§!_§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §-h§() : §^a§.DisplayObject
      {
         return this.§-u§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§^!0§ = param1;
      }
      
      public function get § "§() : Number
      {
         return this.§7L§;
      }
      
      public function get §`5§() : Number
      {
         return this.§4!V§;
      }
      
      public function § !a§() : void
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
               requestContext3D(this.§9P§,profile);
            }
            else
            {
               requestContext3D(this.§9P§);
            }
         }
         catch(e:Error)
         {
            §&]§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§`!<§ = true;
         this.§8T§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'t§,false);
         this.§8T§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'t§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&!S§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§^d§,false);
         for each(_loc1_ in this.§'<§)
         {
            this.§8T§.removeEventListener(_loc1_,this.§#!f§,false);
         }
         for each(_loc2_ in this.§3!N§)
         {
            _loc2_.dispose();
         }
         if(this.§<S§)
         {
            this.§<S§.dispose();
         }
         if(this.§'l§)
         {
            this.§'l§.dispose();
         }
         if(this.§!_§)
         {
            this.§!_§.dispose();
         }
         if(§8U§ == this)
         {
            §8U§ = null;
         }
         if(this.§6n§ && this.§6n§.bitmapData)
         {
            this.§6n§.bitmapData.dispose();
            this.§6n§.bitmapData = null;
         }
      }
      
      private function §2g§() : void
      {
         this.§<S§ = this.mStage3D.context3D;
         this.§3!N§ = new Dictionary();
         if(this.§<S§)
         {
            this.§<S§.enableErrorChecking = this.§;y§;
            if(this.§<S§.driverInfo.indexOf("Software") >= 0)
            {
               this.§?F§ = true;
            }
         }
         else
         {
            this.§?F§ = true;
         }
         §9!R§();
      }
      
      private function §3e§() : void
      {
         if(this.§!H§.numChildren > 0)
         {
            return;
         }
         if(this.§-u§ == null)
         {
            this.§-u§ = new this.§1x§();
         }
         if(this.§-u§ == null)
         {
            throw new Error("Invalid root class: " + this.§1x§);
         }
         this.§!H§.addChild(this.§-u§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§<S§.configureBackBuffer(§4#§.width,§4#§.height,this.§,!8§,false);
            §"!O§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§2U§())
         {
            return;
         }
         if(§"!O§)
         {
            if(this.§<S§)
            {
               this.mStage3D.x = §4#§.x;
               this.mStage3D.y = §4#§.y;
               this.configureBackBuffer();
               if(§"!O§)
               {
                  return;
               }
               this.setCanvasSize(§4#§.width,§4#§.height);
            }
            else if(this.§6n§)
            {
               §"!O§ = false;
               this.setCanvasSize(§4#§.width,§4#§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§<,§;
         this.§<,§ = _loc1_;
         this.§!H§.advanceTime(_loc2_);
         this.§9a§.advanceTime(_loc2_);
         this.§'l§.advanceTime(_loc2_);
         this.§!_§.§+l§(this.§!H§.stageWidth,this.§!H§.stageHeight);
         this.§!_§.clear(this.§<S§,this.§^!0§,1);
         this.§!_§.§0,§(this.§<S§,this.§%"§);
         this.§!H§.render(this.§!_§,1);
         this.§!_§.§9,§();
         if(this.§'!W§ != null)
         {
            this.§'!W§();
            this.§'!W§ = null;
         }
         this.§!_§.finishRendering(this.§<S§);
         this.§!_§.§4!!§();
      }
      
      public function set §]F§(param1:Function) : void
      {
         this.§'!W§ = param1;
      }
      
      private function §5s§() : void
      {
         var _loc3_:BitmapData = null;
         this.§1!i§.x = §4#§.x;
         this.§1!i§.y = §4#§.y;
         var _loc1_:int = this.§1!i§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§1!i§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§8T§.addChild(this.§1!i§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§8T§.removeChild(this.§1!i§);
         }
         if(this.§!_§ && this.§!_§.canvas)
         {
            this.§!_§.setCanvasSize(this.§-R§,this.§?f§,§4#§.width / this.§!H§.stageWidth,§4#§.height / this.§!H§.stageHeight);
            _loc3_ = this.§!_§.canvas;
            if(this.§6n§.bitmapData != _loc3_)
            {
               this.§6n§.bitmapData = _loc3_;
            }
            if(this.§8T§.getChildIndex(this.§1!i§) > 0)
            {
               this.§8T§.removeChild(this.§1!i§);
               this.§8T§.addChildAt(this.§1!i§,0);
            }
         }
      }
      
      private function §&]§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§!H§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§!H§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§!H§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§@Q§.addChild(_loc2_);
      }
      
      public function § !]§() : void
      {
         §8U§ = this;
      }
      
      public function start() : void
      {
         this.§1!5§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§1!5§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §8!L§(param1:Boolean) : void
      {
         this.§%+§ = param1;
      }
      
      private function §[`§() : void
      {
         this.§=!L§ = true;
         if(this.§6n§ == null)
         {
            this.§6n§ = new Bitmap();
            this.§@Q§.addChild(this.§6n§);
         }
      }
      
      private function §^d§(param1:ErrorEvent) : void
      {
         this.§[`§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §&!S§(param1:flash.events.Event) : void
      {
         if(this.§`!<§)
         {
            return;
         }
         ++§7h§;
         this.§%"§ = §7h§;
         if(this.§!_§)
         {
            this.§!_§.dispose();
         }
         if(!§%[§.§[!e§ && this.§<S§)
         {
            this.§&]§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§ !]§();
         this.§2g§();
         this.§3e§();
         if(this.§<S§ && this.§?F§)
         {
            this.mStage3DEnabled = false;
            this.§<S§ = null;
            this.§[`§();
         }
         if(this.§<S§)
         {
            this.§!_§ = new §2^§();
         }
         else
         {
            this.§!_§ = new §3&§();
            this.§!_§.setCanvasSize(this.§-R§,this.§?f§,§4#§.width / this.§!H§.stageWidth,§4#§.height / this.§!H§.stageHeight);
            this.§!_§.clear(null,this.§^!0§);
         }
         this.§'l§.§^F§ = this.§-W§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §,,§(param1:flash.events.Event) : void
      {
         this.§ !]§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§<,§;
         if(this.§1!5§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§1!i§)
         {
            this.§5s§();
         }
      }
      
      private function §'t§(param1:flash.events.KeyboardEvent) : void
      {
         this.§ !]§();
         this.§!H§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§7L§;
         var _loc4_:Number = param2 / this.§4!V§;
         if(!§%!=§)
         {
            this.§!H§.stageWidth = this.§7L§ * _loc3_ / _loc4_;
            this.§!H§.stageHeight = this.§4!V§;
         }
         else
         {
            this.§!H§.stageWidth = this.§7L§;
            this.§!H§.stageHeight = this.§4!V§ * _loc4_ / _loc3_;
         }
         this.§-R§ = param1;
         this.§?f§ = param2;
         this.§!H§.dispatchEvent(new §^!c§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §+!E§() : void
      {
         this.setCanvasSize(this.§7L§,this.§4!V§);
      }
      
      private function §#!f§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§1!5§ || !this.§%+§)
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
               this.§ !V§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§ !V§ = false;
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
               _loc5_ = §?!E§.§^2§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §?!E§.§-!"§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §?!E§.§'s§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §?!E§.§^2§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §?!E§.§'s§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§ !V§ ? §?!E§.§-!"§ : §?!E§.§4R§;
         }
         if((_loc2_ < §4#§.left || _loc2_ >= §4#§.right || _loc3_ < §4#§.top || _loc3_ >= §4#§.bottom) && _loc5_ == §?!E§.§^2§)
         {
            return;
         }
         _loc2_ -= §4#§.x;
         _loc3_ -= §4#§.y;
         this.§'l§.§4!I§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §'<§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §9!E§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§3!N§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§<S§ != null)
         {
            (_loc4_ = this.§<S§.createProgram()).upload(param2,param3);
            this.§3!N§[param1] = _loc4_;
         }
      }
      
      public function §9!X§(param1:String) : void
      {
         var _loc2_:Program3D = this.§-!c§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§3!N§[param1];
         }
      }
      
      public function §-!c§(param1:String) : Program3D
      {
         return this.§3!N§[param1] as Program3D;
      }
      
      public function §@a§(param1:String) : Boolean
      {
         return param1 in this.§3!N§;
      }
      
      public function get §9!3§() : Boolean
      {
         return this.§1!5§;
      }
      
      public function get §6+§() : §]-§
      {
         return this.§9a§;
      }
      
      public function get §^F§() : Boolean
      {
         return this.§-W§;
      }
      
      public function set §^F§(param1:Boolean) : void
      {
         this.§-W§ = param1;
         if(this.§<S§)
         {
            this.§'l§.§^F§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§;y§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§;y§ = param1;
         if(this.§<S§)
         {
            this.§<S§.enableErrorChecking = param1;
         }
      }
      
      public function get §&G§() : int
      {
         return this.§,!8§;
      }
      
      public function set §&G§(param1:int) : void
      {
         this.§,!8§ = param1;
         §9!R§();
      }
      
      public function get §@Q§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§1!i§ == null)
         {
            this.§1!i§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§1!i§.contextMenu = _loc1_;
            this.§5s§();
         }
         return this.§1!i§;
      }
      
      public function get stage() : §^a§.Stage
      {
         return this.§!H§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §+@§() : flash.display.Stage
      {
         return this.§8T§;
      }
      
      public function get §[!Q§() : Boolean
      {
         return !this.§=!L§;
      }
   }
}
