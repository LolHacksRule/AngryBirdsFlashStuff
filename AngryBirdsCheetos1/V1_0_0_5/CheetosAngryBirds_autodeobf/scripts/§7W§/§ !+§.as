package §7W§
{
   import §!!R§.DisplayObject;
   import §!!R§.Stage;
   import §&! §.§0!V§;
   import §2k§.Texture;
   import §^U§.§,!Z§;
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
   import starling.events.§#Z§;
   import starling.events.§'r§;
   import starling.events.§+G§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class § !+§ extends EventDispatcher implements §0!V§
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §0!J§:§ !+§;
      
      private static var § n§:Boolean;
      
      private static var §[<§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §=v§:§!!R§.Stage;
      
      private var §0Z§:Class;
      
      private var § !-§:§!!R§.DisplayObject;
      
      private var §#`§:§,!Z§;
      
      private var §6a§:Boolean;
      
      private var §@H§:Boolean;
      
      private var §@I§:§4!8§;
      
      private var §%!S§:§#Z§;
      
      private var §0y§:int;
      
      private var §&R§:Boolean;
      
      private var §1u§:Boolean;
      
      private var §%e§:Number;
      
      private var §&[§:Rectangle;
      
      private var §!W§:Boolean;
      
      private var §`H§:flash.display.Stage;
      
      private var §3!2§:Sprite;
      
      private var §&^§:Context3D;
      
      private var §@n§:Dictionary;
      
      private var §?!2§:int;
      
      private var § !C§:Boolean;
      
      private var §'6§:Number;
      
      private var §-q§:Number;
      
      private var §=-§:Number;
      
      private var §68§:Number;
      
      private var § ]§:Number;
      
      private var §]!C§:Number;
      
      private var §<-§:Function;
      
      private var §^0§:uint;
      
      private var §`>§:String;
      
      private var §7!S§:Bitmap;
      
      private var §=X§:Boolean = false;
      
      private var §+5§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var § y§:Boolean = false;
      
      public function § !+§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§'6§ = param3.width;
         this.§-q§ = param3.height;
         this.§=-§ = this.§'6§;
         this.§68§ = this.§-q§;
         this.§ ]§ = param2.stageWidth;
         this.§]!C§ = param2.stageHeight;
         §+!§ = true;
         this.§>!L§();
         this.§0Z§ = param1;
         this.§&[§ = param3;
         this.mStage3D = param4;
         this.§=v§ = new §!!R§.Stage(param3.width,param3.height,param2.color);
         this.§`H§ = param2;
         this.§%!S§ = new §#Z§(this.§=v§);
         this.§#`§ = new §,!Z§();
         this.§0y§ = 0;
         this.§&R§ = false;
         this.§1u§ = false;
         this.§%e§ = getTimer() / 1000;
         this.§@n§ = new Dictionary();
         for each(_loc6_ in this.§66§)
         {
            param2.addEventListener(_loc6_,this.§7z§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§?J§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§?J§,false,0,true);
         param2.addEventListener(flash.events.Event.RESIZE,this.§>-§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§>D§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§!!6§,false,1,true);
         this.mStage3D.visible = false;
         this.§%-§(true);
         this.§`>§ = param5;
      }
      
      public static function get §?t§() : Boolean
      {
         if(§ Z§)
         {
            return § Z§.§ !C§;
         }
         return true;
      }
      
      public static function §=2§() : Boolean
      {
         return §0!J§ && (§0!J§.§=X§ || §0!J§.§&^§ != null && §0!J§.§&^§.driverInfo != "Disposed");
      }
      
      public static function get § Z§() : § !+§
      {
         return §0!J§;
      }
      
      public static function get §?!L§() : §,!Z§
      {
         return !!§0!J§ ? §0!J§.§?!L§ : null;
      }
      
      public static function get §4J§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §4J§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §+!§() : Boolean
      {
         return § n§;
      }
      
      public static function set §+!§(param1:Boolean) : void
      {
         if(§0!J§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         § n§ = param1;
      }
      
      public static function §^$§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§ Z§)
         {
            return Texture.§&V§(§ Z§.§&^§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§0!J§.§&^§)
         {
            §0!J§.§&^§.drawToBitmapData(param1);
         }
         else if(§0!J§.§@I§.canvas)
         {
            _loc2_ = §0!J§.§@I§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §[!2§() : §!!R§.DisplayObject
      {
         return this.§ !-§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§^0§ = param1;
      }
      
      public function get §'w§() : Number
      {
         return this.§'6§;
      }
      
      public function get §@1§() : Number
      {
         return this.§-q§;
      }
      
      public function §3"§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§`>§);
         }
         catch(e:Error)
         {
            §'-§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§ y§ = true;
         this.§`H§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§?J§,false);
         this.§`H§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§?J§,false);
         this.§`H§.removeEventListener(flash.events.Event.RESIZE,this.§>-§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§>D§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§!!6§,false);
         for each(_loc1_ in this.§66§)
         {
            this.§`H§.removeEventListener(_loc1_,this.§7z§,false);
         }
         for each(_loc2_ in this.§@n§)
         {
            _loc2_.dispose();
         }
         if(this.§&^§)
         {
            this.§&^§.dispose();
         }
         if(this.§%!S§)
         {
            this.§%!S§.dispose();
         }
         if(this.§@I§)
         {
            this.§@I§.dispose();
         }
         if(§0!J§ == this)
         {
            §0!J§ = null;
         }
         if(this.§7!S§ && this.§7!S§.bitmapData)
         {
            this.§7!S§.bitmapData.dispose();
            this.§7!S§.bitmapData = null;
         }
      }
      
      private function §+!"§() : void
      {
         this.§&^§ = this.mStage3D.context3D;
         this.§@n§ = new Dictionary();
         if(this.§&^§)
         {
            this.§&^§.enableErrorChecking = this.§1u§;
            if(this.§&^§.driverInfo.indexOf("Software") >= 0)
            {
               this.§ !C§ = true;
            }
         }
         else
         {
            this.§ !C§ = true;
         }
         this.§0!H§();
      }
      
      private function §;-§() : void
      {
         if(this.§=v§.numChildren > 0)
         {
            return;
         }
         if(this.§ !-§ == null)
         {
            this.§ !-§ = new this.§0Z§();
         }
         if(this.§ !-§ == null)
         {
            throw new Error("Invalid root class: " + this.§0Z§);
         }
         this.§=v§.addChild(this.§ !-§);
      }
      
      private function §0!H§() : void
      {
         this.§+5§ = true;
         this.mStage3D.x = this.§&[§.x;
         this.mStage3D.y = this.§&[§.y;
      }
      
      private function render() : void
      {
         if(!§=2§())
         {
            return;
         }
         if(this.§+5§)
         {
            if(this.§&^§)
            {
               this.§&^§.configureBackBuffer(this.§&[§.width,this.§&[§.height,this.§0y§,false);
            }
            this.§+5§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§%e§;
         this.§%e§ = _loc1_;
         this.§=v§.advanceTime(_loc2_);
         this.§#`§.advanceTime(_loc2_);
         this.§%!S§.advanceTime(_loc2_);
         this.§@I§.§=6§(this.§=v§.stageWidth,this.§=v§.stageHeight);
         this.§@I§.clear(this.§&^§,this.§^0§,1);
         this.§@I§.§2<§(this.§&^§,this.§?!2§);
         this.§=v§.render(this.§@I§,1);
         this.§@I§.§5!8§();
         if(this.§<-§ != null)
         {
            this.§<-§();
            this.§<-§ = null;
         }
         this.§@I§.finishRendering(this.§&^§);
         this.§@I§.§3N§();
      }
      
      public function set §3M§(param1:Function) : void
      {
         this.§<-§ = param1;
      }
      
      private function §=>§() : void
      {
         var _loc3_:BitmapData = null;
         this.§3!2§.x = this.§&[§.x;
         this.§3!2§.y = this.§&[§.y;
         var _loc1_:int = this.§3!2§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§3!2§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§`H§.addChild(this.§3!2§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§`H§.removeChild(this.§3!2§);
         }
         if(this.§@I§ && this.§@I§.canvas)
         {
            this.§@I§.setCanvasSize(this.§=-§,this.§68§,this.§&[§.width / this.§=v§.stageWidth,this.§&[§.height / this.§=v§.stageHeight);
            _loc3_ = this.§@I§.canvas;
            if(this.§7!S§.bitmapData != _loc3_)
            {
               this.§7!S§.bitmapData = _loc3_;
            }
            if(this.§`H§.getChildIndex(this.§3!2§) > 0)
            {
               this.§`H§.removeChild(this.§3!2§);
               this.§`H§.addChildAt(this.§3!2§,0);
            }
         }
      }
      
      private function §'-§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§=v§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§=v§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§=v§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§&u§.addChild(_loc2_);
      }
      
      public function §>!L§() : void
      {
         §0!J§ = this;
      }
      
      public function start() : void
      {
         this.§6a§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§6a§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §%-§(param1:Boolean) : void
      {
         this.§@H§ = param1;
      }
      
      private function §`5§() : void
      {
         this.§=X§ = true;
         if(this.§7!S§ == null)
         {
            this.§7!S§ = new Bitmap();
            this.§&u§.addChild(this.§7!S§);
         }
      }
      
      private function §!!6§(param1:ErrorEvent) : void
      {
         this.§`5§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §>D§(param1:flash.events.Event) : void
      {
         if(this.§ y§)
         {
            return;
         }
         ++§[<§;
         this.§?!2§ = §[<§;
         if(this.§@I§)
         {
            this.§@I§.dispose();
         }
         if(!§ !+§.§+!§ && this.§&^§)
         {
            this.§'-§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§>!L§();
         this.§+!"§();
         this.§;-§();
         if(this.§&^§ && this.§ !C§)
         {
            this.mStage3DEnabled = false;
            this.§&^§ = null;
            this.§`5§();
         }
         if(this.§&^§)
         {
            this.§@I§ = new §4!8§();
         }
         else
         {
            this.§@I§ = new § !;§();
            this.§@I§.setCanvasSize(this.§=-§,this.§68§,this.§&[§.width / this.§=v§.stageWidth,this.§&[§.height / this.§=v§.stageHeight);
            this.§@I§.clear(null,this.§^0§);
         }
         this.§%!S§.§-m§ = this.§&R§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §[x§() : void
      {
         this.§>!L§();
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§%e§;
         if(this.§6a§ || _loc2_ > 1)
         {
            this.render();
         }
         if(this.§3!2§)
         {
            this.§=>§();
         }
      }
      
      private function §?J§(param1:flash.events.KeyboardEvent) : void
      {
         this.§>!L§();
         this.§=v§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §>-§(param1:flash.events.Event) : void
      {
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         this.§=v§.dispatchEvent(new §'r§(flash.events.Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§'6§;
         var _loc5_:Number = param2 / this.§-q§;
         if(!param3)
         {
            this.§=v§.stageWidth = this.§'6§ * _loc4_ / _loc5_;
            this.§=v§.stageHeight = this.§-q§;
         }
         else
         {
            this.§=v§.stageWidth = this.§'6§;
            this.§=v§.stageHeight = this.§-q§ * _loc5_ / _loc4_;
         }
         this.§=-§ = param1;
         this.§68§ = param2;
         this.§=v§.dispatchEvent(new §'r§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §1!Z§() : void
      {
         this.setCanvasSize(this.§'6§,this.§-q§);
      }
      
      private function §7z§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§6a§ || !this.§@H§)
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
               this.§!W§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§!W§ = false;
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
               _loc5_ = §+G§.§ !G§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §+G§.§4c§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §+G§.§<N§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §+G§.§ !G§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §+G§.§<N§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§!W§ ? §+G§.§4c§ : §+G§.§!q§;
         }
         if((_loc2_ < this.§&[§.left || _loc2_ >= this.§&[§.right || _loc3_ < this.§&[§.top || _loc3_ >= this.§&[§.bottom) && _loc5_ == §+G§.§ !G§)
         {
            return;
         }
         _loc2_ -= this.§&[§.x;
         _loc3_ -= this.§&[§.y;
         this.§%!S§.§[V§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §66§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §4%§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§@n§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§&^§ != null)
         {
            (_loc4_ = this.§&^§.createProgram()).upload(param2,param3);
            this.§@n§[param1] = _loc4_;
         }
      }
      
      public function §"^§(param1:String) : void
      {
         var _loc2_:Program3D = this.§@!2§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§@n§[param1];
         }
      }
      
      public function §@!2§(param1:String) : Program3D
      {
         return this.§@n§[param1] as Program3D;
      }
      
      public function §3!3§(param1:String) : Boolean
      {
         return param1 in this.§@n§;
      }
      
      public function get §6!=§() : Boolean
      {
         return this.§6a§;
      }
      
      public function get §?!L§() : §,!Z§
      {
         return this.§#`§;
      }
      
      public function get §-m§() : Boolean
      {
         return this.§&R§;
      }
      
      public function set §-m§(param1:Boolean) : void
      {
         this.§&R§ = param1;
         if(this.§&^§)
         {
            this.§%!S§.§-m§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§1u§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§1u§ = param1;
         if(this.§&^§)
         {
            this.§&^§.enableErrorChecking = param1;
         }
      }
      
      public function get §4m§() : int
      {
         return this.§0y§;
      }
      
      public function set §4m§(param1:int) : void
      {
         this.§0y§ = param1;
         this.§0!H§();
      }
      
      public function get § l§() : Rectangle
      {
         return this.§&[§.clone();
      }
      
      public function set § l§(param1:Rectangle) : void
      {
         this.§&[§ = param1.clone();
         this.§0!H§();
      }
      
      public function get §&u§() : Sprite
      {
         if(this.§3!2§ == null)
         {
            this.§3!2§ = new Sprite();
            this.§=>§();
         }
         return this.§3!2§;
      }
      
      public function get stage() : §!!R§.Stage
      {
         return this.§=v§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §;>§() : flash.display.Stage
      {
         return this.§`H§;
      }
      
      public function get §9!#§() : Boolean
      {
         return !this.§=X§;
      }
   }
}
