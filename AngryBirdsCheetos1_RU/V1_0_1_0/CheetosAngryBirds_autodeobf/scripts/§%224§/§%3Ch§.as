package §"4§
{
   import §&!5§.DisplayObject;
   import §&!5§.Stage;
   import §[=§.§-T§;
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
   import starling.events.§!f§;
   import starling.events.§"!a§;
   import starling.events.§;n§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import §switch§.Texture;
   
   public class §<h§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §%n§:§<h§;
      
      private static var §[1§:Boolean;
      
      private static var §'u§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §%!7§:§&!5§.Stage;
      
      private var §^x§:Class;
      
      private var §"3§:§&!5§.DisplayObject;
      
      private var §1y§:§-T§;
      
      private var §'O§:Boolean;
      
      private var §1!X§:Boolean;
      
      private var §<!Z§:§+s§;
      
      private var §?"§:§!f§;
      
      private var §>!N§:int;
      
      private var §?b§:Boolean;
      
      private var §<"§:Boolean;
      
      private var §^!5§:Number;
      
      private var §,!+§:Rectangle;
      
      private var §?!$§:Boolean;
      
      private var §+T§:flash.display.Stage;
      
      private var §var§:Sprite;
      
      private var §!§:Context3D;
      
      private var §5!4§:Dictionary;
      
      private var §<!R§:int;
      
      private var §=O§:Boolean;
      
      private var §?!@§:Number;
      
      private var §class§:Number;
      
      private var §1?§:Number;
      
      private var §>v§:Number;
      
      private var §^!H§:Number;
      
      private var §=X§:Number;
      
      private var §-!T§:Function;
      
      private var §93§:uint;
      
      private var §,!F§:String;
      
      private var §%D§:Bitmap;
      
      private var §<y§:Boolean = false;
      
      private var §!W§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §1L§:Boolean = false;
      
      public function §<h§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§?!@§ = param3.width;
         this.§class§ = param3.height;
         this.§1?§ = this.§?!@§;
         this.§>v§ = this.§class§;
         this.§^!H§ = param2.stageWidth;
         this.§=X§ = param2.stageHeight;
         §+S§ = true;
         this.§9G§();
         this.§^x§ = param1;
         this.§,!+§ = param3;
         this.mStage3D = param4;
         this.§%!7§ = new §&!5§.Stage(param3.width,param3.height,param2.color);
         this.§+T§ = param2;
         this.§?"§ = new §!f§(this.§%!7§);
         this.§1y§ = new §-T§();
         this.§>!N§ = 0;
         this.§?b§ = false;
         this.§<"§ = false;
         this.§^!5§ = getTimer() / 1000;
         this.§5!4§ = new Dictionary();
         for each(_loc6_ in this.§&k§)
         {
            param2.addEventListener(_loc6_,this.§!!"§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!0§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!0§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§=k§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§]_§,false,1,true);
         this.mStage3D.visible = false;
         this.§^O§(true);
         this.§93§ = param2.color;
         this.§,!F§ = param5;
      }
      
      public static function get §+"§() : Boolean
      {
         if(§%!]§)
         {
            return §%!]§.§=O§;
         }
         return true;
      }
      
      public static function §1[§() : Boolean
      {
         return §%n§ && (§%n§.§<y§ || §%n§.§!§ != null && §%n§.§!§.driverInfo != "Disposed");
      }
      
      public static function get §%!]§() : §<h§
      {
         return §%n§;
      }
      
      public static function get §4!J§() : §-T§
      {
         return !!§%n§ ? §%n§.§4!J§ : null;
      }
      
      public static function get §+!'§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §+!'§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §+S§() : Boolean
      {
         return §[1§;
      }
      
      public static function set §+S§(param1:Boolean) : void
      {
         if(§%n§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §[1§ = param1;
      }
      
      public static function §<!'§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§%!]§)
         {
            return Texture.§2!K§(§%!]§.§!§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§%n§.§!§)
         {
            §%n§.§!§.drawToBitmapData(param1);
         }
         else if(§%n§.§<!Z§.canvas)
         {
            _loc2_ = §%n§.§<!Z§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §`q§() : §&!5§.DisplayObject
      {
         return this.§"3§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§93§ = param1;
      }
      
      public function get §]p§() : Number
      {
         return this.§?!@§;
      }
      
      public function get §1D§() : Number
      {
         return this.§class§;
      }
      
      public function §3q§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§,!F§);
         }
         catch(e:Error)
         {
            §+!L§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§1L§ = true;
         this.§+T§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§%!0§,false);
         this.§+T§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§%!0§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§=k§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§]_§,false);
         for each(_loc1_ in this.§&k§)
         {
            this.§+T§.removeEventListener(_loc1_,this.§!!"§,false);
         }
         for each(_loc2_ in this.§5!4§)
         {
            _loc2_.dispose();
         }
         if(this.§!§)
         {
            this.§!§.dispose();
         }
         if(this.§?"§)
         {
            this.§?"§.dispose();
         }
         if(this.§<!Z§)
         {
            this.§<!Z§.dispose();
         }
         if(§%n§ == this)
         {
            §%n§ = null;
         }
         if(this.§%D§ && this.§%D§.bitmapData)
         {
            this.§%D§.bitmapData.dispose();
            this.§%D§.bitmapData = null;
         }
      }
      
      private function §throw§() : void
      {
         this.§!§ = this.mStage3D.context3D;
         this.§5!4§ = new Dictionary();
         if(this.§!§)
         {
            this.§!§.enableErrorChecking = this.§<"§;
            if(this.§!§.driverInfo.indexOf("Software") >= 0)
            {
               this.§=O§ = true;
            }
         }
         else
         {
            this.§=O§ = true;
         }
         this.§9S§();
      }
      
      private function §7!Z§() : void
      {
         if(this.§%!7§.numChildren > 0)
         {
            return;
         }
         if(this.§"3§ == null)
         {
            this.§"3§ = new this.§^x§();
         }
         if(this.§"3§ == null)
         {
            throw new Error("Invalid root class: " + this.§^x§);
         }
         this.§%!7§.addChild(this.§"3§);
      }
      
      private function §9S§() : void
      {
         this.§!W§ = true;
         this.mStage3D.x = this.§,!+§.x;
         this.mStage3D.y = this.§,!+§.y;
      }
      
      private function render() : void
      {
         if(!§1[§())
         {
            return;
         }
         if(this.§!W§)
         {
            if(this.§!§)
            {
               this.§!§.configureBackBuffer(this.§,!+§.width,this.§,!+§.height,this.§>!N§,false);
            }
            this.§!W§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§^!5§;
         this.§^!5§ = _loc1_;
         this.§%!7§.advanceTime(_loc2_);
         this.§1y§.advanceTime(_loc2_);
         this.§?"§.advanceTime(_loc2_);
         this.§<!Z§.§8!Q§(this.§%!7§.stageWidth,this.§%!7§.stageHeight);
         this.§<!Z§.clear(this.§!§,this.§93§,1);
         this.§<!Z§.§;[§(this.§!§,this.§<!R§);
         this.§%!7§.render(this.§<!Z§,1);
         this.§<!Z§.§&u§();
         if(this.§-!T§ != null)
         {
            this.§-!T§();
            this.§-!T§ = null;
         }
         this.§<!Z§.finishRendering(this.§!§);
         this.§<!Z§.§`!S§();
      }
      
      public function set §+!M§(param1:Function) : void
      {
         this.§-!T§ = param1;
      }
      
      private function §0&§() : void
      {
         var _loc3_:BitmapData = null;
         this.§var§.x = this.§,!+§.x;
         this.§var§.y = this.§,!+§.y;
         var _loc1_:int = this.§var§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§var§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§+T§.addChild(this.§var§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§+T§.removeChild(this.§var§);
         }
         if(this.§<!Z§ && this.§<!Z§.canvas)
         {
            this.§<!Z§.setCanvasSize(this.§1?§,this.§>v§,this.§,!+§.width / this.§%!7§.stageWidth,this.§,!+§.height / this.§%!7§.stageHeight);
            _loc3_ = this.§<!Z§.canvas;
            if(this.§%D§.bitmapData != _loc3_)
            {
               this.§%D§.bitmapData = _loc3_;
            }
            if(this.§+T§.getChildIndex(this.§var§) > 0)
            {
               this.§+T§.removeChild(this.§var§);
               this.§+T§.addChildAt(this.§var§,0);
            }
         }
      }
      
      private function §+!L§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§%!7§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§%!7§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§%!7§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§;!Q§.addChild(_loc2_);
      }
      
      public function §9G§() : void
      {
         §%n§ = this;
      }
      
      public function start() : void
      {
         this.§'O§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§'O§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §^O§(param1:Boolean) : void
      {
         this.§1!X§ = param1;
      }
      
      private function §^m§() : void
      {
         this.§<y§ = true;
         if(this.§%D§ == null)
         {
            this.§%D§ = new Bitmap();
            this.§;!Q§.addChild(this.§%D§);
         }
      }
      
      private function §]_§(param1:ErrorEvent) : void
      {
         this.§^m§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §=k§(param1:flash.events.Event) : void
      {
         if(this.§1L§)
         {
            return;
         }
         ++§'u§;
         this.§<!R§ = §'u§;
         if(this.§<!Z§)
         {
            this.§<!Z§.dispose();
         }
         if(!§<h§.§+S§ && this.§!§)
         {
            this.§+!L§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§9G§();
         this.§throw§();
         this.§7!Z§();
         if(this.§!§ && this.§=O§)
         {
            this.mStage3DEnabled = false;
            this.§!§ = null;
            this.§^m§();
         }
         if(this.§!§)
         {
            this.§<!Z§ = new §+s§();
         }
         else
         {
            this.§<!Z§ = new §;U§();
            this.§<!Z§.setCanvasSize(this.§1?§,this.§>v§,this.§,!+§.width / this.§%!7§.stageWidth,this.§,!+§.height / this.§%!7§.stageHeight);
            this.§<!Z§.clear(null,this.§93§);
         }
         this.§?"§.§ 2§ = this.§?b§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §,!^§(param1:flash.events.Event) : void
      {
         this.§9G§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§^!5§;
         if(this.§'O§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§var§)
         {
            this.§0&§();
         }
      }
      
      private function §%!0§(param1:flash.events.KeyboardEvent) : void
      {
         this.§9G§();
         this.§%!7§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§?!@§;
         var _loc5_:Number = param2 / this.§class§;
         if(!param3)
         {
            this.§%!7§.stageWidth = this.§?!@§ * _loc4_ / _loc5_;
            this.§%!7§.stageHeight = this.§class§;
         }
         else
         {
            this.§%!7§.stageWidth = this.§?!@§;
            this.§%!7§.stageHeight = this.§class§ * _loc5_ / _loc4_;
         }
         this.§1?§ = param1;
         this.§>v§ = param2;
         this.§%!7§.dispatchEvent(new §"!a§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §#!5§() : void
      {
         this.setCanvasSize(this.§?!@§,this.§class§);
      }
      
      private function §!!"§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§'O§ || !this.§1!X§)
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
               this.§?!$§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§?!$§ = false;
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
               _loc5_ = §;n§.§ ! §;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §;n§.§&S§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §;n§.§9!,§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §;n§.§ ! §;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §;n§.§9!,§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§?!$§ ? §;n§.§&S§ : §;n§.§,!;§;
         }
         if((_loc2_ < this.§,!+§.left || _loc2_ >= this.§,!+§.right || _loc3_ < this.§,!+§.top || _loc3_ >= this.§,!+§.bottom) && _loc5_ == §;n§.§ ! §)
         {
            return;
         }
         _loc2_ -= this.§,!+§.x;
         _loc3_ -= this.§,!+§.y;
         this.§?"§.§4j§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §&k§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §%k§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§5!4§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§!§ != null)
         {
            (_loc4_ = this.§!§.createProgram()).upload(param2,param3);
            this.§5!4§[param1] = _loc4_;
         }
      }
      
      public function §@!^§(param1:String) : void
      {
         var _loc2_:Program3D = this.§7f§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§5!4§[param1];
         }
      }
      
      public function §7f§(param1:String) : Program3D
      {
         return this.§5!4§[param1] as Program3D;
      }
      
      public function §4!3§(param1:String) : Boolean
      {
         return param1 in this.§5!4§;
      }
      
      public function get §2!H§() : Boolean
      {
         return this.§'O§;
      }
      
      public function get §4!J§() : §-T§
      {
         return this.§1y§;
      }
      
      public function get § 2§() : Boolean
      {
         return this.§?b§;
      }
      
      public function set § 2§(param1:Boolean) : void
      {
         this.§?b§ = param1;
         if(this.§!§)
         {
            this.§?"§.§ 2§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§<"§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§<"§ = param1;
         if(this.§!§)
         {
            this.§!§.enableErrorChecking = param1;
         }
      }
      
      public function get §6!X§() : int
      {
         return this.§>!N§;
      }
      
      public function set §6!X§(param1:int) : void
      {
         this.§>!N§ = param1;
         this.§9S§();
      }
      
      public function get §-!M§() : Rectangle
      {
         return this.§,!+§.clone();
      }
      
      public function set §-!M§(param1:Rectangle) : void
      {
         this.§,!+§ = param1.clone();
         this.§9S§();
      }
      
      public function get §;!Q§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§var§ == null)
         {
            this.§var§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§var§.contextMenu = _loc1_;
            this.§0&§();
         }
         return this.§var§;
      }
      
      public function get stage() : §&!5§.Stage
      {
         return this.§%!7§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §1!+§() : flash.display.Stage
      {
         return this.§+T§;
      }
      
      public function get §7e§() : Boolean
      {
         return !this.§<y§;
      }
   }
}
