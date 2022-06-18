package §;%§
{
   import § !"§.§-!A§;
   import §5@§.Texture;
   import §;q§.DisplayObject;
   import §;q§.Stage;
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
   import starling.events.§0!!§;
   import starling.events.§0!@§;
   import starling.events.§4"§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §8o§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §#v§:§8o§;
      
      private static var §'S§:Boolean;
      
      private static var §^o§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var § j§:§;q§.Stage;
      
      private var §[p§:Class;
      
      private var §=i§:§;q§.DisplayObject;
      
      private var §6!8§:§-!A§;
      
      private var §+R§:Boolean;
      
      private var §,Q§:Boolean;
      
      private var § a§:§8S§;
      
      private var §9,§:§0!@§;
      
      private var §&m§:int;
      
      private var §9z§:Boolean;
      
      private var §=!;§:Boolean;
      
      private var § J§:Number;
      
      private var §!L§:Rectangle;
      
      private var §'g§:Boolean;
      
      private var §%!4§:flash.display.Stage;
      
      private var §@n§:Sprite;
      
      private var §1g§:Context3D;
      
      private var §"M§:Dictionary;
      
      private var § !;§:int;
      
      private var §6-§:Boolean;
      
      private var §1b§:Number;
      
      private var §0^§:Number;
      
      private var §9P§:Number;
      
      private var §19§:Number;
      
      private var §0A§:Number;
      
      private var §6!5§:Number;
      
      private var § if§:Function;
      
      private var §&!@§:uint;
      
      private var §%@§:String;
      
      private var §?l§:Bitmap;
      
      private var §^!'§:Boolean = false;
      
      private var §@!§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §>>§:Boolean = false;
      
      public function §8o§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§1b§ = param3.width;
         this.§0^§ = param3.height;
         this.§9P§ = this.§1b§;
         this.§19§ = this.§0^§;
         this.§0A§ = param2.stageWidth;
         this.§6!5§ = param2.stageHeight;
         §6m§ = true;
         this.§&A§();
         this.§[p§ = param1;
         this.§!L§ = param3;
         this.mStage3D = param4;
         this.§ j§ = new §;q§.Stage(param3.width,param3.height,param2.color);
         this.§%!4§ = param2;
         this.§9,§ = new §0!@§(this.§ j§);
         this.§6!8§ = new §-!A§();
         this.§&m§ = 0;
         this.§9z§ = false;
         this.§=!;§ = false;
         this.§ J§ = getTimer() / 1000;
         this.§"M§ = new Dictionary();
         for each(_loc6_ in this.§&4§)
         {
            param2.addEventListener(_loc6_,this.§+-§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§"!F§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§ O§,false,1,true);
         this.mStage3D.visible = false;
         this.§set §(true);
         this.§&!@§ = param2.color;
         this.§%@§ = param5;
      }
      
      public static function get §^H§() : Boolean
      {
         if(§5J§)
         {
            return §5J§.§6-§;
         }
         return true;
      }
      
      public static function §2i§() : Boolean
      {
         return §#v§ && (§#v§.§^!'§ || §#v§.§1g§ != null && §#v§.§1g§.driverInfo != "Disposed");
      }
      
      public static function get §5J§() : §8o§
      {
         return §#v§;
      }
      
      public static function get §-X§() : §-!A§
      {
         return !!§#v§ ? §#v§.§-X§ : null;
      }
      
      public static function get §4!%§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §4!%§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §6m§() : Boolean
      {
         return §'S§;
      }
      
      public static function set §6m§(param1:Boolean) : void
      {
         if(§#v§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §'S§ = param1;
      }
      
      public static function §;]§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§5J§)
         {
            return Texture.§%9§(§5J§.§1g§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§#v§.§1g§)
         {
            §#v§.§1g§.drawToBitmapData(param1);
         }
         else if(§#v§.§ a§.canvas)
         {
            _loc2_ = §#v§.§ a§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §;p§() : §;q§.DisplayObject
      {
         return this.§=i§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§&!@§ = param1;
      }
      
      public function get §"L§() : Number
      {
         return this.§1b§;
      }
      
      public function get §@8§() : Number
      {
         return this.§0^§;
      }
      
      public function §2!$§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§%@§);
         }
         catch(e:Error)
         {
            §!V§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§>>§ = true;
         this.§%!4§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§%!4§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§"!F§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§ O§,false);
         for each(_loc1_ in this.§&4§)
         {
            this.§%!4§.removeEventListener(_loc1_,this.§+-§,false);
         }
         for each(_loc2_ in this.§"M§)
         {
            _loc2_.dispose();
         }
         if(this.§1g§)
         {
            this.§1g§.dispose();
         }
         if(this.§9,§)
         {
            this.§9,§.dispose();
         }
         if(this.§ a§)
         {
            this.§ a§.dispose();
         }
         if(§#v§ == this)
         {
            §#v§ = null;
         }
         if(this.§?l§ && this.§?l§.bitmapData)
         {
            this.§?l§.bitmapData.dispose();
            this.§?l§.bitmapData = null;
         }
      }
      
      private function §4!>§() : void
      {
         this.§1g§ = this.mStage3D.context3D;
         this.§"M§ = new Dictionary();
         if(this.§1g§)
         {
            this.§1g§.enableErrorChecking = this.§=!;§;
            if(this.§1g§.driverInfo.indexOf("Software") >= 0)
            {
               this.§6-§ = true;
            }
         }
         else
         {
            this.§6-§ = true;
         }
         this.§'!;§();
      }
      
      private function § !<§() : void
      {
         if(this.§ j§.numChildren > 0)
         {
            return;
         }
         if(this.§=i§ == null)
         {
            this.§=i§ = new this.§[p§();
         }
         if(this.§=i§ == null)
         {
            throw new Error("Invalid root class: " + this.§[p§);
         }
         this.§ j§.addChild(this.§=i§);
      }
      
      private function §'!;§() : void
      {
         this.§@!§ = true;
         this.mStage3D.x = this.§!L§.x;
         this.mStage3D.y = this.§!L§.y;
      }
      
      private function render() : void
      {
         if(!§2i§())
         {
            return;
         }
         if(this.§@!§)
         {
            if(this.§1g§)
            {
               this.§1g§.configureBackBuffer(this.§!L§.width,this.§!L§.height,this.§&m§,false);
            }
            this.§@!§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§ J§;
         this.§ J§ = _loc1_;
         this.§ j§.advanceTime(_loc2_);
         this.§6!8§.advanceTime(_loc2_);
         this.§9,§.advanceTime(_loc2_);
         this.§ a§.§ try§(this.§ j§.stageWidth,this.§ j§.stageHeight);
         this.§ a§.clear(this.§1g§,this.§&!@§,1);
         this.§ a§.§&@§(this.§1g§,this.§ !;§);
         this.§ j§.render(this.§ a§,1);
         this.§ a§.§98§();
         if(this.§ if§ != null)
         {
            this.§ if§();
            this.§ if§ = null;
         }
         this.§ a§.finishRendering(this.§1g§);
         this.§ a§.§5X§();
      }
      
      public function set §]c§(param1:Function) : void
      {
         this.§ if§ = param1;
      }
      
      private function §7Y§() : void
      {
         var _loc3_:BitmapData = null;
         this.§@n§.x = this.§!L§.x;
         this.§@n§.y = this.§!L§.y;
         var _loc1_:int = this.§@n§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@n§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§%!4§.addChild(this.§@n§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§%!4§.removeChild(this.§@n§);
         }
         if(this.§ a§ && this.§ a§.canvas)
         {
            this.§ a§.setCanvasSize(this.§9P§,this.§19§,this.§!L§.width / this.§ j§.stageWidth,this.§!L§.height / this.§ j§.stageHeight);
            _loc3_ = this.§ a§.canvas;
            if(this.§?l§.bitmapData != _loc3_)
            {
               this.§?l§.bitmapData = _loc3_;
            }
            if(this.§%!4§.getChildIndex(this.§@n§) > 0)
            {
               this.§%!4§.removeChild(this.§@n§);
               this.§%!4§.addChildAt(this.§@n§,0);
            }
         }
      }
      
      private function §!V§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§ j§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§ j§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§ j§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§4'§.addChild(_loc2_);
      }
      
      public function §&A§() : void
      {
         §#v§ = this;
      }
      
      public function start() : void
      {
         this.§+R§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§+R§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §set §(param1:Boolean) : void
      {
         this.§,Q§ = param1;
      }
      
      private function §]^§() : void
      {
         this.§^!'§ = true;
         if(this.§?l§ == null)
         {
            this.§?l§ = new Bitmap();
            this.§4'§.addChild(this.§?l§);
         }
      }
      
      private function § O§(param1:ErrorEvent) : void
      {
         this.§]^§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §"!F§(param1:flash.events.Event) : void
      {
         if(this.§>>§)
         {
            return;
         }
         ++§^o§;
         this.§ !;§ = §^o§;
         if(this.§ a§)
         {
            this.§ a§.dispose();
         }
         if(!§8o§.§6m§ && this.§1g§)
         {
            this.§!V§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§&A§();
         this.§4!>§();
         this.§ !<§();
         if(this.§1g§ && this.§6-§)
         {
            this.mStage3DEnabled = false;
            this.§1g§ = null;
            this.§]^§();
         }
         if(this.§1g§)
         {
            this.§ a§ = new §8S§();
         }
         else
         {
            this.§ a§ = new §@'§();
            this.§ a§.setCanvasSize(this.§9P§,this.§19§,this.§!L§.width / this.§ j§.stageWidth,this.§!L§.height / this.§ j§.stageHeight);
            this.§ a§.clear(null,this.§&!@§);
         }
         this.§9,§.§"n§ = this.§9z§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§&A§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§ J§;
         if(this.§+R§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§@n§)
         {
            this.§7Y§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§&A§();
         this.§ j§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§1b§;
         var _loc5_:Number = param2 / this.§0^§;
         if(!param3)
         {
            this.§ j§.stageWidth = this.§1b§ * _loc4_ / _loc5_;
            this.§ j§.stageHeight = this.§0^§;
         }
         else
         {
            this.§ j§.stageWidth = this.§1b§;
            this.§ j§.stageHeight = this.§0^§ * _loc5_ / _loc4_;
         }
         this.§9P§ = param1;
         this.§19§ = param2;
         this.§ j§.dispatchEvent(new §4"§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §9y§() : void
      {
         this.setCanvasSize(this.§1b§,this.§0^§);
      }
      
      private function §+-§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§+R§ || !this.§,Q§)
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
               this.§'g§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§'g§ = false;
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
               _loc5_ = §0!!§.§9!;§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §0!!§.§&I§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §0!!§.§ #§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §0!!§.§9!;§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §0!!§.§ #§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§'g§ ? §0!!§.§&I§ : §0!!§.§<! §;
         }
         if((_loc2_ < this.§!L§.left || _loc2_ >= this.§!L§.right || _loc3_ < this.§!L§.top || _loc3_ >= this.§!L§.bottom) && _loc5_ == §0!!§.§9!;§)
         {
            return;
         }
         _loc2_ -= this.§!L§.x;
         _loc3_ -= this.§!L§.y;
         this.§9,§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §&4§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §1R§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§"M§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§1g§ != null)
         {
            (_loc4_ = this.§1g§.createProgram()).upload(param2,param3);
            this.§"M§[param1] = _loc4_;
         }
      }
      
      public function §,B§(param1:String) : void
      {
         var _loc2_:Program3D = this.§ get§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§"M§[param1];
         }
      }
      
      public function § get§(param1:String) : Program3D
      {
         return this.§"M§[param1] as Program3D;
      }
      
      public function §=!9§(param1:String) : Boolean
      {
         return param1 in this.§"M§;
      }
      
      public function get §%"§() : Boolean
      {
         return this.§+R§;
      }
      
      public function get §-X§() : §-!A§
      {
         return this.§6!8§;
      }
      
      public function get §"n§() : Boolean
      {
         return this.§9z§;
      }
      
      public function set §"n§(param1:Boolean) : void
      {
         this.§9z§ = param1;
         if(this.§1g§)
         {
            this.§9,§.§"n§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§=!;§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§=!;§ = param1;
         if(this.§1g§)
         {
            this.§1g§.enableErrorChecking = param1;
         }
      }
      
      public function get §8!@§() : int
      {
         return this.§&m§;
      }
      
      public function set §8!@§(param1:int) : void
      {
         this.§&m§ = param1;
         this.§'!;§();
      }
      
      public function get §9I§() : Rectangle
      {
         return this.§!L§.clone();
      }
      
      public function set §9I§(param1:Rectangle) : void
      {
         this.§!L§ = param1.clone();
         this.§'!;§();
      }
      
      public function get §4'§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§@n§ == null)
         {
            this.§@n§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§@n§.contextMenu = _loc1_;
            this.§7Y§();
         }
         return this.§@n§;
      }
      
      public function get stage() : §;q§.Stage
      {
         return this.§ j§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §#!1§() : flash.display.Stage
      {
         return this.§%!4§;
      }
      
      public function get §#!3§() : Boolean
      {
         return !this.§^!'§;
      }
   }
}
