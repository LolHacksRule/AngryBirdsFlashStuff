package §-N§
{
   import §1"§.§4Z§;
   import §7q§.DisplayObject;
   import §7q§.Stage;
   import §8Y§.Texture;
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
   import starling.events.§<!^§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§[!k§;
   import starling.events.§`Z§;
   
   public class §=!]§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §0T§:§=!]§;
      
      private static var §+`§:Boolean;
      
      private static var §5!v§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §5e§:§7q§.Stage;
      
      private var §;"7§:Class;
      
      private var §,"5§:§7q§.DisplayObject;
      
      private var §&!8§:§4Z§;
      
      private var §9!D§:Boolean;
      
      private var §9!`§:Boolean;
      
      private var §!"+§:§,!p§;
      
      private var §%!O§:§`Z§;
      
      private var §7!g§:int;
      
      private var §^G§:Boolean;
      
      private var § -§:Boolean;
      
      private var §9!&§:Number;
      
      private var §"!`§:Rectangle;
      
      private var §=!>§:Boolean;
      
      private var §=!h§:flash.display.Stage;
      
      private var §<Y§:Sprite;
      
      private var §2?§:Context3D;
      
      private var §^"4§:Dictionary;
      
      private var §2d§:int;
      
      private var §,?§:Boolean;
      
      private var §]Y§:Number;
      
      private var §`!P§:Number;
      
      private var §^c§:Number;
      
      private var §9!Z§:Number;
      
      private var §1E§:Number;
      
      private var §-!L§:Number;
      
      private var §^!G§:Function;
      
      private var §,O§:uint;
      
      private var §1!+§:String;
      
      private var § !6§:Bitmap;
      
      private var §6I§:Boolean = false;
      
      private var §^!v§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §"S§:Boolean = false;
      
      public function §=!]§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§]Y§ = param3.width;
         this.§`!P§ = param3.height;
         this.§^c§ = this.§]Y§;
         this.§9!Z§ = this.§`!P§;
         this.§1E§ = param2.stageWidth;
         this.§-!L§ = param2.stageHeight;
         §=t§ = true;
         this.§?T§();
         this.§;"7§ = param1;
         this.§"!`§ = param3;
         this.mStage3D = param4;
         this.§5e§ = new §7q§.Stage(param3.width,param3.height,param2.color);
         this.§=!h§ = param2;
         this.§%!O§ = new §`Z§(this.§5e§);
         this.§&!8§ = new §4Z§();
         this.§7!g§ = 0;
         this.§^G§ = false;
         this.§ -§ = false;
         this.§9!&§ = getTimer() / 1000;
         this.§^"4§ = new Dictionary();
         for each(_loc6_ in this.§5R§)
         {
            param2.addEventListener(_loc6_,this.§-!3§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8"1§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8"1§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§0V§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§"!3§,false,1,true);
         this.mStage3D.visible = false;
         this.§&q§(true);
         this.§,O§ = param2.color;
         this.§1!+§ = param5;
      }
      
      public static function get §&!f§() : Boolean
      {
         if(§@§)
         {
            return §@§.§,?§;
         }
         return true;
      }
      
      public static function §'`§() : Boolean
      {
         return §0T§ && (§0T§.§6I§ || §0T§.§2?§ != null && §0T§.§2?§.driverInfo != "Disposed");
      }
      
      public static function get §@§() : §=!]§
      {
         return §0T§;
      }
      
      public static function get §@!,§() : §4Z§
      {
         return !!§0T§ ? §0T§.§@!,§ : null;
      }
      
      public static function get §,Z§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §,Z§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §=t§() : Boolean
      {
         return §+`§;
      }
      
      public static function set §=t§(param1:Boolean) : void
      {
         if(§0T§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §+`§ = param1;
      }
      
      public static function §^Y§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§@§)
         {
            return Texture.§7"$§(§@§.§2?§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§0T§.§2?§)
         {
            §0T§.§2?§.drawToBitmapData(param1);
         }
         else if(§0T§.§!"+§.canvas)
         {
            _loc2_ = §0T§.§!"+§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §>!_§() : §7q§.DisplayObject
      {
         return this.§,"5§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§,O§ = param1;
      }
      
      public function get §+!+§() : Number
      {
         return this.§]Y§;
      }
      
      public function get §0!f§() : Number
      {
         return this.§`!P§;
      }
      
      public function §5!r§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§1!+§);
         }
         catch(e:Error)
         {
            §[A§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§"S§ = true;
         this.§=!h§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8"1§,false);
         this.§=!h§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8"1§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§0V§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§"!3§,false);
         for each(_loc1_ in this.§5R§)
         {
            this.§=!h§.removeEventListener(_loc1_,this.§-!3§,false);
         }
         for each(_loc2_ in this.§^"4§)
         {
            _loc2_.dispose();
         }
         if(this.§2?§)
         {
            this.§2?§.dispose();
         }
         if(this.§%!O§)
         {
            this.§%!O§.dispose();
         }
         if(this.§!"+§)
         {
            this.§!"+§.dispose();
         }
         if(§0T§ == this)
         {
            §0T§ = null;
         }
         if(this.§ !6§ && this.§ !6§.bitmapData)
         {
            this.§ !6§.bitmapData.dispose();
            this.§ !6§.bitmapData = null;
         }
      }
      
      private function §89§() : void
      {
         this.§2?§ = this.mStage3D.context3D;
         this.§^"4§ = new Dictionary();
         if(this.§2?§)
         {
            this.§2?§.enableErrorChecking = this.§ -§;
            if(this.§2?§.driverInfo.indexOf("Software") >= 0)
            {
               this.§,?§ = true;
            }
         }
         else
         {
            this.§,?§ = true;
         }
         this.§"9§();
      }
      
      private function §]s§() : void
      {
         if(this.§5e§.numChildren > 0)
         {
            return;
         }
         if(this.§,"5§ == null)
         {
            this.§,"5§ = new this.§;"7§();
         }
         if(this.§,"5§ == null)
         {
            throw new Error("Invalid root class: " + this.§;"7§);
         }
         this.§5e§.addChild(this.§,"5§);
      }
      
      private function §"9§() : void
      {
         this.§^!v§ = true;
         this.mStage3D.x = this.§"!`§.x;
         this.mStage3D.y = this.§"!`§.y;
      }
      
      private function render() : void
      {
         if(!§'`§())
         {
            return;
         }
         if(this.§^!v§)
         {
            if(this.§2?§)
            {
               this.§2?§.configureBackBuffer(this.§"!`§.width,this.§"!`§.height,this.§7!g§,false);
            }
            this.§^!v§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§9!&§;
         this.§9!&§ = _loc1_;
         this.§5e§.advanceTime(_loc2_);
         this.§&!8§.advanceTime(_loc2_);
         this.§%!O§.advanceTime(_loc2_);
         this.§!"+§.§>"$§(this.§5e§.stageWidth,this.§5e§.stageHeight);
         this.§!"+§.clear(this.§2?§,this.§,O§,1);
         this.§!"+§.§5!+§(this.§2?§,this.§2d§);
         this.§5e§.render(this.§!"+§,1);
         this.§!"+§.§5E§();
         if(this.§^!G§ != null)
         {
            this.§^!G§();
            this.§^!G§ = null;
         }
         this.§!"+§.finishRendering(this.§2?§);
         this.§!"+§.§?"%§();
      }
      
      public function set §9E§(param1:Function) : void
      {
         this.§^!G§ = param1;
      }
      
      private function §%Q§() : void
      {
         var _loc3_:BitmapData = null;
         this.§<Y§.x = this.§"!`§.x;
         this.§<Y§.y = this.§"!`§.y;
         var _loc1_:int = this.§<Y§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§<Y§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§=!h§.addChild(this.§<Y§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§=!h§.removeChild(this.§<Y§);
         }
         if(this.§!"+§ && this.§!"+§.canvas)
         {
            this.§!"+§.setCanvasSize(this.§^c§,this.§9!Z§,this.§"!`§.width / this.§5e§.stageWidth,this.§"!`§.height / this.§5e§.stageHeight);
            _loc3_ = this.§!"+§.canvas;
            if(this.§ !6§.bitmapData != _loc3_)
            {
               this.§ !6§.bitmapData = _loc3_;
            }
            if(this.§=!h§.getChildIndex(this.§<Y§) > 0)
            {
               this.§=!h§.removeChild(this.§<Y§);
               this.§=!h§.addChildAt(this.§<Y§,0);
            }
         }
      }
      
      private function §[A§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§5e§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§5e§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§5e§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§,[§.addChild(_loc2_);
      }
      
      public function §?T§() : void
      {
         §0T§ = this;
      }
      
      public function start() : void
      {
         this.§9!D§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§9!D§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §&q§(param1:Boolean) : void
      {
         this.§9!`§ = param1;
      }
      
      private function §4!b§() : void
      {
         this.§6I§ = true;
         if(this.§ !6§ == null)
         {
            this.§ !6§ = new Bitmap();
            this.§,[§.addChild(this.§ !6§);
         }
      }
      
      private function §"!3§(param1:ErrorEvent) : void
      {
         this.§4!b§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §0V§(param1:flash.events.Event) : void
      {
         if(this.§"S§)
         {
            return;
         }
         ++§5!v§;
         this.§2d§ = §5!v§;
         if(this.§!"+§)
         {
            this.§!"+§.dispose();
         }
         if(!§=!]§.§=t§ && this.§2?§)
         {
            this.§[A§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§?T§();
         this.§89§();
         this.§]s§();
         if(this.§2?§ && this.§,?§)
         {
            this.mStage3DEnabled = false;
            this.§2?§ = null;
            this.§4!b§();
         }
         if(this.§2?§)
         {
            this.§!"+§ = new §,!p§();
         }
         else
         {
            this.§!"+§ = new §1!3§();
            this.§!"+§.setCanvasSize(this.§^c§,this.§9!Z§,this.§"!`§.width / this.§5e§.stageWidth,this.§"!`§.height / this.§5e§.stageHeight);
            this.§!"+§.clear(null,this.§,O§);
         }
         this.§%!O§.§&!W§ = this.§^G§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§?T§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§9!&§;
         if(this.§9!D§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§<Y§)
         {
            this.§%Q§();
         }
      }
      
      private function §8"1§(param1:flash.events.KeyboardEvent) : void
      {
         this.§?T§();
         this.§5e§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§]Y§;
         var _loc5_:Number = param2 / this.§`!P§;
         if(!param3)
         {
            this.§5e§.stageWidth = this.§]Y§ * _loc4_ / _loc5_;
            this.§5e§.stageHeight = this.§`!P§;
         }
         else
         {
            this.§5e§.stageWidth = this.§]Y§;
            this.§5e§.stageHeight = this.§`!P§ * _loc5_ / _loc4_;
         }
         this.§^c§ = param1;
         this.§9!Z§ = param2;
         this.§5e§.dispatchEvent(new §<!^§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §[!I§() : void
      {
         this.setCanvasSize(this.§]Y§,this.§`!P§);
      }
      
      private function §-!3§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§9!D§ || !this.§9!`§)
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
               this.§=!>§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§=!>§ = false;
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
               _loc5_ = §[!k§.§9!8§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §[!k§.§@$§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §[!k§.§>O§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §[!k§.§9!8§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §[!k§.§>O§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§=!>§ ? §[!k§.§@$§ : §[!k§.§9b§;
         }
         if((_loc2_ < this.§"!`§.left || _loc2_ >= this.§"!`§.right || _loc3_ < this.§"!`§.top || _loc3_ >= this.§"!`§.bottom) && _loc5_ == §[!k§.§9!8§)
         {
            return;
         }
         _loc2_ -= this.§"!`§.x;
         _loc3_ -= this.§"!`§.y;
         this.§%!O§.§"p§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §5R§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §4!x§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§^"4§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§2?§ != null)
         {
            (_loc4_ = this.§2?§.createProgram()).upload(param2,param3);
            this.§^"4§[param1] = _loc4_;
         }
      }
      
      public function §+w§(param1:String) : void
      {
         var _loc2_:Program3D = this.§2!5§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§^"4§[param1];
         }
      }
      
      public function §2!5§(param1:String) : Program3D
      {
         return this.§^"4§[param1] as Program3D;
      }
      
      public function §+?§(param1:String) : Boolean
      {
         return param1 in this.§^"4§;
      }
      
      public function get § "5§() : Boolean
      {
         return this.§9!D§;
      }
      
      public function get §@!,§() : §4Z§
      {
         return this.§&!8§;
      }
      
      public function get §&!W§() : Boolean
      {
         return this.§^G§;
      }
      
      public function set §&!W§(param1:Boolean) : void
      {
         this.§^G§ = param1;
         if(this.§2?§)
         {
            this.§%!O§.§&!W§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§ -§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§ -§ = param1;
         if(this.§2?§)
         {
            this.§2?§.enableErrorChecking = param1;
         }
      }
      
      public function get §6!6§() : int
      {
         return this.§7!g§;
      }
      
      public function set §6!6§(param1:int) : void
      {
         this.§7!g§ = param1;
         this.§"9§();
      }
      
      public function get §-'§() : Rectangle
      {
         return this.§"!`§.clone();
      }
      
      public function set §-'§(param1:Rectangle) : void
      {
         this.§"!`§ = param1.clone();
         this.§"9§();
      }
      
      public function get §,[§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§<Y§ == null)
         {
            this.§<Y§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§<Y§.contextMenu = _loc1_;
            this.§%Q§();
         }
         return this.§<Y§;
      }
      
      public function get stage() : §7q§.Stage
      {
         return this.§5e§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §@?§() : flash.display.Stage
      {
         return this.§=!h§;
      }
      
      public function get §<[§() : Boolean
      {
         return !this.§6I§;
      }
   }
}
