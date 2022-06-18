package §7!§
{
   import §#!@§.DisplayObject;
   import §#!@§.Stage;
   import §0K§.§2I§;
   import §1#§.Texture;
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
   import starling.events.§;!8§;
   import starling.events.§@!'§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`H§;
   
   public class §,L§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §4@§:Rectangle;
      
      private static var §=!&§:Boolean = true;
      
      private static var §0#§:Boolean;
      
      private static var §?+§:§,L§;
      
      private static var § -§:Boolean;
      
      private static var §?T§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §`!"§:§#!@§.Stage;
      
      private var §!!F§:Class;
      
      private var §8r§:§#!@§.DisplayObject;
      
      private var §0W§:§2I§;
      
      private var §;w§:Boolean;
      
      private var §set §:Boolean;
      
      private var §^2§:§ 0§;
      
      private var §^N§:§`H§;
      
      private var §4$§:int;
      
      private var §@M§:Boolean;
      
      private var §,!4§:Boolean;
      
      private var §#!N§:Number;
      
      private var §8!N§:Boolean;
      
      private var §]!E§:flash.display.Stage;
      
      private var §"R§:Sprite;
      
      private var §%S§:Context3D;
      
      private var §0P§:Dictionary;
      
      private var §6g§:int;
      
      private var §,b§:Boolean;
      
      private var §;<§:Number;
      
      private var §4!J§:Number;
      
      private var §>-§:Number;
      
      private var §!!&§:Number;
      
      private var §9V§:Number;
      
      private var §#!,§:Number;
      
      private var §%B§:Function;
      
      private var §"v§:uint;
      
      private var §8T§:String;
      
      private var §>z§:Bitmap;
      
      private var §9i§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §`=§:Boolean = false;
      
      public function §,L§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§;<§ = param3.width;
         this.§4!J§ = param3.height;
         this.§>-§ = this.§;<§;
         this.§!!&§ = this.§4!J§;
         this.§9V§ = param2.stageWidth;
         this.§#!,§ = param2.stageHeight;
         §;!;§ = true;
         this.§=N§();
         this.§!!F§ = param1;
         §4@§ = param3;
         this.mStage3D = param4;
         this.§`!"§ = new §#!@§.Stage(param3.width,param3.height,param2.color);
         this.§]!E§ = param2;
         this.§^N§ = new §`H§(this.§`!"§);
         this.§0W§ = new §2I§();
         this.§4$§ = 0;
         this.§@M§ = false;
         this.§,!4§ = false;
         this.§#!N§ = getTimer() / 1000;
         this.§0P§ = new Dictionary();
         for each(_loc6_ in this.§>2§)
         {
            param2.addEventListener(_loc6_,this.§+N§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§6l§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§[!,§,false,1,true);
         this.mStage3D.visible = false;
         this.§ ! §(true);
         this.§"v§ = param2.color;
         this.§8T§ = param5;
      }
      
      public static function get §'>§() : Boolean
      {
         if(§3v§)
         {
            return §3v§.§,b§;
         }
         return true;
      }
      
      public static function §,"§() : Boolean
      {
         return §?+§ && (§?+§.§9i§ || §?+§.§%S§ != null && §?+§.§%S§.driverInfo != "Disposed");
      }
      
      private static function §-!O§() : void
      {
         §0#§ = true;
      }
      
      public static function get §1N§() : Rectangle
      {
         return §4@§.clone();
      }
      
      public static function set §1N§(param1:Rectangle) : void
      {
         §4@§ = param1.clone();
         §-!O§();
      }
      
      public static function set §,!%§(param1:Boolean) : void
      {
         §=!&§ = param1;
      }
      
      public static function get §,!%§() : Boolean
      {
         return §=!&§;
      }
      
      public static function get §3v§() : §,L§
      {
         return §?+§;
      }
      
      public static function get §5I§() : §2I§
      {
         return !!§?+§ ? §?+§.§5I§ : null;
      }
      
      public static function get §+f§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §+f§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §;!;§() : Boolean
      {
         return § -§;
      }
      
      public static function set §;!;§(param1:Boolean) : void
      {
         if(§?+§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         § -§ = param1;
      }
      
      public static function §`!@§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§3v§)
         {
            return Texture.§>!E§(§3v§.§%S§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§?+§.§%S§)
         {
            §?+§.§%S§.drawToBitmapData(param1);
         }
         else if(§?+§.§^2§.canvas)
         {
            _loc2_ = §?+§.§^2§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §`!>§() : §#!@§.DisplayObject
      {
         return this.§8r§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§"v§ = param1;
      }
      
      public function get §2&§() : Number
      {
         return this.§;<§;
      }
      
      public function get §[!>§() : Number
      {
         return this.§4!J§;
      }
      
      public function §else§() : void
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
               requestContext3D(this.§8T§,profile);
            }
            else
            {
               requestContext3D(this.§8T§);
            }
         }
         catch(e:Error)
         {
            §%!$§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§`=§ = true;
         this.§]!E§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§]!E§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§6l§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§[!,§,false);
         for each(_loc1_ in this.§>2§)
         {
            this.§]!E§.removeEventListener(_loc1_,this.§+N§,false);
         }
         for each(_loc2_ in this.§0P§)
         {
            _loc2_.dispose();
         }
         if(this.§%S§)
         {
            this.§%S§.dispose();
         }
         if(this.§^N§)
         {
            this.§^N§.dispose();
         }
         if(this.§^2§)
         {
            this.§^2§.dispose();
         }
         if(§?+§ == this)
         {
            §?+§ = null;
         }
         if(this.§>z§ && this.§>z§.bitmapData)
         {
            this.§>z§.bitmapData.dispose();
            this.§>z§.bitmapData = null;
         }
      }
      
      private function §!V§() : void
      {
         this.§%S§ = this.mStage3D.context3D;
         this.§0P§ = new Dictionary();
         if(this.§%S§)
         {
            this.§%S§.enableErrorChecking = this.§,!4§;
            if(this.§%S§.driverInfo.indexOf("Software") >= 0)
            {
               this.§,b§ = true;
            }
         }
         else
         {
            this.§,b§ = true;
         }
         §-!O§();
      }
      
      private function §+T§() : void
      {
         if(this.§`!"§.numChildren > 0)
         {
            return;
         }
         if(this.§8r§ == null)
         {
            this.§8r§ = new this.§!!F§();
         }
         if(this.§8r§ == null)
         {
            throw new Error("Invalid root class: " + this.§!!F§);
         }
         this.§`!"§.addChild(this.§8r§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§%S§.configureBackBuffer(§4@§.width,§4@§.height,this.§4$§,false);
            §0#§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§,"§())
         {
            return;
         }
         if(§0#§)
         {
            if(this.§%S§)
            {
               this.mStage3D.x = §4@§.x;
               this.mStage3D.y = §4@§.y;
               this.configureBackBuffer();
               if(§0#§)
               {
                  return;
               }
               this.setCanvasSize(§4@§.width,§4@§.height);
            }
            else if(this.§>z§)
            {
               §0#§ = false;
               this.setCanvasSize(§4@§.width,§4@§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§#!N§;
         this.§#!N§ = _loc1_;
         this.§`!"§.advanceTime(_loc2_);
         this.§0W§.advanceTime(_loc2_);
         this.§^N§.advanceTime(_loc2_);
         this.§^2§.§?w§(this.§`!"§.stageWidth,this.§`!"§.stageHeight);
         this.§^2§.clear(this.§%S§,this.§"v§,1);
         this.§^2§.§%7§(this.§%S§,this.§6g§);
         this.§`!"§.render(this.§^2§,1);
         this.§^2§.§3B§();
         if(this.§%B§ != null)
         {
            this.§%B§();
            this.§%B§ = null;
         }
         this.§^2§.finishRendering(this.§%S§);
         this.§^2§.§7+§();
      }
      
      public function set §?W§(param1:Function) : void
      {
         this.§%B§ = param1;
      }
      
      private function §,5§() : void
      {
         var _loc3_:BitmapData = null;
         this.§"R§.x = §4@§.x;
         this.§"R§.y = §4@§.y;
         var _loc1_:int = this.§"R§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§"R§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§]!E§.addChild(this.§"R§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§]!E§.removeChild(this.§"R§);
         }
         if(this.§^2§ && this.§^2§.canvas)
         {
            this.§^2§.setCanvasSize(this.§>-§,this.§!!&§,§4@§.width / this.§`!"§.stageWidth,§4@§.height / this.§`!"§.stageHeight);
            _loc3_ = this.§^2§.canvas;
            if(this.§>z§.bitmapData != _loc3_)
            {
               this.§>z§.bitmapData = _loc3_;
            }
            if(this.§]!E§.getChildIndex(this.§"R§) > 0)
            {
               this.§]!E§.removeChild(this.§"R§);
               this.§]!E§.addChildAt(this.§"R§,0);
            }
         }
      }
      
      private function §%!$§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§`!"§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§`!"§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§`!"§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§4G§.addChild(_loc2_);
      }
      
      public function §=N§() : void
      {
         §?+§ = this;
      }
      
      public function start() : void
      {
         this.§;w§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§;w§ = false;
         this.mStage3D.visible = false;
      }
      
      public function § ! §(param1:Boolean) : void
      {
         this.§set § = param1;
      }
      
      private function §6!A§() : void
      {
         this.§9i§ = true;
         if(this.§>z§ == null)
         {
            this.§>z§ = new Bitmap();
            this.§4G§.addChild(this.§>z§);
         }
      }
      
      private function §[!,§(param1:ErrorEvent) : void
      {
         this.§6!A§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §6l§(param1:flash.events.Event) : void
      {
         if(this.§`=§)
         {
            return;
         }
         ++§?T§;
         this.§6g§ = §?T§;
         if(this.§^2§)
         {
            this.§^2§.dispose();
         }
         if(!§,L§.§;!;§ && this.§%S§)
         {
            this.§%!$§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§=N§();
         this.§!V§();
         this.§+T§();
         if(this.§%S§ && this.§,b§)
         {
            this.mStage3DEnabled = false;
            this.§%S§ = null;
            this.§6!A§();
         }
         if(this.§%S§)
         {
            this.§^2§ = new § 0§();
         }
         else
         {
            this.§^2§ = new §5z§();
            this.§^2§.setCanvasSize(this.§>-§,this.§!!&§,§4@§.width / this.§`!"§.stageWidth,§4@§.height / this.§`!"§.stageHeight);
            this.§^2§.clear(null,this.§"v§);
         }
         this.§^N§.§&O§ = this.§@M§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§=N§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§#!N§;
         if(this.§;w§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§"R§)
         {
            this.§,5§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§=N§();
         this.§`!"§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§;<§;
         var _loc4_:Number = param2 / this.§4!J§;
         if(!§,!%§)
         {
            this.§`!"§.stageWidth = this.§;<§ * _loc3_ / _loc4_;
            this.§`!"§.stageHeight = this.§4!J§;
         }
         else
         {
            this.§`!"§.stageWidth = this.§;<§;
            this.§`!"§.stageHeight = this.§4!J§ * _loc4_ / _loc3_;
         }
         this.§>-§ = param1;
         this.§!!&§ = param2;
         this.§`!"§.dispatchEvent(new §@!'§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §[!&§() : void
      {
         this.setCanvasSize(this.§;<§,this.§4!J§);
      }
      
      private function §+N§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§;w§ || !this.§set §)
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
               this.§8!N§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§8!N§ = false;
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
               _loc5_ = §;!8§.§]-§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §;!8§.§@[§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §;!8§.§^!1§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §;!8§.§]-§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §;!8§.§^!1§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§8!N§ ? §;!8§.§@[§ : §;!8§.§'!7§;
         }
         if((_loc2_ < §4@§.left || _loc2_ >= §4@§.right || _loc3_ < §4@§.top || _loc3_ >= §4@§.bottom) && _loc5_ == §;!8§.§]-§)
         {
            return;
         }
         _loc2_ -= §4@§.x;
         _loc3_ -= §4@§.y;
         this.§^N§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §>2§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function § a§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§0P§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§%S§ != null)
         {
            (_loc4_ = this.§%S§.createProgram()).upload(param2,param3);
            this.§0P§[param1] = _loc4_;
         }
      }
      
      public function §'K§(param1:String) : void
      {
         var _loc2_:Program3D = this.§@V§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§0P§[param1];
         }
      }
      
      public function §@V§(param1:String) : Program3D
      {
         return this.§0P§[param1] as Program3D;
      }
      
      public function §^!N§(param1:String) : Boolean
      {
         return param1 in this.§0P§;
      }
      
      public function get §<p§() : Boolean
      {
         return this.§;w§;
      }
      
      public function get §5I§() : §2I§
      {
         return this.§0W§;
      }
      
      public function get §&O§() : Boolean
      {
         return this.§@M§;
      }
      
      public function set §&O§(param1:Boolean) : void
      {
         this.§@M§ = param1;
         if(this.§%S§)
         {
            this.§^N§.§&O§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§,!4§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§,!4§ = param1;
         if(this.§%S§)
         {
            this.§%S§.enableErrorChecking = param1;
         }
      }
      
      public function get §<!3§() : int
      {
         return this.§4$§;
      }
      
      public function set §<!3§(param1:int) : void
      {
         this.§4$§ = param1;
         §-!O§();
      }
      
      public function get §4G§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§"R§ == null)
         {
            this.§"R§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§"R§.contextMenu = _loc1_;
            this.§,5§();
         }
         return this.§"R§;
      }
      
      public function get stage() : §#!@§.Stage
      {
         return this.§`!"§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §'!$§() : flash.display.Stage
      {
         return this.§]!E§;
      }
      
      public function get §4#§() : Boolean
      {
         return !this.§9i§;
      }
   }
}
