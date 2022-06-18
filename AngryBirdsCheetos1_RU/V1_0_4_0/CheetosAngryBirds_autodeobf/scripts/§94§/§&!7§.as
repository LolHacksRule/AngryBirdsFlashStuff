package §94§
{
   import §+![§.Texture;
   import §1v§.§>L§;
   import §3§.DisplayObject;
   import §3§.Stage;
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
   import starling.events.§1!A§;
   import starling.events.§?S§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§while§;
   
   public class §&!7§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §?!3§:§&!7§;
      
      private static var §'O§:Boolean;
      
      private static var §2#§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §^4§:§3§.Stage;
      
      private var §0!,§:Class;
      
      private var §99§:§3§.DisplayObject;
      
      private var §?F§:§>L§;
      
      private var §-@§:Boolean;
      
      private var §]S§:Boolean;
      
      private var §7>§:§#!a§;
      
      private var §,!7§:§1!A§;
      
      private var §#-§:int;
      
      private var §9!>§:Boolean;
      
      private var §7!O§:Boolean;
      
      private var §;!§:Number;
      
      private var §=!`§:Rectangle;
      
      private var §3!,§:Boolean;
      
      private var §7e§:flash.display.Stage;
      
      private var §[s§:Sprite;
      
      private var §^a§:Context3D;
      
      private var §;O§:Dictionary;
      
      private var §%!6§:int;
      
      private var §!!M§:Boolean;
      
      private var §5!F§:Number;
      
      private var §?!B§:Number;
      
      private var §;A§:Number;
      
      private var §@!&§:Number;
      
      private var §6?§:Number;
      
      private var §3n§:Number;
      
      private var §'s§:Function;
      
      private var §9y§:uint;
      
      private var §2f§:String;
      
      private var §[@§:Bitmap;
      
      private var §<]§:Boolean = false;
      
      private var §2J§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §>%§:Boolean = false;
      
      public function §&!7§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§5!F§ = param3.width;
         this.§?!B§ = param3.height;
         this.§;A§ = this.§5!F§;
         this.§@!&§ = this.§?!B§;
         this.§6?§ = param2.stageWidth;
         this.§3n§ = param2.stageHeight;
         §!!^§ = true;
         this.§%V§();
         this.§0!,§ = param1;
         this.§=!`§ = param3;
         this.mStage3D = param4;
         this.§^4§ = new §3§.Stage(param3.width,param3.height,param2.color);
         this.§7e§ = param2;
         this.§,!7§ = new §1!A§(this.§^4§);
         this.§?F§ = new §>L§();
         this.§#-§ = 0;
         this.§9!>§ = false;
         this.§7!O§ = false;
         this.§;!§ = getTimer() / 1000;
         this.§;O§ = new Dictionary();
         for each(_loc6_ in this.§<0§)
         {
            param2.addEventListener(_loc6_,this.§^!R§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§#!,§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§#!,§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§2![§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§-$§,false,1,true);
         this.mStage3D.visible = false;
         this.§`!E§(true);
         this.§9y§ = param2.color;
         this.§2f§ = param5;
      }
      
      public static function get §+X§() : Boolean
      {
         if(§>!M§)
         {
            return §>!M§.§!!M§;
         }
         return true;
      }
      
      public static function §4!R§() : Boolean
      {
         return §?!3§ && (§?!3§.§<]§ || §?!3§.§^a§ != null && §?!3§.§^a§.driverInfo != "Disposed");
      }
      
      public static function get §>!M§() : §&!7§
      {
         return §?!3§;
      }
      
      public static function get § h§() : §>L§
      {
         return !!§?!3§ ? §?!3§.§ h§ : null;
      }
      
      public static function get §0!B§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §0!B§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §!!^§() : Boolean
      {
         return §'O§;
      }
      
      public static function set §!!^§(param1:Boolean) : void
      {
         if(§?!3§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §'O§ = param1;
      }
      
      public static function §,v§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§>!M§)
         {
            return Texture.§!t§(§>!M§.§^a§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§?!3§.§^a§)
         {
            §?!3§.§^a§.drawToBitmapData(param1);
         }
         else if(§?!3§.§7>§.canvas)
         {
            _loc2_ = §?!3§.§7>§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §0!4§() : §3§.DisplayObject
      {
         return this.§99§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§9y§ = param1;
      }
      
      public function get §0M§() : Number
      {
         return this.§5!F§;
      }
      
      public function get §[!3§() : Number
      {
         return this.§?!B§;
      }
      
      public function §2%§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§2f§);
         }
         catch(e:Error)
         {
            §9A§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§>%§ = true;
         this.§7e§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§#!,§,false);
         this.§7e§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§#!,§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§2![§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§-$§,false);
         for each(_loc1_ in this.§<0§)
         {
            this.§7e§.removeEventListener(_loc1_,this.§^!R§,false);
         }
         for each(_loc2_ in this.§;O§)
         {
            _loc2_.dispose();
         }
         if(this.§^a§)
         {
            this.§^a§.dispose();
         }
         if(this.§,!7§)
         {
            this.§,!7§.dispose();
         }
         if(this.§7>§)
         {
            this.§7>§.dispose();
         }
         if(§?!3§ == this)
         {
            §?!3§ = null;
         }
         if(this.§[@§ && this.§[@§.bitmapData)
         {
            this.§[@§.bitmapData.dispose();
            this.§[@§.bitmapData = null;
         }
      }
      
      private function §]! §() : void
      {
         this.§^a§ = this.mStage3D.context3D;
         this.§;O§ = new Dictionary();
         if(this.§^a§)
         {
            this.§^a§.enableErrorChecking = this.§7!O§;
            if(this.§^a§.driverInfo.indexOf("Software") >= 0)
            {
               this.§!!M§ = true;
            }
         }
         else
         {
            this.§!!M§ = true;
         }
         this.§#T§();
      }
      
      private function §4N§() : void
      {
         if(this.§^4§.numChildren > 0)
         {
            return;
         }
         if(this.§99§ == null)
         {
            this.§99§ = new this.§0!,§();
         }
         if(this.§99§ == null)
         {
            throw new Error("Invalid root class: " + this.§0!,§);
         }
         this.§^4§.addChild(this.§99§);
      }
      
      private function §#T§() : void
      {
         this.§2J§ = true;
         this.mStage3D.x = this.§=!`§.x;
         this.mStage3D.y = this.§=!`§.y;
      }
      
      private function render() : void
      {
         if(!§4!R§())
         {
            return;
         }
         if(this.§2J§)
         {
            if(this.§^a§)
            {
               this.§^a§.configureBackBuffer(this.§=!`§.width,this.§=!`§.height,this.§#-§,false);
            }
            this.§2J§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§;!§;
         this.§;!§ = _loc1_;
         this.§^4§.advanceTime(_loc2_);
         this.§?F§.advanceTime(_loc2_);
         this.§,!7§.advanceTime(_loc2_);
         this.§7>§.§@V§(this.§^4§.stageWidth,this.§^4§.stageHeight);
         this.§7>§.clear(this.§^a§,this.§9y§,1);
         this.§7>§.§&s§(this.§^a§,this.§%!6§);
         this.§^4§.render(this.§7>§,1);
         this.§7>§.§2!2§();
         if(this.§'s§ != null)
         {
            this.§'s§();
            this.§'s§ = null;
         }
         this.§7>§.finishRendering(this.§^a§);
         this.§7>§.§]!a§();
      }
      
      public function set §8!0§(param1:Function) : void
      {
         this.§'s§ = param1;
      }
      
      private function §!p§() : void
      {
         var _loc3_:BitmapData = null;
         this.§[s§.x = this.§=!`§.x;
         this.§[s§.y = this.§=!`§.y;
         var _loc1_:int = this.§[s§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§[s§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§7e§.addChild(this.§[s§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§7e§.removeChild(this.§[s§);
         }
         if(this.§7>§ && this.§7>§.canvas)
         {
            this.§7>§.setCanvasSize(this.§;A§,this.§@!&§,this.§=!`§.width / this.§^4§.stageWidth,this.§=!`§.height / this.§^4§.stageHeight);
            _loc3_ = this.§7>§.canvas;
            if(this.§[@§.bitmapData != _loc3_)
            {
               this.§[@§.bitmapData = _loc3_;
            }
            if(this.§7e§.getChildIndex(this.§[s§) > 0)
            {
               this.§7e§.removeChild(this.§[s§);
               this.§7e§.addChildAt(this.§[s§,0);
            }
         }
      }
      
      private function §9A§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§^4§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§^4§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§^4§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§ p§.addChild(_loc2_);
      }
      
      public function §%V§() : void
      {
         §?!3§ = this;
      }
      
      public function start() : void
      {
         this.§-@§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§-@§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §`!E§(param1:Boolean) : void
      {
         this.§]S§ = param1;
      }
      
      private function §6Z§() : void
      {
         this.§<]§ = true;
         if(this.§[@§ == null)
         {
            this.§[@§ = new Bitmap();
            this.§ p§.addChild(this.§[@§);
         }
      }
      
      private function §-$§(param1:ErrorEvent) : void
      {
         this.§6Z§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §2![§(param1:flash.events.Event) : void
      {
         if(this.§>%§)
         {
            return;
         }
         ++§2#§;
         this.§%!6§ = §2#§;
         if(this.§7>§)
         {
            this.§7>§.dispose();
         }
         if(!§&!7§.§!!^§ && this.§^a§)
         {
            this.§9A§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§%V§();
         this.§]! §();
         this.§4N§();
         if(this.§^a§ && this.§!!M§)
         {
            this.mStage3DEnabled = false;
            this.§^a§ = null;
            this.§6Z§();
         }
         if(this.§^a§)
         {
            this.§7>§ = new §#!a§();
         }
         else
         {
            this.§7>§ = new §0o§();
            this.§7>§.setCanvasSize(this.§;A§,this.§@!&§,this.§=!`§.width / this.§^4§.stageWidth,this.§=!`§.height / this.§^4§.stageHeight);
            this.§7>§.clear(null,this.§9y§);
         }
         this.§,!7§.§;&§ = this.§9!>§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §[!Y§(param1:flash.events.Event) : void
      {
         this.§%V§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§;!§;
         if(this.§-@§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§[s§)
         {
            this.§!p§();
         }
      }
      
      private function §#!,§(param1:flash.events.KeyboardEvent) : void
      {
         this.§%V§();
         this.§^4§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§5!F§;
         var _loc5_:Number = param2 / this.§?!B§;
         if(!param3)
         {
            this.§^4§.stageWidth = this.§5!F§ * _loc4_ / _loc5_;
            this.§^4§.stageHeight = this.§?!B§;
         }
         else
         {
            this.§^4§.stageWidth = this.§5!F§;
            this.§^4§.stageHeight = this.§?!B§ * _loc5_ / _loc4_;
         }
         this.§;A§ = param1;
         this.§@!&§ = param2;
         this.§^4§.dispatchEvent(new §while§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §?v§() : void
      {
         this.setCanvasSize(this.§5!F§,this.§?!B§);
      }
      
      private function §^!R§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§-@§ || !this.§]S§)
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
               this.§3!,§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§3!,§ = false;
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
               _loc5_ = §?S§.§'t§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §?S§.§?W§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §?S§.§,i§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §?S§.§'t§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §?S§.§,i§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§3!,§ ? §?S§.§?W§ : §?S§.§+!K§;
         }
         if((_loc2_ < this.§=!`§.left || _loc2_ >= this.§=!`§.right || _loc3_ < this.§=!`§.top || _loc3_ >= this.§=!`§.bottom) && _loc5_ == §?S§.§'t§)
         {
            return;
         }
         _loc2_ -= this.§=!`§.x;
         _loc3_ -= this.§=!`§.y;
         this.§,!7§.§3!4§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §<0§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §7!X§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§;O§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§^a§ != null)
         {
            (_loc4_ = this.§^a§.createProgram()).upload(param2,param3);
            this.§;O§[param1] = _loc4_;
         }
      }
      
      public function §-a§(param1:String) : void
      {
         var _loc2_:Program3D = this.§@2§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§;O§[param1];
         }
      }
      
      public function §@2§(param1:String) : Program3D
      {
         return this.§;O§[param1] as Program3D;
      }
      
      public function § @§(param1:String) : Boolean
      {
         return param1 in this.§;O§;
      }
      
      public function get §?!U§() : Boolean
      {
         return this.§-@§;
      }
      
      public function get § h§() : §>L§
      {
         return this.§?F§;
      }
      
      public function get §;&§() : Boolean
      {
         return this.§9!>§;
      }
      
      public function set §;&§(param1:Boolean) : void
      {
         this.§9!>§ = param1;
         if(this.§^a§)
         {
            this.§,!7§.§;&§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§7!O§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§7!O§ = param1;
         if(this.§^a§)
         {
            this.§^a§.enableErrorChecking = param1;
         }
      }
      
      public function get §<!b§() : int
      {
         return this.§#-§;
      }
      
      public function set §<!b§(param1:int) : void
      {
         this.§#-§ = param1;
         this.§#T§();
      }
      
      public function get §!O§() : Rectangle
      {
         return this.§=!`§.clone();
      }
      
      public function set §!O§(param1:Rectangle) : void
      {
         this.§=!`§ = param1.clone();
         this.§#T§();
      }
      
      public function get § p§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§[s§ == null)
         {
            this.§[s§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§[s§.contextMenu = _loc1_;
            this.§!p§();
         }
         return this.§[s§;
      }
      
      public function get stage() : §3§.Stage
      {
         return this.§^4§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §@D§() : flash.display.Stage
      {
         return this.§7e§;
      }
      
      public function get §-T§() : Boolean
      {
         return !this.§<]§;
      }
   }
}
