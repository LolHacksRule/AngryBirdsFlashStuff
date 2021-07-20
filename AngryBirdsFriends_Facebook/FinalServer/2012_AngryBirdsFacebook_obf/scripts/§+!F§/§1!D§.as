package §+!F§
{
   import §,!"§.§1i§;
   import §?7§.Texture;
   import §]!v§.DisplayObject;
   import §]!v§.Stage;
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
   import starling.events.§1&§;
   import starling.events.§4!k§;
   import starling.events.§9!x§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §1!D§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §''§:Rectangle;
      
      private static var §6b§:Boolean = true;
      
      private static var §`V§:Boolean;
      
      private static var §1X§:§1!D§;
      
      private static var §4!K§:Boolean;
      
      private static var §9W§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §0![§:§]!v§.Stage;
      
      private var §?!P§:Class;
      
      private var §%!M§:§]!v§.DisplayObject;
      
      private var §?$§:§1i§;
      
      private var §2[§:Boolean;
      
      private var §1!P§:Boolean;
      
      private var §"!O§:§<!l§;
      
      private var §!C§:§9!x§;
      
      private var §>!L§:int;
      
      private var §?0§:Boolean;
      
      private var §[!,§:Boolean;
      
      private var §0!p§:Number;
      
      private var §%!S§:Boolean;
      
      private var § !v§:flash.display.Stage;
      
      private var §4+§:Sprite;
      
      private var §0R§:Context3D;
      
      private var §#&§:Dictionary;
      
      private var §+[§:int;
      
      private var §@!0§:Boolean;
      
      private var §'m§:Number;
      
      private var §&M§:Number;
      
      private var §8";§:Number;
      
      private var §#5§:Number;
      
      private var §+V§:Number;
      
      private var §0S§:Number;
      
      private var §13§:Function;
      
      private var §@K§:uint;
      
      private var §86§:String;
      
      private var §^"@§:Bitmap;
      
      private var §0I§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §;m§:Boolean = false;
      
      public function §1!D§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§'m§ = param3.width;
         this.§&M§ = param3.height;
         this.§8";§ = this.§'m§;
         this.§#5§ = this.§&M§;
         this.§+V§ = param2.stageWidth;
         this.§0S§ = param2.stageHeight;
         §5""§ = true;
         this.§'!M§();
         this.§?!P§ = param1;
         §''§ = param3;
         this.mStage3D = param4;
         this.§0![§ = new §]!v§.Stage(param3.width,param3.height,param2.color);
         this.§ !v§ = param2;
         this.§!C§ = new §9!x§(this.§0![§);
         this.§?$§ = new §1i§();
         this.§>!L§ = 0;
         this.§?0§ = false;
         this.§[!,§ = false;
         this.§0!p§ = getTimer() / 1000;
         this.§#&§ = new Dictionary();
         for each(_loc6_ in this.§-"#§)
         {
            param2.addEventListener(_loc6_,this.§3S§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§<y§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§<y§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§7!D§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§5!@§,false,1,true);
         this.mStage3D.visible = false;
         this.§8§(true);
         this.§@K§ = param2.color;
         this.§86§ = param5;
      }
      
      public static function get §9"I§() : Boolean
      {
         if(§7!T§)
         {
            return §7!T§.§@!0§;
         }
         return true;
      }
      
      public static function §&"$§() : Boolean
      {
         return §1X§ && (§1X§.§0I§ || §1X§.§0R§ != null && §1X§.§0R§.driverInfo != "Disposed");
      }
      
      private static function §%"D§() : void
      {
         §`V§ = true;
      }
      
      public static function get §-H§() : Rectangle
      {
         return §''§.clone();
      }
      
      public static function set §-H§(param1:Rectangle) : void
      {
         §''§ = param1.clone();
         §%"D§();
      }
      
      public static function set §?"5§(param1:Boolean) : void
      {
         §6b§ = param1;
      }
      
      public static function get §?"5§() : Boolean
      {
         return §6b§;
      }
      
      public static function get §7!T§() : §1!D§
      {
         return §1X§;
      }
      
      public static function get §&!?§() : §1i§
      {
         return !!§1X§ ? §1X§.§&!?§ : null;
      }
      
      public static function get §5N§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §5N§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §5""§() : Boolean
      {
         return §4!K§;
      }
      
      public static function set §5""§(param1:Boolean) : void
      {
         if(§1X§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §4!K§ = param1;
      }
      
      public static function §;!1§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§7!T§)
         {
            return Texture.§'!V§(§7!T§.§0R§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§1X§.§0R§)
         {
            §1X§.§0R§.drawToBitmapData(param1);
         }
         else if(§1X§.§"!O§.canvas)
         {
            _loc2_ = §1X§.§"!O§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §;!C§() : §]!v§.DisplayObject
      {
         return this.§%!M§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§@K§ = param1;
      }
      
      public function get §""E§() : Number
      {
         return this.§'m§;
      }
      
      public function get §<=§() : Number
      {
         return this.§&M§;
      }
      
      public function §+"I§() : void
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
               requestContext3D(this.§86§,profile);
            }
            else
            {
               requestContext3D(this.§86§);
            }
         }
         catch(e:Error)
         {
            §<"B§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§;m§ = true;
         this.§ !v§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§<y§,false);
         this.§ !v§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§<y§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§7!D§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§5!@§,false);
         for each(_loc1_ in this.§-"#§)
         {
            this.§ !v§.removeEventListener(_loc1_,this.§3S§,false);
         }
         for each(_loc2_ in this.§#&§)
         {
            _loc2_.dispose();
         }
         if(this.§0R§)
         {
            this.§0R§.dispose();
         }
         if(this.§!C§)
         {
            this.§!C§.dispose();
         }
         if(this.§"!O§)
         {
            this.§"!O§.dispose();
         }
         if(§1X§ == this)
         {
            §1X§ = null;
         }
         if(this.§^"@§ && this.§^"@§.bitmapData)
         {
            this.§^"@§.bitmapData.dispose();
            this.§^"@§.bitmapData = null;
         }
      }
      
      private function §8`§() : void
      {
         this.§0R§ = this.mStage3D.context3D;
         this.§#&§ = new Dictionary();
         if(this.§0R§)
         {
            this.§0R§.enableErrorChecking = this.§[!,§;
            if(this.§0R§.driverInfo.indexOf("Software") >= 0)
            {
               this.§@!0§ = true;
            }
         }
         else
         {
            this.§@!0§ = true;
         }
         §%"D§();
      }
      
      private function §-@§() : void
      {
         if(this.§0![§.numChildren > 0)
         {
            return;
         }
         if(this.§%!M§ == null)
         {
            this.§%!M§ = new this.§?!P§();
         }
         if(this.§%!M§ == null)
         {
            throw new Error("Invalid root class: " + this.§?!P§);
         }
         this.§0![§.addChild(this.§%!M§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§0R§.configureBackBuffer(§''§.width,§''§.height,this.§>!L§,false);
            §`V§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§&"$§())
         {
            return;
         }
         if(§`V§)
         {
            if(this.§0R§)
            {
               this.mStage3D.x = §''§.x;
               this.mStage3D.y = §''§.y;
               this.configureBackBuffer();
               if(§`V§)
               {
                  return;
               }
               this.setCanvasSize(§''§.width,§''§.height);
            }
            else if(this.§^"@§)
            {
               §`V§ = false;
               this.setCanvasSize(§''§.width,§''§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§0!p§;
         this.§0!p§ = _loc1_;
         this.§0![§.advanceTime(_loc2_);
         this.§?$§.advanceTime(_loc2_);
         this.§!C§.advanceTime(_loc2_);
         this.§"!O§.§6^§(this.§0![§.stageWidth,this.§0![§.stageHeight);
         this.§"!O§.clear(this.§0R§,this.§@K§,1);
         this.§"!O§.§0y§(this.§0R§,this.§+[§);
         this.§0![§.render(this.§"!O§,1);
         this.§"!O§.§>"4§();
         if(this.§13§ != null)
         {
            this.§13§();
            this.§13§ = null;
         }
         this.§"!O§.finishRendering(this.§0R§);
         this.§"!O§.§?!H§();
      }
      
      public function set §<!4§(param1:Function) : void
      {
         this.§13§ = param1;
      }
      
      private function §?Y§() : void
      {
         var _loc3_:BitmapData = null;
         this.§4+§.x = §''§.x;
         this.§4+§.y = §''§.y;
         var _loc1_:int = this.§4+§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§4+§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§ !v§.addChild(this.§4+§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§ !v§.removeChild(this.§4+§);
         }
         if(this.§"!O§ && this.§"!O§.canvas)
         {
            this.§"!O§.setCanvasSize(this.§8";§,this.§#5§,§''§.width / this.§0![§.stageWidth,§''§.height / this.§0![§.stageHeight);
            _loc3_ = this.§"!O§.canvas;
            if(this.§^"@§.bitmapData != _loc3_)
            {
               this.§^"@§.bitmapData = _loc3_;
            }
            if(this.§ !v§.getChildIndex(this.§4+§) > 0)
            {
               this.§ !v§.removeChild(this.§4+§);
               this.§ !v§.addChildAt(this.§4+§,0);
            }
         }
      }
      
      private function §<"B§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§0![§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§0![§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§0![§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§implements§.addChild(_loc2_);
      }
      
      public function §'!M§() : void
      {
         §1X§ = this;
      }
      
      public function start() : void
      {
         this.§2[§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§2[§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §8§(param1:Boolean) : void
      {
         this.§1!P§ = param1;
      }
      
      private function §2p§() : void
      {
         this.§0I§ = true;
         if(this.§^"@§ == null)
         {
            this.§^"@§ = new Bitmap();
            this.§implements§.addChild(this.§^"@§);
         }
      }
      
      private function §5!@§(param1:ErrorEvent) : void
      {
         this.§2p§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §7!D§(param1:flash.events.Event) : void
      {
         if(this.§;m§)
         {
            return;
         }
         ++§9W§;
         this.§+[§ = §9W§;
         if(this.§"!O§)
         {
            this.§"!O§.dispose();
         }
         if(!§1!D§.§5""§ && this.§0R§)
         {
            this.§<"B§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§'!M§();
         this.§8`§();
         this.§-@§();
         if(this.§0R§ && this.§@!0§)
         {
            this.mStage3DEnabled = false;
            this.§0R§ = null;
            this.§2p§();
         }
         if(this.§0R§)
         {
            this.§"!O§ = new §<!l§();
         }
         else
         {
            this.§"!O§ = new §^6§();
            this.§"!O§.setCanvasSize(this.§8";§,this.§#5§,§''§.width / this.§0![§.stageWidth,§''§.height / this.§0![§.stageHeight);
            this.§"!O§.clear(null,this.§@K§);
         }
         this.§!C§.§2,§ = this.§?0§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§'!M§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§0!p§;
         if(this.§2[§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§4+§)
         {
            this.§?Y§();
         }
      }
      
      private function §<y§(param1:flash.events.KeyboardEvent) : void
      {
         this.§'!M§();
         this.§0![§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§'m§;
         var _loc4_:Number = param2 / this.§&M§;
         if(!§?"5§)
         {
            this.§0![§.stageWidth = this.§'m§ * _loc3_ / _loc4_;
            this.§0![§.stageHeight = this.§&M§;
         }
         else
         {
            this.§0![§.stageWidth = this.§'m§;
            this.§0![§.stageHeight = this.§&M§ * _loc4_ / _loc3_;
         }
         this.§8";§ = param1;
         this.§#5§ = param2;
         this.§0![§.dispatchEvent(new §4!k§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function § D§() : void
      {
         this.setCanvasSize(this.§'m§,this.§&M§);
      }
      
      private function §3S§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§2[§ || !this.§1!P§)
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
               this.§%!S§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§%!S§ = false;
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
               _loc5_ = §1&§.§3!§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §1&§.§+!b§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §1&§.§#m§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §1&§.§3!§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §1&§.§#m§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§%!S§ ? §1&§.§+!b§ : §1&§.§#"8§;
         }
         if((_loc2_ < §''§.left || _loc2_ >= §''§.right || _loc3_ < §''§.top || _loc3_ >= §''§.bottom) && _loc5_ == §1&§.§3!§)
         {
            return;
         }
         _loc2_ -= §''§.x;
         _loc3_ -= §''§.y;
         this.§!C§.§6"!§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §-"#§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §,!v§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§#&§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§0R§ != null)
         {
            (_loc4_ = this.§0R§.createProgram()).upload(param2,param3);
            this.§#&§[param1] = _loc4_;
         }
      }
      
      public function §?c§(param1:String) : void
      {
         var _loc2_:Program3D = this.§^!Y§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§#&§[param1];
         }
      }
      
      public function §^!Y§(param1:String) : Program3D
      {
         return this.§#&§[param1] as Program3D;
      }
      
      public function dynamic(param1:String) : Boolean
      {
         return param1 in this.§#&§;
      }
      
      public function get §6"<§() : Boolean
      {
         return this.§2[§;
      }
      
      public function get §&!?§() : §1i§
      {
         return this.§?$§;
      }
      
      public function get §2,§() : Boolean
      {
         return this.§?0§;
      }
      
      public function set §2,§(param1:Boolean) : void
      {
         this.§?0§ = param1;
         if(this.§0R§)
         {
            this.§!C§.§2,§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§[!,§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§[!,§ = param1;
         if(this.§0R§)
         {
            this.§0R§.enableErrorChecking = param1;
         }
      }
      
      public function get §5"I§() : int
      {
         return this.§>!L§;
      }
      
      public function set §5"I§(param1:int) : void
      {
         this.§>!L§ = param1;
         §%"D§();
      }
      
      public function get §implements§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§4+§ == null)
         {
            this.§4+§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§4+§.contextMenu = _loc1_;
            this.§?Y§();
         }
         return this.§4+§;
      }
      
      public function get stage() : §]!v§.Stage
      {
         return this.§0![§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §77§() : flash.display.Stage
      {
         return this.§ !v§;
      }
      
      public function get §^4§() : Boolean
      {
         return !this.§0I§;
      }
   }
}
