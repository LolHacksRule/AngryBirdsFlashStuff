package §-!§
{
   import §+!§.§8U§;
   import §;!Q§.DisplayObject;
   import §;!Q§.Stage;
   import §]p§.Texture;
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
   import starling.events.§"o§;
   import starling.events.§4$§;
   import starling.events.§4m§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §-§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §;!]§:§-§;
      
      private static var §`!R§:Boolean;
      
      private static var §`F§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §4M§:§;!Q§.Stage;
      
      private var §;!S§:Class;
      
      private var §1!K§:§;!Q§.DisplayObject;
      
      private var §<!$§:§8U§;
      
      private var §!a§:Boolean;
      
      private var §3!V§:Boolean;
      
      private var §'!+§:§3!5§;
      
      private var §^!O§:§4$§;
      
      private var §]!@§:int;
      
      private var §7&§:Boolean;
      
      private var §+!'§:Boolean;
      
      private var §#!=§:Number;
      
      private var §'o§:Rectangle;
      
      private var § 2§:Boolean;
      
      private var §;!5§:flash.display.Stage;
      
      private var §^!B§:Sprite;
      
      private var §^]§:Context3D;
      
      private var §]6§:Dictionary;
      
      private var §4!_§:int;
      
      private var §[T§:Boolean;
      
      private var §!u§:Number;
      
      private var §1T§:Number;
      
      private var §78§:Number;
      
      private var §=G§:Number;
      
      private var §&!I§:Number;
      
      private var §1<§:Number;
      
      private var §;X§:Function;
      
      private var § e§:uint;
      
      private var §`!L§:String;
      
      private var §?!"§:Bitmap;
      
      private var §!<§:Boolean = false;
      
      private var § !3§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §,o§:Boolean = false;
      
      public function §-§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§!u§ = param3.width;
         this.§1T§ = param3.height;
         this.§78§ = this.§!u§;
         this.§=G§ = this.§1T§;
         this.§&!I§ = param2.stageWidth;
         this.§1<§ = param2.stageHeight;
         §'g§ = true;
         this.§#!U§();
         this.§;!S§ = param1;
         this.§'o§ = param3;
         this.mStage3D = param4;
         this.§4M§ = new §;!Q§.Stage(param3.width,param3.height,param2.color);
         this.§;!5§ = param2;
         this.§^!O§ = new §4$§(this.§4M§);
         this.§<!$§ = new §8U§();
         this.§]!@§ = 0;
         this.§7&§ = false;
         this.§+!'§ = false;
         this.§#!=§ = getTimer() / 1000;
         this.§]6§ = new Dictionary();
         for each(_loc6_ in this.§<b§)
         {
            param2.addEventListener(_loc6_,this.§9!F§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§"l§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§"l§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§0C§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§3M§,false,1,true);
         this.mStage3D.visible = false;
         this.§6!?§(true);
         this.§ e§ = param2.color;
         this.§`!L§ = param5;
      }
      
      public static function get §?7§() : Boolean
      {
         if(§-G§)
         {
            return §-G§.§[T§;
         }
         return true;
      }
      
      public static function §@a§() : Boolean
      {
         return §;!]§ && (§;!]§.§!<§ || §;!]§.§^]§ != null && §;!]§.§^]§.driverInfo != "Disposed");
      }
      
      public static function get §-G§() : §-§
      {
         return §;!]§;
      }
      
      public static function get §'L§() : §8U§
      {
         return !!§;!]§ ? §;!]§.§'L§ : null;
      }
      
      public static function get §;B§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;B§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §'g§() : Boolean
      {
         return §`!R§;
      }
      
      public static function set §'g§(param1:Boolean) : void
      {
         if(§;!]§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §`!R§ = param1;
      }
      
      public static function §;! §(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§-G§)
         {
            return Texture.§+!U§(§-G§.§^]§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§;!]§.§^]§)
         {
            §;!]§.§^]§.drawToBitmapData(param1);
         }
         else if(§;!]§.§'!+§.canvas)
         {
            _loc2_ = §;!]§.§'!+§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §^P§() : §;!Q§.DisplayObject
      {
         return this.§1!K§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§ e§ = param1;
      }
      
      public function get §0f§() : Number
      {
         return this.§!u§;
      }
      
      public function get §7!1§() : Number
      {
         return this.§1T§;
      }
      
      public function §6!4§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§`!L§);
         }
         catch(e:Error)
         {
            §<!X§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§,o§ = true;
         this.§;!5§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§"l§,false);
         this.§;!5§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§"l§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§0C§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§3M§,false);
         for each(_loc1_ in this.§<b§)
         {
            this.§;!5§.removeEventListener(_loc1_,this.§9!F§,false);
         }
         for each(_loc2_ in this.§]6§)
         {
            _loc2_.dispose();
         }
         if(this.§^]§)
         {
            this.§^]§.dispose();
         }
         if(this.§^!O§)
         {
            this.§^!O§.dispose();
         }
         if(this.§'!+§)
         {
            this.§'!+§.dispose();
         }
         if(§;!]§ == this)
         {
            §;!]§ = null;
         }
         if(this.§?!"§ && this.§?!"§.bitmapData)
         {
            this.§?!"§.bitmapData.dispose();
            this.§?!"§.bitmapData = null;
         }
      }
      
      private function §<l§() : void
      {
         this.§^]§ = this.mStage3D.context3D;
         this.§]6§ = new Dictionary();
         if(this.§^]§)
         {
            this.§^]§.enableErrorChecking = this.§+!'§;
            if(this.§^]§.driverInfo.indexOf("Software") >= 0)
            {
               this.§[T§ = true;
            }
         }
         else
         {
            this.§[T§ = true;
         }
         this.§do§();
      }
      
      private function §4!4§() : void
      {
         if(this.§4M§.numChildren > 0)
         {
            return;
         }
         if(this.§1!K§ == null)
         {
            this.§1!K§ = new this.§;!S§();
         }
         if(this.§1!K§ == null)
         {
            throw new Error("Invalid root class: " + this.§;!S§);
         }
         this.§4M§.addChild(this.§1!K§);
      }
      
      private function §do§() : void
      {
         this.§ !3§ = true;
         this.mStage3D.x = this.§'o§.x;
         this.mStage3D.y = this.§'o§.y;
      }
      
      private function render() : void
      {
         if(!§@a§())
         {
            return;
         }
         if(this.§ !3§)
         {
            if(this.§^]§)
            {
               this.§^]§.configureBackBuffer(this.§'o§.width,this.§'o§.height,this.§]!@§,false);
            }
            this.§ !3§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§#!=§;
         this.§#!=§ = _loc1_;
         this.§4M§.advanceTime(_loc2_);
         this.§<!$§.advanceTime(_loc2_);
         this.§^!O§.advanceTime(_loc2_);
         this.§'!+§.§0!]§(this.§4M§.stageWidth,this.§4M§.stageHeight);
         this.§'!+§.clear(this.§^]§,this.§ e§,1);
         this.§'!+§.§!!5§(this.§^]§,this.§4!_§);
         this.§4M§.render(this.§'!+§,1);
         this.§'!+§.§0h§();
         if(this.§;X§ != null)
         {
            this.§;X§();
            this.§;X§ = null;
         }
         this.§'!+§.finishRendering(this.§^]§);
         this.§'!+§.§+!A§();
      }
      
      public function set §"B§(param1:Function) : void
      {
         this.§;X§ = param1;
      }
      
      private function §8B§() : void
      {
         var _loc3_:BitmapData = null;
         this.§^!B§.x = this.§'o§.x;
         this.§^!B§.y = this.§'o§.y;
         var _loc1_:int = this.§^!B§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§^!B§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§;!5§.addChild(this.§^!B§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§;!5§.removeChild(this.§^!B§);
         }
         if(this.§'!+§ && this.§'!+§.canvas)
         {
            this.§'!+§.setCanvasSize(this.§78§,this.§=G§,this.§'o§.width / this.§4M§.stageWidth,this.§'o§.height / this.§4M§.stageHeight);
            _loc3_ = this.§'!+§.canvas;
            if(this.§?!"§.bitmapData != _loc3_)
            {
               this.§?!"§.bitmapData = _loc3_;
            }
            if(this.§;!5§.getChildIndex(this.§^!B§) > 0)
            {
               this.§;!5§.removeChild(this.§^!B§);
               this.§;!5§.addChildAt(this.§^!B§,0);
            }
         }
      }
      
      private function §<!X§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§4M§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§4M§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§4M§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§3>§.addChild(_loc2_);
      }
      
      public function §#!U§() : void
      {
         §;!]§ = this;
      }
      
      public function start() : void
      {
         this.§!a§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§!a§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §6!?§(param1:Boolean) : void
      {
         this.§3!V§ = param1;
      }
      
      private function §4B§() : void
      {
         this.§!<§ = true;
         if(this.§?!"§ == null)
         {
            this.§?!"§ = new Bitmap();
            this.§3>§.addChild(this.§?!"§);
         }
      }
      
      private function §3M§(param1:ErrorEvent) : void
      {
         this.§4B§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §0C§(param1:flash.events.Event) : void
      {
         if(this.§,o§)
         {
            return;
         }
         ++§`F§;
         this.§4!_§ = §`F§;
         if(this.§'!+§)
         {
            this.§'!+§.dispose();
         }
         if(!§-§.§'g§ && this.§^]§)
         {
            this.§<!X§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§#!U§();
         this.§<l§();
         this.§4!4§();
         if(this.§^]§ && this.§[T§)
         {
            this.mStage3DEnabled = false;
            this.§^]§ = null;
            this.§4B§();
         }
         if(this.§^]§)
         {
            this.§'!+§ = new §3!5§();
         }
         else
         {
            this.§'!+§ = new §%! §();
            this.§'!+§.setCanvasSize(this.§78§,this.§=G§,this.§'o§.width / this.§4M§.stageWidth,this.§'o§.height / this.§4M§.stageHeight);
            this.§'!+§.clear(null,this.§ e§);
         }
         this.§^!O§.§]!,§ = this.§7&§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §in§(param1:flash.events.Event) : void
      {
         this.§#!U§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§#!=§;
         if(this.§!a§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§^!B§)
         {
            this.§8B§();
         }
      }
      
      private function §"l§(param1:flash.events.KeyboardEvent) : void
      {
         this.§#!U§();
         this.§4M§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§!u§;
         var _loc5_:Number = param2 / this.§1T§;
         if(!param3)
         {
            this.§4M§.stageWidth = this.§!u§ * _loc4_ / _loc5_;
            this.§4M§.stageHeight = this.§1T§;
         }
         else
         {
            this.§4M§.stageWidth = this.§!u§;
            this.§4M§.stageHeight = this.§1T§ * _loc5_ / _loc4_;
         }
         this.§78§ = param1;
         this.§=G§ = param2;
         this.§4M§.dispatchEvent(new §4m§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function § 0§() : void
      {
         this.setCanvasSize(this.§!u§,this.§1T§);
      }
      
      private function §9!F§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§!a§ || !this.§3!V§)
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
               this.§ 2§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§ 2§ = false;
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
               _loc5_ = §"o§.§`Y§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §"o§.§]t§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §"o§.§&!H§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §"o§.§`Y§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §"o§.§&!H§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§ 2§ ? §"o§.§]t§ : §"o§.§^!`§;
         }
         if((_loc2_ < this.§'o§.left || _loc2_ >= this.§'o§.right || _loc3_ < this.§'o§.top || _loc3_ >= this.§'o§.bottom) && _loc5_ == §"o§.§`Y§)
         {
            return;
         }
         _loc2_ -= this.§'o§.x;
         _loc3_ -= this.§'o§.y;
         this.§^!O§.§5!Q§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §<b§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §0P§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§]6§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§^]§ != null)
         {
            (_loc4_ = this.§^]§.createProgram()).upload(param2,param3);
            this.§]6§[param1] = _loc4_;
         }
      }
      
      public function §7!J§(param1:String) : void
      {
         var _loc2_:Program3D = this.§@H§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§]6§[param1];
         }
      }
      
      public function §@H§(param1:String) : Program3D
      {
         return this.§]6§[param1] as Program3D;
      }
      
      public function §3!9§(param1:String) : Boolean
      {
         return param1 in this.§]6§;
      }
      
      public function get §8l§() : Boolean
      {
         return this.§!a§;
      }
      
      public function get §'L§() : §8U§
      {
         return this.§<!$§;
      }
      
      public function get §]!,§() : Boolean
      {
         return this.§7&§;
      }
      
      public function set §]!,§(param1:Boolean) : void
      {
         this.§7&§ = param1;
         if(this.§^]§)
         {
            this.§^!O§.§]!,§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+!'§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§+!'§ = param1;
         if(this.§^]§)
         {
            this.§^]§.enableErrorChecking = param1;
         }
      }
      
      public function get §;4§() : int
      {
         return this.§]!@§;
      }
      
      public function set §;4§(param1:int) : void
      {
         this.§]!@§ = param1;
         this.§do§();
      }
      
      public function get §+!&§() : Rectangle
      {
         return this.§'o§.clone();
      }
      
      public function set §+!&§(param1:Rectangle) : void
      {
         this.§'o§ = param1.clone();
         this.§do§();
      }
      
      public function get §3>§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§^!B§ == null)
         {
            this.§^!B§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§^!B§.contextMenu = _loc1_;
            this.§8B§();
         }
         return this.§^!B§;
      }
      
      public function get stage() : §;!Q§.Stage
      {
         return this.§4M§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §;!H§() : flash.display.Stage
      {
         return this.§;!5§;
      }
      
      public function get §1o§() : Boolean
      {
         return !this.§!<§;
      }
   }
}
