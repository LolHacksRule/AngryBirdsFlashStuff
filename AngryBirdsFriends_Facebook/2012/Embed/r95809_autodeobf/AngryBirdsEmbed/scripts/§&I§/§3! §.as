package §&I§
{
   import §&!7§.Texture;
   import §,!5§.§5§;
   import §->§.DisplayObject;
   import §->§.Stage;
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
   import starling.events.§ !&§;
   import starling.events.§!E§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^;§;
   
   public class §3! § extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §#%§:§3! §;
      
      private static var §%!9§:Boolean;
      
      private static var §8m§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §5R§:§->§.Stage;
      
      private var §<-§:Class;
      
      private var §`<§:§->§.DisplayObject;
      
      private var §0W§:§5§;
      
      private var §<t§:Boolean;
      
      private var § J§:Boolean;
      
      private var §`K§:§?!§;
      
      private var §<!#§:§ !&§;
      
      private var §2!A§:int;
      
      private var §+w§:Boolean;
      
      private var § Z§:Boolean;
      
      private var §+v§:Number;
      
      private var §=#§:Rectangle;
      
      private var §`e§:Boolean;
      
      private var §0!8§:flash.display.Stage;
      
      private var §]Z§:Sprite;
      
      private var §8V§:Context3D;
      
      private var §^T§:Dictionary;
      
      private var §7j§:int;
      
      private var §"=§:Boolean;
      
      private var § each§:Number;
      
      private var §@9§:Number;
      
      private var §<;§:Number;
      
      private var §'q§:Number;
      
      private var §,!4§:Number;
      
      private var §?W§:Number;
      
      private var §,^§:Function;
      
      private var §[N§:uint;
      
      private var §"!!§:String;
      
      private var §[c§:Bitmap;
      
      private var §^M§:Boolean = false;
      
      private var §]m§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §0!4§:Boolean = false;
      
      public function §3! §(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§ each§ = param3.width;
         this.§@9§ = param3.height;
         this.§<;§ = this.§ each§;
         this.§'q§ = this.§@9§;
         this.§,!4§ = param2.stageWidth;
         this.§?W§ = param2.stageHeight;
         §;!=§ = true;
         this.§1]§();
         this.§<-§ = param1;
         this.§=#§ = param3;
         this.mStage3D = param4;
         this.§5R§ = new §->§.Stage(param3.width,param3.height,param2.color);
         this.§0!8§ = param2;
         this.§<!#§ = new § !&§(this.§5R§);
         this.§0W§ = new §5§();
         this.§2!A§ = 0;
         this.§+w§ = false;
         this.§ Z§ = false;
         this.§+v§ = getTimer() / 1000;
         this.§^T§ = new Dictionary();
         for each(_loc6_ in this.§6x§)
         {
            param2.addEventListener(_loc6_,this.§;Q§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§<N§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§2k§,false,1,true);
         this.mStage3D.visible = false;
         this.§]h§(true);
         this.§[N§ = param2.color;
         this.§"!!§ = param5;
      }
      
      public static function get §0!%§() : Boolean
      {
         if(§"n§)
         {
            return §"n§.§"=§;
         }
         return true;
      }
      
      public static function §=!&§() : Boolean
      {
         return §#%§ && (§#%§.§^M§ || §#%§.§8V§ != null && §#%§.§8V§.driverInfo != "Disposed");
      }
      
      public static function get §"n§() : §3! §
      {
         return §#%§;
      }
      
      public static function get §`S§() : §5§
      {
         return !!§#%§ ? §#%§.§`S§ : null;
      }
      
      public static function get §=N§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §=N§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §;!=§() : Boolean
      {
         return §%!9§;
      }
      
      public static function set §;!=§(param1:Boolean) : void
      {
         if(§#%§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §%!9§ = param1;
      }
      
      public static function §[!C§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§"n§)
         {
            return Texture.§4&§(§"n§.§8V§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§#%§.§8V§)
         {
            §#%§.§8V§.drawToBitmapData(param1);
         }
         else if(§#%§.§`K§.canvas)
         {
            _loc2_ = §#%§.§`K§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §'w§() : §->§.DisplayObject
      {
         return this.§`<§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§[N§ = param1;
      }
      
      public function get §6!2§() : Number
      {
         return this.§ each§;
      }
      
      public function get §?E§() : Number
      {
         return this.§@9§;
      }
      
      public function §&!@§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§"!!§);
         }
         catch(e:Error)
         {
            §1Z§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§0!4§ = true;
         this.§0!8§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.§0!8§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§<N§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§2k§,false);
         for each(_loc1_ in this.§6x§)
         {
            this.§0!8§.removeEventListener(_loc1_,this.§;Q§,false);
         }
         for each(_loc2_ in this.§^T§)
         {
            _loc2_.dispose();
         }
         if(this.§8V§)
         {
            this.§8V§.dispose();
         }
         if(this.§<!#§)
         {
            this.§<!#§.dispose();
         }
         if(this.§`K§)
         {
            this.§`K§.dispose();
         }
         if(§#%§ == this)
         {
            §#%§ = null;
         }
         if(this.§[c§ && this.§[c§.bitmapData)
         {
            this.§[c§.bitmapData.dispose();
            this.§[c§.bitmapData = null;
         }
      }
      
      private function §<z§() : void
      {
         this.§8V§ = this.mStage3D.context3D;
         this.§^T§ = new Dictionary();
         if(this.§8V§)
         {
            this.§8V§.enableErrorChecking = this.§ Z§;
            if(this.§8V§.driverInfo.indexOf("Software") >= 0)
            {
               this.§"=§ = true;
            }
         }
         else
         {
            this.§"=§ = true;
         }
         this.§[?§();
      }
      
      private function §+D§() : void
      {
         if(this.§5R§.numChildren > 0)
         {
            return;
         }
         if(this.§`<§ == null)
         {
            this.§`<§ = new this.§<-§();
         }
         if(this.§`<§ == null)
         {
            throw new Error("Invalid root class: " + this.§<-§);
         }
         this.§5R§.addChild(this.§`<§);
      }
      
      private function §[?§() : void
      {
         this.§]m§ = true;
         this.mStage3D.x = this.§=#§.x;
         this.mStage3D.y = this.§=#§.y;
      }
      
      private function render() : void
      {
         if(!§=!&§())
         {
            return;
         }
         if(this.§]m§)
         {
            if(this.§8V§)
            {
               this.§8V§.configureBackBuffer(this.§=#§.width,this.§=#§.height,this.§2!A§,false);
            }
            this.§]m§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§+v§;
         this.§+v§ = _loc1_;
         this.§5R§.advanceTime(_loc2_);
         this.§0W§.advanceTime(_loc2_);
         this.§<!#§.advanceTime(_loc2_);
         this.§`K§.§=3§(this.§5R§.stageWidth,this.§5R§.stageHeight);
         this.§`K§.clear(this.§8V§,this.§[N§,1);
         this.§`K§.§`!!§(this.§8V§,this.§7j§);
         this.§5R§.render(this.§`K§,1);
         this.§`K§.§3!&§();
         if(this.§,^§ != null)
         {
            this.§,^§();
            this.§,^§ = null;
         }
         this.§`K§.finishRendering(this.§8V§);
         this.§`K§.§<A§();
      }
      
      public function set §[j§(param1:Function) : void
      {
         this.§,^§ = param1;
      }
      
      private function §>q§() : void
      {
         var _loc3_:BitmapData = null;
         this.§]Z§.x = this.§=#§.x;
         this.§]Z§.y = this.§=#§.y;
         var _loc1_:int = this.§]Z§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§]Z§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§0!8§.addChild(this.§]Z§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§0!8§.removeChild(this.§]Z§);
         }
         if(this.§`K§ && this.§`K§.canvas)
         {
            this.§`K§.setCanvasSize(this.§<;§,this.§'q§,this.§=#§.width / this.§5R§.stageWidth,this.§=#§.height / this.§5R§.stageHeight);
            _loc3_ = this.§`K§.canvas;
            if(this.§[c§.bitmapData != _loc3_)
            {
               this.§[c§.bitmapData = _loc3_;
            }
            if(this.§0!8§.getChildIndex(this.§]Z§) > 0)
            {
               this.§0!8§.removeChild(this.§]Z§);
               this.§0!8§.addChildAt(this.§]Z§,0);
            }
         }
      }
      
      private function §1Z§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§5R§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§5R§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§5R§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§<O§.addChild(_loc2_);
      }
      
      public function §1]§() : void
      {
         §#%§ = this;
      }
      
      public function start() : void
      {
         this.§<t§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§<t§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §]h§(param1:Boolean) : void
      {
         this.§ J§ = param1;
      }
      
      private function §6c§() : void
      {
         this.§^M§ = true;
         if(this.§[c§ == null)
         {
            this.§[c§ = new Bitmap();
            this.§<O§.addChild(this.§[c§);
         }
      }
      
      private function §2k§(param1:ErrorEvent) : void
      {
         this.§6c§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §<N§(param1:flash.events.Event) : void
      {
         if(this.§0!4§)
         {
            return;
         }
         ++§8m§;
         this.§7j§ = §8m§;
         if(this.§`K§)
         {
            this.§`K§.dispose();
         }
         if(!§3! §.§;!=§ && this.§8V§)
         {
            this.§1Z§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§1]§();
         this.§<z§();
         this.§+D§();
         if(this.§8V§ && this.§"=§)
         {
            this.mStage3DEnabled = false;
            this.§8V§ = null;
            this.§6c§();
         }
         if(this.§8V§)
         {
            this.§`K§ = new §?!§();
         }
         else
         {
            this.§`K§ = new §5!6§();
            this.§`K§.setCanvasSize(this.§<;§,this.§'q§,this.§=#§.width / this.§5R§.stageWidth,this.§=#§.height / this.§5R§.stageHeight);
            this.§`K§.clear(null,this.§[N§);
         }
         this.§<!#§.§-!'§ = this.§+w§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§1]§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§+v§;
         if(this.§<t§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§]Z§)
         {
            this.§>q§();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.§1]§();
         this.§5R§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§ each§;
         var _loc5_:Number = param2 / this.§@9§;
         if(!param3)
         {
            this.§5R§.stageWidth = this.§ each§ * _loc4_ / _loc5_;
            this.§5R§.stageHeight = this.§@9§;
         }
         else
         {
            this.§5R§.stageWidth = this.§ each§;
            this.§5R§.stageHeight = this.§@9§ * _loc5_ / _loc4_;
         }
         this.§<;§ = param1;
         this.§'q§ = param2;
         this.§5R§.dispatchEvent(new §^;§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §3!2§() : void
      {
         this.setCanvasSize(this.§ each§,this.§@9§);
      }
      
      private function §;Q§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§<t§ || !this.§ J§)
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
               this.§`e§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§`e§ = false;
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
               _loc5_ = §!E§.§7`§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §!E§.§6k§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §!E§.§2`§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §!E§.§7`§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §!E§.§2`§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§`e§ ? §!E§.§6k§ : §!E§.§3!D§;
         }
         if((_loc2_ < this.§=#§.left || _loc2_ >= this.§=#§.right || _loc3_ < this.§=#§.top || _loc3_ >= this.§=#§.bottom) && _loc5_ == §!E§.§7`§)
         {
            return;
         }
         _loc2_ -= this.§=#§.x;
         _loc3_ -= this.§=#§.y;
         this.§<!#§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §6x§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §;m§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§^T§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§8V§ != null)
         {
            (_loc4_ = this.§8V§.createProgram()).upload(param2,param3);
            this.§^T§[param1] = _loc4_;
         }
      }
      
      public function § a§(param1:String) : void
      {
         var _loc2_:Program3D = this.§0d§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§^T§[param1];
         }
      }
      
      public function §0d§(param1:String) : Program3D
      {
         return this.§^T§[param1] as Program3D;
      }
      
      public function §"O§(param1:String) : Boolean
      {
         return param1 in this.§^T§;
      }
      
      public function get §7B§() : Boolean
      {
         return this.§<t§;
      }
      
      public function get §`S§() : §5§
      {
         return this.§0W§;
      }
      
      public function get §-!'§() : Boolean
      {
         return this.§+w§;
      }
      
      public function set §-!'§(param1:Boolean) : void
      {
         this.§+w§ = param1;
         if(this.§8V§)
         {
            this.§<!#§.§-!'§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§ Z§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§ Z§ = param1;
         if(this.§8V§)
         {
            this.§8V§.enableErrorChecking = param1;
         }
      }
      
      public function get §3!8§() : int
      {
         return this.§2!A§;
      }
      
      public function set §3!8§(param1:int) : void
      {
         this.§2!A§ = param1;
         this.§[?§();
      }
      
      public function get §5P§() : Rectangle
      {
         return this.§=#§.clone();
      }
      
      public function set §5P§(param1:Rectangle) : void
      {
         this.§=#§ = param1.clone();
         this.§[?§();
      }
      
      public function get §<O§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§]Z§ == null)
         {
            this.§]Z§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§]Z§.contextMenu = _loc1_;
            this.§>q§();
         }
         return this.§]Z§;
      }
      
      public function get stage() : §->§.Stage
      {
         return this.§5R§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §^!B§() : flash.display.Stage
      {
         return this.§0!8§;
      }
      
      public function get §];§() : Boolean
      {
         return !this.§^M§;
      }
   }
}
