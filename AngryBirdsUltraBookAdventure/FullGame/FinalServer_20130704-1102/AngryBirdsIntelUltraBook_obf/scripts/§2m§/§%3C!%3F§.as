package §2m§
{
   import §85§.§[D§;
   import §?]§.Texture;
   import §`g§.DisplayObject;
   import §`g§.Stage;
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
   import starling.events.§4!G§;
   import starling.events.§<A§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`"§;
   
   public class §<!?§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §`!4§:Rectangle;
      
      private static var § !L§:Boolean = true;
      
      private static var §;L§:Boolean;
      
      private static var §5u§:§<!?§;
      
      private static var § !e§:Boolean;
      
      private static var § k§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §@e§:§`g§.Stage;
      
      private var §@l§:Class;
      
      private var §?!R§:§`g§.DisplayObject;
      
      private var §1!6§:§[D§;
      
      private var §=!w§:Boolean;
      
      private var §<B§:Boolean;
      
      private var §[!s§:§@>§;
      
      private var §-y§:§`"§;
      
      private var §;;§:int;
      
      private var §6q§:Boolean;
      
      private var §&!q§:Boolean;
      
      private var §>q§:Number;
      
      private var §9!z§:Boolean;
      
      private var §!f§:flash.display.Stage;
      
      private var §]g§:Sprite;
      
      private var §implements§:Context3D;
      
      private var §8! §:Dictionary;
      
      private var §?1§:int;
      
      private var §4L§:Boolean;
      
      private var §`w§:Number;
      
      private var §-K§:Number;
      
      private var §0!e§:Number;
      
      private var § F§:Number;
      
      private var §;r§:Number;
      
      private var §+!]§:Number;
      
      private var §%!C§:Function;
      
      private var §4t§:uint;
      
      private var §"!N§:String;
      
      private var §&v§:Bitmap;
      
      private var §@r§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §1Q§:Boolean = false;
      
      public function §<!?§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§`w§ = param3.width;
         this.§-K§ = param3.height;
         this.§0!e§ = this.§`w§;
         this.§ F§ = this.§-K§;
         this.§;r§ = param2.stageWidth;
         this.§+!]§ = param2.stageHeight;
         §&"#§ = true;
         this.§!P§();
         this.§@l§ = param1;
         §`!4§ = param3;
         this.mStage3D = param4;
         this.§@e§ = new §`g§.Stage(param3.width,param3.height,param2.color);
         this.§!f§ = param2;
         this.§-y§ = new §`"§(this.§@e§);
         this.§1!6§ = new §[D§();
         this.§;;§ = 0;
         this.§6q§ = false;
         this.§&!q§ = false;
         this.§>q§ = getTimer() / 1000;
         this.§8! § = new Dictionary();
         for each(_loc6_ in this.§2;§)
         {
            param2.addEventListener(_loc6_,this.§3!6§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[>§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[>§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%!y§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§>" §,false,1,true);
         this.mStage3D.visible = false;
         this.§7d§(true);
         this.§4t§ = param2.color;
         this.§"!N§ = param5;
      }
      
      public static function get §@!_§() : Boolean
      {
         if(§,=§)
         {
            return §,=§.§4L§;
         }
         return true;
      }
      
      public static function §0,§() : Boolean
      {
         return §5u§ && (§5u§.§@r§ || §5u§.§implements§ != null && §5u§.§implements§.driverInfo != "Disposed");
      }
      
      private static function §'!X§() : void
      {
         §;L§ = true;
      }
      
      public static function get §+i§() : Rectangle
      {
         return §`!4§.clone();
      }
      
      public static function set §+i§(param1:Rectangle) : void
      {
         §`!4§ = param1.clone();
         §'!X§();
      }
      
      public static function set §8!`§(param1:Boolean) : void
      {
         § !L§ = param1;
      }
      
      public static function get §8!`§() : Boolean
      {
         return § !L§;
      }
      
      public static function get §,=§() : §<!?§
      {
         return §5u§;
      }
      
      public static function get §#T§() : §[D§
      {
         return !!§5u§ ? §5u§.§#T§ : null;
      }
      
      public static function get §@!7§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §@!7§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §&"#§() : Boolean
      {
         return § !e§;
      }
      
      public static function set §&"#§(param1:Boolean) : void
      {
         if(§5u§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         § !e§ = param1;
      }
      
      public static function § "§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§,=§)
         {
            return Texture.§=u§(§,=§.§implements§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§5u§.§implements§)
         {
            §5u§.§implements§.drawToBitmapData(param1);
         }
         else if(§5u§.§[!s§.canvas)
         {
            _loc2_ = §5u§.§[!s§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §<!h§() : §`g§.DisplayObject
      {
         return this.§?!R§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§4t§ = param1;
      }
      
      public function get §'!^§() : Number
      {
         return this.§`w§;
      }
      
      public function get §7k§() : Number
      {
         return this.§-K§;
      }
      
      public function §>F§() : void
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
               requestContext3D(this.§"!N§,profile);
            }
            else
            {
               requestContext3D(this.§"!N§);
            }
         }
         catch(e:Error)
         {
            §`$§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§1Q§ = true;
         this.§!f§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[>§,false);
         this.§!f§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[>§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§%!y§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§>" §,false);
         for each(_loc1_ in this.§2;§)
         {
            this.§!f§.removeEventListener(_loc1_,this.§3!6§,false);
         }
         for each(_loc2_ in this.§8! §)
         {
            _loc2_.dispose();
         }
         if(this.§implements§)
         {
            this.§implements§.dispose();
         }
         if(this.§-y§)
         {
            this.§-y§.dispose();
         }
         if(this.§[!s§)
         {
            this.§[!s§.dispose();
         }
         if(§5u§ == this)
         {
            §5u§ = null;
         }
         if(this.§&v§ && this.§&v§.bitmapData)
         {
            this.§&v§.bitmapData.dispose();
            this.§&v§.bitmapData = null;
         }
      }
      
      private function §24§() : void
      {
         this.§implements§ = this.mStage3D.context3D;
         this.§8! § = new Dictionary();
         if(this.§implements§)
         {
            this.§implements§.enableErrorChecking = this.§&!q§;
            if(this.§implements§.driverInfo.indexOf("Software") >= 0)
            {
               this.§4L§ = true;
            }
         }
         else
         {
            this.§4L§ = true;
         }
         §'!X§();
      }
      
      private function §2n§() : void
      {
         if(this.§@e§.numChildren > 0)
         {
            return;
         }
         if(this.§?!R§ == null)
         {
            this.§?!R§ = new this.§@l§();
         }
         if(this.§?!R§ == null)
         {
            throw new Error("Invalid root class: " + this.§@l§);
         }
         this.§@e§.addChild(this.§?!R§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§implements§.configureBackBuffer(§`!4§.width,§`!4§.height,this.§;;§,false);
            §;L§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§0,§())
         {
            return;
         }
         if(§;L§)
         {
            if(this.§implements§)
            {
               this.mStage3D.x = §`!4§.x;
               this.mStage3D.y = §`!4§.y;
               this.configureBackBuffer();
               if(§;L§)
               {
                  return;
               }
               this.setCanvasSize(§`!4§.width,§`!4§.height);
            }
            else if(this.§&v§)
            {
               §;L§ = false;
               this.setCanvasSize(§`!4§.width,§`!4§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§>q§;
         this.§>q§ = _loc1_;
         this.§@e§.advanceTime(_loc2_);
         this.§1!6§.advanceTime(_loc2_);
         this.§-y§.advanceTime(_loc2_);
         this.§[!s§.§;]§(this.§@e§.stageWidth,this.§@e§.stageHeight);
         this.§[!s§.clear(this.§implements§,this.§4t§,1);
         this.§[!s§.§3>§(this.§implements§,this.§?1§);
         this.§@e§.render(this.§[!s§,1);
         this.§[!s§.§6E§();
         if(this.§%!C§ != null)
         {
            this.§%!C§();
            this.§%!C§ = null;
         }
         this.§[!s§.finishRendering(this.§implements§);
         this.§[!s§.§4!W§();
      }
      
      public function set §"]§(param1:Function) : void
      {
         this.§%!C§ = param1;
      }
      
      private function § !`§() : void
      {
         var _loc3_:BitmapData = null;
         this.§]g§.x = §`!4§.x;
         this.§]g§.y = §`!4§.y;
         var _loc1_:int = this.§]g§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§]g§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§!f§.addChild(this.§]g§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§!f§.removeChild(this.§]g§);
         }
         if(this.§[!s§ && this.§[!s§.canvas)
         {
            this.§[!s§.setCanvasSize(this.§0!e§,this.§ F§,§`!4§.width / this.§@e§.stageWidth,§`!4§.height / this.§@e§.stageHeight);
            _loc3_ = this.§[!s§.canvas;
            if(this.§&v§.bitmapData != _loc3_)
            {
               this.§&v§.bitmapData = _loc3_;
            }
            if(this.§!f§.getChildIndex(this.§]g§) > 0)
            {
               this.§!f§.removeChild(this.§]g§);
               this.§!f§.addChildAt(this.§]g§,0);
            }
         }
      }
      
      private function §`$§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§@e§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§@e§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§@e§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§`!d§.addChild(_loc2_);
      }
      
      public function §!P§() : void
      {
         §5u§ = this;
      }
      
      public function start() : void
      {
         this.§=!w§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§=!w§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §7d§(param1:Boolean) : void
      {
         this.§<B§ = param1;
      }
      
      private function §';§() : void
      {
         this.§@r§ = true;
         if(this.§&v§ == null)
         {
            this.§&v§ = new Bitmap();
            this.§`!d§.addChild(this.§&v§);
         }
      }
      
      private function §>" §(param1:ErrorEvent) : void
      {
         this.§';§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §%!y§(param1:flash.events.Event) : void
      {
         if(this.§1Q§)
         {
            return;
         }
         ++§ k§;
         this.§?1§ = § k§;
         if(this.§[!s§)
         {
            this.§[!s§.dispose();
         }
         if(!§<!?§.§&"#§ && this.§implements§)
         {
            this.§`$§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§!P§();
         this.§24§();
         this.§2n§();
         if(this.§implements§ && this.§4L§)
         {
            this.mStage3DEnabled = false;
            this.§implements§ = null;
            this.§';§();
         }
         if(this.§implements§)
         {
            this.§[!s§ = new §@>§();
         }
         else
         {
            this.§[!s§ = new §@!H§();
            this.§[!s§.setCanvasSize(this.§0!e§,this.§ F§,§`!4§.width / this.§@e§.stageWidth,§`!4§.height / this.§@e§.stageHeight);
            this.§[!s§.clear(null,this.§4t§);
         }
         this.§-y§.§>B§ = this.§6q§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§!P§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§>q§;
         if(this.§=!w§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§]g§)
         {
            this.§ !`§();
         }
      }
      
      private function §[>§(param1:flash.events.KeyboardEvent) : void
      {
         this.§!P§();
         this.§@e§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§`w§;
         var _loc4_:Number = param2 / this.§-K§;
         if(!§8!`§)
         {
            this.§@e§.stageWidth = this.§`w§ * _loc3_ / _loc4_;
            this.§@e§.stageHeight = this.§-K§;
         }
         else
         {
            this.§@e§.stageWidth = this.§`w§;
            this.§@e§.stageHeight = this.§-K§ * _loc4_ / _loc3_;
         }
         this.§0!e§ = param1;
         this.§ F§ = param2;
         this.§@e§.dispatchEvent(new §4!G§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §while§() : void
      {
         this.setCanvasSize(this.§`w§,this.§-K§);
      }
      
      private function §3!6§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§=!w§ || !this.§<B§)
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
               this.§9!z§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§9!z§ = false;
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
               _loc5_ = §<A§.§"![§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §<A§.§0!;§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §<A§.§2!R§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §<A§.§"![§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §<A§.§2!R§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§9!z§ ? §<A§.§0!;§ : §<A§.§0!U§;
         }
         if((_loc2_ < §`!4§.left || _loc2_ >= §`!4§.right || _loc3_ < §`!4§.top || _loc3_ >= §`!4§.bottom) && _loc5_ == §<A§.§"![§)
         {
            return;
         }
         _loc2_ -= §`!4§.x;
         _loc3_ -= §`!4§.y;
         this.§-y§.§^!]§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §2;§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §2!a§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§8! §)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§implements§ != null)
         {
            (_loc4_ = this.§implements§.createProgram()).upload(param2,param3);
            this.§8! §[param1] = _loc4_;
         }
      }
      
      public function § +§(param1:String) : void
      {
         var _loc2_:Program3D = this.§"u§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§8! §[param1];
         }
      }
      
      public function §"u§(param1:String) : Program3D
      {
         return this.§8! §[param1] as Program3D;
      }
      
      public function §3h§(param1:String) : Boolean
      {
         return param1 in this.§8! §;
      }
      
      public function get §!x§() : Boolean
      {
         return this.§=!w§;
      }
      
      public function get §#T§() : §[D§
      {
         return this.§1!6§;
      }
      
      public function get §>B§() : Boolean
      {
         return this.§6q§;
      }
      
      public function set §>B§(param1:Boolean) : void
      {
         this.§6q§ = param1;
         if(this.§implements§)
         {
            this.§-y§.§>B§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§&!q§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§&!q§ = param1;
         if(this.§implements§)
         {
            this.§implements§.enableErrorChecking = param1;
         }
      }
      
      public function get §^!^§() : int
      {
         return this.§;;§;
      }
      
      public function set §^!^§(param1:int) : void
      {
         this.§;;§ = param1;
         §'!X§();
      }
      
      public function get §`!d§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§]g§ == null)
         {
            this.§]g§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§]g§.contextMenu = _loc1_;
            this.§ !`§();
         }
         return this.§]g§;
      }
      
      public function get stage() : §`g§.Stage
      {
         return this.§@e§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §6p§() : flash.display.Stage
      {
         return this.§!f§;
      }
      
      public function get §[&§() : Boolean
      {
         return !this.§@r§;
      }
   }
}
