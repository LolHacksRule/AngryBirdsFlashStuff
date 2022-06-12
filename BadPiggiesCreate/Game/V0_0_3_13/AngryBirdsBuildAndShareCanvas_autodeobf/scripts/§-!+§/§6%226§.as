package §-!+§
{
   import §9!G§.§!!I§;
   import §@!#§.Texture;
   import §`L§.DisplayObject;
   import §`L§.Stage;
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
   import starling.events.§1!H§;
   import starling.events.§;[§;
   import starling.events.§=3§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §6"6§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §7=§:§6"6§;
      
      private static var §-t§:Boolean;
      
      private static var §=!5§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §="!§:§`L§.Stage;
      
      private var §@]§:Class;
      
      private var §9=§:§`L§.DisplayObject;
      
      private var §#!Z§:§!!I§;
      
      private var §+y§:Boolean;
      
      private var §[L§:Boolean;
      
      private var §`d§:§,7§;
      
      private var §3!>§:§=3§;
      
      private var §;!C§:int;
      
      private var §2!_§:Boolean;
      
      private var §`"7§:Boolean;
      
      private var §=">§:Number;
      
      private var §7^§:Rectangle;
      
      private var §&!d§:Boolean;
      
      private var §,!8§:flash.display.Stage;
      
      private var §[B§:Sprite;
      
      private var §^!`§:Context3D;
      
      private var §[7§:Dictionary;
      
      private var §]">§:int;
      
      private var § !W§:Boolean;
      
      private var §"Z§:Number;
      
      private var §`!a§:Number;
      
      private var §'!@§:Number;
      
      private var §1"6§:Number;
      
      private var §=!M§:Number;
      
      private var §#!n§:Number;
      
      private var §9!,§:Function;
      
      private var §>N§:uint;
      
      private var §`!8§:String;
      
      private var §,"$§:Bitmap;
      
      private var §'""§:Boolean = false;
      
      private var §-!z§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §%!f§:Boolean = false;
      
      public function §6"6§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§"Z§ = param3.width;
         this.§`!a§ = param3.height;
         this.§'!@§ = this.§"Z§;
         this.§1"6§ = this.§`!a§;
         this.§=!M§ = param2.stageWidth;
         this.§#!n§ = param2.stageHeight;
         §<Y§ = true;
         this.§5!z§();
         this.§@]§ = param1;
         this.§7^§ = param3;
         this.mStage3D = param4;
         this.§="!§ = new §`L§.Stage(param3.width,param3.height,param2.color);
         this.§,!8§ = param2;
         this.§3!>§ = new §=3§(this.§="!§);
         this.§#!Z§ = new §!!I§();
         this.§;!C§ = 0;
         this.§2!_§ = false;
         this.§`"7§ = false;
         this.§=">§ = getTimer() / 1000;
         this.§[7§ = new Dictionary();
         for each(_loc6_ in this.§false§)
         {
            param2.addEventListener(_loc6_,this.§["§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ 6§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ 6§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§'!K§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§;!2§,false,1,true);
         this.mStage3D.visible = false;
         this.§%!#§(true);
         this.§>N§ = param2.color;
         this.§`!8§ = param5;
      }
      
      public static function get §5!f§() : Boolean
      {
         if(§^F§)
         {
            return §^F§.§ !W§;
         }
         return true;
      }
      
      public static function §-!S§() : Boolean
      {
         return §7=§ && (§7=§.§'""§ || §7=§.§^!`§ != null && §7=§.§^!`§.driverInfo != "Disposed");
      }
      
      public static function get §^F§() : §6"6§
      {
         return §7=§;
      }
      
      public static function get §4H§() : §!!I§
      {
         return !!§7=§ ? §7=§.§4H§ : null;
      }
      
      public static function get §;"8§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;"8§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §<Y§() : Boolean
      {
         return §-t§;
      }
      
      public static function set §<Y§(param1:Boolean) : void
      {
         if(§7=§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §-t§ = param1;
      }
      
      public static function §6!l§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§^F§)
         {
            return Texture.§"!x§(§^F§.§^!`§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§7=§.§^!`§)
         {
            §7=§.§^!`§.drawToBitmapData(param1);
         }
         else if(§7=§.§`d§.canvas)
         {
            _loc2_ = §7=§.§`d§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §2o§() : §`L§.DisplayObject
      {
         return this.§9=§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§>N§ = param1;
      }
      
      public function get §0"?§() : Number
      {
         return this.§"Z§;
      }
      
      public function get §?v§() : Number
      {
         return this.§`!a§;
      }
      
      public function §"Y§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§`!8§);
         }
         catch(e:Error)
         {
            §+U§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§%!f§ = true;
         this.§,!8§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ 6§,false);
         this.§,!8§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ 6§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§'!K§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§;!2§,false);
         for each(_loc1_ in this.§false§)
         {
            this.§,!8§.removeEventListener(_loc1_,this.§["§,false);
         }
         for each(_loc2_ in this.§[7§)
         {
            _loc2_.dispose();
         }
         if(this.§^!`§)
         {
            this.§^!`§.dispose();
         }
         if(this.§3!>§)
         {
            this.§3!>§.dispose();
         }
         if(this.§`d§)
         {
            this.§`d§.dispose();
         }
         if(§7=§ == this)
         {
            §7=§ = null;
         }
         if(this.§,"$§ && this.§,"$§.bitmapData)
         {
            this.§,"$§.bitmapData.dispose();
            this.§,"$§.bitmapData = null;
         }
      }
      
      private function §0y§() : void
      {
         this.§^!`§ = this.mStage3D.context3D;
         this.§[7§ = new Dictionary();
         if(this.§^!`§)
         {
            this.§^!`§.enableErrorChecking = this.§`"7§;
            if(this.§^!`§.driverInfo.indexOf("Software") >= 0)
            {
               this.§ !W§ = true;
            }
         }
         else
         {
            this.§ !W§ = true;
         }
         this.§5!Q§();
      }
      
      private function §>R§() : void
      {
         if(this.§="!§.numChildren > 0)
         {
            return;
         }
         if(this.§9=§ == null)
         {
            this.§9=§ = new this.§@]§();
         }
         if(this.§9=§ == null)
         {
            throw new Error("Invalid root class: " + this.§@]§);
         }
         this.§="!§.addChild(this.§9=§);
      }
      
      private function §5!Q§() : void
      {
         this.§-!z§ = true;
         this.mStage3D.x = this.§7^§.x;
         this.mStage3D.y = this.§7^§.y;
      }
      
      private function render() : void
      {
         if(!§-!S§())
         {
            return;
         }
         if(this.§-!z§)
         {
            if(this.§^!`§)
            {
               this.§^!`§.configureBackBuffer(this.§7^§.width,this.§7^§.height,this.§;!C§,false);
            }
            this.§-!z§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§=">§;
         this.§=">§ = _loc1_;
         this.§="!§.advanceTime(_loc2_);
         this.§#!Z§.advanceTime(_loc2_);
         this.§3!>§.advanceTime(_loc2_);
         this.§`d§.§null§(this.§="!§.stageWidth,this.§="!§.stageHeight);
         this.§`d§.clear(this.§^!`§,this.§>N§,1);
         this.§`d§.§-K§(this.§^!`§,this.§]">§);
         this.§="!§.render(this.§`d§,1);
         this.§`d§.§>%§();
         if(this.§9!,§ != null)
         {
            this.§9!,§();
            this.§9!,§ = null;
         }
         this.§`d§.finishRendering(this.§^!`§);
         this.§`d§.§!!'§();
      }
      
      public function set §[!?§(param1:Function) : void
      {
         this.§9!,§ = param1;
      }
      
      private function §!!O§() : void
      {
         var _loc3_:BitmapData = null;
         this.§[B§.x = this.§7^§.x;
         this.§[B§.y = this.§7^§.y;
         var _loc1_:int = this.§[B§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§[B§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§,!8§.addChild(this.§[B§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§,!8§.removeChild(this.§[B§);
         }
         if(this.§`d§ && this.§`d§.canvas)
         {
            this.§`d§.setCanvasSize(this.§'!@§,this.§1"6§,this.§7^§.width / this.§="!§.stageWidth,this.§7^§.height / this.§="!§.stageHeight);
            _loc3_ = this.§`d§.canvas;
            if(this.§,"$§.bitmapData != _loc3_)
            {
               this.§,"$§.bitmapData = _loc3_;
            }
            if(this.§,!8§.getChildIndex(this.§[B§) > 0)
            {
               this.§,!8§.removeChild(this.§[B§);
               this.§,!8§.addChildAt(this.§[B§,0);
            }
         }
      }
      
      private function §+U§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§="!§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§="!§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§="!§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§^"%§.addChild(_loc2_);
      }
      
      public function §5!z§() : void
      {
         §7=§ = this;
      }
      
      public function start() : void
      {
         this.§+y§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§+y§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §%!#§(param1:Boolean) : void
      {
         this.§[L§ = param1;
      }
      
      private function §^!0§() : void
      {
         this.§'""§ = true;
         if(this.§,"$§ == null)
         {
            this.§,"$§ = new Bitmap();
            this.§^"%§.addChild(this.§,"$§);
         }
      }
      
      private function §;!2§(param1:ErrorEvent) : void
      {
         this.§^!0§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §'!K§(param1:flash.events.Event) : void
      {
         if(this.§%!f§)
         {
            return;
         }
         ++§=!5§;
         this.§]">§ = §=!5§;
         if(this.§`d§)
         {
            this.§`d§.dispose();
         }
         if(!§6"6§.§<Y§ && this.§^!`§)
         {
            this.§+U§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§5!z§();
         this.§0y§();
         this.§>R§();
         if(this.§^!`§ && this.§ !W§)
         {
            this.mStage3DEnabled = false;
            this.§^!`§ = null;
            this.§^!0§();
         }
         if(this.§^!`§)
         {
            this.§`d§ = new §,7§();
         }
         else
         {
            this.§`d§ = new §%,§();
            this.§`d§.setCanvasSize(this.§'!@§,this.§1"6§,this.§7^§.width / this.§="!§.stageWidth,this.§7^§.height / this.§="!§.stageHeight);
            this.§`d§.clear(null,this.§>N§);
         }
         this.§3!>§.§5!J§ = this.§2!_§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§5!z§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§=">§;
         if(this.§+y§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§[B§)
         {
            this.§!!O§();
         }
      }
      
      private function § 6§(param1:flash.events.KeyboardEvent) : void
      {
         this.§5!z§();
         this.§="!§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§"Z§;
         var _loc5_:Number = param2 / this.§`!a§;
         if(!param3)
         {
            this.§="!§.stageWidth = this.§"Z§ * _loc4_ / _loc5_;
            this.§="!§.stageHeight = this.§`!a§;
         }
         else
         {
            this.§="!§.stageWidth = this.§"Z§;
            this.§="!§.stageHeight = this.§`!a§ * _loc5_ / _loc4_;
         }
         this.§'!@§ = param1;
         this.§1"6§ = param2;
         this.§="!§.dispatchEvent(new §1!H§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §?!9§() : void
      {
         this.setCanvasSize(this.§"Z§,this.§`!a§);
      }
      
      private function §["§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§+y§ || !this.§[L§)
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
               this.§&!d§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§&!d§ = false;
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
               _loc5_ = §;[§.§!!q§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §;[§.§!y§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §;[§.§7f§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §;[§.§!!q§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §;[§.§7f§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§&!d§ ? §;[§.§!y§ : §;[§.§?K§;
         }
         if((_loc2_ < this.§7^§.left || _loc2_ >= this.§7^§.right || _loc3_ < this.§7^§.top || _loc3_ >= this.§7^§.bottom) && _loc5_ == §;[§.§!!q§)
         {
            return;
         }
         _loc2_ -= this.§7^§.x;
         _loc3_ -= this.§7^§.y;
         this.§3!>§.§[f§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §false§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §+9§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§[7§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§^!`§ != null)
         {
            (_loc4_ = this.§^!`§.createProgram()).upload(param2,param3);
            this.§[7§[param1] = _loc4_;
         }
      }
      
      public function §&`§(param1:String) : void
      {
         var _loc2_:Program3D = this.§6x§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§[7§[param1];
         }
      }
      
      public function §6x§(param1:String) : Program3D
      {
         return this.§[7§[param1] as Program3D;
      }
      
      public function §5H§(param1:String) : Boolean
      {
         return param1 in this.§[7§;
      }
      
      public function get §,!i§() : Boolean
      {
         return this.§+y§;
      }
      
      public function get §4H§() : §!!I§
      {
         return this.§#!Z§;
      }
      
      public function get §5!J§() : Boolean
      {
         return this.§2!_§;
      }
      
      public function set §5!J§(param1:Boolean) : void
      {
         this.§2!_§ = param1;
         if(this.§^!`§)
         {
            this.§3!>§.§5!J§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§`"7§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§`"7§ = param1;
         if(this.§^!`§)
         {
            this.§^!`§.enableErrorChecking = param1;
         }
      }
      
      public function get §5"3§() : int
      {
         return this.§;!C§;
      }
      
      public function set §5"3§(param1:int) : void
      {
         this.§;!C§ = param1;
         this.§5!Q§();
      }
      
      public function get §>""§() : Rectangle
      {
         return this.§7^§.clone();
      }
      
      public function set §>""§(param1:Rectangle) : void
      {
         this.§7^§ = param1.clone();
         this.§5!Q§();
      }
      
      public function get §^"%§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§[B§ == null)
         {
            this.§[B§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§[B§.contextMenu = _loc1_;
            this.§!!O§();
         }
         return this.§[B§;
      }
      
      public function get stage() : §`L§.Stage
      {
         return this.§="!§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §3#§() : flash.display.Stage
      {
         return this.§,!8§;
      }
      
      public function get §@"$§() : Boolean
      {
         return !this.§'""§;
      }
   }
}
