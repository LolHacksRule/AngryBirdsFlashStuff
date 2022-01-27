package §^h§
{
   import §&?§.§5?§;
   import §<!N§.DisplayObject;
   import §<!N§.Stage;
   import §@M§.Texture;
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
   import starling.events.§3X§;
   import starling.events.§5r§;
   import starling.events.§?o§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §2l§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §,`§:§2l§;
      
      private static var §?+§:Boolean;
      
      private static var §!3§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §3+§:§<!N§.Stage;
      
      private var §^!L§:Class;
      
      private var §#!-§:§<!N§.DisplayObject;
      
      private var §<`§:§5?§;
      
      private var §"3§:Boolean;
      
      private var §[i§:Boolean;
      
      private var §@J§:§?!D§;
      
      private var § @§:§3X§;
      
      private var §<G§:int;
      
      private var §9_§:Boolean;
      
      private var §+!M§:Boolean;
      
      private var §%j§:Number;
      
      private var §1e§:Rectangle;
      
      private var §?!9§:Boolean;
      
      private var §#x§:flash.display.Stage;
      
      private var §[8§:Sprite;
      
      private var §5!F§:Context3D;
      
      private var §8u§:Dictionary;
      
      private var §&l§:int;
      
      private var §;!1§:Boolean;
      
      private var §'c§:Number;
      
      private var §^!K§:Number;
      
      private var §>H§:Number;
      
      private var §5!"§:Number;
      
      private var §?1§:Number;
      
      private var §&!8§:Number;
      
      private var §[&§:Function;
      
      private var §0B§:uint;
      
      private var §3'§:String;
      
      private var §2,§:Bitmap;
      
      private var §8s§:Boolean = false;
      
      private var §-§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §#]§:Boolean = false;
      
      public function §2l§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§'c§ = param3.width;
         this.§^!K§ = param3.height;
         this.§>H§ = this.§'c§;
         this.§5!"§ = this.§^!K§;
         this.§?1§ = param2.stageWidth;
         this.§&!8§ = param2.stageHeight;
         §[l§ = true;
         this.§6!'§();
         this.§^!L§ = param1;
         this.§1e§ = param3;
         this.mStage3D = param4;
         this.§3+§ = new §<!N§.Stage(param3.width,param3.height,param2.color);
         this.§#x§ = param2;
         this.§ @§ = new §3X§(this.§3+§);
         this.§<`§ = new §5?§();
         this.§<G§ = 0;
         this.§9_§ = false;
         this.§+!M§ = false;
         this.§%j§ = getTimer() / 1000;
         this.§8u§ = new Dictionary();
         for each(_loc6_ in this.§'k§)
         {
            param2.addEventListener(_loc6_,this.§#!'§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ true§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ true§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-z§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§2'§,false,1,true);
         this.mStage3D.visible = false;
         this.§@X§(true);
         this.§0B§ = param2.color;
         this.§3'§ = param5;
      }
      
      public static function get §,X§() : Boolean
      {
         if(§7K§)
         {
            return §7K§.§;!1§;
         }
         return true;
      }
      
      public static function §3!?§() : Boolean
      {
         return §,`§ && (§,`§.§8s§ || §,`§.§5!F§ != null && §,`§.§5!F§.driverInfo != "Disposed");
      }
      
      public static function get §7K§() : §2l§
      {
         return §,`§;
      }
      
      public static function get §9!'§() : §5?§
      {
         return !!§,`§ ? §,`§.§9!'§ : null;
      }
      
      public static function get §2!N§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §2!N§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §[l§() : Boolean
      {
         return §?+§;
      }
      
      public static function set §[l§(param1:Boolean) : void
      {
         if(§,`§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §?+§ = param1;
      }
      
      public static function §5U§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§7K§)
         {
            return Texture.§6@§(§7K§.§5!F§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§,`§.§5!F§)
         {
            §,`§.§5!F§.drawToBitmapData(param1);
         }
         else if(§,`§.§@J§.canvas)
         {
            _loc2_ = §,`§.§@J§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get § !@§() : §<!N§.DisplayObject
      {
         return this.§#!-§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§0B§ = param1;
      }
      
      public function get §7a§() : Number
      {
         return this.§'c§;
      }
      
      public function get §3C§() : Number
      {
         return this.§^!K§;
      }
      
      public function §+G§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§3'§);
         }
         catch(e:Error)
         {
            §'!%§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§#]§ = true;
         this.§#x§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ true§,false);
         this.§#x§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ true§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-z§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§2'§,false);
         for each(_loc1_ in this.§'k§)
         {
            this.§#x§.removeEventListener(_loc1_,this.§#!'§,false);
         }
         for each(_loc2_ in this.§8u§)
         {
            _loc2_.dispose();
         }
         if(this.§5!F§)
         {
            this.§5!F§.dispose();
         }
         if(this.§ @§)
         {
            this.§ @§.dispose();
         }
         if(this.§@J§)
         {
            this.§@J§.dispose();
         }
         if(§,`§ == this)
         {
            §,`§ = null;
         }
         if(this.§2,§ && this.§2,§.bitmapData)
         {
            this.§2,§.bitmapData.dispose();
            this.§2,§.bitmapData = null;
         }
      }
      
      private function §-!2§() : void
      {
         this.§5!F§ = this.mStage3D.context3D;
         this.§8u§ = new Dictionary();
         if(this.§5!F§)
         {
            this.§5!F§.enableErrorChecking = this.§+!M§;
            if(this.§5!F§.driverInfo.indexOf("Software") >= 0)
            {
               this.§;!1§ = true;
            }
         }
         else
         {
            this.§;!1§ = true;
         }
         this.§#+§();
      }
      
      private function §<#§() : void
      {
         if(this.§3+§.numChildren > 0)
         {
            return;
         }
         if(this.§#!-§ == null)
         {
            this.§#!-§ = new this.§^!L§();
         }
         if(this.§#!-§ == null)
         {
            throw new Error("Invalid root class: " + this.§^!L§);
         }
         this.§3+§.addChild(this.§#!-§);
      }
      
      private function §#+§() : void
      {
         this.§-§ = true;
         this.mStage3D.x = this.§1e§.x;
         this.mStage3D.y = this.§1e§.y;
      }
      
      private function render() : void
      {
         if(!§3!?§())
         {
            return;
         }
         if(this.§-§)
         {
            if(this.§5!F§)
            {
               this.§5!F§.configureBackBuffer(this.§1e§.width,this.§1e§.height,this.§<G§,false);
            }
            this.§-§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§%j§;
         this.§%j§ = _loc1_;
         this.§3+§.advanceTime(_loc2_);
         this.§<`§.advanceTime(_loc2_);
         this.§ @§.advanceTime(_loc2_);
         this.§@J§.§^R§(this.§3+§.stageWidth,this.§3+§.stageHeight);
         this.§@J§.clear(this.§5!F§,this.§0B§,1);
         this.§@J§.§'s§(this.§5!F§,this.§&l§);
         this.§3+§.render(this.§@J§,1);
         this.§@J§.§3!P§();
         if(this.§[&§ != null)
         {
            this.§[&§();
            this.§[&§ = null;
         }
         this.§@J§.finishRendering(this.§5!F§);
         this.§@J§.§9F§();
      }
      
      public function set §51§(param1:Function) : void
      {
         this.§[&§ = param1;
      }
      
      private function §7k§() : void
      {
         var _loc3_:BitmapData = null;
         this.§[8§.x = this.§1e§.x;
         this.§[8§.y = this.§1e§.y;
         var _loc1_:int = this.§[8§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§[8§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§#x§.addChild(this.§[8§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§#x§.removeChild(this.§[8§);
         }
         if(this.§@J§ && this.§@J§.canvas)
         {
            this.§@J§.setCanvasSize(this.§>H§,this.§5!"§,this.§1e§.width / this.§3+§.stageWidth,this.§1e§.height / this.§3+§.stageHeight);
            _loc3_ = this.§@J§.canvas;
            if(this.§2,§.bitmapData != _loc3_)
            {
               this.§2,§.bitmapData = _loc3_;
            }
            if(this.§#x§.getChildIndex(this.§[8§) > 0)
            {
               this.§#x§.removeChild(this.§[8§);
               this.§#x§.addChildAt(this.§[8§,0);
            }
         }
      }
      
      private function §'!%§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§3+§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§3+§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§3+§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§9Y§.addChild(_loc2_);
      }
      
      public function §6!'§() : void
      {
         §,`§ = this;
      }
      
      public function start() : void
      {
         this.§"3§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§"3§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §@X§(param1:Boolean) : void
      {
         this.§[i§ = param1;
      }
      
      private function §=!P§() : void
      {
         this.§8s§ = true;
         if(this.§2,§ == null)
         {
            this.§2,§ = new Bitmap();
            this.§9Y§.addChild(this.§2,§);
         }
      }
      
      private function §2'§(param1:ErrorEvent) : void
      {
         this.§=!P§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §-z§(param1:flash.events.Event) : void
      {
         if(this.§#]§)
         {
            return;
         }
         ++§!3§;
         this.§&l§ = §!3§;
         if(this.§@J§)
         {
            this.§@J§.dispose();
         }
         if(!§2l§.§[l§ && this.§5!F§)
         {
            this.§'!%§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§6!'§();
         this.§-!2§();
         this.§<#§();
         if(this.§5!F§ && this.§;!1§)
         {
            this.mStage3DEnabled = false;
            this.§5!F§ = null;
            this.§=!P§();
         }
         if(this.§5!F§)
         {
            this.§@J§ = new §?!D§();
         }
         else
         {
            this.§@J§ = new §"!>§();
            this.§@J§.setCanvasSize(this.§>H§,this.§5!"§,this.§1e§.width / this.§3+§.stageWidth,this.§1e§.height / this.§3+§.stageHeight);
            this.§@J§.clear(null,this.§0B§);
         }
         this.§ @§.§>C§ = this.§9_§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§6!'§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§%j§;
         if(this.§"3§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§[8§)
         {
            this.§7k§();
         }
      }
      
      private function § true§(param1:flash.events.KeyboardEvent) : void
      {
         this.§6!'§();
         this.§3+§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§'c§;
         var _loc5_:Number = param2 / this.§^!K§;
         if(!param3)
         {
            this.§3+§.stageWidth = this.§'c§ * _loc4_ / _loc5_;
            this.§3+§.stageHeight = this.§^!K§;
         }
         else
         {
            this.§3+§.stageWidth = this.§'c§;
            this.§3+§.stageHeight = this.§^!K§ * _loc5_ / _loc4_;
         }
         this.§>H§ = param1;
         this.§5!"§ = param2;
         this.§3+§.dispatchEvent(new §?o§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function § Z§() : void
      {
         this.setCanvasSize(this.§'c§,this.§^!K§);
      }
      
      private function §#!'§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§"3§ || !this.§[i§)
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
               this.§?!9§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§?!9§ = false;
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
               _loc5_ = §5r§.§0!O§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §5r§.§;5§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §5r§.§@!?§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §5r§.§0!O§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §5r§.§@!?§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§?!9§ ? §5r§.§;5§ : §5r§.§return§;
         }
         if((_loc2_ < this.§1e§.left || _loc2_ >= this.§1e§.right || _loc3_ < this.§1e§.top || _loc3_ >= this.§1e§.bottom) && _loc5_ == §5r§.§0!O§)
         {
            return;
         }
         _loc2_ -= this.§1e§.x;
         _loc3_ -= this.§1e§.y;
         this.§ @§.§<!2§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §'k§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §5=§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§8u§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§5!F§ != null)
         {
            (_loc4_ = this.§5!F§.createProgram()).upload(param2,param3);
            this.§8u§[param1] = _loc4_;
         }
      }
      
      public function §,,§(param1:String) : void
      {
         var _loc2_:Program3D = this.§"!'§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§8u§[param1];
         }
      }
      
      public function §"!'§(param1:String) : Program3D
      {
         return this.§8u§[param1] as Program3D;
      }
      
      public function §<$§(param1:String) : Boolean
      {
         return param1 in this.§8u§;
      }
      
      public function get §<M§() : Boolean
      {
         return this.§"3§;
      }
      
      public function get §9!'§() : §5?§
      {
         return this.§<`§;
      }
      
      public function get §>C§() : Boolean
      {
         return this.§9_§;
      }
      
      public function set §>C§(param1:Boolean) : void
      {
         this.§9_§ = param1;
         if(this.§5!F§)
         {
            this.§ @§.§>C§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+!M§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§+!M§ = param1;
         if(this.§5!F§)
         {
            this.§5!F§.enableErrorChecking = param1;
         }
      }
      
      public function get §?7§() : int
      {
         return this.§<G§;
      }
      
      public function set §?7§(param1:int) : void
      {
         this.§<G§ = param1;
         this.§#+§();
      }
      
      public function get §3U§() : Rectangle
      {
         return this.§1e§.clone();
      }
      
      public function set §3U§(param1:Rectangle) : void
      {
         this.§1e§ = param1.clone();
         this.§#+§();
      }
      
      public function get §9Y§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§[8§ == null)
         {
            this.§[8§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§[8§.contextMenu = _loc1_;
            this.§7k§();
         }
         return this.§[8§;
      }
      
      public function get stage() : §<!N§.Stage
      {
         return this.§3+§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §"!B§() : flash.display.Stage
      {
         return this.§#x§;
      }
      
      public function get §<k§() : Boolean
      {
         return !this.§8s§;
      }
   }
}
