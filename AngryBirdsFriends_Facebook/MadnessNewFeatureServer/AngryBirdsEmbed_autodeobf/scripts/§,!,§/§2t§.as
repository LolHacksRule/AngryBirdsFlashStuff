package §,!,§
{
   import §1!D§.§'F§;
   import §21§.Texture;
   import §90§.DisplayObject;
   import §90§.Stage;
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
   import starling.events.§7!<§;
   import starling.events.§;m§;
   import starling.events.§=5§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §2t§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §,!A§:Rectangle;
      
      private static var §!!2§:Boolean = true;
      
      private static var §6V§:Boolean;
      
      private static var §3!<§:§2t§;
      
      private static var §-y§:Boolean;
      
      private static var § g§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §!^§:§90§.Stage;
      
      private var §39§:Class;
      
      private var §6!E§:§90§.DisplayObject;
      
      private var §6%§:§'F§;
      
      private var §<x§:Boolean;
      
      private var §;&§:Boolean;
      
      private var §-!§:§&v§;
      
      private var §69§:§;m§;
      
      private var §"!=§:int;
      
      private var §7!7§:Boolean;
      
      private var §+w§:Boolean;
      
      private var §7!K§:Number;
      
      private var §'H§:Boolean;
      
      private var §5!O§:flash.display.Stage;
      
      private var §?%§:Sprite;
      
      private var §]F§:Context3D;
      
      private var §4+§:Dictionary;
      
      private var §4!=§:int;
      
      private var §^!#§:Boolean;
      
      private var §-,§:Number;
      
      private var §?N§:Number;
      
      private var §4E§:Number;
      
      private var §77§:Number;
      
      private var §`!C§:Number;
      
      private var §]p§:Number;
      
      private var §["§:Function;
      
      private var §+!1§:uint;
      
      private var §%x§:String;
      
      private var §`q§:Bitmap;
      
      private var §;Y§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §;U§:Boolean = false;
      
      public function §2t§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§-,§ = param3.width;
         this.§?N§ = param3.height;
         this.§4E§ = this.§-,§;
         this.§77§ = this.§?N§;
         this.§`!C§ = param2.stageWidth;
         this.§]p§ = param2.stageHeight;
         §5S§ = true;
         this.§5a§();
         this.§39§ = param1;
         §,!A§ = param3;
         this.mStage3D = param4;
         this.§!^§ = new §90§.Stage(param3.width,param3.height,param2.color);
         this.§5!O§ = param2;
         this.§69§ = new §;m§(this.§!^§);
         this.§6%§ = new §'F§();
         this.§"!=§ = 0;
         this.§7!7§ = false;
         this.§+w§ = false;
         this.§7!K§ = getTimer() / 1000;
         this.§4+§ = new Dictionary();
         for each(_loc6_ in this.§6N§)
         {
            param2.addEventListener(_loc6_,this.§4&§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§>h§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§3%§,false,1,true);
         this.mStage3D.visible = false;
         this.§"^§(true);
         this.§+!1§ = param2.color;
         this.§%x§ = param5;
      }
      
      public static function get §89§() : Boolean
      {
         if(§,!E§)
         {
            return §,!E§.§^!#§;
         }
         return true;
      }
      
      public static function §[!K§() : Boolean
      {
         return §3!<§ && (§3!<§.§;Y§ || §3!<§.§]F§ != null && §3!<§.§]F§.driverInfo != "Disposed");
      }
      
      private static function §;]§() : void
      {
         §6V§ = true;
      }
      
      public static function get §3P§() : Rectangle
      {
         return §,!A§.clone();
      }
      
      public static function set §3P§(param1:Rectangle) : void
      {
         §,!A§ = param1.clone();
         §;]§();
      }
      
      public static function set §4I§(param1:Boolean) : void
      {
         §!!2§ = param1;
      }
      
      public static function get §4I§() : Boolean
      {
         return §!!2§;
      }
      
      public static function get §,!E§() : §2t§
      {
         return §3!<§;
      }
      
      public static function get §^!!§() : §'F§
      {
         return !!§3!<§ ? §3!<§.§^!!§ : null;
      }
      
      public static function get §5H§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §5H§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §5S§() : Boolean
      {
         return §-y§;
      }
      
      public static function set §5S§(param1:Boolean) : void
      {
         if(§3!<§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §-y§ = param1;
      }
      
      public static function §#g§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§,!E§)
         {
            return Texture.§"y§(§,!E§.§]F§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§3!<§.§]F§)
         {
            §3!<§.§]F§.drawToBitmapData(param1);
         }
         else if(§3!<§.§-!§.canvas)
         {
            _loc2_ = §3!<§.§-!§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §!!7§() : §90§.DisplayObject
      {
         return this.§6!E§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§+!1§ = param1;
      }
      
      public function get §;!L§() : Number
      {
         return this.§-,§;
      }
      
      public function get §=s§() : Number
      {
         return this.§?N§;
      }
      
      public function §5§() : void
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
               requestContext3D(this.§%x§,profile);
            }
            else
            {
               requestContext3D(this.§%x§);
            }
         }
         catch(e:Error)
         {
            §?!@§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§;U§ = true;
         this.§5!O§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§5!O§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§>h§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§3%§,false);
         for each(_loc1_ in this.§6N§)
         {
            this.§5!O§.removeEventListener(_loc1_,this.§4&§,false);
         }
         for each(_loc2_ in this.§4+§)
         {
            _loc2_.dispose();
         }
         if(this.§]F§)
         {
            this.§]F§.dispose();
         }
         if(this.§69§)
         {
            this.§69§.dispose();
         }
         if(this.§-!§)
         {
            this.§-!§.dispose();
         }
         if(§3!<§ == this)
         {
            §3!<§ = null;
         }
         if(this.§`q§ && this.§`q§.bitmapData)
         {
            this.§`q§.bitmapData.dispose();
            this.§`q§.bitmapData = null;
         }
      }
      
      private function §^_§() : void
      {
         this.§]F§ = this.mStage3D.context3D;
         this.§4+§ = new Dictionary();
         if(this.§]F§)
         {
            this.§]F§.enableErrorChecking = this.§+w§;
            if(this.§]F§.driverInfo.indexOf("Software") >= 0)
            {
               this.§^!#§ = true;
            }
         }
         else
         {
            this.§^!#§ = true;
         }
         §;]§();
      }
      
      private function §-H§() : void
      {
         if(this.§!^§.numChildren > 0)
         {
            return;
         }
         if(this.§6!E§ == null)
         {
            this.§6!E§ = new this.§39§();
         }
         if(this.§6!E§ == null)
         {
            throw new Error("Invalid root class: " + this.§39§);
         }
         this.§!^§.addChild(this.§6!E§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§]F§.configureBackBuffer(§,!A§.width,§,!A§.height,this.§"!=§,false);
            §6V§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§[!K§())
         {
            return;
         }
         if(§6V§)
         {
            if(this.§]F§)
            {
               this.mStage3D.x = §,!A§.x;
               this.mStage3D.y = §,!A§.y;
               this.configureBackBuffer();
               if(§6V§)
               {
                  return;
               }
               this.setCanvasSize(§,!A§.width,§,!A§.height);
            }
            else if(this.§`q§)
            {
               §6V§ = false;
               this.setCanvasSize(§,!A§.width,§,!A§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§7!K§;
         this.§7!K§ = _loc1_;
         this.§!^§.advanceTime(_loc2_);
         this.§6%§.advanceTime(_loc2_);
         this.§69§.advanceTime(_loc2_);
         this.§-!§.§ !"§(this.§!^§.stageWidth,this.§!^§.stageHeight);
         this.§-!§.clear(this.§]F§,this.§+!1§,1);
         this.§-!§.§3J§(this.§]F§,this.§4!=§);
         this.§!^§.render(this.§-!§,1);
         this.§-!§.§30§();
         if(this.§["§ != null)
         {
            this.§["§();
            this.§["§ = null;
         }
         this.§-!§.finishRendering(this.§]F§);
         this.§-!§.§;!§();
      }
      
      public function set §9W§(param1:Function) : void
      {
         this.§["§ = param1;
      }
      
      private function §@O§() : void
      {
         var _loc3_:BitmapData = null;
         this.§?%§.x = §,!A§.x;
         this.§?%§.y = §,!A§.y;
         var _loc1_:int = this.§?%§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§?%§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§5!O§.addChild(this.§?%§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§5!O§.removeChild(this.§?%§);
         }
         if(this.§-!§ && this.§-!§.canvas)
         {
            this.§-!§.setCanvasSize(this.§4E§,this.§77§,§,!A§.width / this.§!^§.stageWidth,§,!A§.height / this.§!^§.stageHeight);
            _loc3_ = this.§-!§.canvas;
            if(this.§`q§.bitmapData != _loc3_)
            {
               this.§`q§.bitmapData = _loc3_;
            }
            if(this.§5!O§.getChildIndex(this.§?%§) > 0)
            {
               this.§5!O§.removeChild(this.§?%§);
               this.§5!O§.addChildAt(this.§?%§,0);
            }
         }
      }
      
      private function §?!@§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§!^§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§!^§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§!^§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§[!5§.addChild(_loc2_);
      }
      
      public function §5a§() : void
      {
         §3!<§ = this;
      }
      
      public function start() : void
      {
         this.§<x§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§<x§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §"^§(param1:Boolean) : void
      {
         this.§;&§ = param1;
      }
      
      private function §7!N§() : void
      {
         this.§;Y§ = true;
         if(this.§`q§ == null)
         {
            this.§`q§ = new Bitmap();
            this.§[!5§.addChild(this.§`q§);
         }
      }
      
      private function §3%§(param1:ErrorEvent) : void
      {
         this.§7!N§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §>h§(param1:flash.events.Event) : void
      {
         if(this.§;U§)
         {
            return;
         }
         ++§ g§;
         this.§4!=§ = § g§;
         if(this.§-!§)
         {
            this.§-!§.dispose();
         }
         if(!§2t§.§5S§ && this.§]F§)
         {
            this.§?!@§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§5a§();
         this.§^_§();
         this.§-H§();
         if(this.§]F§ && this.§^!#§)
         {
            this.mStage3DEnabled = false;
            this.§]F§ = null;
            this.§7!N§();
         }
         if(this.§]F§)
         {
            this.§-!§ = new §&v§();
         }
         else
         {
            this.§-!§ = new §@!J§();
            this.§-!§.setCanvasSize(this.§4E§,this.§77§,§,!A§.width / this.§!^§.stageWidth,§,!A§.height / this.§!^§.stageHeight);
            this.§-!§.clear(null,this.§+!1§);
         }
         this.§69§.§!!4§ = this.§7!7§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§5a§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§7!K§;
         if(this.§<x§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§?%§)
         {
            this.§@O§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§5a§();
         this.§!^§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§-,§;
         var _loc4_:Number = param2 / this.§?N§;
         if(!§4I§)
         {
            this.§!^§.stageWidth = this.§-,§ * _loc3_ / _loc4_;
            this.§!^§.stageHeight = this.§?N§;
         }
         else
         {
            this.§!^§.stageWidth = this.§-,§;
            this.§!^§.stageHeight = this.§?N§ * _loc4_ / _loc3_;
         }
         this.§4E§ = param1;
         this.§77§ = param2;
         this.§!^§.dispatchEvent(new §7!<§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §'L§() : void
      {
         this.setCanvasSize(this.§-,§,this.§?N§);
      }
      
      private function §4&§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§<x§ || !this.§;&§)
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
               this.§'H§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§'H§ = false;
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
               _loc5_ = §=5§.§!o§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §=5§.§]$§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §=5§.§'!$§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §=5§.§!o§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §=5§.§'!$§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§'H§ ? §=5§.§]$§ : §=5§.§%V§;
         }
         if((_loc2_ < §,!A§.left || _loc2_ >= §,!A§.right || _loc3_ < §,!A§.top || _loc3_ >= §,!A§.bottom) && _loc5_ == §=5§.§!o§)
         {
            return;
         }
         _loc2_ -= §,!A§.x;
         _loc3_ -= §,!A§.y;
         this.§69§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §6N§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §#!?§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§4+§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§]F§ != null)
         {
            (_loc4_ = this.§]F§.createProgram()).upload(param2,param3);
            this.§4+§[param1] = _loc4_;
         }
      }
      
      public function §#R§(param1:String) : void
      {
         var _loc2_:Program3D = this.§1Q§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§4+§[param1];
         }
      }
      
      public function §1Q§(param1:String) : Program3D
      {
         return this.§4+§[param1] as Program3D;
      }
      
      public function §%!0§(param1:String) : Boolean
      {
         return param1 in this.§4+§;
      }
      
      public function get § E§() : Boolean
      {
         return this.§<x§;
      }
      
      public function get §^!!§() : §'F§
      {
         return this.§6%§;
      }
      
      public function get §!!4§() : Boolean
      {
         return this.§7!7§;
      }
      
      public function set §!!4§(param1:Boolean) : void
      {
         this.§7!7§ = param1;
         if(this.§]F§)
         {
            this.§69§.§!!4§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+w§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§+w§ = param1;
         if(this.§]F§)
         {
            this.§]F§.enableErrorChecking = param1;
         }
      }
      
      public function get §;w§() : int
      {
         return this.§"!=§;
      }
      
      public function set §;w§(param1:int) : void
      {
         this.§"!=§ = param1;
         §;]§();
      }
      
      public function get §[!5§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§?%§ == null)
         {
            this.§?%§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§?%§.contextMenu = _loc1_;
            this.§@O§();
         }
         return this.§?%§;
      }
      
      public function get stage() : §90§.Stage
      {
         return this.§!^§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §'!-§() : flash.display.Stage
      {
         return this.§5!O§;
      }
      
      public function get §`5§() : Boolean
      {
         return !this.§;Y§;
      }
   }
}
