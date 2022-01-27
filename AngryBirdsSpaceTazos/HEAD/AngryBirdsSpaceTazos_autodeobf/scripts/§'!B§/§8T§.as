package §'!B§
{
   import §&!]§.DisplayObject;
   import §&!]§.Stage;
   import §7!8§.§-!n§;
   import §9"@§.Texture;
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
   import starling.events.§+"1§;
   import starling.events.§5!L§;
   import starling.events.§?=§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §8T§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §?!1§:Rectangle;
      
      private static var §!"B§:Boolean = true;
      
      private static var §#?§:Boolean;
      
      private static var §8,§:§8T§;
      
      private static var §7t§:Boolean;
      
      private static var §37§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §6N§:§&!]§.Stage;
      
      private var §=h§:Class;
      
      private var §!!N§:§&!]§.DisplayObject;
      
      private var §"y§:§-!n§;
      
      private var §'!9§:Boolean;
      
      private var §&9§:Boolean;
      
      private var §5j§:§0!p§;
      
      private var § M§:§5!L§;
      
      private var §,!J§:int;
      
      private var §;"5§:Boolean;
      
      private var §?,§:Boolean;
      
      private var §?!2§:Number;
      
      private var §&O§:Boolean;
      
      private var §[!y§:flash.display.Stage;
      
      private var §9D§:Sprite;
      
      private var §&!T§:Context3D;
      
      private var §`"+§:Dictionary;
      
      private var §4o§:int;
      
      private var § !$§:Boolean;
      
      private var §%!l§:Number;
      
      private var §"A§:Number;
      
      private var §@!P§:Number;
      
      private var §&![§:Number;
      
      private var §var§:Number;
      
      private var §=!o§:Number;
      
      private var §75§:Function;
      
      private var §^!6§:uint;
      
      private var §05§:String;
      
      private var §'!G§:Bitmap;
      
      private var §5"5§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §+!o§:Boolean = false;
      
      public function §8T§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§%!l§ = param3.width;
         this.§"A§ = param3.height;
         this.§@!P§ = this.§%!l§;
         this.§&![§ = this.§"A§;
         this.§var§ = param2.stageWidth;
         this.§=!o§ = param2.stageHeight;
         §^y§ = true;
         this.§95§();
         this.§=h§ = param1;
         §?!1§ = param3;
         this.mStage3D = param4;
         this.§6N§ = new §&!]§.Stage(param3.width,param3.height,param2.color);
         this.§[!y§ = param2;
         this.§ M§ = new §5!L§(this.§6N§);
         this.§"y§ = new §-!n§();
         this.§,!J§ = 0;
         this.§;"5§ = false;
         this.§?,§ = false;
         this.§?!2§ = getTimer() / 1000;
         this.§`"+§ = new Dictionary();
         for each(_loc6_ in this.§"!p§)
         {
            param2.addEventListener(_loc6_,this.§4n§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§9!k§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§9!k§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§"!=§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§12§,false,1,true);
         this.mStage3D.visible = false;
         this.§@>§(true);
         this.§^!6§ = param2.color;
         this.§05§ = param5;
      }
      
      public static function get §`!q§() : Boolean
      {
         if(§5!Y§)
         {
            return §5!Y§.§ !$§;
         }
         return true;
      }
      
      public static function §=M§() : Boolean
      {
         §§push(Boolean(§8,§));
         if(Boolean(§8,§))
         {
            §§pop();
            §§push(Boolean(§8,§.§5"5§));
            if(!Boolean(§8,§.§5"5§))
            {
               §§pop();
               return §8,§.§&!T§ != null && §8,§.§&!T§.driverInfo != "Disposed";
            }
         }
         §§goto(addr31);
      }
      
      private static function §2";§() : void
      {
         §#?§ = true;
      }
      
      public static function get §5"-§() : Rectangle
      {
         return §?!1§.clone();
      }
      
      public static function set §5"-§(param1:Rectangle) : void
      {
         §?!1§ = param1.clone();
         §2";§();
      }
      
      public static function set §2"@§(param1:Boolean) : void
      {
         §!"B§ = param1;
      }
      
      public static function get §2"@§() : Boolean
      {
         return §!"B§;
      }
      
      public static function get §5!Y§() : §8T§
      {
         return §8,§;
      }
      
      public static function get §?!c§() : §-!n§
      {
         return !!§8,§ ? §8,§.§?!c§ : null;
      }
      
      public static function get § H§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set § H§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §^y§() : Boolean
      {
         return §7t§;
      }
      
      public static function set §^y§(param1:Boolean) : void
      {
         if(§8,§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §7t§ = param1;
      }
      
      public static function §4"F§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§5!Y§)
         {
            return Texture.§]!Z§(§5!Y§.§&!T§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§8,§.§&!T§)
         {
            §8,§.§&!T§.drawToBitmapData(param1);
         }
         else if(§8,§.§5j§.canvas)
         {
            _loc2_ = §8,§.§5j§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §1! §() : §&!]§.DisplayObject
      {
         return this.§!!N§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§^!6§ = param1;
      }
      
      public function get §@+§() : Number
      {
         return this.§%!l§;
      }
      
      public function get §[!>§() : Number
      {
         return this.§"A§;
      }
      
      public function §@! §() : void
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
               requestContext3D(this.§05§,profile);
            }
            else
            {
               requestContext3D(this.§05§);
            }
         }
         catch(e:Error)
         {
            §!l§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§+!o§ = true;
         this.§[!y§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§9!k§,false);
         this.§[!y§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§9!k§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§"!=§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§12§,false);
         for each(_loc1_ in this.§"!p§)
         {
            this.§[!y§.removeEventListener(_loc1_,this.§4n§,false);
         }
         for each(_loc2_ in this.§`"+§)
         {
            _loc2_.dispose();
         }
         if(this.§&!T§)
         {
            this.§&!T§.dispose();
         }
         if(this.§ M§)
         {
            this.§ M§.dispose();
         }
         if(this.§5j§)
         {
            this.§5j§.dispose();
         }
         if(§8,§ == this)
         {
            §8,§ = null;
         }
         if(this.§'!G§ && this.§'!G§.bitmapData)
         {
            this.§'!G§.bitmapData.dispose();
            this.§'!G§.bitmapData = null;
         }
      }
      
      private function §,"-§() : void
      {
         this.§&!T§ = this.mStage3D.context3D;
         this.§`"+§ = new Dictionary();
         if(this.§&!T§)
         {
            this.§&!T§.enableErrorChecking = this.§?,§;
            if(this.§&!T§.driverInfo.indexOf("Software") >= 0)
            {
               this.§ !$§ = true;
            }
         }
         else
         {
            this.§ !$§ = true;
         }
         §2";§();
      }
      
      private function §=!v§() : void
      {
         if(this.§6N§.numChildren > 0)
         {
            return;
         }
         if(this.§!!N§ == null)
         {
            this.§!!N§ = new this.§=h§();
         }
         if(this.§!!N§ == null)
         {
            throw new Error("Invalid root class: " + this.§=h§);
         }
         this.§6N§.addChild(this.§!!N§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§&!T§.configureBackBuffer(§?!1§.width,§?!1§.height,this.§,!J§,false);
            §#?§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§=M§())
         {
            return;
         }
         if(§#?§)
         {
            if(this.§&!T§)
            {
               this.mStage3D.x = §?!1§.x;
               this.mStage3D.y = §?!1§.y;
               this.configureBackBuffer();
               if(§#?§)
               {
                  return;
               }
               this.setCanvasSize(§?!1§.width,§?!1§.height);
            }
            else if(this.§'!G§)
            {
               §#?§ = false;
               this.setCanvasSize(§?!1§.width,§?!1§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§?!2§;
         this.§?!2§ = _loc1_;
         this.§6N§.advanceTime(_loc2_);
         this.§"y§.advanceTime(_loc2_);
         this.§ M§.advanceTime(_loc2_);
         this.§5j§.§,!d§(this.§6N§.stageWidth,this.§6N§.stageHeight);
         this.§5j§.clear(this.§&!T§,this.§^!6§,1);
         this.§5j§.§3g§(this.§&!T§,this.§4o§);
         this.§6N§.render(this.§5j§,1);
         this.§5j§.§7!A§();
         if(this.§75§ != null)
         {
            this.§75§();
            this.§75§ = null;
         }
         this.§5j§.finishRendering(this.§&!T§);
         this.§5j§.nextFrame();
      }
      
      public function set §+!J§(param1:Function) : void
      {
         this.§75§ = param1;
      }
      
      private function §`!U§() : void
      {
         var _loc3_:BitmapData = null;
         this.§9D§.x = §?!1§.x;
         this.§9D§.y = §?!1§.y;
         var _loc1_:int = this.§9D§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§9D§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§[!y§.addChild(this.§9D§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§[!y§.removeChild(this.§9D§);
         }
         if(this.§5j§ && this.§5j§.canvas)
         {
            this.§5j§.setCanvasSize(this.§@!P§,this.§&![§,§?!1§.width / this.§6N§.stageWidth,§?!1§.height / this.§6N§.stageHeight);
            _loc3_ = this.§5j§.canvas;
            if(this.§'!G§.bitmapData != _loc3_)
            {
               this.§'!G§.bitmapData = _loc3_;
            }
            if(this.§[!y§.getChildIndex(this.§9D§) > 0)
            {
               this.§[!y§.removeChild(this.§9D§);
               this.§[!y§.addChildAt(this.§9D§,0);
            }
         }
      }
      
      private function §!l§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§6N§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§6N§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§6N§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§#![§.addChild(_loc2_);
      }
      
      public function §95§() : void
      {
         §8,§ = this;
      }
      
      public function start() : void
      {
         this.§'!9§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§'!9§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §@>§(param1:Boolean) : void
      {
         this.§&9§ = param1;
      }
      
      private function §1A§() : void
      {
         this.§5"5§ = true;
         if(this.§'!G§ == null)
         {
            this.§'!G§ = new Bitmap();
            this.§#![§.addChild(this.§'!G§);
         }
      }
      
      private function §12§(param1:ErrorEvent) : void
      {
         this.§1A§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §"!=§(param1:flash.events.Event) : void
      {
         if(this.§+!o§)
         {
            return;
         }
         ++§37§;
         this.§4o§ = §37§;
         if(this.§5j§)
         {
            this.§5j§.dispose();
         }
         if(!§8T§.§^y§ && this.§&!T§)
         {
            this.§!l§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§95§();
         this.§,"-§();
         this.§=!v§();
         if(this.§&!T§ && this.§ !$§)
         {
            this.mStage3DEnabled = false;
            this.§&!T§ = null;
            this.§1A§();
         }
         if(this.§&!T§)
         {
            this.§5j§ = new §0!p§();
         }
         else
         {
            this.§5j§ = new §2!?§();
            this.§5j§.setCanvasSize(this.§@!P§,this.§&![§,§?!1§.width / this.§6N§.stageWidth,§?!1§.height / this.§6N§.stageHeight);
            this.§5j§.clear(null,this.§^!6§);
         }
         this.§ M§.§5,§ = this.§;"5§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§95§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§?!2§;
         if(this.§'!9§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§9D§)
         {
            this.§`!U§();
         }
      }
      
      private function §9!k§(param1:flash.events.KeyboardEvent) : void
      {
         this.§95§();
         this.§6N§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§%!l§;
         var _loc4_:Number = param2 / this.§"A§;
         if(!§2"@§)
         {
            this.§6N§.stageWidth = this.§%!l§ * _loc3_ / _loc4_;
            this.§6N§.stageHeight = this.§"A§;
         }
         else
         {
            this.§6N§.stageWidth = this.§%!l§;
            this.§6N§.stageHeight = this.§"A§ * _loc4_ / _loc3_;
         }
         this.§@!P§ = param1;
         this.§&![§ = param2;
         this.§6N§.dispatchEvent(new §+"1§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §86§() : void
      {
         this.setCanvasSize(this.§%!l§,this.§"A§);
      }
      
      private function §4n§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§'!9§ || !this.§&9§)
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
               this.§&O§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§&O§ = false;
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
               _loc5_ = §?=§.§8q§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §?=§.§2!&§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §?=§.§;!J§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §?=§.§8q§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §?=§.§;!J§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§&O§ ? §?=§.§2!&§ : §?=§.§'A§;
         }
         if((_loc2_ < §?!1§.left || _loc2_ >= §?!1§.right || _loc3_ < §?!1§.top || _loc3_ >= §?!1§.bottom) && _loc5_ == §?=§.§8q§)
         {
            return;
         }
         _loc2_ -= §?!1§.x;
         _loc3_ -= §?!1§.y;
         this.§ M§.§33§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §"!p§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §2u§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§`"+§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§&!T§ != null)
         {
            (_loc4_ = this.§&!T§.createProgram()).upload(param2,param3);
            this.§`"+§[param1] = _loc4_;
         }
      }
      
      public function §8!Q§(param1:String) : void
      {
         var _loc2_:Program3D = this.§+i§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§`"+§[param1];
         }
      }
      
      public function §+i§(param1:String) : Program3D
      {
         return this.§`"+§[param1] as Program3D;
      }
      
      public function §["E§(param1:String) : Boolean
      {
         return param1 in this.§`"+§;
      }
      
      public function get §!"4§() : Boolean
      {
         return this.§'!9§;
      }
      
      public function get §?!c§() : §-!n§
      {
         return this.§"y§;
      }
      
      public function get §5,§() : Boolean
      {
         return this.§;"5§;
      }
      
      public function set §5,§(param1:Boolean) : void
      {
         this.§;"5§ = param1;
         if(this.§&!T§)
         {
            this.§ M§.§5,§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§?,§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§?,§ = param1;
         if(this.§&!T§)
         {
            this.§&!T§.enableErrorChecking = param1;
         }
      }
      
      public function get §5!4§() : int
      {
         return this.§,!J§;
      }
      
      public function set §5!4§(param1:int) : void
      {
         this.§,!J§ = param1;
         §2";§();
      }
      
      public function get §#![§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§9D§ == null)
         {
            this.§9D§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§9D§.contextMenu = _loc1_;
            this.§`!U§();
         }
         return this.§9D§;
      }
      
      public function get stage() : §&!]§.Stage
      {
         return this.§6N§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §7!r§() : flash.display.Stage
      {
         return this.§[!y§;
      }
      
      public function get §6,§() : Boolean
      {
         return !this.§5"5§;
      }
   }
}
