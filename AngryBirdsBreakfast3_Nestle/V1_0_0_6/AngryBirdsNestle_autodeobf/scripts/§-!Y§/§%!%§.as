package §-!Y§
{
   import §%!7§.§ ]§;
   import §,!q§.DisplayObject;
   import §,!q§.Stage;
   import §?V§.Texture;
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
   import starling.events.§&0§;
   import starling.events.§4Z§;
   import starling.events.§8"!§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §%!%§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §;!c§:Rectangle;
      
      private static var §7!9§:Boolean = true;
      
      private static var §,B§:Boolean;
      
      private static var §2"2§:§%!%§;
      
      private static var §'!u§:Boolean;
      
      private static var §[2§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §'!k§:§,!q§.Stage;
      
      private var §61§:Class;
      
      private var §]"!§:§,!q§.DisplayObject;
      
      private var §!!z§:§ ]§;
      
      private var §3$§:Boolean;
      
      private var §@!J§:Boolean;
      
      private var §9P§:§,!f§;
      
      private var §>c§:§4Z§;
      
      private var §&1§:int;
      
      private var §@!f§:Boolean;
      
      private var §?!l§:Boolean;
      
      private var §#"#§:Number;
      
      private var §?_§:Boolean;
      
      private var §-",§:flash.display.Stage;
      
      private var §@@§:Sprite;
      
      private var § do§:Context3D;
      
      private var §2!"§:Dictionary;
      
      private var §;!w§:int;
      
      private var §%F§:Boolean;
      
      private var §1C§:Number;
      
      private var §0"5§:Number;
      
      private var §8",§:Number;
      
      private var §1!G§:Number;
      
      private var §2L§:Number;
      
      private var §]2§:Number;
      
      private var §%!,§:Function;
      
      private var § ! §:uint;
      
      private var §[!s§:String;
      
      private var §#!j§:Bitmap;
      
      private var §8!@§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §'!2§:Boolean = false;
      
      public function §%!%§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§1C§ = param3.width;
         this.§0"5§ = param3.height;
         this.§8",§ = this.§1C§;
         this.§1!G§ = this.§0"5§;
         this.§2L§ = param2.stageWidth;
         this.§]2§ = param2.stageHeight;
         §4G§ = true;
         this.§[!P§();
         this.§61§ = param1;
         §;!c§ = param3;
         this.mStage3D = param4;
         this.§'!k§ = new §,!q§.Stage(param3.width,param3.height,param2.color);
         this.§-",§ = param2;
         this.§>c§ = new §4Z§(this.§'!k§);
         this.§!!z§ = new § ]§();
         this.§&1§ = 0;
         this.§@!f§ = false;
         this.§?!l§ = false;
         this.§#"#§ = getTimer() / 1000;
         this.§2!"§ = new Dictionary();
         for each(_loc6_ in this.§3&§)
         {
            param2.addEventListener(_loc6_,this.§'"+§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§#!b§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§#!b§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§5!h§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§!!X§,false,1,true);
         this.mStage3D.visible = false;
         this.§@!b§(true);
         this.§ ! § = param2.color;
         this.§[!s§ = param5;
      }
      
      public static function get §4K§() : Boolean
      {
         if(§"T§)
         {
            return §"T§.§%F§;
         }
         return true;
      }
      
      public static function §5"%§() : Boolean
      {
         return §2"2§ && (§2"2§.§8!@§ || §2"2§.§ do§ != null && §2"2§.§ do§.driverInfo != "Disposed");
      }
      
      private static function §1!k§() : void
      {
         §,B§ = true;
      }
      
      public static function get §>"3§() : Rectangle
      {
         return §;!c§.clone();
      }
      
      public static function set §>"3§(param1:Rectangle) : void
      {
         §;!c§ = param1.clone();
         §1!k§();
      }
      
      public static function set §?!i§(param1:Boolean) : void
      {
         §7!9§ = param1;
      }
      
      public static function get §?!i§() : Boolean
      {
         return §7!9§;
      }
      
      public static function get §"T§() : §%!%§
      {
         return §2"2§;
      }
      
      public static function get §8B§() : § ]§
      {
         return !!§2"2§ ? §2"2§.§8B§ : null;
      }
      
      public static function get §6!8§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §6!8§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §4G§() : Boolean
      {
         return §'!u§;
      }
      
      public static function set §4G§(param1:Boolean) : void
      {
         if(§2"2§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §'!u§ = param1;
      }
      
      public static function §2!l§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§"T§)
         {
            return Texture.§"c§(§"T§.§ do§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§2"2§.§ do§)
         {
            §2"2§.§ do§.drawToBitmapData(param1);
         }
         else if(§2"2§.§9P§.canvas)
         {
            _loc2_ = §2"2§.§9P§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §1U§() : §,!q§.DisplayObject
      {
         return this.§]"!§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§ ! § = param1;
      }
      
      public function get §!!0§() : Number
      {
         return this.§1C§;
      }
      
      public function get §+!$§() : Number
      {
         return this.§0"5§;
      }
      
      public function §4!#§() : void
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
               requestContext3D(this.§[!s§,profile);
            }
            else
            {
               requestContext3D(this.§[!s§);
            }
         }
         catch(e:Error)
         {
            §6!x§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§'!2§ = true;
         this.§-",§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§#!b§,false);
         this.§-",§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§#!b§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§5!h§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§!!X§,false);
         for each(_loc1_ in this.§3&§)
         {
            this.§-",§.removeEventListener(_loc1_,this.§'"+§,false);
         }
         for each(_loc2_ in this.§2!"§)
         {
            _loc2_.dispose();
         }
         if(this.§ do§)
         {
            this.§ do§.dispose();
         }
         if(this.§>c§)
         {
            this.§>c§.dispose();
         }
         if(this.§9P§)
         {
            this.§9P§.dispose();
         }
         if(§2"2§ == this)
         {
            §2"2§ = null;
         }
         if(this.§#!j§ && this.§#!j§.bitmapData)
         {
            this.§#!j§.bitmapData.dispose();
            this.§#!j§.bitmapData = null;
         }
      }
      
      private function §9!z§() : void
      {
         this.§ do§ = this.mStage3D.context3D;
         this.§2!"§ = new Dictionary();
         if(this.§ do§)
         {
            this.§ do§.enableErrorChecking = this.§?!l§;
            if(this.§ do§.driverInfo.indexOf("Software") >= 0)
            {
               this.§%F§ = true;
            }
         }
         else
         {
            this.§%F§ = true;
         }
         §1!k§();
      }
      
      private function §!!'§() : void
      {
         if(this.§'!k§.numChildren > 0)
         {
            return;
         }
         if(this.§]"!§ == null)
         {
            this.§]"!§ = new this.§61§();
         }
         if(this.§]"!§ == null)
         {
            throw new Error("Invalid root class: " + this.§61§);
         }
         this.§'!k§.addChild(this.§]"!§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§ do§.configureBackBuffer(§;!c§.width,§;!c§.height,this.§&1§,false);
            §,B§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§5"%§())
         {
            return;
         }
         if(§,B§)
         {
            if(this.§ do§)
            {
               this.mStage3D.x = §;!c§.x;
               this.mStage3D.y = §;!c§.y;
               this.configureBackBuffer();
               if(§,B§)
               {
                  return;
               }
               this.setCanvasSize(§;!c§.width,§;!c§.height);
            }
            else if(this.§#!j§)
            {
               §,B§ = false;
               this.setCanvasSize(§;!c§.width,§;!c§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§#"#§;
         this.§#"#§ = _loc1_;
         this.§'!k§.advanceTime(_loc2_);
         this.§!!z§.advanceTime(_loc2_);
         this.§>c§.advanceTime(_loc2_);
         this.§9P§.§"!?§(this.§'!k§.stageWidth,this.§'!k§.stageHeight);
         this.§9P§.clear(this.§ do§,this.§ ! §,1);
         this.§9P§.§`j§(this.§ do§,this.§;!w§);
         this.§'!k§.render(this.§9P§,1);
         this.§9P§.§89§();
         if(this.§%!,§ != null)
         {
            this.§%!,§();
            this.§%!,§ = null;
         }
         this.§9P§.finishRendering(this.§ do§);
         this.§9P§.nextFrame();
      }
      
      public function set §<n§(param1:Function) : void
      {
         this.§%!,§ = param1;
      }
      
      private function § !X§() : void
      {
         var _loc3_:BitmapData = null;
         this.§@@§.x = §;!c§.x;
         this.§@@§.y = §;!c§.y;
         var _loc1_:int = this.§@@§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@@§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§-",§.addChild(this.§@@§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§-",§.removeChild(this.§@@§);
         }
         if(this.§9P§ && this.§9P§.canvas)
         {
            this.§9P§.setCanvasSize(this.§8",§,this.§1!G§,§;!c§.width / this.§'!k§.stageWidth,§;!c§.height / this.§'!k§.stageHeight);
            _loc3_ = this.§9P§.canvas;
            if(this.§#!j§.bitmapData != _loc3_)
            {
               this.§#!j§.bitmapData = _loc3_;
            }
            if(this.§-",§.getChildIndex(this.§@@§) > 0)
            {
               this.§-",§.removeChild(this.§@@§);
               this.§-",§.addChildAt(this.§@@§,0);
            }
         }
      }
      
      private function §6!x§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§'!k§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§'!k§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§'!k§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§#1§.addChild(_loc2_);
      }
      
      public function §[!P§() : void
      {
         §2"2§ = this;
      }
      
      public function start() : void
      {
         this.§3$§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§3$§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §@!b§(param1:Boolean) : void
      {
         this.§@!J§ = param1;
      }
      
      private function §7L§() : void
      {
         this.§8!@§ = true;
         if(this.§#!j§ == null)
         {
            this.§#!j§ = new Bitmap();
            this.§#1§.addChild(this.§#!j§);
         }
      }
      
      private function §!!X§(param1:ErrorEvent) : void
      {
         this.§7L§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §5!h§(param1:flash.events.Event) : void
      {
         if(this.§'!2§)
         {
            return;
         }
         ++§[2§;
         this.§;!w§ = §[2§;
         if(this.§9P§)
         {
            this.§9P§.dispose();
         }
         if(!§%!%§.§4G§ && this.§ do§)
         {
            this.§6!x§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§[!P§();
         this.§9!z§();
         this.§!!'§();
         if(this.§ do§ && this.§%F§)
         {
            this.mStage3DEnabled = false;
            this.§ do§ = null;
            this.§7L§();
         }
         if(this.§ do§)
         {
            this.§9P§ = new §,!f§();
         }
         else
         {
            this.§9P§ = new §0-§();
            this.§9P§.setCanvasSize(this.§8",§,this.§1!G§,§;!c§.width / this.§'!k§.stageWidth,§;!c§.height / this.§'!k§.stageHeight);
            this.§9P§.clear(null,this.§ ! §);
         }
         this.§>c§.§;X§ = this.§@!f§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§[!P§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§#"#§;
         if(this.§3$§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§@@§)
         {
            this.§ !X§();
         }
      }
      
      private function §#!b§(param1:flash.events.KeyboardEvent) : void
      {
         this.§[!P§();
         this.§'!k§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§1C§;
         var _loc4_:Number = param2 / this.§0"5§;
         if(!§?!i§)
         {
            this.§'!k§.stageWidth = this.§1C§ * _loc3_ / _loc4_;
            this.§'!k§.stageHeight = this.§0"5§;
         }
         else
         {
            this.§'!k§.stageWidth = this.§1C§;
            this.§'!k§.stageHeight = this.§0"5§ * _loc4_ / _loc3_;
         }
         this.§8",§ = param1;
         this.§1!G§ = param2;
         this.§'!k§.dispatchEvent(new §8"!§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §1!K§() : void
      {
         this.setCanvasSize(this.§1C§,this.§0"5§);
      }
      
      private function §'"+§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§3$§ || !this.§@!J§)
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
               this.§?_§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§?_§ = false;
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
               _loc5_ = §&0§.§8!u§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §&0§.§%d§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §&0§.§5!C§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §&0§.§8!u§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §&0§.§5!C§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§?_§ ? §&0§.§%d§ : §&0§.HOVER;
         }
         if((_loc2_ < §;!c§.left || _loc2_ >= §;!c§.right || _loc3_ < §;!c§.top || _loc3_ >= §;!c§.bottom) && _loc5_ == §&0§.§8!u§)
         {
            return;
         }
         _loc2_ -= §;!c§.x;
         _loc3_ -= §;!c§.y;
         this.§>c§.§+!Y§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §3&§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §1"3§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§2!"§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§ do§ != null)
         {
            (_loc4_ = this.§ do§.createProgram()).upload(param2,param3);
            this.§2!"§[param1] = _loc4_;
         }
      }
      
      public function §]G§(param1:String) : void
      {
         var _loc2_:Program3D = this.§1'§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§2!"§[param1];
         }
      }
      
      public function §1'§(param1:String) : Program3D
      {
         return this.§2!"§[param1] as Program3D;
      }
      
      public function §8&§(param1:String) : Boolean
      {
         return param1 in this.§2!"§;
      }
      
      public function get §^!-§() : Boolean
      {
         return this.§3$§;
      }
      
      public function get §8B§() : § ]§
      {
         return this.§!!z§;
      }
      
      public function get §;X§() : Boolean
      {
         return this.§@!f§;
      }
      
      public function set §;X§(param1:Boolean) : void
      {
         this.§@!f§ = param1;
         if(this.§ do§)
         {
            this.§>c§.§;X§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§?!l§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§?!l§ = param1;
         if(this.§ do§)
         {
            this.§ do§.enableErrorChecking = param1;
         }
      }
      
      public function get §,X§() : int
      {
         return this.§&1§;
      }
      
      public function set §,X§(param1:int) : void
      {
         this.§&1§ = param1;
         §1!k§();
      }
      
      public function get §#1§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§@@§ == null)
         {
            this.§@@§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§@@§.contextMenu = _loc1_;
            this.§ !X§();
         }
         return this.§@@§;
      }
      
      public function get stage() : §,!q§.Stage
      {
         return this.§'!k§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §7!a§() : flash.display.Stage
      {
         return this.§-",§;
      }
      
      public function get §8!e§() : Boolean
      {
         return !this.§8!@§;
      }
   }
}
