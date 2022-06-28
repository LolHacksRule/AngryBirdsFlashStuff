package §catch§
{
   import §,_§.DisplayObject;
   import §,_§.Stage;
   import §7!=§.Texture;
   import §^X§.§;P§;
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
   import starling.events.§ #§;
   import starling.events.§9j§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§[y§;
   
   public class §4@§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §<[§:§4@§;
      
      private static var §3z§:Boolean;
      
      private static var §9%§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §?$§:§,_§.Stage;
      
      private var §6C§:Class;
      
      private var §41§:§,_§.DisplayObject;
      
      private var §5j§:§;P§;
      
      private var § Y§:Boolean;
      
      private var §]!B§:Boolean;
      
      private var §!S§:§'d§;
      
      private var §0!"§:§[y§;
      
      private var §#F§:int;
      
      private var §>C§:Boolean;
      
      private var §+!C§:Boolean;
      
      private var §[E§:Number;
      
      private var §#0§:Rectangle;
      
      private var §?w§:Boolean;
      
      private var §2!9§:flash.display.Stage;
      
      private var §0`§:Sprite;
      
      private var §4%§:Context3D;
      
      private var §9B§:Dictionary;
      
      private var §<P§:int;
      
      private var §6D§:Boolean;
      
      private var §9p§:Number;
      
      private var §!!>§:Number;
      
      private var §3!$§:Number;
      
      private var §`j§:Number;
      
      private var § B§:Number;
      
      private var §>@§:Number;
      
      private var §;!§:Function;
      
      private var §&!C§:uint;
      
      private var §?!>§:String;
      
      private var §<2§:Bitmap;
      
      private var §=1§:Boolean = false;
      
      private var §@!3§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §<z§:Boolean = false;
      
      public function §4@§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§9p§ = param3.width;
         this.§!!>§ = param3.height;
         this.§3!$§ = this.§9p§;
         this.§`j§ = this.§!!>§;
         this.§ B§ = param2.stageWidth;
         this.§>@§ = param2.stageHeight;
         §#!1§ = true;
         this.§>!-§();
         this.§6C§ = param1;
         this.§#0§ = param3;
         this.mStage3D = param4;
         this.§?$§ = new §,_§.Stage(param3.width,param3.height,param2.color);
         this.§2!9§ = param2;
         this.§0!"§ = new §[y§(this.§?$§);
         this.§5j§ = new §;P§();
         this.§#F§ = 0;
         this.§>C§ = false;
         this.§+!C§ = false;
         this.§[E§ = getTimer() / 1000;
         this.§9B§ = new Dictionary();
         for each(_loc6_ in this.§=!C§)
         {
            param2.addEventListener(_loc6_,this.§3R§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§]B§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§8!,§,false,1,true);
         this.mStage3D.visible = false;
         this.§`H§(true);
         this.§&!C§ = param2.color;
         this.§?!>§ = param5;
      }
      
      public static function get §?!A§() : Boolean
      {
         if(§0W§)
         {
            return §0W§.§6D§;
         }
         return true;
      }
      
      public static function §!!7§() : Boolean
      {
         return §<[§ && (§<[§.§=1§ || §<[§.§4%§ != null && §<[§.§4%§.driverInfo != "Disposed");
      }
      
      public static function get §0W§() : §4@§
      {
         return §<[§;
      }
      
      public static function get §&R§() : §;P§
      {
         return !!§<[§ ? §<[§.§&R§ : null;
      }
      
      public static function get §8+§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §8+§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §#!1§() : Boolean
      {
         return §3z§;
      }
      
      public static function set §#!1§(param1:Boolean) : void
      {
         if(§<[§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §3z§ = param1;
      }
      
      public static function §=I§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§0W§)
         {
            return Texture.§6!2§(§0W§.§4%§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§<[§.§4%§)
         {
            §<[§.§4%§.drawToBitmapData(param1);
         }
         else if(§<[§.§!S§.canvas)
         {
            _loc2_ = §<[§.§!S§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §9!E§() : §,_§.DisplayObject
      {
         return this.§41§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§&!C§ = param1;
      }
      
      public function get §[J§() : Number
      {
         return this.§9p§;
      }
      
      public function get §6+§() : Number
      {
         return this.§!!>§;
      }
      
      public function §=H§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§?!>§);
         }
         catch(e:Error)
         {
            §;G§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§<z§ = true;
         this.§2!9§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§2!9§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§]B§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§8!,§,false);
         for each(_loc1_ in this.§=!C§)
         {
            this.§2!9§.removeEventListener(_loc1_,this.§3R§,false);
         }
         for each(_loc2_ in this.§9B§)
         {
            _loc2_.dispose();
         }
         if(this.§4%§)
         {
            this.§4%§.dispose();
         }
         if(this.§0!"§)
         {
            this.§0!"§.dispose();
         }
         if(this.§!S§)
         {
            this.§!S§.dispose();
         }
         if(§<[§ == this)
         {
            §<[§ = null;
         }
         if(this.§<2§ && this.§<2§.bitmapData)
         {
            this.§<2§.bitmapData.dispose();
            this.§<2§.bitmapData = null;
         }
      }
      
      private function §8x§() : void
      {
         this.§4%§ = this.mStage3D.context3D;
         this.§9B§ = new Dictionary();
         if(this.§4%§)
         {
            this.§4%§.enableErrorChecking = this.§+!C§;
            if(this.§4%§.driverInfo.indexOf("Software") >= 0)
            {
               this.§6D§ = true;
            }
         }
         else
         {
            this.§6D§ = true;
         }
         this.§[L§();
      }
      
      private function §]T§() : void
      {
         if(this.§?$§.numChildren > 0)
         {
            return;
         }
         if(this.§41§ == null)
         {
            this.§41§ = new this.§6C§();
         }
         if(this.§41§ == null)
         {
            throw new Error("Invalid root class: " + this.§6C§);
         }
         this.§?$§.addChild(this.§41§);
      }
      
      private function §[L§() : void
      {
         this.§@!3§ = true;
         this.mStage3D.x = this.§#0§.x;
         this.mStage3D.y = this.§#0§.y;
      }
      
      private function render() : void
      {
         if(!§!!7§())
         {
            return;
         }
         if(this.§@!3§)
         {
            if(this.§4%§)
            {
               this.§4%§.configureBackBuffer(this.§#0§.width,this.§#0§.height,this.§#F§,false);
            }
            this.§@!3§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§[E§;
         this.§[E§ = _loc1_;
         this.§?$§.advanceTime(_loc2_);
         this.§5j§.advanceTime(_loc2_);
         this.§0!"§.advanceTime(_loc2_);
         this.§!S§.§`Z§(this.§?$§.stageWidth,this.§?$§.stageHeight);
         this.§!S§.clear(this.§4%§,this.§&!C§,1);
         this.§!S§.§?]§(this.§4%§,this.§<P§);
         this.§?$§.render(this.§!S§,1);
         this.§!S§.§--§();
         if(this.§;!§ != null)
         {
            this.§;!§();
            this.§;!§ = null;
         }
         this.§!S§.finishRendering(this.§4%§);
         this.§!S§.§1!-§();
      }
      
      public function set §,!A§(param1:Function) : void
      {
         this.§;!§ = param1;
      }
      
      private function §65§() : void
      {
         var _loc3_:BitmapData = null;
         this.§0`§.x = this.§#0§.x;
         this.§0`§.y = this.§#0§.y;
         var _loc1_:int = this.§0`§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§0`§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§2!9§.addChild(this.§0`§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§2!9§.removeChild(this.§0`§);
         }
         if(this.§!S§ && this.§!S§.canvas)
         {
            this.§!S§.setCanvasSize(this.§3!$§,this.§`j§,this.§#0§.width / this.§?$§.stageWidth,this.§#0§.height / this.§?$§.stageHeight);
            _loc3_ = this.§!S§.canvas;
            if(this.§<2§.bitmapData != _loc3_)
            {
               this.§<2§.bitmapData = _loc3_;
            }
            if(this.§2!9§.getChildIndex(this.§0`§) > 0)
            {
               this.§2!9§.removeChild(this.§0`§);
               this.§2!9§.addChildAt(this.§0`§,0);
            }
         }
      }
      
      private function §;G§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§?$§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§?$§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§?$§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§9=§.addChild(_loc2_);
      }
      
      public function §>!-§() : void
      {
         §<[§ = this;
      }
      
      public function start() : void
      {
         this.§ Y§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§ Y§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §`H§(param1:Boolean) : void
      {
         this.§]!B§ = param1;
      }
      
      private function §?!E§() : void
      {
         this.§=1§ = true;
         if(this.§<2§ == null)
         {
            this.§<2§ = new Bitmap();
            this.§9=§.addChild(this.§<2§);
         }
      }
      
      private function §8!,§(param1:ErrorEvent) : void
      {
         this.§?!E§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §]B§(param1:flash.events.Event) : void
      {
         if(this.§<z§)
         {
            return;
         }
         ++§9%§;
         this.§<P§ = §9%§;
         if(this.§!S§)
         {
            this.§!S§.dispose();
         }
         if(!§4@§.§#!1§ && this.§4%§)
         {
            this.§;G§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§>!-§();
         this.§8x§();
         this.§]T§();
         if(this.§4%§ && this.§6D§)
         {
            this.mStage3DEnabled = false;
            this.§4%§ = null;
            this.§?!E§();
         }
         if(this.§4%§)
         {
            this.§!S§ = new §'d§();
         }
         else
         {
            this.§!S§ = new §+7§();
            this.§!S§.setCanvasSize(this.§3!$§,this.§`j§,this.§#0§.width / this.§?$§.stageWidth,this.§#0§.height / this.§?$§.stageHeight);
            this.§!S§.clear(null,this.§&!C§);
         }
         this.§0!"§.§1=§ = this.§>C§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§>!-§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§[E§;
         if(this.§ Y§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§0`§)
         {
            this.§65§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§>!-§();
         this.§?$§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§9p§;
         var _loc5_:Number = param2 / this.§!!>§;
         if(!param3)
         {
            this.§?$§.stageWidth = this.§9p§ * _loc4_ / _loc5_;
            this.§?$§.stageHeight = this.§!!>§;
         }
         else
         {
            this.§?$§.stageWidth = this.§9p§;
            this.§?$§.stageHeight = this.§!!>§ * _loc5_ / _loc4_;
         }
         this.§3!$§ = param1;
         this.§`j§ = param2;
         this.§?$§.dispatchEvent(new § #§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §#!6§() : void
      {
         this.setCanvasSize(this.§9p§,this.§!!>§);
      }
      
      private function §3R§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§ Y§ || !this.§]!B§)
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
               this.§?w§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§?w§ = false;
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
               _loc5_ = §9j§.§3L§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §9j§.§#U§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §9j§.§@q§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §9j§.§3L§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §9j§.§@q§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§?w§ ? §9j§.§#U§ : §9j§.§"s§;
         }
         if((_loc2_ < this.§#0§.left || _loc2_ >= this.§#0§.right || _loc3_ < this.§#0§.top || _loc3_ >= this.§#0§.bottom) && _loc5_ == §9j§.§3L§)
         {
            return;
         }
         _loc2_ -= this.§#0§.x;
         _loc3_ -= this.§#0§.y;
         this.§0!"§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §=!C§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §;!9§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§9B§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§4%§ != null)
         {
            (_loc4_ = this.§4%§.createProgram()).upload(param2,param3);
            this.§9B§[param1] = _loc4_;
         }
      }
      
      public function §@A§(param1:String) : void
      {
         var _loc2_:Program3D = this.§0!<§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§9B§[param1];
         }
      }
      
      public function §0!<§(param1:String) : Program3D
      {
         return this.§9B§[param1] as Program3D;
      }
      
      public function §`U§(param1:String) : Boolean
      {
         return param1 in this.§9B§;
      }
      
      public function get §-P§() : Boolean
      {
         return this.§ Y§;
      }
      
      public function get §&R§() : §;P§
      {
         return this.§5j§;
      }
      
      public function get §1=§() : Boolean
      {
         return this.§>C§;
      }
      
      public function set §1=§(param1:Boolean) : void
      {
         this.§>C§ = param1;
         if(this.§4%§)
         {
            this.§0!"§.§1=§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+!C§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§+!C§ = param1;
         if(this.§4%§)
         {
            this.§4%§.enableErrorChecking = param1;
         }
      }
      
      public function get §@!9§() : int
      {
         return this.§#F§;
      }
      
      public function set §@!9§(param1:int) : void
      {
         this.§#F§ = param1;
         this.§[L§();
      }
      
      public function get §5B§() : Rectangle
      {
         return this.§#0§.clone();
      }
      
      public function set §5B§(param1:Rectangle) : void
      {
         this.§#0§ = param1.clone();
         this.§[L§();
      }
      
      public function get §9=§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§0`§ == null)
         {
            this.§0`§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§0`§.contextMenu = _loc1_;
            this.§65§();
         }
         return this.§0`§;
      }
      
      public function get stage() : §,_§.Stage
      {
         return this.§?$§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §<M§() : flash.display.Stage
      {
         return this.§2!9§;
      }
      
      public function get §[!#§() : Boolean
      {
         return !this.§=1§;
      }
   }
}
