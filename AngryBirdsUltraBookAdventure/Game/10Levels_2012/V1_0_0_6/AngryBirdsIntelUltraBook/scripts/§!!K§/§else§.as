package §!!K§
{
   import §"H§.§+!y§;
   import §4>§.Texture;
   import §7!B§.DisplayObject;
   import §7!B§.Stage;
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
   import starling.events.§"!§;
   import starling.events.§5[§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^K§;
   
   public class §else§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §2!n§:§else§;
      
      private static var §>l§:Boolean;
      
      private static var §!!;§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §8!x§:§7!B§.Stage;
      
      private var §=T§:Class;
      
      private var §0t§:§7!B§.DisplayObject;
      
      private var §-!Q§:§+!y§;
      
      private var §2"§:Boolean;
      
      private var §4Z§:Boolean;
      
      private var §+!U§:§?%§;
      
      private var §0!B§:§5[§;
      
      private var §8!`§:int;
      
      private var §2j§:Boolean;
      
      private var §6$§:Boolean;
      
      private var §8!%§:Number;
      
      private var §22§:Rectangle;
      
      private var §9&§:Boolean;
      
      private var §2s§:flash.display.Stage;
      
      private var §^!a§:Sprite;
      
      private var §[,§:Context3D;
      
      private var §[!"§:Dictionary;
      
      private var §=x§:int;
      
      private var §=!7§:Boolean;
      
      private var §>f§:Number;
      
      private var §`!o§:Number;
      
      private var §[!6§:Number;
      
      private var §3!@§:Number;
      
      private var §&!L§:Number;
      
      private var §0!w§:Number;
      
      private var §?!q§:Function;
      
      private var §>!§:uint;
      
      private var §!!G§:String;
      
      private var §&!H§:Bitmap;
      
      private var §,u§:Boolean = false;
      
      private var §%M§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §=!w§:Boolean = false;
      
      public function §else§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§>f§ = param3.width;
         this.§`!o§ = param3.height;
         this.§[!6§ = this.§>f§;
         this.§3!@§ = this.§`!o§;
         this.§&!L§ = param2.stageWidth;
         this.§0!w§ = param2.stageHeight;
         §]!-§ = true;
         this.§9[§();
         this.§=T§ = param1;
         this.§22§ = param3;
         this.mStage3D = param4;
         this.§8!x§ = new §7!B§.Stage(param3.width,param3.height,param2.color);
         this.§2s§ = param2;
         this.§0!B§ = new §5[§(this.§8!x§);
         this.§-!Q§ = new §+!y§();
         this.§8!`§ = 0;
         this.§2j§ = false;
         this.§6$§ = false;
         this.§8!%§ = getTimer() / 1000;
         this.§[!"§ = new Dictionary();
         for each(_loc6_ in this.§8[§)
         {
            param2.addEventListener(_loc6_,this.§`!D§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ >§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ >§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!r§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§8L§,false,1,true);
         this.mStage3D.visible = false;
         this.§``§(true);
         this.§>!§ = param2.color;
         this.§!!G§ = param5;
      }
      
      public static function get §@g§() : Boolean
      {
         if(§^!A§)
         {
            return §^!A§.§=!7§;
         }
         return true;
      }
      
      public static function §9!i§() : Boolean
      {
         return §2!n§ && (§2!n§.§,u§ || §2!n§.§[,§ != null && §2!n§.§[,§.driverInfo != "Disposed");
      }
      
      public static function get §^!A§() : §else§
      {
         return §2!n§;
      }
      
      public static function get §]!#§() : §+!y§
      {
         return !!§2!n§ ? §2!n§.§]!#§ : null;
      }
      
      public static function get §]!j§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §]!j§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §]!-§() : Boolean
      {
         return §>l§;
      }
      
      public static function set §]!-§(param1:Boolean) : void
      {
         if(§2!n§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §>l§ = param1;
      }
      
      public static function §]N§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§^!A§)
         {
            return Texture.§4!`§(§^!A§.§[,§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§2!n§.§[,§)
         {
            §2!n§.§[,§.drawToBitmapData(param1);
         }
         else if(§2!n§.§+!U§.canvas)
         {
            _loc2_ = §2!n§.§+!U§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §]'§() : §7!B§.DisplayObject
      {
         return this.§0t§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§>!§ = param1;
      }
      
      public function get §4A§() : Number
      {
         return this.§>f§;
      }
      
      public function get §<O§() : Number
      {
         return this.§`!o§;
      }
      
      public function §2!§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§!!G§);
         }
         catch(e:Error)
         {
            §7!L§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§=!w§ = true;
         this.§2s§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ >§,false);
         this.§2s§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ >§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!r§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§8L§,false);
         for each(_loc1_ in this.§8[§)
         {
            this.§2s§.removeEventListener(_loc1_,this.§`!D§,false);
         }
         for each(_loc2_ in this.§[!"§)
         {
            _loc2_.dispose();
         }
         if(this.§[,§)
         {
            this.§[,§.dispose();
         }
         if(this.§0!B§)
         {
            this.§0!B§.dispose();
         }
         if(this.§+!U§)
         {
            this.§+!U§.dispose();
         }
         if(§2!n§ == this)
         {
            §2!n§ = null;
         }
         if(this.§&!H§ && this.§&!H§.bitmapData)
         {
            this.§&!H§.bitmapData.dispose();
            this.§&!H§.bitmapData = null;
         }
      }
      
      private function §1!d§() : void
      {
         this.§[,§ = this.mStage3D.context3D;
         this.§[!"§ = new Dictionary();
         if(this.§[,§)
         {
            this.§[,§.enableErrorChecking = this.§6$§;
            if(this.§[,§.driverInfo.indexOf("Software") >= 0)
            {
               this.§=!7§ = true;
            }
         }
         else
         {
            this.§=!7§ = true;
         }
         this.§=?§();
      }
      
      private function §7!d§() : void
      {
         if(this.§8!x§.numChildren > 0)
         {
            return;
         }
         if(this.§0t§ == null)
         {
            this.§0t§ = new this.§=T§();
         }
         if(this.§0t§ == null)
         {
            throw new Error("Invalid root class: " + this.§=T§);
         }
         this.§8!x§.addChild(this.§0t§);
      }
      
      private function §=?§() : void
      {
         this.§%M§ = true;
         this.mStage3D.x = this.§22§.x;
         this.mStage3D.y = this.§22§.y;
      }
      
      private function render() : void
      {
         if(!§9!i§())
         {
            return;
         }
         if(this.§%M§)
         {
            if(this.§[,§)
            {
               this.§[,§.configureBackBuffer(this.§22§.width,this.§22§.height,this.§8!`§,false);
            }
            this.§%M§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§8!%§;
         this.§8!%§ = _loc1_;
         this.§8!x§.advanceTime(_loc2_);
         this.§-!Q§.advanceTime(_loc2_);
         this.§0!B§.advanceTime(_loc2_);
         this.§+!U§.§ !2§(this.§8!x§.stageWidth,this.§8!x§.stageHeight);
         this.§+!U§.clear(this.§[,§,this.§>!§,1);
         this.§+!U§.§<6§(this.§[,§,this.§=x§);
         this.§8!x§.render(this.§+!U§,1);
         this.§+!U§.§8l§();
         if(this.§?!q§ != null)
         {
            this.§?!q§();
            this.§?!q§ = null;
         }
         this.§+!U§.finishRendering(this.§[,§);
         this.§+!U§.§>G§();
      }
      
      public function set §<Y§(param1:Function) : void
      {
         this.§?!q§ = param1;
      }
      
      private function §'C§() : void
      {
         var _loc3_:BitmapData = null;
         this.§^!a§.x = this.§22§.x;
         this.§^!a§.y = this.§22§.y;
         var _loc1_:int = this.§^!a§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§^!a§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§2s§.addChild(this.§^!a§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§2s§.removeChild(this.§^!a§);
         }
         if(this.§+!U§ && this.§+!U§.canvas)
         {
            this.§+!U§.setCanvasSize(this.§[!6§,this.§3!@§,this.§22§.width / this.§8!x§.stageWidth,this.§22§.height / this.§8!x§.stageHeight);
            _loc3_ = this.§+!U§.canvas;
            if(this.§&!H§.bitmapData != _loc3_)
            {
               this.§&!H§.bitmapData = _loc3_;
            }
            if(this.§2s§.getChildIndex(this.§^!a§) > 0)
            {
               this.§2s§.removeChild(this.§^!a§);
               this.§2s§.addChildAt(this.§^!a§,0);
            }
         }
      }
      
      private function §7!L§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§8!x§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§8!x§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§8!x§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§0O§.addChild(_loc2_);
      }
      
      public function §9[§() : void
      {
         §2!n§ = this;
      }
      
      public function start() : void
      {
         this.§2"§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§2"§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §``§(param1:Boolean) : void
      {
         this.§4Z§ = param1;
      }
      
      private function §8!w§() : void
      {
         this.§,u§ = true;
         if(this.§&!H§ == null)
         {
            this.§&!H§ = new Bitmap();
            this.§0O§.addChild(this.§&!H§);
         }
      }
      
      private function §8L§(param1:ErrorEvent) : void
      {
         this.§8!w§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §3!r§(param1:flash.events.Event) : void
      {
         if(this.§=!w§)
         {
            return;
         }
         ++§!!;§;
         this.§=x§ = §!!;§;
         if(this.§+!U§)
         {
            this.§+!U§.dispose();
         }
         if(!§else§.§]!-§ && this.§[,§)
         {
            this.§7!L§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§9[§();
         this.§1!d§();
         this.§7!d§();
         if(this.§[,§ && this.§=!7§)
         {
            this.mStage3DEnabled = false;
            this.§[,§ = null;
            this.§8!w§();
         }
         if(this.§[,§)
         {
            this.§+!U§ = new §?%§();
         }
         else
         {
            this.§+!U§ = new §&q§();
            this.§+!U§.setCanvasSize(this.§[!6§,this.§3!@§,this.§22§.width / this.§8!x§.stageWidth,this.§22§.height / this.§8!x§.stageHeight);
            this.§+!U§.clear(null,this.§>!§);
         }
         this.§0!B§.§catch§ = this.§2j§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§9[§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§8!%§;
         if(this.§2"§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§^!a§)
         {
            this.§'C§();
         }
      }
      
      private function § >§(param1:flash.events.KeyboardEvent) : void
      {
         this.§9[§();
         this.§8!x§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§>f§;
         var _loc5_:Number = param2 / this.§`!o§;
         if(!param3)
         {
            this.§8!x§.stageWidth = this.§>f§ * _loc4_ / _loc5_;
            this.§8!x§.stageHeight = this.§`!o§;
         }
         else
         {
            this.§8!x§.stageWidth = this.§>f§;
            this.§8!x§.stageHeight = this.§`!o§ * _loc5_ / _loc4_;
         }
         this.§[!6§ = param1;
         this.§3!@§ = param2;
         this.§8!x§.dispatchEvent(new §"!§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §extends§() : void
      {
         this.setCanvasSize(this.§>f§,this.§`!o§);
      }
      
      private function §`!D§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§2"§ || !this.§4Z§)
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
               this.§9&§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§9&§ = false;
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
               _loc5_ = §^K§.§5i§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §^K§.§6!A§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §^K§.§3!p§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §^K§.§5i§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §^K§.§3!p§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§9&§ ? §^K§.§6!A§ : §^K§.§[!7§;
         }
         if((_loc2_ < this.§22§.left || _loc2_ >= this.§22§.right || _loc3_ < this.§22§.top || _loc3_ >= this.§22§.bottom) && _loc5_ == §^K§.§5i§)
         {
            return;
         }
         _loc2_ -= this.§22§.x;
         _loc3_ -= this.§22§.y;
         this.§0!B§.§&!_§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §8[§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §=!!§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§[!"§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§[,§ != null)
         {
            (_loc4_ = this.§[,§.createProgram()).upload(param2,param3);
            this.§[!"§[param1] = _loc4_;
         }
      }
      
      public function §6!!§(param1:String) : void
      {
         var _loc2_:Program3D = this.§6"§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§[!"§[param1];
         }
      }
      
      public function §6"§(param1:String) : Program3D
      {
         return this.§[!"§[param1] as Program3D;
      }
      
      public function §%c§(param1:String) : Boolean
      {
         return param1 in this.§[!"§;
      }
      
      public function get §7U§() : Boolean
      {
         return this.§2"§;
      }
      
      public function get §]!#§() : §+!y§
      {
         return this.§-!Q§;
      }
      
      public function get §catch§() : Boolean
      {
         return this.§2j§;
      }
      
      public function set §catch§(param1:Boolean) : void
      {
         this.§2j§ = param1;
         if(this.§[,§)
         {
            this.§0!B§.§catch§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§6$§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§6$§ = param1;
         if(this.§[,§)
         {
            this.§[,§.enableErrorChecking = param1;
         }
      }
      
      public function get § do§() : int
      {
         return this.§8!`§;
      }
      
      public function set § do§(param1:int) : void
      {
         this.§8!`§ = param1;
         this.§=?§();
      }
      
      public function get §3S§() : Rectangle
      {
         return this.§22§.clone();
      }
      
      public function set §3S§(param1:Rectangle) : void
      {
         this.§22§ = param1.clone();
         this.§=?§();
      }
      
      public function get §0O§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§^!a§ == null)
         {
            this.§^!a§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§^!a§.contextMenu = _loc1_;
            this.§'C§();
         }
         return this.§^!a§;
      }
      
      public function get stage() : §7!B§.Stage
      {
         return this.§8!x§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §0!o§() : flash.display.Stage
      {
         return this.§2s§;
      }
      
      public function get §,i§() : Boolean
      {
         return !this.§,u§;
      }
   }
}
