package §!v§
{
   import §#!6§.Texture;
   import §6W§.§-!5§;
   import §=!E§.DisplayObject;
   import §=!E§.Stage;
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
   import starling.events.§'!W§;
   import starling.events.§0%§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§]I§;
   
   public class §7[§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §,!R§:§7[§;
      
      private static var § -§:Boolean;
      
      private static var §'!$§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §8_§:§=!E§.Stage;
      
      private var §3!5§:Class;
      
      private var §1!,§:§=!E§.DisplayObject;
      
      private var §if§:§-!5§;
      
      private var §3r§:Boolean;
      
      private var §^B§:Boolean;
      
      private var §,t§:§16§;
      
      private var §"!>§:§'!W§;
      
      private var §"!I§:int;
      
      private var §7!'§:Boolean;
      
      private var §#,§:Boolean;
      
      private var §8!Y§:Number;
      
      private var §"B§:Rectangle;
      
      private var §-g§:Boolean;
      
      private var §=!A§:flash.display.Stage;
      
      private var §]3§:Sprite;
      
      private var §"v§:Context3D;
      
      private var §4!P§:Dictionary;
      
      private var §,5§:int;
      
      private var §'1§:Boolean;
      
      private var § B§:Number;
      
      private var §`!R§:Number;
      
      private var §=Q§:Number;
      
      private var §'!Q§:Number;
      
      private var §5"§:Number;
      
      private var §"!Y§:Number;
      
      private var §"!3§:Function;
      
      private var §%!%§:uint;
      
      private var §&^§:String;
      
      private var §!!]§:Bitmap;
      
      private var §&_§:Boolean = false;
      
      private var §15§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var § p§:Boolean = false;
      
      public function §7[§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§ B§ = param3.width;
         this.§`!R§ = param3.height;
         this.§=Q§ = this.§ B§;
         this.§'!Q§ = this.§`!R§;
         this.§5"§ = param2.stageWidth;
         this.§"!Y§ = param2.stageHeight;
         §4!R§ = true;
         this.§[5§();
         this.§3!5§ = param1;
         this.§"B§ = param3;
         this.mStage3D = param4;
         this.§8_§ = new §=!E§.Stage(param3.width,param3.height,param2.color);
         this.§=!A§ = param2;
         this.§"!>§ = new §'!W§(this.§8_§);
         this.§if§ = new §-!5§();
         this.§"!I§ = 0;
         this.§7!'§ = false;
         this.§#,§ = false;
         this.§8!Y§ = getTimer() / 1000;
         this.§4!P§ = new Dictionary();
         for each(_loc6_ in this.§8r§)
         {
            param2.addEventListener(_loc6_,this.§8!5§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§3a§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§3a§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§+!%§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§@^§,false,1,true);
         this.mStage3D.visible = false;
         this.§3M§(true);
         this.§%!%§ = param2.color;
         this.§&^§ = param5;
      }
      
      public static function get §7c§() : Boolean
      {
         if(§&!J§)
         {
            return §&!J§.§'1§;
         }
         return true;
      }
      
      public static function §"!§() : Boolean
      {
         return §,!R§ && (§,!R§.§&_§ || §,!R§.§"v§ != null && §,!R§.§"v§.driverInfo != "Disposed");
      }
      
      public static function get §&!J§() : §7[§
      {
         return §,!R§;
      }
      
      public static function get §=!$§() : §-!5§
      {
         return !!§,!R§ ? §,!R§.§=!$§ : null;
      }
      
      public static function get §&a§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §&a§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §4!R§() : Boolean
      {
         return § -§;
      }
      
      public static function set §4!R§(param1:Boolean) : void
      {
         if(§,!R§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         § -§ = param1;
      }
      
      public static function §&!P§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§&!J§)
         {
            return Texture.§5!7§(§&!J§.§"v§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§,!R§.§"v§)
         {
            §,!R§.§"v§.drawToBitmapData(param1);
         }
         else if(§,!R§.§,t§.canvas)
         {
            _loc2_ = §,!R§.§,t§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §5!+§() : §=!E§.DisplayObject
      {
         return this.§1!,§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§%!%§ = param1;
      }
      
      public function get §+h§() : Number
      {
         return this.§ B§;
      }
      
      public function get §,![§() : Number
      {
         return this.§`!R§;
      }
      
      public function §[!M§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§&^§);
         }
         catch(e:Error)
         {
            § !9§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§ p§ = true;
         this.§=!A§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§3a§,false);
         this.§=!A§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§3a§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§+!%§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§@^§,false);
         for each(_loc1_ in this.§8r§)
         {
            this.§=!A§.removeEventListener(_loc1_,this.§8!5§,false);
         }
         for each(_loc2_ in this.§4!P§)
         {
            _loc2_.dispose();
         }
         if(this.§"v§)
         {
            this.§"v§.dispose();
         }
         if(this.§"!>§)
         {
            this.§"!>§.dispose();
         }
         if(this.§,t§)
         {
            this.§,t§.dispose();
         }
         if(§,!R§ == this)
         {
            §,!R§ = null;
         }
         if(this.§!!]§ && this.§!!]§.bitmapData)
         {
            this.§!!]§.bitmapData.dispose();
            this.§!!]§.bitmapData = null;
         }
      }
      
      private function §%>§() : void
      {
         this.§"v§ = this.mStage3D.context3D;
         this.§4!P§ = new Dictionary();
         if(this.§"v§)
         {
            this.§"v§.enableErrorChecking = this.§#,§;
            if(this.§"v§.driverInfo.indexOf("Software") >= 0)
            {
               this.§'1§ = true;
            }
         }
         else
         {
            this.§'1§ = true;
         }
         this.§"j§();
      }
      
      private function §;r§() : void
      {
         if(this.§8_§.numChildren > 0)
         {
            return;
         }
         if(this.§1!,§ == null)
         {
            this.§1!,§ = new this.§3!5§();
         }
         if(this.§1!,§ == null)
         {
            throw new Error("Invalid root class: " + this.§3!5§);
         }
         this.§8_§.addChild(this.§1!,§);
      }
      
      private function §"j§() : void
      {
         this.§15§ = true;
         this.mStage3D.x = this.§"B§.x;
         this.mStage3D.y = this.§"B§.y;
      }
      
      private function render() : void
      {
         if(!§"!§())
         {
            return;
         }
         if(this.§15§)
         {
            if(this.§"v§)
            {
               this.§"v§.configureBackBuffer(this.§"B§.width,this.§"B§.height,this.§"!I§,false);
            }
            this.§15§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§8!Y§;
         this.§8!Y§ = _loc1_;
         this.§8_§.advanceTime(_loc2_);
         this.§if§.advanceTime(_loc2_);
         this.§"!>§.advanceTime(_loc2_);
         this.§,t§.§`5§(this.§8_§.stageWidth,this.§8_§.stageHeight);
         this.§,t§.clear(this.§"v§,this.§%!%§,1);
         this.§,t§.§ !?§(this.§"v§,this.§,5§);
         this.§8_§.render(this.§,t§,1);
         this.§,t§.§5!Y§();
         if(this.§"!3§ != null)
         {
            this.§"!3§();
            this.§"!3§ = null;
         }
         this.§,t§.finishRendering(this.§"v§);
         this.§,t§.§-I§();
      }
      
      public function set §^G§(param1:Function) : void
      {
         this.§"!3§ = param1;
      }
      
      private function §;! §() : void
      {
         var _loc3_:BitmapData = null;
         this.§]3§.x = this.§"B§.x;
         this.§]3§.y = this.§"B§.y;
         var _loc1_:int = this.§]3§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§]3§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§=!A§.addChild(this.§]3§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§=!A§.removeChild(this.§]3§);
         }
         if(this.§,t§ && this.§,t§.canvas)
         {
            this.§,t§.setCanvasSize(this.§=Q§,this.§'!Q§,this.§"B§.width / this.§8_§.stageWidth,this.§"B§.height / this.§8_§.stageHeight);
            _loc3_ = this.§,t§.canvas;
            if(this.§!!]§.bitmapData != _loc3_)
            {
               this.§!!]§.bitmapData = _loc3_;
            }
            if(this.§=!A§.getChildIndex(this.§]3§) > 0)
            {
               this.§=!A§.removeChild(this.§]3§);
               this.§=!A§.addChildAt(this.§]3§,0);
            }
         }
      }
      
      private function § !9§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§8_§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§8_§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§8_§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§1_§.addChild(_loc2_);
      }
      
      public function §[5§() : void
      {
         §,!R§ = this;
      }
      
      public function start() : void
      {
         this.§3r§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§3r§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §3M§(param1:Boolean) : void
      {
         this.§^B§ = param1;
      }
      
      private function §for§() : void
      {
         this.§&_§ = true;
         if(this.§!!]§ == null)
         {
            this.§!!]§ = new Bitmap();
            this.§1_§.addChild(this.§!!]§);
         }
      }
      
      private function §@^§(param1:ErrorEvent) : void
      {
         this.§for§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §+!%§(param1:flash.events.Event) : void
      {
         if(this.§ p§)
         {
            return;
         }
         ++§'!$§;
         this.§,5§ = §'!$§;
         if(this.§,t§)
         {
            this.§,t§.dispose();
         }
         if(!§7[§.§4!R§ && this.§"v§)
         {
            this.§ !9§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§[5§();
         this.§%>§();
         this.§;r§();
         if(this.§"v§ && this.§'1§)
         {
            this.mStage3DEnabled = false;
            this.§"v§ = null;
            this.§for§();
         }
         if(this.§"v§)
         {
            this.§,t§ = new §16§();
         }
         else
         {
            this.§,t§ = new § !A§();
            this.§,t§.setCanvasSize(this.§=Q§,this.§'!Q§,this.§"B§.width / this.§8_§.stageWidth,this.§"B§.height / this.§8_§.stageHeight);
            this.§,t§.clear(null,this.§%!%§);
         }
         this.§"!>§.simulateMultitouch = this.§7!'§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §!<§(param1:flash.events.Event) : void
      {
         this.§[5§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§8!Y§;
         if(this.§3r§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§]3§)
         {
            this.§;! §();
         }
      }
      
      private function §3a§(param1:flash.events.KeyboardEvent) : void
      {
         this.§[5§();
         this.§8_§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§ B§;
         var _loc5_:Number = param2 / this.§`!R§;
         if(!param3)
         {
            this.§8_§.stageWidth = this.§ B§ * _loc4_ / _loc5_;
            this.§8_§.stageHeight = this.§`!R§;
         }
         else
         {
            this.§8_§.stageWidth = this.§ B§;
            this.§8_§.stageHeight = this.§`!R§ * _loc5_ / _loc4_;
         }
         this.§=Q§ = param1;
         this.§'!Q§ = param2;
         this.§8_§.dispatchEvent(new §0%§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §4"§() : void
      {
         this.setCanvasSize(this.§ B§,this.§`!R§);
      }
      
      private function §8!5§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§3r§ || !this.§^B§)
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
               this.§-g§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§-g§ = false;
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
               _loc5_ = §]I§.§?u§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §]I§.§ J§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §]I§.§`7§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §]I§.§?u§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §]I§.§`7§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§-g§ ? §]I§.§ J§ : §]I§.§`O§;
         }
         if((_loc2_ < this.§"B§.left || _loc2_ >= this.§"B§.right || _loc3_ < this.§"B§.top || _loc3_ >= this.§"B§.bottom) && _loc5_ == §]I§.§?u§)
         {
            return;
         }
         _loc2_ -= this.§"B§.x;
         _loc3_ -= this.§"B§.y;
         this.§"!>§.§8s§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §8r§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §[t§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§4!P§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§"v§ != null)
         {
            (_loc4_ = this.§"v§.createProgram()).upload(param2,param3);
            this.§4!P§[param1] = _loc4_;
         }
      }
      
      public function §1%§(param1:String) : void
      {
         var _loc2_:Program3D = this.§&Q§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§4!P§[param1];
         }
      }
      
      public function §&Q§(param1:String) : Program3D
      {
         return this.§4!P§[param1] as Program3D;
      }
      
      public function §6!#§(param1:String) : Boolean
      {
         return param1 in this.§4!P§;
      }
      
      public function get §;e§() : Boolean
      {
         return this.§3r§;
      }
      
      public function get §=!$§() : §-!5§
      {
         return this.§if§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§7!'§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§7!'§ = param1;
         if(this.§"v§)
         {
            this.§"!>§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§#,§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§#,§ = param1;
         if(this.§"v§)
         {
            this.§"v§.enableErrorChecking = param1;
         }
      }
      
      public function get §=O§() : int
      {
         return this.§"!I§;
      }
      
      public function set §=O§(param1:int) : void
      {
         this.§"!I§ = param1;
         this.§"j§();
      }
      
      public function get § d§() : Rectangle
      {
         return this.§"B§.clone();
      }
      
      public function set § d§(param1:Rectangle) : void
      {
         this.§"B§ = param1.clone();
         this.§"j§();
      }
      
      public function get §1_§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§]3§ == null)
         {
            this.§]3§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§]3§.contextMenu = _loc1_;
            this.§;! §();
         }
         return this.§]3§;
      }
      
      public function get stage() : §=!E§.Stage
      {
         return this.§8_§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §8!W§() : flash.display.Stage
      {
         return this.§=!A§;
      }
      
      public function get §@&§() : Boolean
      {
         return !this.§&_§;
      }
   }
}
