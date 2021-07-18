package §5Z§
{
   import § N§.DisplayObject;
   import § N§.Stage;
   import §!`§.§>D§;
   import §8z§.Texture;
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
   import starling.events.§#^§;
   import starling.events.§,Q§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§else§;
   
   public class §[Z§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §;@§:§[Z§;
      
      private static var §'§:Boolean;
      
      private static var §7T§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §@&§:§ N§.Stage;
      
      private var §?!4§:Class;
      
      private var §`7§:§ N§.DisplayObject;
      
      private var §`9§:§>D§;
      
      private var §1-§:Boolean;
      
      private var §!<§:Boolean;
      
      private var §>J§:§4]§;
      
      private var §4!F§:§#^§;
      
      private var §!!4§:int;
      
      private var §=4§:Boolean;
      
      private var §,4§:Boolean;
      
      private var § W§:Number;
      
      private var §09§:Rectangle;
      
      private var §9!6§:Boolean;
      
      private var §^;§:flash.display.Stage;
      
      private var §31§:Sprite;
      
      private var §9o§:Context3D;
      
      private var §,!%§:Dictionary;
      
      private var §%&§:int;
      
      private var §]`§:Boolean;
      
      private var §!Z§:Number;
      
      private var §`[§:Number;
      
      private var §74§:Number;
      
      private var §]w§:Number;
      
      private var §2!B§:Number;
      
      private var §1E§:Number;
      
      private var §9!D§:Function;
      
      private var §1!#§:uint;
      
      private var §4l§:String;
      
      private var §9&§:Bitmap;
      
      private var §@!9§:Boolean = false;
      
      private var §%N§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §%J§:Boolean = false;
      
      public function §[Z§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§!Z§ = param3.width;
         this.§`[§ = param3.height;
         this.§74§ = this.§!Z§;
         this.§]w§ = this.§`[§;
         this.§2!B§ = param2.stageWidth;
         this.§1E§ = param2.stageHeight;
         §1'§ = true;
         this.§?6§();
         this.§?!4§ = param1;
         this.§09§ = param3;
         this.mStage3D = param4;
         this.§@&§ = new § N§.Stage(param3.width,param3.height,param2.color);
         this.§^;§ = param2;
         this.§4!F§ = new §#^§(this.§@&§);
         this.§`9§ = new §>D§();
         this.§!!4§ = 0;
         this.§=4§ = false;
         this.§,4§ = false;
         this.§ W§ = getTimer() / 1000;
         this.§,!%§ = new Dictionary();
         for each(_loc6_ in this.§>w§)
         {
            param2.addEventListener(_loc6_,this.§;!1§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§?M§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§?M§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§]!$§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§9i§,false,1,true);
         this.mStage3D.visible = false;
         this.§=!P§(true);
         this.§1!#§ = param2.color;
         this.§4l§ = param5;
      }
      
      public static function get §-D§() : Boolean
      {
         if(§%m§)
         {
            return §%m§.§]`§;
         }
         return true;
      }
      
      public static function §?4§() : Boolean
      {
         return §;@§ && (§;@§.§@!9§ || §;@§.§9o§ != null && §;@§.§9o§.driverInfo != "Disposed");
      }
      
      public static function get §%m§() : §[Z§
      {
         return §;@§;
      }
      
      public static function get §[A§() : §>D§
      {
         return !!§;@§ ? §;@§.§[A§ : null;
      }
      
      public static function get §4n§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §4n§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §1'§() : Boolean
      {
         return §'§;
      }
      
      public static function set §1'§(param1:Boolean) : void
      {
         if(§;@§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §'§ = param1;
      }
      
      public static function §3v§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§%m§)
         {
            return Texture.§@"§(§%m§.§9o§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§;@§.§9o§)
         {
            §;@§.§9o§.drawToBitmapData(param1);
         }
         else if(§;@§.§>J§.canvas)
         {
            _loc2_ = §;@§.§>J§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §%W§() : § N§.DisplayObject
      {
         return this.§`7§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§1!#§ = param1;
      }
      
      public function get § !8§() : Number
      {
         return this.§!Z§;
      }
      
      public function get §&n§() : Number
      {
         return this.§`[§;
      }
      
      public function §!3§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§4l§);
         }
         catch(e:Error)
         {
            §2l§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§%J§ = true;
         this.§^;§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§?M§,false);
         this.§^;§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§?M§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§]!$§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§9i§,false);
         for each(_loc1_ in this.§>w§)
         {
            this.§^;§.removeEventListener(_loc1_,this.§;!1§,false);
         }
         for each(_loc2_ in this.§,!%§)
         {
            _loc2_.dispose();
         }
         if(this.§9o§)
         {
            this.§9o§.dispose();
         }
         if(this.§4!F§)
         {
            this.§4!F§.dispose();
         }
         if(this.§>J§)
         {
            this.§>J§.dispose();
         }
         if(§;@§ == this)
         {
            §;@§ = null;
         }
         if(this.§9&§ && this.§9&§.bitmapData)
         {
            this.§9&§.bitmapData.dispose();
            this.§9&§.bitmapData = null;
         }
      }
      
      private function §=2§() : void
      {
         this.§9o§ = this.mStage3D.context3D;
         this.§,!%§ = new Dictionary();
         if(this.§9o§)
         {
            this.§9o§.enableErrorChecking = this.§,4§;
            if(this.§9o§.driverInfo.indexOf("Software") >= 0)
            {
               this.§]`§ = true;
            }
         }
         else
         {
            this.§]`§ = true;
         }
         this.§!n§();
      }
      
      private function §[!1§() : void
      {
         if(this.§@&§.numChildren > 0)
         {
            return;
         }
         if(this.§`7§ == null)
         {
            this.§`7§ = new this.§?!4§();
         }
         if(this.§`7§ == null)
         {
            throw new Error("Invalid root class: " + this.§?!4§);
         }
         this.§@&§.addChild(this.§`7§);
      }
      
      private function §!n§() : void
      {
         this.§%N§ = true;
         this.mStage3D.x = this.§09§.x;
         this.mStage3D.y = this.§09§.y;
      }
      
      private function render() : void
      {
         if(!§?4§())
         {
            return;
         }
         if(this.§%N§)
         {
            if(this.§9o§)
            {
               this.§9o§.configureBackBuffer(this.§09§.width,this.§09§.height,this.§!!4§,false);
            }
            this.§%N§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§ W§;
         this.§ W§ = _loc1_;
         this.§@&§.advanceTime(_loc2_);
         this.§`9§.advanceTime(_loc2_);
         this.§4!F§.advanceTime(_loc2_);
         this.§>J§.§=j§(this.§@&§.stageWidth,this.§@&§.stageHeight);
         this.§>J§.clear(this.§9o§,this.§1!#§,1);
         this.§>J§.§+j§(this.§9o§,this.§%&§);
         this.§@&§.render(this.§>J§,1);
         this.§>J§.§2!0§();
         if(this.§9!D§ != null)
         {
            this.§9!D§();
            this.§9!D§ = null;
         }
         this.§>J§.finishRendering(this.§9o§);
         this.§>J§.§16§();
      }
      
      public function set §?! §(param1:Function) : void
      {
         this.§9!D§ = param1;
      }
      
      private function §68§() : void
      {
         var _loc3_:BitmapData = null;
         this.§31§.x = this.§09§.x;
         this.§31§.y = this.§09§.y;
         var _loc1_:int = this.§31§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§31§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§^;§.addChild(this.§31§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§^;§.removeChild(this.§31§);
         }
         if(this.§>J§ && this.§>J§.canvas)
         {
            this.§>J§.setCanvasSize(this.§74§,this.§]w§,this.§09§.width / this.§@&§.stageWidth,this.§09§.height / this.§@&§.stageHeight);
            _loc3_ = this.§>J§.canvas;
            if(this.§9&§.bitmapData != _loc3_)
            {
               this.§9&§.bitmapData = _loc3_;
            }
            if(this.§^;§.getChildIndex(this.§31§) > 0)
            {
               this.§^;§.removeChild(this.§31§);
               this.§^;§.addChildAt(this.§31§,0);
            }
         }
      }
      
      private function §2l§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§@&§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§@&§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§@&§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§"0§.addChild(_loc2_);
      }
      
      public function §?6§() : void
      {
         §;@§ = this;
      }
      
      public function start() : void
      {
         this.§1-§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§1-§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §=!P§(param1:Boolean) : void
      {
         this.§!<§ = param1;
      }
      
      private function §?7§() : void
      {
         this.§@!9§ = true;
         if(this.§9&§ == null)
         {
            this.§9&§ = new Bitmap();
            this.§"0§.addChild(this.§9&§);
         }
      }
      
      private function §9i§(param1:ErrorEvent) : void
      {
         this.§?7§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §]!$§(param1:flash.events.Event) : void
      {
         if(this.§%J§)
         {
            return;
         }
         ++§7T§;
         this.§%&§ = §7T§;
         if(this.§>J§)
         {
            this.§>J§.dispose();
         }
         if(!§[Z§.§1'§ && this.§9o§)
         {
            this.§2l§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§?6§();
         this.§=2§();
         this.§[!1§();
         if(this.§9o§ && this.§]`§)
         {
            this.mStage3DEnabled = false;
            this.§9o§ = null;
            this.§?7§();
         }
         if(this.§9o§)
         {
            this.§>J§ = new §4]§();
         }
         else
         {
            this.§>J§ = new §]M§();
            this.§>J§.setCanvasSize(this.§74§,this.§]w§,this.§09§.width / this.§@&§.stageWidth,this.§09§.height / this.§@&§.stageHeight);
            this.§>J§.clear(null,this.§1!#§);
         }
         this.§4!F§.§"!R§ = this.§=4§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§?6§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§ W§;
         if(this.§1-§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§31§)
         {
            this.§68§();
         }
      }
      
      private function §?M§(param1:flash.events.KeyboardEvent) : void
      {
         this.§?6§();
         this.§@&§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§!Z§;
         var _loc5_:Number = param2 / this.§`[§;
         if(!param3)
         {
            this.§@&§.stageWidth = this.§!Z§ * _loc4_ / _loc5_;
            this.§@&§.stageHeight = this.§`[§;
         }
         else
         {
            this.§@&§.stageWidth = this.§!Z§;
            this.§@&§.stageHeight = this.§`[§ * _loc5_ / _loc4_;
         }
         this.§74§ = param1;
         this.§]w§ = param2;
         this.§@&§.dispatchEvent(new §,Q§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §%G§() : void
      {
         this.setCanvasSize(this.§!Z§,this.§`[§);
      }
      
      private function §;!1§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§1-§ || !this.§!<§)
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
               this.§9!6§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§9!6§ = false;
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
               _loc5_ = §else§.§ R§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §else§.§&i§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §else§.§1!9§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §else§.§ R§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §else§.§1!9§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§9!6§ ? §else§.§&i§ : §else§.§+N§;
         }
         if((_loc2_ < this.§09§.left || _loc2_ >= this.§09§.right || _loc3_ < this.§09§.top || _loc3_ >= this.§09§.bottom) && _loc5_ == §else§.§ R§)
         {
            return;
         }
         _loc2_ -= this.§09§.x;
         _loc3_ -= this.§09§.y;
         this.§4!F§.§'!1§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §>w§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §=B§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§,!%§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§9o§ != null)
         {
            (_loc4_ = this.§9o§.createProgram()).upload(param2,param3);
            this.§,!%§[param1] = _loc4_;
         }
      }
      
      public function §8!@§(param1:String) : void
      {
         var _loc2_:Program3D = this.§ %§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§,!%§[param1];
         }
      }
      
      public function § %§(param1:String) : Program3D
      {
         return this.§,!%§[param1] as Program3D;
      }
      
      public function §6!B§(param1:String) : Boolean
      {
         return param1 in this.§,!%§;
      }
      
      public function get §7!<§() : Boolean
      {
         return this.§1-§;
      }
      
      public function get §[A§() : §>D§
      {
         return this.§`9§;
      }
      
      public function get §"!R§() : Boolean
      {
         return this.§=4§;
      }
      
      public function set §"!R§(param1:Boolean) : void
      {
         this.§=4§ = param1;
         if(this.§9o§)
         {
            this.§4!F§.§"!R§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§,4§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§,4§ = param1;
         if(this.§9o§)
         {
            this.§9o§.enableErrorChecking = param1;
         }
      }
      
      public function get §2_§() : int
      {
         return this.§!!4§;
      }
      
      public function set §2_§(param1:int) : void
      {
         this.§!!4§ = param1;
         this.§!n§();
      }
      
      public function get §&!L§() : Rectangle
      {
         return this.§09§.clone();
      }
      
      public function set §&!L§(param1:Rectangle) : void
      {
         this.§09§ = param1.clone();
         this.§!n§();
      }
      
      public function get §"0§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§31§ == null)
         {
            this.§31§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§31§.contextMenu = _loc1_;
            this.§68§();
         }
         return this.§31§;
      }
      
      public function get stage() : § N§.Stage
      {
         return this.§@&§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §2!@§() : flash.display.Stage
      {
         return this.§^;§;
      }
      
      public function get §,;§() : Boolean
      {
         return !this.§@!9§;
      }
   }
}
