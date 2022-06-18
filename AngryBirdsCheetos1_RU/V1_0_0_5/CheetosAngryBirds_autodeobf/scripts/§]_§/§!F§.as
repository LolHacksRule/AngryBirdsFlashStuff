package §]_§
{
   import §+>§.§"!A§;
   import §-A§.Texture;
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
   import §null §.DisplayObject;
   import §null §.Stage;
   import starling.events.§4;§;
   import starling.events.§<n§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`S§;
   
   public class §!F§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §]G§:§!F§;
      
      private static var §6!F§:Boolean;
      
      private static var §!!W§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §%V§:§null §.Stage;
      
      private var §32§:Class;
      
      private var §]h§:§null §.DisplayObject;
      
      private var §2!E§:§"!A§;
      
      private var §16§:Boolean;
      
      private var §3r§:Boolean;
      
      private var §>!X§:§7o§;
      
      private var §&!+§:§4;§;
      
      private var §"T§:int;
      
      private var §4!9§:Boolean;
      
      private var §=!T§:Boolean;
      
      private var §?1§:Number;
      
      private var §"_§:Rectangle;
      
      private var §`T§:Boolean;
      
      private var §set §:flash.display.Stage;
      
      private var §"n§:Sprite;
      
      private var §,!@§:Context3D;
      
      private var §&!E§:Dictionary;
      
      private var §'8§:int;
      
      private var §<! §:Boolean;
      
      private var §!!5§:Number;
      
      private var §`!>§:Number;
      
      private var § ^§:Number;
      
      private var §2H§:Number;
      
      private var §&!9§:Number;
      
      private var §7&§:Number;
      
      private var §!$§:Function;
      
      private var §69§:uint;
      
      private var §6?§:String;
      
      private var §6h§:Bitmap;
      
      private var §6[§:Boolean = false;
      
      private var §#!%§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §,'§:Boolean = false;
      
      public function §!F§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§!!5§ = param3.width;
         this.§`!>§ = param3.height;
         this.§ ^§ = this.§!!5§;
         this.§2H§ = this.§`!>§;
         this.§&!9§ = param2.stageWidth;
         this.§7&§ = param2.stageHeight;
         §^!J§ = true;
         this.§2z§();
         this.§32§ = param1;
         this.§"_§ = param3;
         this.mStage3D = param4;
         this.§%V§ = new §null §.Stage(param3.width,param3.height,param2.color);
         this.§set § = param2;
         this.§&!+§ = new §4;§(this.§%V§);
         this.§2!E§ = new §"!A§();
         this.§"T§ = 0;
         this.§4!9§ = false;
         this.§=!T§ = false;
         this.§?1§ = getTimer() / 1000;
         this.§&!E§ = new Dictionary();
         for each(_loc6_ in this.§?K§)
         {
            param2.addEventListener(_loc6_,this.§ !V§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§@!#§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§@!#§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§?6§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§^'§,false,1,true);
         this.mStage3D.visible = false;
         this.§<!3§(true);
         this.§69§ = param2.color;
         this.§6?§ = param5;
      }
      
      public static function get §3h§() : Boolean
      {
         if(§[M§)
         {
            return §[M§.§<! §;
         }
         return true;
      }
      
      public static function §]!C§() : Boolean
      {
         return §]G§ && (§]G§.§6[§ || §]G§.§,!@§ != null && §]G§.§,!@§.driverInfo != "Disposed");
      }
      
      public static function get §[M§() : §!F§
      {
         return §]G§;
      }
      
      public static function get §5!H§() : §"!A§
      {
         return !!§]G§ ? §]G§.§5!H§ : null;
      }
      
      public static function get §,^§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §,^§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §^!J§() : Boolean
      {
         return §6!F§;
      }
      
      public static function set §^!J§(param1:Boolean) : void
      {
         if(§]G§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §6!F§ = param1;
      }
      
      public static function §'G§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§[M§)
         {
            return Texture.§=!S§(§[M§.§,!@§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§]G§.§,!@§)
         {
            §]G§.§,!@§.drawToBitmapData(param1);
         }
         else if(§]G§.§>!X§.canvas)
         {
            _loc2_ = §]G§.§>!X§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §?,§() : §null §.DisplayObject
      {
         return this.§]h§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§69§ = param1;
      }
      
      public function get §1!`§() : Number
      {
         return this.§!!5§;
      }
      
      public function get §[e§() : Number
      {
         return this.§`!>§;
      }
      
      public function §1!8§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§6?§);
         }
         catch(e:Error)
         {
            §?!>§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§,'§ = true;
         this.§set §.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§@!#§,false);
         this.§set §.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§@!#§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§?6§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§^'§,false);
         for each(_loc1_ in this.§?K§)
         {
            this.§set §.removeEventListener(_loc1_,this.§ !V§,false);
         }
         for each(_loc2_ in this.§&!E§)
         {
            _loc2_.dispose();
         }
         if(this.§,!@§)
         {
            this.§,!@§.dispose();
         }
         if(this.§&!+§)
         {
            this.§&!+§.dispose();
         }
         if(this.§>!X§)
         {
            this.§>!X§.dispose();
         }
         if(§]G§ == this)
         {
            §]G§ = null;
         }
         if(this.§6h§ && this.§6h§.bitmapData)
         {
            this.§6h§.bitmapData.dispose();
            this.§6h§.bitmapData = null;
         }
      }
      
      private function §@=§() : void
      {
         this.§,!@§ = this.mStage3D.context3D;
         this.§&!E§ = new Dictionary();
         if(this.§,!@§)
         {
            this.§,!@§.enableErrorChecking = this.§=!T§;
            if(this.§,!@§.driverInfo.indexOf("Software") >= 0)
            {
               this.§<! § = true;
            }
         }
         else
         {
            this.§<! § = true;
         }
         this.§1u§();
      }
      
      private function §`!-§() : void
      {
         if(this.§%V§.numChildren > 0)
         {
            return;
         }
         if(this.§]h§ == null)
         {
            this.§]h§ = new this.§32§();
         }
         if(this.§]h§ == null)
         {
            throw new Error("Invalid root class: " + this.§32§);
         }
         this.§%V§.addChild(this.§]h§);
      }
      
      private function §1u§() : void
      {
         this.§#!%§ = true;
         this.mStage3D.x = this.§"_§.x;
         this.mStage3D.y = this.§"_§.y;
      }
      
      private function render() : void
      {
         if(!§]!C§())
         {
            return;
         }
         if(this.§#!%§)
         {
            if(this.§,!@§)
            {
               this.§,!@§.configureBackBuffer(this.§"_§.width,this.§"_§.height,this.§"T§,false);
            }
            this.§#!%§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§?1§;
         this.§?1§ = _loc1_;
         this.§%V§.advanceTime(_loc2_);
         this.§2!E§.advanceTime(_loc2_);
         this.§&!+§.advanceTime(_loc2_);
         this.§>!X§.§-!Y§(this.§%V§.stageWidth,this.§%V§.stageHeight);
         this.§>!X§.clear(this.§,!@§,this.§69§,1);
         this.§>!X§.§8J§(this.§,!@§,this.§'8§);
         this.§%V§.render(this.§>!X§,1);
         this.§>!X§.§`u§();
         if(this.§!$§ != null)
         {
            this.§!$§();
            this.§!$§ = null;
         }
         this.§>!X§.finishRendering(this.§,!@§);
         this.§>!X§.§<!0§();
      }
      
      public function set §=!7§(param1:Function) : void
      {
         this.§!$§ = param1;
      }
      
      private function §,=§() : void
      {
         var _loc3_:BitmapData = null;
         this.§"n§.x = this.§"_§.x;
         this.§"n§.y = this.§"_§.y;
         var _loc1_:int = this.§"n§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§"n§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§set §.addChild(this.§"n§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§set §.removeChild(this.§"n§);
         }
         if(this.§>!X§ && this.§>!X§.canvas)
         {
            this.§>!X§.setCanvasSize(this.§ ^§,this.§2H§,this.§"_§.width / this.§%V§.stageWidth,this.§"_§.height / this.§%V§.stageHeight);
            _loc3_ = this.§>!X§.canvas;
            if(this.§6h§.bitmapData != _loc3_)
            {
               this.§6h§.bitmapData = _loc3_;
            }
            if(this.§set §.getChildIndex(this.§"n§) > 0)
            {
               this.§set §.removeChild(this.§"n§);
               this.§set §.addChildAt(this.§"n§,0);
            }
         }
      }
      
      private function §?!>§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§%V§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§%V§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§%V§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§+#§.addChild(_loc2_);
      }
      
      public function §2z§() : void
      {
         §]G§ = this;
      }
      
      public function start() : void
      {
         this.§16§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§16§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §<!3§(param1:Boolean) : void
      {
         this.§3r§ = param1;
      }
      
      private function §;%§() : void
      {
         this.§6[§ = true;
         if(this.§6h§ == null)
         {
            this.§6h§ = new Bitmap();
            this.§+#§.addChild(this.§6h§);
         }
      }
      
      private function §^'§(param1:ErrorEvent) : void
      {
         this.§;%§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §?6§(param1:flash.events.Event) : void
      {
         if(this.§,'§)
         {
            return;
         }
         ++§!!W§;
         this.§'8§ = §!!W§;
         if(this.§>!X§)
         {
            this.§>!X§.dispose();
         }
         if(!§!F§.§^!J§ && this.§,!@§)
         {
            this.§?!>§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§2z§();
         this.§@=§();
         this.§`!-§();
         if(this.§,!@§ && this.§<! §)
         {
            this.mStage3DEnabled = false;
            this.§,!@§ = null;
            this.§;%§();
         }
         if(this.§,!@§)
         {
            this.§>!X§ = new §7o§();
         }
         else
         {
            this.§>!X§ = new §]w§();
            this.§>!X§.setCanvasSize(this.§ ^§,this.§2H§,this.§"_§.width / this.§%V§.stageWidth,this.§"_§.height / this.§%V§.stageHeight);
            this.§>!X§.clear(null,this.§69§);
         }
         this.§&!+§.§0;§ = this.§4!9§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §!!^§(param1:flash.events.Event) : void
      {
         this.§2z§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§?1§;
         if(this.§16§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§"n§)
         {
            this.§,=§();
         }
      }
      
      private function §@!#§(param1:flash.events.KeyboardEvent) : void
      {
         this.§2z§();
         this.§%V§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§!!5§;
         var _loc5_:Number = param2 / this.§`!>§;
         if(!param3)
         {
            this.§%V§.stageWidth = this.§!!5§ * _loc4_ / _loc5_;
            this.§%V§.stageHeight = this.§`!>§;
         }
         else
         {
            this.§%V§.stageWidth = this.§!!5§;
            this.§%V§.stageHeight = this.§`!>§ * _loc5_ / _loc4_;
         }
         this.§ ^§ = param1;
         this.§2H§ = param2;
         this.§%V§.dispatchEvent(new §`S§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §5!F§() : void
      {
         this.setCanvasSize(this.§!!5§,this.§`!>§);
      }
      
      private function § !V§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§16§ || !this.§3r§)
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
               this.§`T§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§`T§ = false;
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
               _loc5_ = §<n§.§2![§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §<n§.§#c§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §<n§.§"Z§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §<n§.§2![§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §<n§.§"Z§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§`T§ ? §<n§.§#c§ : §<n§.§ N§;
         }
         if((_loc2_ < this.§"_§.left || _loc2_ >= this.§"_§.right || _loc3_ < this.§"_§.top || _loc3_ >= this.§"_§.bottom) && _loc5_ == §<n§.§2![§)
         {
            return;
         }
         _loc2_ -= this.§"_§.x;
         _loc3_ -= this.§"_§.y;
         this.§&!+§.§%u§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §?K§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §,!>§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§&!E§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§,!@§ != null)
         {
            (_loc4_ = this.§,!@§.createProgram()).upload(param2,param3);
            this.§&!E§[param1] = _loc4_;
         }
      }
      
      public function §`m§(param1:String) : void
      {
         var _loc2_:Program3D = this.§ Z§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§&!E§[param1];
         }
      }
      
      public function § Z§(param1:String) : Program3D
      {
         return this.§&!E§[param1] as Program3D;
      }
      
      public function §"!O§(param1:String) : Boolean
      {
         return param1 in this.§&!E§;
      }
      
      public function get §+9§() : Boolean
      {
         return this.§16§;
      }
      
      public function get §5!H§() : §"!A§
      {
         return this.§2!E§;
      }
      
      public function get §0;§() : Boolean
      {
         return this.§4!9§;
      }
      
      public function set §0;§(param1:Boolean) : void
      {
         this.§4!9§ = param1;
         if(this.§,!@§)
         {
            this.§&!+§.§0;§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§=!T§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§=!T§ = param1;
         if(this.§,!@§)
         {
            this.§,!@§.enableErrorChecking = param1;
         }
      }
      
      public function get §;§() : int
      {
         return this.§"T§;
      }
      
      public function set §;§(param1:int) : void
      {
         this.§"T§ = param1;
         this.§1u§();
      }
      
      public function get §-D§() : Rectangle
      {
         return this.§"_§.clone();
      }
      
      public function set §-D§(param1:Rectangle) : void
      {
         this.§"_§ = param1.clone();
         this.§1u§();
      }
      
      public function get §+#§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§"n§ == null)
         {
            this.§"n§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§"n§.contextMenu = _loc1_;
            this.§,=§();
         }
         return this.§"n§;
      }
      
      public function get stage() : §null §.Stage
      {
         return this.§%V§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §!n§() : flash.display.Stage
      {
         return this.§set §;
      }
      
      public function get §5!6§() : Boolean
      {
         return !this.§6[§;
      }
   }
}
