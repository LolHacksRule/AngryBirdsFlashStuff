package § !+§
{
   import §&! §.§0!V§;
   import §0j§.§=!,§;
   import §2!-§.Texture;
   import §`a§.DisplayObject;
   import §`a§.Stage;
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
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import starling.events.§!q§;
   import starling.events.§,d§;
   import starling.events.§6!>§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §0Z§ extends EventDispatcher implements §0!V§
   {
      
      public static const VERSION:String = "1.0";
      
      private static var § n§:§0Z§;
      
      private static var §[<§:Boolean;
      
      private static var §?t§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §-?§:§`a§.Stage;
      
      private var § !-§:Class;
      
      private var §#`§:§`a§.DisplayObject;
      
      private var §6a§:§=!,§;
      
      private var §@H§:Boolean;
      
      private var §@I§:Boolean;
      
      private var §%!S§:§%L§;
      
      private var §0y§:§,d§;
      
      private var §&R§:int;
      
      private var §1u§:Boolean;
      
      private var §%e§:Boolean;
      
      private var §&[§:Number;
      
      private var §!W§:Rectangle;
      
      private var §`H§:Boolean;
      
      private var §3!2§:flash.display.Stage;
      
      private var §&^§:Sprite;
      
      private var §@n§:Context3D;
      
      private var §?!2§:Dictionary;
      
      private var § !C§:int;
      
      private var §'6§:Boolean;
      
      private var §-q§:Number;
      
      private var §=-§:Number;
      
      private var §68§:Number;
      
      private var § ]§:Number;
      
      private var §]!C§:Number;
      
      private var §<-§:Number;
      
      private var §`>§:Function;
      
      private var §^0§:uint;
      
      private var §7!S§:String;
      
      private var §=X§:Bitmap;
      
      private var §+5§:Boolean = false;
      
      private var § y§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §[!2§:Boolean = false;
      
      public function §0Z§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§-q§ = param3.width;
         this.§=-§ = param3.height;
         this.§68§ = this.§-q§;
         this.§ ]§ = this.§=-§;
         this.§]!C§ = param2.stageWidth;
         this.§<-§ = param2.stageHeight;
         §^$§ = true;
         this.§%-§();
         this.§ !-§ = param1;
         this.§!W§ = param3;
         this.mStage3D = param4;
         this.§-?§ = new §`a§.Stage(param3.width,param3.height,param2.color);
         this.§3!2§ = param2;
         this.§0y§ = new §,d§(this.§-?§);
         this.§6a§ = new §=!,§();
         this.§&R§ = 0;
         this.§1u§ = false;
         this.§%e§ = false;
         this.§&[§ = getTimer() / 1000;
         this.§?!2§ = new Dictionary();
         for each(_loc6_ in this.§4%§)
         {
            param2.addEventListener(_loc6_,this.§66§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§>-§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§>-§,false,0,true);
         param2.addEventListener(flash.events.Event.RESIZE,this.§1!Z§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!%§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§?J§,false,1,true);
         this.mStage3D.visible = false;
         this.§`5§(true);
         this.§^0§ = param2.color;
         this.§7!S§ = param5;
      }
      
      public static function get §=2§() : Boolean
      {
         if(§4J§)
         {
            return §4J§.§'6§;
         }
         return true;
      }
      
      public static function § Z§() : Boolean
      {
         return § n§ && (§ n§.§+5§ || § n§.§@n§ != null && § n§.§@n§.driverInfo != "Disposed");
      }
      
      public static function get §4J§() : §0Z§
      {
         return § n§;
      }
      
      public static function get §-m§() : §=!,§
      {
         return !!§ n§ ? § n§.§-m§ : null;
      }
      
      public static function get §+!§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §+!§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §^$§() : Boolean
      {
         return §[<§;
      }
      
      public static function set §^$§(param1:Boolean) : void
      {
         if(§ n§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §[<§ = param1;
      }
      
      public static function §4!8§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§4J§)
         {
            return Texture.§'d§(§4J§.§@n§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§ n§.§@n§)
         {
            § n§.§@n§.drawToBitmapData(param1);
         }
         else if(§ n§.§%!S§.canvas)
         {
            _loc2_ = § n§.§%!S§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §'w§() : §`a§.DisplayObject
      {
         return this.§#`§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§^0§ = param1;
      }
      
      public function get §@1§() : Number
      {
         return this.§-q§;
      }
      
      public function get §3"§() : Number
      {
         return this.§=-§;
      }
      
      public function §+!"§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§7!S§);
         }
         catch(e:Error)
         {
            §>!L§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§[!2§ = true;
         this.§3!2§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§>-§,false);
         this.§3!2§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§>-§,false);
         this.§3!2§.removeEventListener(flash.events.Event.RESIZE,this.§1!Z§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!%§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§?J§,false);
         for each(_loc1_ in this.§4%§)
         {
            this.§3!2§.removeEventListener(_loc1_,this.§66§,false);
         }
         for each(_loc2_ in this.§?!2§)
         {
            _loc2_.dispose();
         }
         if(this.§@n§)
         {
            this.§@n§.dispose();
         }
         if(this.§0y§)
         {
            this.§0y§.dispose();
         }
         if(this.§%!S§)
         {
            this.§%!S§.dispose();
         }
         if(§ n§ == this)
         {
            § n§ = null;
         }
         if(this.§=X§ && this.§=X§.bitmapData)
         {
            this.§=X§.bitmapData.dispose();
            this.§=X§.bitmapData = null;
         }
      }
      
      private function §;-§() : void
      {
         this.§@n§ = this.mStage3D.context3D;
         this.§?!2§ = new Dictionary();
         if(this.§@n§)
         {
            this.§@n§.enableErrorChecking = this.§%e§;
            if(this.§@n§.driverInfo.indexOf("Software") >= 0)
            {
               this.§'6§ = true;
            }
         }
         else
         {
            this.§'6§ = true;
         }
         this.§3M§();
      }
      
      private function §0!H§() : void
      {
         if(this.§-?§.numChildren > 0)
         {
            return;
         }
         if(this.§#`§ == null)
         {
            this.§#`§ = new this.§ !-§();
         }
         if(this.§#`§ == null)
         {
            throw new Error("Invalid root class: " + this.§ !-§);
         }
         this.§-?§.addChild(this.§#`§);
      }
      
      private function §3M§() : void
      {
         this.§ y§ = true;
         this.mStage3D.x = this.§!W§.x;
         this.mStage3D.y = this.§!W§.y;
      }
      
      private function render() : void
      {
         if(!§ Z§())
         {
            return;
         }
         if(this.§ y§)
         {
            if(this.§@n§)
            {
               this.§@n§.configureBackBuffer(this.§!W§.width,this.§!W§.height,this.§&R§,false);
            }
            this.§ y§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§&[§;
         this.§&[§ = _loc1_;
         this.§-?§.advanceTime(_loc2_);
         this.§6a§.advanceTime(_loc2_);
         this.§0y§.advanceTime(_loc2_);
         this.§%!S§.§6!E§(this.§-?§.stageWidth,this.§-?§.stageHeight);
         this.§%!S§.clear(this.§@n§,this.§^0§,1);
         this.§%!S§.§+!T§(this.§@n§,this.§ !C§);
         this.§-?§.render(this.§%!S§,1);
         this.§%!S§.§3N§();
         if(this.§`>§ != null)
         {
            this.§`>§();
            this.§`>§ = null;
         }
         this.§%!S§.finishRendering(this.§@n§);
         this.§%!S§.§9!'§();
      }
      
      public function set §=>§(param1:Function) : void
      {
         this.§`>§ = param1;
      }
      
      private function §'-§() : void
      {
         var _loc3_:BitmapData = null;
         this.§&^§.x = this.§!W§.x;
         this.§&^§.y = this.§!W§.y;
         var _loc1_:int = this.§&^§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§&^§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§3!2§.addChild(this.§&^§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§3!2§.removeChild(this.§&^§);
         }
         if(this.§%!S§ && this.§%!S§.canvas)
         {
            this.§%!S§.setCanvasSize(this.§68§,this.§ ]§,this.§!W§.width / this.§-?§.stageWidth,this.§!W§.height / this.§-?§.stageHeight);
            _loc3_ = this.§%!S§.canvas;
            if(this.§=X§.bitmapData != _loc3_)
            {
               this.§=X§.bitmapData = _loc3_;
            }
            if(this.§3!2§.getChildIndex(this.§&^§) > 0)
            {
               this.§3!2§.removeChild(this.§&^§);
               this.§3!2§.addChildAt(this.§&^§,0);
            }
         }
      }
      
      private function §>!L§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§-?§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§-?§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§-?§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§;>§.addChild(_loc2_);
      }
      
      public function §%-§() : void
      {
         § n§ = this;
      }
      
      public function start() : void
      {
         this.§@H§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§@H§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §`5§(param1:Boolean) : void
      {
         this.§@I§ = param1;
      }
      
      private function §!!6§() : void
      {
         this.§+5§ = true;
         if(this.§=X§ == null)
         {
            this.§=X§ = new Bitmap();
            this.§;>§.addChild(this.§=X§);
         }
      }
      
      private function §?J§(param1:ErrorEvent) : void
      {
         this.§!!6§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §3!%§(param1:flash.events.Event) : void
      {
         if(this.§[!2§)
         {
            return;
         }
         ++§?t§;
         this.§ !C§ = §?t§;
         if(this.§%!S§)
         {
            this.§%!S§.dispose();
         }
         if(!§0Z§.§^$§ && this.§@n§)
         {
            this.§>!L§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§%-§();
         this.§;-§();
         this.§0!H§();
         if(this.§@n§ && this.§'6§)
         {
            this.mStage3DEnabled = false;
            this.§@n§ = null;
            this.§!!6§();
         }
         if(this.§@n§)
         {
            this.§%!S§ = new §%L§();
         }
         else
         {
            this.§%!S§ = new §^!E§();
            this.§%!S§.setCanvasSize(this.§68§,this.§ ]§,this.§!W§.width / this.§-?§.stageWidth,this.§!W§.height / this.§-?§.stageHeight);
            this.§%!S§.clear(null,this.§^0§);
         }
         this.§0y§.§4m§ = this.§1u§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §[x§() : void
      {
         this.§%-§();
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§&[§;
         if(this.§@H§ || _loc2_ > 1)
         {
            this.render();
         }
         if(this.§&^§)
         {
            this.§'-§();
         }
      }
      
      private function §>-§(param1:flash.events.KeyboardEvent) : void
      {
         this.§%-§();
         this.§-?§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §1!Z§(param1:flash.events.Event) : void
      {
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         this.§-?§.dispatchEvent(new §6!>§(flash.events.Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§-q§;
         var _loc5_:Number = param2 / this.§=-§;
         if(!param3)
         {
            this.§-?§.stageWidth = this.§-q§ * _loc4_ / _loc5_;
            this.§-?§.stageHeight = this.§=-§;
         }
         else
         {
            this.§-?§.stageWidth = this.§-q§;
            this.§-?§.stageHeight = this.§=-§ * _loc5_ / _loc4_;
         }
         this.§68§ = param1;
         this.§ ]§ = param2;
         this.§-?§.dispatchEvent(new §6!>§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §7z§() : void
      {
         this.setCanvasSize(this.§-q§,this.§=-§);
      }
      
      private function §66§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§@H§ || !this.§@I§)
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
               this.§`H§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§`H§ = false;
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
               _loc5_ = §!q§.§4c§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §!q§.§%X§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §!q§.§#Z§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §!q§.§4c§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §!q§.§#Z§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§`H§ ? §!q§.§%X§ : §!q§.§ !G§;
         }
         if((_loc2_ < this.§!W§.left || _loc2_ >= this.§!W§.right || _loc3_ < this.§!W§.top || _loc3_ >= this.§!W§.bottom) && _loc5_ == §!q§.§4c§)
         {
            return;
         }
         _loc2_ -= this.§!W§.x;
         _loc3_ -= this.§!W§.y;
         this.§0y§.§[!G§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §4%§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §"^§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§?!2§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§@n§ != null)
         {
            (_loc4_ = this.§@n§.createProgram()).upload(param2,param3);
            this.§?!2§[param1] = _loc4_;
         }
      }
      
      public function §@!2§(param1:String) : void
      {
         var _loc2_:Program3D = this.§3!3§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§?!2§[param1];
         }
      }
      
      public function §3!3§(param1:String) : Program3D
      {
         return this.§?!2§[param1] as Program3D;
      }
      
      public function §6!=§(param1:String) : Boolean
      {
         return param1 in this.§?!2§;
      }
      
      public function get §?!L§() : Boolean
      {
         return this.§@H§;
      }
      
      public function get §-m§() : §=!,§
      {
         return this.§6a§;
      }
      
      public function get §4m§() : Boolean
      {
         return this.§1u§;
      }
      
      public function set §4m§(param1:Boolean) : void
      {
         this.§1u§ = param1;
         if(this.§@n§)
         {
            this.§0y§.§4m§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§%e§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§%e§ = param1;
         if(this.§@n§)
         {
            this.§@n§.enableErrorChecking = param1;
         }
      }
      
      public function get § l§() : int
      {
         return this.§&R§;
      }
      
      public function set § l§(param1:int) : void
      {
         this.§&R§ = param1;
         this.§3M§();
      }
      
      public function get §&u§() : Rectangle
      {
         return this.§!W§.clone();
      }
      
      public function set §&u§(param1:Rectangle) : void
      {
         this.§!W§ = param1.clone();
         this.§3M§();
      }
      
      public function get §;>§() : Sprite
      {
         if(this.§&^§ == null)
         {
            this.§&^§ = new Sprite();
            this.§'-§();
         }
         return this.§&^§;
      }
      
      public function get stage() : §`a§.Stage
      {
         return this.§-?§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §9!#§() : flash.display.Stage
      {
         return this.§3!2§;
      }
      
      public function get §0!J§() : Boolean
      {
         return !this.§+5§;
      }
   }
}
