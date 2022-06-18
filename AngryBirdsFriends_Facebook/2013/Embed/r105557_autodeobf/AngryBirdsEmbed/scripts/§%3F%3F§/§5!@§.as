package §??§
{
   import §"X§.Texture;
   import §"[§.§#h§;
   import §;^§.DisplayObject;
   import §;^§.Stage;
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
   import starling.events.§"!3§;
   import starling.events.§4x§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§]!E§;
   
   public class §5!@§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §!V§:Rectangle;
      
      private static var §&q§:Boolean = true;
      
      private static var §'S§:Boolean;
      
      private static var §4!@§:§5!@§;
      
      private static var §]4§:Boolean;
      
      private static var §8!!§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var § D§:§;^§.Stage;
      
      private var §7!H§:Class;
      
      private var §3p§:§;^§.DisplayObject;
      
      private var §<T§:§#h§;
      
      private var §]k§:Boolean;
      
      private var §"8§:Boolean;
      
      private var §[!9§:§!0§;
      
      private var §3&§:§4x§;
      
      private var §,[§:int;
      
      private var §=!8§:Boolean;
      
      private var §5!&§:Boolean;
      
      private var §5!9§:Number;
      
      private var §@S§:Boolean;
      
      private var §,!0§:flash.display.Stage;
      
      private var §?V§:Sprite;
      
      private var §=z§:Context3D;
      
      private var §=!F§:Dictionary;
      
      private var §!+§:int;
      
      private var §%X§:Boolean;
      
      private var §5h§:Number;
      
      private var §9!K§:Number;
      
      private var §=l§:Number;
      
      private var §#!$§:Number;
      
      private var §0r§:Number;
      
      private var §,P§:Number;
      
      private var §5,§:Function;
      
      private var §8!>§:uint;
      
      private var §#!<§:String;
      
      private var §!K§:Bitmap;
      
      private var §1?§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §%R§:Boolean = false;
      
      public function §5!@§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§5h§ = param3.width;
         this.§9!K§ = param3.height;
         this.§=l§ = this.§5h§;
         this.§#!$§ = this.§9!K§;
         this.§0r§ = param2.stageWidth;
         this.§,P§ = param2.stageHeight;
         §%!;§ = true;
         this.§'8§();
         this.§7!H§ = param1;
         §!V§ = param3;
         this.mStage3D = param4;
         this.§ D§ = new §;^§.Stage(param3.width,param3.height,param2.color);
         this.§,!0§ = param2;
         this.§3&§ = new §4x§(this.§ D§);
         this.§<T§ = new §#h§();
         this.§,[§ = 0;
         this.§=!8§ = false;
         this.§5!&§ = false;
         this.§5!9§ = getTimer() / 1000;
         this.§=!F§ = new Dictionary();
         for each(_loc6_ in this.§"!'§)
         {
            param2.addEventListener(_loc6_,this.§`!1§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§5f§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§<!&§,false,1,true);
         this.mStage3D.visible = false;
         this.§?J§(true);
         this.§8!>§ = param2.color;
         this.§#!<§ = param5;
      }
      
      public static function get §`v§() : Boolean
      {
         if(§8%§)
         {
            return §8%§.§%X§;
         }
         return true;
      }
      
      public static function §;_§() : Boolean
      {
         return §4!@§ && (§4!@§.§1?§ || §4!@§.§=z§ != null && §4!@§.§=z§.driverInfo != "Disposed");
      }
      
      private static function §#H§() : void
      {
         §'S§ = true;
      }
      
      public static function get §[9§() : Rectangle
      {
         return §!V§.clone();
      }
      
      public static function set §[9§(param1:Rectangle) : void
      {
         §!V§ = param1.clone();
         §#H§();
      }
      
      public static function set §=!H§(param1:Boolean) : void
      {
         §&q§ = param1;
      }
      
      public static function get §=!H§() : Boolean
      {
         return §&q§;
      }
      
      public static function get §8%§() : §5!@§
      {
         return §4!@§;
      }
      
      public static function get §2x§() : §#h§
      {
         return !!§4!@§ ? §4!@§.§2x§ : null;
      }
      
      public static function get §^M§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §^M§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §%!;§() : Boolean
      {
         return §]4§;
      }
      
      public static function set §%!;§(param1:Boolean) : void
      {
         if(§4!@§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §]4§ = param1;
      }
      
      public static function §-F§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§8%§)
         {
            return Texture.§^!I§(§8%§.§=z§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§4!@§.§=z§)
         {
            §4!@§.§=z§.drawToBitmapData(param1);
         }
         else if(§4!@§.§[!9§.canvas)
         {
            _loc2_ = §4!@§.§[!9§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §#d§() : §;^§.DisplayObject
      {
         return this.§3p§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§8!>§ = param1;
      }
      
      public function get §3!§() : Number
      {
         return this.§5h§;
      }
      
      public function get §+[§() : Number
      {
         return this.§9!K§;
      }
      
      public function § 4§() : void
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
               requestContext3D(this.§#!<§,profile);
            }
            else
            {
               requestContext3D(this.§#!<§);
            }
         }
         catch(e:Error)
         {
            §%E§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§%R§ = true;
         this.§,!0§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§,!0§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§5f§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§<!&§,false);
         for each(_loc1_ in this.§"!'§)
         {
            this.§,!0§.removeEventListener(_loc1_,this.§`!1§,false);
         }
         for each(_loc2_ in this.§=!F§)
         {
            _loc2_.dispose();
         }
         if(this.§=z§)
         {
            this.§=z§.dispose();
         }
         if(this.§3&§)
         {
            this.§3&§.dispose();
         }
         if(this.§[!9§)
         {
            this.§[!9§.dispose();
         }
         if(§4!@§ == this)
         {
            §4!@§ = null;
         }
         if(this.§!K§ && this.§!K§.bitmapData)
         {
            this.§!K§.bitmapData.dispose();
            this.§!K§.bitmapData = null;
         }
      }
      
      private function §<S§() : void
      {
         this.§=z§ = this.mStage3D.context3D;
         this.§=!F§ = new Dictionary();
         if(this.§=z§)
         {
            this.§=z§.enableErrorChecking = this.§5!&§;
            if(this.§=z§.driverInfo.indexOf("Software") >= 0)
            {
               this.§%X§ = true;
            }
         }
         else
         {
            this.§%X§ = true;
         }
         §#H§();
      }
      
      private function §7! §() : void
      {
         if(this.§ D§.numChildren > 0)
         {
            return;
         }
         if(this.§3p§ == null)
         {
            this.§3p§ = new this.§7!H§();
         }
         if(this.§3p§ == null)
         {
            throw new Error("Invalid root class: " + this.§7!H§);
         }
         this.§ D§.addChild(this.§3p§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§=z§.configureBackBuffer(§!V§.width,§!V§.height,this.§,[§,false);
            §'S§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§;_§())
         {
            return;
         }
         if(§'S§)
         {
            if(this.§=z§)
            {
               this.mStage3D.x = §!V§.x;
               this.mStage3D.y = §!V§.y;
               this.configureBackBuffer();
               if(§'S§)
               {
                  return;
               }
               this.setCanvasSize(§!V§.width,§!V§.height);
            }
            else if(this.§!K§)
            {
               §'S§ = false;
               this.setCanvasSize(§!V§.width,§!V§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§5!9§;
         this.§5!9§ = _loc1_;
         this.§ D§.advanceTime(_loc2_);
         this.§<T§.advanceTime(_loc2_);
         this.§3&§.advanceTime(_loc2_);
         this.§[!9§.§]!M§(this.§ D§.stageWidth,this.§ D§.stageHeight);
         this.§[!9§.clear(this.§=z§,this.§8!>§,1);
         this.§[!9§.§4^§(this.§=z§,this.§!+§);
         this.§ D§.render(this.§[!9§,1);
         this.§[!9§.§;x§();
         if(this.§5,§ != null)
         {
            this.§5,§();
            this.§5,§ = null;
         }
         this.§[!9§.finishRendering(this.§=z§);
         this.§[!9§.§2?§();
      }
      
      public function set §83§(param1:Function) : void
      {
         this.§5,§ = param1;
      }
      
      private function §"!J§() : void
      {
         var _loc3_:BitmapData = null;
         this.§?V§.x = §!V§.x;
         this.§?V§.y = §!V§.y;
         var _loc1_:int = this.§?V§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§?V§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§,!0§.addChild(this.§?V§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§,!0§.removeChild(this.§?V§);
         }
         if(this.§[!9§ && this.§[!9§.canvas)
         {
            this.§[!9§.setCanvasSize(this.§=l§,this.§#!$§,§!V§.width / this.§ D§.stageWidth,§!V§.height / this.§ D§.stageHeight);
            _loc3_ = this.§[!9§.canvas;
            if(this.§!K§.bitmapData != _loc3_)
            {
               this.§!K§.bitmapData = _loc3_;
            }
            if(this.§,!0§.getChildIndex(this.§?V§) > 0)
            {
               this.§,!0§.removeChild(this.§?V§);
               this.§,!0§.addChildAt(this.§?V§,0);
            }
         }
      }
      
      private function §%E§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§ D§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§ D§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§ D§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§^!=§.addChild(_loc2_);
      }
      
      public function §'8§() : void
      {
         §4!@§ = this;
      }
      
      public function start() : void
      {
         this.§]k§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§]k§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §?J§(param1:Boolean) : void
      {
         this.§"8§ = param1;
      }
      
      private function §@!A§() : void
      {
         this.§1?§ = true;
         if(this.§!K§ == null)
         {
            this.§!K§ = new Bitmap();
            this.§^!=§.addChild(this.§!K§);
         }
      }
      
      private function §<!&§(param1:ErrorEvent) : void
      {
         this.§@!A§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §5f§(param1:flash.events.Event) : void
      {
         if(this.§%R§)
         {
            return;
         }
         ++§8!!§;
         this.§!+§ = §8!!§;
         if(this.§[!9§)
         {
            this.§[!9§.dispose();
         }
         if(!§5!@§.§%!;§ && this.§=z§)
         {
            this.§%E§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§'8§();
         this.§<S§();
         this.§7! §();
         if(this.§=z§ && this.§%X§)
         {
            this.mStage3DEnabled = false;
            this.§=z§ = null;
            this.§@!A§();
         }
         if(this.§=z§)
         {
            this.§[!9§ = new §!0§();
         }
         else
         {
            this.§[!9§ = new §+4§();
            this.§[!9§.setCanvasSize(this.§=l§,this.§#!$§,§!V§.width / this.§ D§.stageWidth,§!V§.height / this.§ D§.stageHeight);
            this.§[!9§.clear(null,this.§8!>§);
         }
         this.§3&§.§^A§ = this.§=!8§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§'8§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§5!9§;
         if(this.§]k§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§?V§)
         {
            this.§"!J§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§'8§();
         this.§ D§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§5h§;
         var _loc4_:Number = param2 / this.§9!K§;
         if(!§=!H§)
         {
            this.§ D§.stageWidth = this.§5h§ * _loc3_ / _loc4_;
            this.§ D§.stageHeight = this.§9!K§;
         }
         else
         {
            this.§ D§.stageWidth = this.§5h§;
            this.§ D§.stageHeight = this.§9!K§ * _loc4_ / _loc3_;
         }
         this.§=l§ = param1;
         this.§#!$§ = param2;
         this.§ D§.dispatchEvent(new §]!E§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §1!?§() : void
      {
         this.setCanvasSize(this.§5h§,this.§9!K§);
      }
      
      private function §`!1§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§]k§ || !this.§"8§)
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
               this.§@S§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§@S§ = false;
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
               _loc5_ = §"!3§.§"f§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §"!3§.§,O§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §"!3§.§&!L§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §"!3§.§"f§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §"!3§.§&!L§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§@S§ ? §"!3§.§,O§ : §"!3§.§9,§;
         }
         if((_loc2_ < §!V§.left || _loc2_ >= §!V§.right || _loc3_ < §!V§.top || _loc3_ >= §!V§.bottom) && _loc5_ == §"!3§.§"f§)
         {
            return;
         }
         _loc2_ -= §!V§.x;
         _loc3_ -= §!V§.y;
         this.§3&§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §"!'§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §4!!§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§=!F§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§=z§ != null)
         {
            (_loc4_ = this.§=z§.createProgram()).upload(param2,param3);
            this.§=!F§[param1] = _loc4_;
         }
      }
      
      public function §package§(param1:String) : void
      {
         var _loc2_:Program3D = this.§ !O§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§=!F§[param1];
         }
      }
      
      public function § !O§(param1:String) : Program3D
      {
         return this.§=!F§[param1] as Program3D;
      }
      
      public function §@!?§(param1:String) : Boolean
      {
         return param1 in this.§=!F§;
      }
      
      public function get §+S§() : Boolean
      {
         return this.§]k§;
      }
      
      public function get §2x§() : §#h§
      {
         return this.§<T§;
      }
      
      public function get §^A§() : Boolean
      {
         return this.§=!8§;
      }
      
      public function set §^A§(param1:Boolean) : void
      {
         this.§=!8§ = param1;
         if(this.§=z§)
         {
            this.§3&§.§^A§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§5!&§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§5!&§ = param1;
         if(this.§=z§)
         {
            this.§=z§.enableErrorChecking = param1;
         }
      }
      
      public function get §!7§() : int
      {
         return this.§,[§;
      }
      
      public function set §!7§(param1:int) : void
      {
         this.§,[§ = param1;
         §#H§();
      }
      
      public function get §^!=§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§?V§ == null)
         {
            this.§?V§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§?V§.contextMenu = _loc1_;
            this.§"!J§();
         }
         return this.§?V§;
      }
      
      public function get stage() : §;^§.Stage
      {
         return this.§ D§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §+!L§() : flash.display.Stage
      {
         return this.§,!0§;
      }
      
      public function get §8§() : Boolean
      {
         return !this.§1?§;
      }
   }
}
