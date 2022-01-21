package §each §
{
   import §&!9§.Texture;
   import §0@§.DisplayObject;
   import §0@§.Stage;
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
   import starling.events.§5!K§;
   import starling.events.§>4§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§[Z§;
   import §true §.§]!'§;
   
   public class §'!3§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §7!>§:§'!3§;
      
      private static var §88§:Boolean;
      
      private static var §7!l§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §!2§:§0@§.Stage;
      
      private var §!!Y§:Class;
      
      private var §&Y§:§0@§.DisplayObject;
      
      private var §>!g§:§]!'§;
      
      private var §<!3§:Boolean;
      
      private var §<!S§:Boolean;
      
      private var §@F§:§ if§;
      
      private var §?%§:§[Z§;
      
      private var §1!C§:int;
      
      private var §<o§:Boolean;
      
      private var §;'§:Boolean;
      
      private var §=J§:Number;
      
      private var §-R§:Rectangle;
      
      private var §"P§:Boolean;
      
      private var §!M§:flash.display.Stage;
      
      private var §4B§:Sprite;
      
      private var §"#§:Context3D;
      
      private var §]S§:Dictionary;
      
      private var §@!@§:int;
      
      private var §^!C§:Boolean;
      
      private var §=!e§:Number;
      
      private var §"]§:Number;
      
      private var §^!,§:Number;
      
      private var §!"§:Number;
      
      private var §^!'§:Number;
      
      private var §4z§:Number;
      
      private var §#V§:Function;
      
      private var §9!3§:uint;
      
      private var §+4§:String;
      
      private var §@!Y§:Bitmap;
      
      private var §!h§:Boolean = false;
      
      private var §^u§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §?!Y§:Boolean = false;
      
      public function §'!3§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§=!e§ = param3.width;
         this.§"]§ = param3.height;
         this.§^!,§ = this.§=!e§;
         this.§!"§ = this.§"]§;
         this.§^!'§ = param2.stageWidth;
         this.§4z§ = param2.stageHeight;
         §'!I§ = true;
         this.§1F§();
         this.§!!Y§ = param1;
         this.§-R§ = param3;
         this.mStage3D = param4;
         this.§!2§ = new §0@§.Stage(param3.width,param3.height,param2.color);
         this.§!M§ = param2;
         this.§?%§ = new §[Z§(this.§!2§);
         this.§>!g§ = new §]!'§();
         this.§1!C§ = 0;
         this.§<o§ = false;
         this.§;'§ = false;
         this.§=J§ = getTimer() / 1000;
         this.§]S§ = new Dictionary();
         for each(_loc6_ in this.§0!Y§)
         {
            param2.addEventListener(_loc6_,this.§^!A§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§,H§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§,H§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§,B§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§?!4§,false,1,true);
         this.mStage3D.visible = false;
         this.§5G§(true);
         this.§9!3§ = param2.color;
         this.§+4§ = param5;
      }
      
      public static function get §#T§() : Boolean
      {
         if(§1!n§)
         {
            return §1!n§.§^!C§;
         }
         return true;
      }
      
      public static function §?!Z§() : Boolean
      {
         return §7!>§ && (§7!>§.§!h§ || §7!>§.§"#§ != null && §7!>§.§"#§.driverInfo != "Disposed");
      }
      
      public static function get §1!n§() : §'!3§
      {
         return §7!>§;
      }
      
      public static function get § !i§() : §]!'§
      {
         return !!§7!>§ ? §7!>§.§ !i§ : null;
      }
      
      public static function get §@!o§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §@!o§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §'!I§() : Boolean
      {
         return §88§;
      }
      
      public static function set §'!I§(param1:Boolean) : void
      {
         if(§7!>§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §88§ = param1;
      }
      
      public static function §+!<§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§1!n§)
         {
            return Texture.§0!i§(§1!n§.§"#§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§7!>§.§"#§)
         {
            §7!>§.§"#§.drawToBitmapData(param1);
         }
         else if(§7!>§.§@F§.canvas)
         {
            _loc2_ = §7!>§.§@F§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §[!§() : §0@§.DisplayObject
      {
         return this.§&Y§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§9!3§ = param1;
      }
      
      public function get §<!D§() : Number
      {
         return this.§=!e§;
      }
      
      public function get §#!S§() : Number
      {
         return this.§"]§;
      }
      
      public function §"W§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§+4§);
         }
         catch(e:Error)
         {
            § S§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§?!Y§ = true;
         this.§!M§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§,H§,false);
         this.§!M§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§,H§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§,B§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§?!4§,false);
         for each(_loc1_ in this.§0!Y§)
         {
            this.§!M§.removeEventListener(_loc1_,this.§^!A§,false);
         }
         for each(_loc2_ in this.§]S§)
         {
            _loc2_.dispose();
         }
         if(this.§"#§)
         {
            this.§"#§.dispose();
         }
         if(this.§?%§)
         {
            this.§?%§.dispose();
         }
         if(this.§@F§)
         {
            this.§@F§.dispose();
         }
         if(§7!>§ == this)
         {
            §7!>§ = null;
         }
         if(this.§@!Y§ && this.§@!Y§.bitmapData)
         {
            this.§@!Y§.bitmapData.dispose();
            this.§@!Y§.bitmapData = null;
         }
      }
      
      private function §&u§() : void
      {
         this.§"#§ = this.mStage3D.context3D;
         this.§]S§ = new Dictionary();
         if(this.§"#§)
         {
            this.§"#§.enableErrorChecking = this.§;'§;
            if(this.§"#§.driverInfo.indexOf("Software") >= 0)
            {
               this.§^!C§ = true;
            }
         }
         else
         {
            this.§^!C§ = true;
         }
         this.§,!k§();
      }
      
      private function §-b§() : void
      {
         if(this.§!2§.numChildren > 0)
         {
            return;
         }
         if(this.§&Y§ == null)
         {
            this.§&Y§ = new this.§!!Y§();
         }
         if(this.§&Y§ == null)
         {
            throw new Error("Invalid root class: " + this.§!!Y§);
         }
         this.§!2§.addChild(this.§&Y§);
      }
      
      private function §,!k§() : void
      {
         this.§^u§ = true;
         this.mStage3D.x = this.§-R§.x;
         this.mStage3D.y = this.§-R§.y;
      }
      
      private function render() : void
      {
         if(!§?!Z§())
         {
            return;
         }
         if(this.§^u§)
         {
            if(this.§"#§)
            {
               this.§"#§.configureBackBuffer(this.§-R§.width,this.§-R§.height,this.§1!C§,false);
            }
            this.§^u§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§=J§;
         this.§=J§ = _loc1_;
         this.§!2§.advanceTime(_loc2_);
         this.§>!g§.advanceTime(_loc2_);
         this.§?%§.advanceTime(_loc2_);
         this.§@F§.§ !L§(this.§!2§.stageWidth,this.§!2§.stageHeight);
         this.§@F§.clear(this.§"#§,this.§9!3§,1);
         this.§@F§.§ !H§(this.§"#§,this.§@!@§);
         this.§!2§.render(this.§@F§,1);
         this.§@F§.§"!>§();
         if(this.§#V§ != null)
         {
            this.§#V§();
            this.§#V§ = null;
         }
         this.§@F§.finishRendering(this.§"#§);
         this.§@F§.§8!M§();
      }
      
      public function set §+§(param1:Function) : void
      {
         this.§#V§ = param1;
      }
      
      private function §[§() : void
      {
         var _loc3_:BitmapData = null;
         this.§4B§.x = this.§-R§.x;
         this.§4B§.y = this.§-R§.y;
         var _loc1_:int = this.§4B§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§4B§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§!M§.addChild(this.§4B§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§!M§.removeChild(this.§4B§);
         }
         if(this.§@F§ && this.§@F§.canvas)
         {
            this.§@F§.setCanvasSize(this.§^!,§,this.§!"§,this.§-R§.width / this.§!2§.stageWidth,this.§-R§.height / this.§!2§.stageHeight);
            _loc3_ = this.§@F§.canvas;
            if(this.§@!Y§.bitmapData != _loc3_)
            {
               this.§@!Y§.bitmapData = _loc3_;
            }
            if(this.§!M§.getChildIndex(this.§4B§) > 0)
            {
               this.§!M§.removeChild(this.§4B§);
               this.§!M§.addChildAt(this.§4B§,0);
            }
         }
      }
      
      private function § S§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§!2§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§!2§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§!2§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§[!P§.addChild(_loc2_);
      }
      
      public function §1F§() : void
      {
         §7!>§ = this;
      }
      
      public function start() : void
      {
         this.§<!3§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§<!3§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §5G§(param1:Boolean) : void
      {
         this.§<!S§ = param1;
      }
      
      private function §?'§() : void
      {
         this.§!h§ = true;
         if(this.§@!Y§ == null)
         {
            this.§@!Y§ = new Bitmap();
            this.§[!P§.addChild(this.§@!Y§);
         }
      }
      
      private function §?!4§(param1:ErrorEvent) : void
      {
         this.§?'§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §,B§(param1:flash.events.Event) : void
      {
         if(this.§?!Y§)
         {
            return;
         }
         ++§7!l§;
         this.§@!@§ = §7!l§;
         if(this.§@F§)
         {
            this.§@F§.dispose();
         }
         if(!§'!3§.§'!I§ && this.§"#§)
         {
            this.§ S§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§1F§();
         this.§&u§();
         this.§-b§();
         if(this.§"#§ && this.§^!C§)
         {
            this.mStage3DEnabled = false;
            this.§"#§ = null;
            this.§?'§();
         }
         if(this.§"#§)
         {
            this.§@F§ = new § if§();
         }
         else
         {
            this.§@F§ = new §-!a§();
            this.§@F§.setCanvasSize(this.§^!,§,this.§!"§,this.§-R§.width / this.§!2§.stageWidth,this.§-R§.height / this.§!2§.stageHeight);
            this.§@F§.clear(null,this.§9!3§);
         }
         this.§?%§.simulateMultitouch = this.§<o§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §3![§(param1:flash.events.Event) : void
      {
         this.§1F§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§=J§;
         if(this.§<!3§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§4B§)
         {
            this.§[§();
         }
      }
      
      private function §,H§(param1:flash.events.KeyboardEvent) : void
      {
         this.§1F§();
         this.§!2§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§=!e§;
         var _loc5_:Number = param2 / this.§"]§;
         if(!param3)
         {
            this.§!2§.stageWidth = this.§=!e§ * _loc4_ / _loc5_;
            this.§!2§.stageHeight = this.§"]§;
         }
         else
         {
            this.§!2§.stageWidth = this.§=!e§;
            this.§!2§.stageHeight = this.§"]§ * _loc5_ / _loc4_;
         }
         this.§^!,§ = param1;
         this.§!"§ = param2;
         this.§!2§.dispatchEvent(new §>4§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function § !k§() : void
      {
         this.setCanvasSize(this.§=!e§,this.§"]§);
      }
      
      private function §^!A§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§<!3§ || !this.§<!S§)
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
               this.§"P§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§"P§ = false;
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
               _loc5_ = §5!K§.§[g§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §5!K§.§5`§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §5!K§.§#%§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §5!K§.§[g§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §5!K§.§#%§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§"P§ ? §5!K§.§5`§ : §5!K§.§<!@§;
         }
         if((_loc2_ < this.§-R§.left || _loc2_ >= this.§-R§.right || _loc3_ < this.§-R§.top || _loc3_ >= this.§-R§.bottom) && _loc5_ == §5!K§.§[g§)
         {
            return;
         }
         _loc2_ -= this.§-R§.x;
         _loc3_ -= this.§-R§.y;
         this.§?%§.§>K§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §0!Y§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §-!'§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§]S§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§"#§ != null)
         {
            (_loc4_ = this.§"#§.createProgram()).upload(param2,param3);
            this.§]S§[param1] = _loc4_;
         }
      }
      
      public function §>T§(param1:String) : void
      {
         var _loc2_:Program3D = this.§try §(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§]S§[param1];
         }
      }
      
      public function §try §(param1:String) : Program3D
      {
         return this.§]S§[param1] as Program3D;
      }
      
      public function §=u§(param1:String) : Boolean
      {
         return param1 in this.§]S§;
      }
      
      public function get §00§() : Boolean
      {
         return this.§<!3§;
      }
      
      public function get § !i§() : §]!'§
      {
         return this.§>!g§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§<o§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§<o§ = param1;
         if(this.§"#§)
         {
            this.§?%§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§;'§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§;'§ = param1;
         if(this.§"#§)
         {
            this.§"#§.enableErrorChecking = param1;
         }
      }
      
      public function get §-!"§() : int
      {
         return this.§1!C§;
      }
      
      public function set §-!"§(param1:int) : void
      {
         this.§1!C§ = param1;
         this.§,!k§();
      }
      
      public function get §7!V§() : Rectangle
      {
         return this.§-R§.clone();
      }
      
      public function set §7!V§(param1:Rectangle) : void
      {
         this.§-R§ = param1.clone();
         this.§,!k§();
      }
      
      public function get §[!P§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§4B§ == null)
         {
            this.§4B§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§4B§.contextMenu = _loc1_;
            this.§[§();
         }
         return this.§4B§;
      }
      
      public function get stage() : §0@§.Stage
      {
         return this.§!2§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §9z§() : flash.display.Stage
      {
         return this.§!M§;
      }
      
      public function get §[J§() : Boolean
      {
         return !this.§!h§;
      }
   }
}
