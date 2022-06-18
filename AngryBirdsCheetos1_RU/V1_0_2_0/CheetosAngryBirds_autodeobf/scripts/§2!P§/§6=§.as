package §2!P§
{
   import §,H§.DisplayObject;
   import §,H§.Stage;
   import §,Y§.Texture;
   import §9!5§.§ !Q§;
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
   import starling.events.§#$§;
   import starling.events.§0!?§;
   import starling.events.§8u§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §6=§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §9!J§:§6=§;
      
      private static var §`6§:Boolean;
      
      private static var §=n§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §[!<§:§,H§.Stage;
      
      private var §55§:Class;
      
      private var §9!T§:§,H§.DisplayObject;
      
      private var §^y§:§ !Q§;
      
      private var §=!B§:Boolean;
      
      private var §6R§:Boolean;
      
      private var §+9§:§@9§;
      
      private var §^!;§:§8u§;
      
      private var §&!'§:int;
      
      private var §9P§:Boolean;
      
      private var §#!L§:Boolean;
      
      private var §^!$§:Number;
      
      private var §@?§:Rectangle;
      
      private var §1n§:Boolean;
      
      private var §;9§:flash.display.Stage;
      
      private var §4=§:Sprite;
      
      private var §?;§:Context3D;
      
      private var §3!>§:Dictionary;
      
      private var §@V§:int;
      
      private var §0!W§:Boolean;
      
      private var §5[§:Number;
      
      private var §,-§:Number;
      
      private var §<D§:Number;
      
      private var §?!3§:Number;
      
      private var §5U§:Number;
      
      private var §+!U§:Number;
      
      private var §+,§:Function;
      
      private var §-!Z§:uint;
      
      private var §"!F§:String;
      
      private var §75§:Bitmap;
      
      private var §!!=§:Boolean = false;
      
      private var §5!]§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §]x§:Boolean = false;
      
      public function §6=§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§5[§ = param3.width;
         this.§,-§ = param3.height;
         this.§<D§ = this.§5[§;
         this.§?!3§ = this.§,-§;
         this.§5U§ = param2.stageWidth;
         this.§+!U§ = param2.stageHeight;
         §3!X§ = true;
         this.§2!X§();
         this.§55§ = param1;
         this.§@?§ = param3;
         this.mStage3D = param4;
         this.§[!<§ = new §,H§.Stage(param3.width,param3.height,param2.color);
         this.§;9§ = param2;
         this.§^!;§ = new §8u§(this.§[!<§);
         this.§^y§ = new § !Q§();
         this.§&!'§ = 0;
         this.§9P§ = false;
         this.§#!L§ = false;
         this.§^!$§ = getTimer() / 1000;
         this.§3!>§ = new Dictionary();
         for each(_loc6_ in this.§@P§)
         {
            param2.addEventListener(_loc6_,this.§8=§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#!A§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§%!K§,false,1,true);
         this.mStage3D.visible = false;
         this.§?R§(true);
         this.§-!Z§ = param2.color;
         this.§"!F§ = param5;
      }
      
      public static function get §9B§() : Boolean
      {
         if(§4!8§)
         {
            return §4!8§.§0!W§;
         }
         return true;
      }
      
      public static function §6!N§() : Boolean
      {
         return §9!J§ && (§9!J§.§!!=§ || §9!J§.§?;§ != null && §9!J§.§?;§.driverInfo != "Disposed");
      }
      
      public static function get §4!8§() : §6=§
      {
         return §9!J§;
      }
      
      public static function get §6>§() : § !Q§
      {
         return !!§9!J§ ? §9!J§.§6>§ : null;
      }
      
      public static function get §6%§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §6%§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §3!X§() : Boolean
      {
         return §`6§;
      }
      
      public static function set §3!X§(param1:Boolean) : void
      {
         if(§9!J§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §`6§ = param1;
      }
      
      public static function §,D§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§4!8§)
         {
            return Texture.§!!P§(§4!8§.§?;§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§9!J§.§?;§)
         {
            §9!J§.§?;§.drawToBitmapData(param1);
         }
         else if(§9!J§.§+9§.canvas)
         {
            _loc2_ = §9!J§.§+9§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §8c§() : §,H§.DisplayObject
      {
         return this.§9!T§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§-!Z§ = param1;
      }
      
      public function get §0u§() : Number
      {
         return this.§5[§;
      }
      
      public function get §5!'§() : Number
      {
         return this.§,-§;
      }
      
      public function §<!-§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§"!F§);
         }
         catch(e:Error)
         {
            §&!O§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§]x§ = true;
         this.§;9§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§[§,false);
         this.§;9§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§[§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#!A§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§%!K§,false);
         for each(_loc1_ in this.§@P§)
         {
            this.§;9§.removeEventListener(_loc1_,this.§8=§,false);
         }
         for each(_loc2_ in this.§3!>§)
         {
            _loc2_.dispose();
         }
         if(this.§?;§)
         {
            this.§?;§.dispose();
         }
         if(this.§^!;§)
         {
            this.§^!;§.dispose();
         }
         if(this.§+9§)
         {
            this.§+9§.dispose();
         }
         if(§9!J§ == this)
         {
            §9!J§ = null;
         }
         if(this.§75§ && this.§75§.bitmapData)
         {
            this.§75§.bitmapData.dispose();
            this.§75§.bitmapData = null;
         }
      }
      
      private function §3M§() : void
      {
         this.§?;§ = this.mStage3D.context3D;
         this.§3!>§ = new Dictionary();
         if(this.§?;§)
         {
            this.§?;§.enableErrorChecking = this.§#!L§;
            if(this.§?;§.driverInfo.indexOf("Software") >= 0)
            {
               this.§0!W§ = true;
            }
         }
         else
         {
            this.§0!W§ = true;
         }
         this.§"f§();
      }
      
      private function §+!F§() : void
      {
         if(this.§[!<§.numChildren > 0)
         {
            return;
         }
         if(this.§9!T§ == null)
         {
            this.§9!T§ = new this.§55§();
         }
         if(this.§9!T§ == null)
         {
            throw new Error("Invalid root class: " + this.§55§);
         }
         this.§[!<§.addChild(this.§9!T§);
      }
      
      private function §"f§() : void
      {
         this.§5!]§ = true;
         this.mStage3D.x = this.§@?§.x;
         this.mStage3D.y = this.§@?§.y;
      }
      
      private function render() : void
      {
         if(!§6!N§())
         {
            return;
         }
         if(this.§5!]§)
         {
            if(this.§?;§)
            {
               this.§?;§.configureBackBuffer(this.§@?§.width,this.§@?§.height,this.§&!'§,false);
            }
            this.§5!]§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§^!$§;
         this.§^!$§ = _loc1_;
         this.§[!<§.advanceTime(_loc2_);
         this.§^y§.advanceTime(_loc2_);
         this.§^!;§.advanceTime(_loc2_);
         this.§+9§.§ set§(this.§[!<§.stageWidth,this.§[!<§.stageHeight);
         this.§+9§.clear(this.§?;§,this.§-!Z§,1);
         this.§+9§.§,B§(this.§?;§,this.§@V§);
         this.§[!<§.render(this.§+9§,1);
         this.§+9§.§ a§();
         if(this.§+,§ != null)
         {
            this.§+,§();
            this.§+,§ = null;
         }
         this.§+9§.finishRendering(this.§?;§);
         this.§+9§.§,!;§();
      }
      
      public function set §@5§(param1:Function) : void
      {
         this.§+,§ = param1;
      }
      
      private function §3!3§() : void
      {
         var _loc3_:BitmapData = null;
         this.§4=§.x = this.§@?§.x;
         this.§4=§.y = this.§@?§.y;
         var _loc1_:int = this.§4=§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§4=§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§;9§.addChild(this.§4=§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§;9§.removeChild(this.§4=§);
         }
         if(this.§+9§ && this.§+9§.canvas)
         {
            this.§+9§.setCanvasSize(this.§<D§,this.§?!3§,this.§@?§.width / this.§[!<§.stageWidth,this.§@?§.height / this.§[!<§.stageHeight);
            _loc3_ = this.§+9§.canvas;
            if(this.§75§.bitmapData != _loc3_)
            {
               this.§75§.bitmapData = _loc3_;
            }
            if(this.§;9§.getChildIndex(this.§4=§) > 0)
            {
               this.§;9§.removeChild(this.§4=§);
               this.§;9§.addChildAt(this.§4=§,0);
            }
         }
      }
      
      private function §&!O§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§[!<§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§[!<§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§[!<§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§3b§.addChild(_loc2_);
      }
      
      public function §2!X§() : void
      {
         §9!J§ = this;
      }
      
      public function start() : void
      {
         this.§=!B§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§=!B§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §?R§(param1:Boolean) : void
      {
         this.§6R§ = param1;
      }
      
      private function §7o§() : void
      {
         this.§!!=§ = true;
         if(this.§75§ == null)
         {
            this.§75§ = new Bitmap();
            this.§3b§.addChild(this.§75§);
         }
      }
      
      private function §%!K§(param1:ErrorEvent) : void
      {
         this.§7o§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §#!A§(param1:flash.events.Event) : void
      {
         if(this.§]x§)
         {
            return;
         }
         ++§=n§;
         this.§@V§ = §=n§;
         if(this.§+9§)
         {
            this.§+9§.dispose();
         }
         if(!§6=§.§3!X§ && this.§?;§)
         {
            this.§&!O§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§2!X§();
         this.§3M§();
         this.§+!F§();
         if(this.§?;§ && this.§0!W§)
         {
            this.mStage3DEnabled = false;
            this.§?;§ = null;
            this.§7o§();
         }
         if(this.§?;§)
         {
            this.§+9§ = new §@9§();
         }
         else
         {
            this.§+9§ = new §&!§();
            this.§+9§.setCanvasSize(this.§<D§,this.§?!3§,this.§@?§.width / this.§[!<§.stageWidth,this.§@?§.height / this.§[!<§.stageHeight);
            this.§+9§.clear(null,this.§-!Z§);
         }
         this.§^!;§.§>!E§ = this.§9P§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §%!0§(param1:flash.events.Event) : void
      {
         this.§2!X§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§^!$§;
         if(this.§=!B§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§4=§)
         {
            this.§3!3§();
         }
      }
      
      private function §[§(param1:flash.events.KeyboardEvent) : void
      {
         this.§2!X§();
         this.§[!<§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§5[§;
         var _loc5_:Number = param2 / this.§,-§;
         if(!param3)
         {
            this.§[!<§.stageWidth = this.§5[§ * _loc4_ / _loc5_;
            this.§[!<§.stageHeight = this.§,-§;
         }
         else
         {
            this.§[!<§.stageWidth = this.§5[§;
            this.§[!<§.stageHeight = this.§,-§ * _loc5_ / _loc4_;
         }
         this.§<D§ = param1;
         this.§?!3§ = param2;
         this.§[!<§.dispatchEvent(new §#$§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §8!V§() : void
      {
         this.setCanvasSize(this.§5[§,this.§,-§);
      }
      
      private function §8=§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§=!B§ || !this.§6R§)
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
               this.§1n§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§1n§ = false;
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
               _loc5_ = §0!?§.§?Y§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §0!?§.§-!K§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §0!?§.§1!Y§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §0!?§.§?Y§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §0!?§.§1!Y§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§1n§ ? §0!?§.§-!K§ : §0!?§.§5!_§;
         }
         if((_loc2_ < this.§@?§.left || _loc2_ >= this.§@?§.right || _loc3_ < this.§@?§.top || _loc3_ >= this.§@?§.bottom) && _loc5_ == §0!?§.§?Y§)
         {
            return;
         }
         _loc2_ -= this.§@?§.x;
         _loc3_ -= this.§@?§.y;
         this.§^!;§.§4!;§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §@P§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §<!a§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§3!>§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§?;§ != null)
         {
            (_loc4_ = this.§?;§.createProgram()).upload(param2,param3);
            this.§3!>§[param1] = _loc4_;
         }
      }
      
      public function §1J§(param1:String) : void
      {
         var _loc2_:Program3D = this.§2d§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§3!>§[param1];
         }
      }
      
      public function §2d§(param1:String) : Program3D
      {
         return this.§3!>§[param1] as Program3D;
      }
      
      public function §5E§(param1:String) : Boolean
      {
         return param1 in this.§3!>§;
      }
      
      public function get §;!%§() : Boolean
      {
         return this.§=!B§;
      }
      
      public function get §6>§() : § !Q§
      {
         return this.§^y§;
      }
      
      public function get §>!E§() : Boolean
      {
         return this.§9P§;
      }
      
      public function set §>!E§(param1:Boolean) : void
      {
         this.§9P§ = param1;
         if(this.§?;§)
         {
            this.§^!;§.§>!E§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§#!L§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§#!L§ = param1;
         if(this.§?;§)
         {
            this.§?;§.enableErrorChecking = param1;
         }
      }
      
      public function get §"!P§() : int
      {
         return this.§&!'§;
      }
      
      public function set §"!P§(param1:int) : void
      {
         this.§&!'§ = param1;
         this.§"f§();
      }
      
      public function get §4r§() : Rectangle
      {
         return this.§@?§.clone();
      }
      
      public function set §4r§(param1:Rectangle) : void
      {
         this.§@?§ = param1.clone();
         this.§"f§();
      }
      
      public function get §3b§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§4=§ == null)
         {
            this.§4=§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§4=§.contextMenu = _loc1_;
            this.§3!3§();
         }
         return this.§4=§;
      }
      
      public function get stage() : §,H§.Stage
      {
         return this.§[!<§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §[g§() : flash.display.Stage
      {
         return this.§;9§;
      }
      
      public function get §6![§() : Boolean
      {
         return !this.§!!=§;
      }
   }
}
