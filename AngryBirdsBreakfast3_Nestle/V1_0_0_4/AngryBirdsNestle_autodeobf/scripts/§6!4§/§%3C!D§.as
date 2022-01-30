package §6!4§
{
   import §-!f§.DisplayObject;
   import §-!f§.Stage;
   import §7"+§.Texture;
   import §>!]§.§07§;
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
   import starling.events.§&!a§;
   import starling.events.§-!C§;
   import starling.events.§2b§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §<!D§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §#7§:Rectangle;
      
      private static var §5!5§:Boolean = true;
      
      private static var §7>§:Boolean;
      
      private static var §?! §:§<!D§;
      
      private static var §>!?§:Boolean;
      
      private static var § !c§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §`!"§:§-!f§.Stage;
      
      private var § 6§:Class;
      
      private var §#!R§:§-!f§.DisplayObject;
      
      private var §3"4§:§07§;
      
      private var §4W§:Boolean;
      
      private var §>!c§:Boolean;
      
      private var §"=§:§8P§;
      
      private var §,!3§:§&!a§;
      
      private var §throw§:int;
      
      private var §2>§:Boolean;
      
      private var §;"§:Boolean;
      
      private var §^y§:Number;
      
      private var §30§:Boolean;
      
      private var §4!S§:flash.display.Stage;
      
      private var §0y§:Sprite;
      
      private var §^u§:Context3D;
      
      private var §%!a§:Dictionary;
      
      private var §0%§:int;
      
      private var §!h§:Boolean;
      
      private var §+!6§:Number;
      
      private var §@3§:Number;
      
      private var §5!k§:Number;
      
      private var § each§:Number;
      
      private var §5!§:Number;
      
      private var §&]§:Number;
      
      private var §8Z§:Function;
      
      private var §?!@§:uint;
      
      private var §@!6§:String;
      
      private var §%"5§:Bitmap;
      
      private var §!H§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §9G§:Boolean = false;
      
      public function §<!D§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§+!6§ = param3.width;
         this.§@3§ = param3.height;
         this.§5!k§ = this.§+!6§;
         this.§ each§ = this.§@3§;
         this.§5!§ = param2.stageWidth;
         this.§&]§ = param2.stageHeight;
         §6!0§ = true;
         this.§]Y§();
         this.§ 6§ = param1;
         §#7§ = param3;
         this.mStage3D = param4;
         this.§`!"§ = new §-!f§.Stage(param3.width,param3.height,param2.color);
         this.§4!S§ = param2;
         this.§,!3§ = new §&!a§(this.§`!"§);
         this.§3"4§ = new §07§();
         this.§throw§ = 0;
         this.§2>§ = false;
         this.§;"§ = false;
         this.§^y§ = getTimer() / 1000;
         this.§%!a§ = new Dictionary();
         for each(_loc6_ in this.§6! §)
         {
            param2.addEventListener(_loc6_,this.§;!"§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8o§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8o§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-!P§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§+S§,false,1,true);
         this.mStage3D.visible = false;
         this.§3!]§(true);
         this.§?!@§ = param2.color;
         this.§@!6§ = param5;
      }
      
      public static function get §,"§() : Boolean
      {
         if(§?!_§)
         {
            return §?!_§.§!h§;
         }
         return true;
      }
      
      public static function §7i§() : Boolean
      {
         return §?! § && (§?! §.§!H§ || §?! §.§^u§ != null && §?! §.§^u§.driverInfo != "Disposed");
      }
      
      private static function §&!§() : void
      {
         §7>§ = true;
      }
      
      public static function get §7!9§() : Rectangle
      {
         return §#7§.clone();
      }
      
      public static function set §7!9§(param1:Rectangle) : void
      {
         §#7§ = param1.clone();
         §&!§();
      }
      
      public static function set §6l§(param1:Boolean) : void
      {
         §5!5§ = param1;
      }
      
      public static function get §6l§() : Boolean
      {
         return §5!5§;
      }
      
      public static function get §?!_§() : §<!D§
      {
         return §?! §;
      }
      
      public static function get §?P§() : §07§
      {
         return !!§?! § ? §?! §.§?P§ : null;
      }
      
      public static function get §7-§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §7-§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §6!0§() : Boolean
      {
         return §>!?§;
      }
      
      public static function set §6!0§(param1:Boolean) : void
      {
         if(§?! § != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §>!?§ = param1;
      }
      
      public static function § 1§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§?!_§)
         {
            return Texture.§+1§(§?!_§.§^u§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§?! §.§^u§)
         {
            §?! §.§^u§.drawToBitmapData(param1);
         }
         else if(§?! §.§"=§.canvas)
         {
            _loc2_ = §?! §.§"=§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §6!>§() : §-!f§.DisplayObject
      {
         return this.§#!R§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§?!@§ = param1;
      }
      
      public function get §?!m§() : Number
      {
         return this.§+!6§;
      }
      
      public function get §!!0§() : Number
      {
         return this.§@3§;
      }
      
      public function §+k§() : void
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
               requestContext3D(this.§@!6§,profile);
            }
            else
            {
               requestContext3D(this.§@!6§);
            }
         }
         catch(e:Error)
         {
            §6N§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§9G§ = true;
         this.§4!S§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8o§,false);
         this.§4!S§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8o§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-!P§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§+S§,false);
         for each(_loc1_ in this.§6! §)
         {
            this.§4!S§.removeEventListener(_loc1_,this.§;!"§,false);
         }
         for each(_loc2_ in this.§%!a§)
         {
            _loc2_.dispose();
         }
         if(this.§^u§)
         {
            this.§^u§.dispose();
         }
         if(this.§,!3§)
         {
            this.§,!3§.dispose();
         }
         if(this.§"=§)
         {
            this.§"=§.dispose();
         }
         if(§?! § == this)
         {
            §?! § = null;
         }
         if(this.§%"5§ && this.§%"5§.bitmapData)
         {
            this.§%"5§.bitmapData.dispose();
            this.§%"5§.bitmapData = null;
         }
      }
      
      private function §'M§() : void
      {
         this.§^u§ = this.mStage3D.context3D;
         this.§%!a§ = new Dictionary();
         if(this.§^u§)
         {
            this.§^u§.enableErrorChecking = this.§;"§;
            if(this.§^u§.driverInfo.indexOf("Software") >= 0)
            {
               this.§!h§ = true;
            }
         }
         else
         {
            this.§!h§ = true;
         }
         §&!§();
      }
      
      private function §'!Q§() : void
      {
         if(this.§`!"§.numChildren > 0)
         {
            return;
         }
         if(this.§#!R§ == null)
         {
            this.§#!R§ = new this.§ 6§();
         }
         if(this.§#!R§ == null)
         {
            throw new Error("Invalid root class: " + this.§ 6§);
         }
         this.§`!"§.addChild(this.§#!R§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§^u§.configureBackBuffer(§#7§.width,§#7§.height,this.§throw§,false);
            §7>§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§7i§())
         {
            return;
         }
         if(§7>§)
         {
            if(this.§^u§)
            {
               this.mStage3D.x = §#7§.x;
               this.mStage3D.y = §#7§.y;
               this.configureBackBuffer();
               if(§7>§)
               {
                  return;
               }
               this.setCanvasSize(§#7§.width,§#7§.height);
            }
            else if(this.§%"5§)
            {
               §7>§ = false;
               this.setCanvasSize(§#7§.width,§#7§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§^y§;
         this.§^y§ = _loc1_;
         this.§`!"§.advanceTime(_loc2_);
         this.§3"4§.advanceTime(_loc2_);
         this.§,!3§.advanceTime(_loc2_);
         this.§"=§.§6D§(this.§`!"§.stageWidth,this.§`!"§.stageHeight);
         this.§"=§.clear(this.§^u§,this.§?!@§,1);
         this.§"=§.§+?§(this.§^u§,this.§0%§);
         this.§`!"§.render(this.§"=§,1);
         this.§"=§.§^!@§();
         if(this.§8Z§ != null)
         {
            this.§8Z§();
            this.§8Z§ = null;
         }
         this.§"=§.finishRendering(this.§^u§);
         this.§"=§.nextFrame();
      }
      
      public function set § A§(param1:Function) : void
      {
         this.§8Z§ = param1;
      }
      
      private function §'L§() : void
      {
         var _loc3_:BitmapData = null;
         this.§0y§.x = §#7§.x;
         this.§0y§.y = §#7§.y;
         var _loc1_:int = this.§0y§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§0y§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§4!S§.addChild(this.§0y§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§4!S§.removeChild(this.§0y§);
         }
         if(this.§"=§ && this.§"=§.canvas)
         {
            this.§"=§.setCanvasSize(this.§5!k§,this.§ each§,§#7§.width / this.§`!"§.stageWidth,§#7§.height / this.§`!"§.stageHeight);
            _loc3_ = this.§"=§.canvas;
            if(this.§%"5§.bitmapData != _loc3_)
            {
               this.§%"5§.bitmapData = _loc3_;
            }
            if(this.§4!S§.getChildIndex(this.§0y§) > 0)
            {
               this.§4!S§.removeChild(this.§0y§);
               this.§4!S§.addChildAt(this.§0y§,0);
            }
         }
      }
      
      private function §6N§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§`!"§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§`!"§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§`!"§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§2!4§.addChild(_loc2_);
      }
      
      public function §]Y§() : void
      {
         §?! § = this;
      }
      
      public function start() : void
      {
         this.§4W§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§4W§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §3!]§(param1:Boolean) : void
      {
         this.§>!c§ = param1;
      }
      
      private function §]<§() : void
      {
         this.§!H§ = true;
         if(this.§%"5§ == null)
         {
            this.§%"5§ = new Bitmap();
            this.§2!4§.addChild(this.§%"5§);
         }
      }
      
      private function §+S§(param1:ErrorEvent) : void
      {
         this.§]<§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §-!P§(param1:flash.events.Event) : void
      {
         if(this.§9G§)
         {
            return;
         }
         ++§ !c§;
         this.§0%§ = § !c§;
         if(this.§"=§)
         {
            this.§"=§.dispose();
         }
         if(!§<!D§.§6!0§ && this.§^u§)
         {
            this.§6N§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§]Y§();
         this.§'M§();
         this.§'!Q§();
         if(this.§^u§ && this.§!h§)
         {
            this.mStage3DEnabled = false;
            this.§^u§ = null;
            this.§]<§();
         }
         if(this.§^u§)
         {
            this.§"=§ = new §8P§();
         }
         else
         {
            this.§"=§ = new §?"$§();
            this.§"=§.setCanvasSize(this.§5!k§,this.§ each§,§#7§.width / this.§`!"§.stageWidth,§#7§.height / this.§`!"§.stageHeight);
            this.§"=§.clear(null,this.§?!@§);
         }
         this.§,!3§.§=C§ = this.§2>§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§]Y§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§^y§;
         if(this.§4W§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§0y§)
         {
            this.§'L§();
         }
      }
      
      private function §8o§(param1:flash.events.KeyboardEvent) : void
      {
         this.§]Y§();
         this.§`!"§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§+!6§;
         var _loc4_:Number = param2 / this.§@3§;
         if(!§6l§)
         {
            this.§`!"§.stageWidth = this.§+!6§ * _loc3_ / _loc4_;
            this.§`!"§.stageHeight = this.§@3§;
         }
         else
         {
            this.§`!"§.stageWidth = this.§+!6§;
            this.§`!"§.stageHeight = this.§@3§ * _loc4_ / _loc3_;
         }
         this.§5!k§ = param1;
         this.§ each§ = param2;
         this.§`!"§.dispatchEvent(new §2b§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §2c§() : void
      {
         this.setCanvasSize(this.§+!6§,this.§@3§);
      }
      
      private function §;!"§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§4W§ || !this.§>!c§)
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
               this.§30§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§30§ = false;
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
               _loc5_ = §-!C§.§#Y§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §-!C§.§#!l§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §-!C§.§&""§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §-!C§.§#Y§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §-!C§.§&""§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§30§ ? §-!C§.§#!l§ : §-!C§.HOVER;
         }
         if((_loc2_ < §#7§.left || _loc2_ >= §#7§.right || _loc3_ < §#7§.top || _loc3_ >= §#7§.bottom) && _loc5_ == §-!C§.§#Y§)
         {
            return;
         }
         _loc2_ -= §#7§.x;
         _loc3_ -= §#7§.y;
         this.§,!3§.§&U§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §6! §() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §0!`§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§%!a§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§^u§ != null)
         {
            (_loc4_ = this.§^u§.createProgram()).upload(param2,param3);
            this.§%!a§[param1] = _loc4_;
         }
      }
      
      public function §+e§(param1:String) : void
      {
         var _loc2_:Program3D = this.§^"'§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§%!a§[param1];
         }
      }
      
      public function §^"'§(param1:String) : Program3D
      {
         return this.§%!a§[param1] as Program3D;
      }
      
      public function §<K§(param1:String) : Boolean
      {
         return param1 in this.§%!a§;
      }
      
      public function get §&y§() : Boolean
      {
         return this.§4W§;
      }
      
      public function get §?P§() : §07§
      {
         return this.§3"4§;
      }
      
      public function get §=C§() : Boolean
      {
         return this.§2>§;
      }
      
      public function set §=C§(param1:Boolean) : void
      {
         this.§2>§ = param1;
         if(this.§^u§)
         {
            this.§,!3§.§=C§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§;"§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§;"§ = param1;
         if(this.§^u§)
         {
            this.§^u§.enableErrorChecking = param1;
         }
      }
      
      public function get §'!]§() : int
      {
         return this.§throw§;
      }
      
      public function set §'!]§(param1:int) : void
      {
         this.§throw§ = param1;
         §&!§();
      }
      
      public function get §2!4§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§0y§ == null)
         {
            this.§0y§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§0y§.contextMenu = _loc1_;
            this.§'L§();
         }
         return this.§0y§;
      }
      
      public function get stage() : §-!f§.Stage
      {
         return this.§`!"§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §[X§() : flash.display.Stage
      {
         return this.§4!S§;
      }
      
      public function get §#!b§() : Boolean
      {
         return !this.§!H§;
      }
   }
}
