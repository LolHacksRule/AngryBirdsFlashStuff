package §1f§
{
   import §'@§.Texture;
   import §4!h§.§8!?§;
   import §4"@§.DisplayObject;
   import §4"@§.Stage;
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
   import starling.events.§+0§;
   import starling.events.§6!<§;
   import starling.events.§9@§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §9H§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §@$§:Rectangle;
      
      private static var §]7§:Boolean = true;
      
      private static var §+!7§:Boolean;
      
      private static var §#E§:§9H§;
      
      private static var §;"?§:Boolean;
      
      private static var §!!b§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §,"<§:§4"@§.Stage;
      
      private var §<L§:Class;
      
      private var §6u§:§4"@§.DisplayObject;
      
      private var §%T§:§8!?§;
      
      private var §`"$§:Boolean;
      
      private var §%!W§:Boolean;
      
      private var §?!u§:§&"@§;
      
      private var §""C§:§9@§;
      
      private var §,"$§:int;
      
      private var §7!_§:Boolean;
      
      private var §-!W§:Boolean;
      
      private var §`!o§:Number;
      
      private var §5>§:Boolean;
      
      private var §[!s§:flash.display.Stage;
      
      private var §!`§:Sprite;
      
      private var §!K§:Context3D;
      
      private var §2!<§:Dictionary;
      
      private var §#f§:int;
      
      private var §-8§:Boolean;
      
      private var §+!h§:Number;
      
      private var §]A§:Number;
      
      private var §^!o§:Number;
      
      private var §36§:Number;
      
      private var §'&§:Number;
      
      private var §;n§:Number;
      
      private var §"'§:Function;
      
      private var §]"<§:uint;
      
      private var §8!g§:String;
      
      private var §=s§:Bitmap;
      
      private var §+_§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §-!R§:Boolean = false;
      
      public function §9H§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§+!h§ = param3.width;
         this.§]A§ = param3.height;
         this.§^!o§ = this.§+!h§;
         this.§36§ = this.§]A§;
         this.§'&§ = param2.stageWidth;
         this.§;n§ = param2.stageHeight;
         §4b§ = true;
         this.§[X§();
         this.§<L§ = param1;
         §@$§ = param3;
         this.mStage3D = param4;
         this.§,"<§ = new §4"@§.Stage(param3.width,param3.height,param2.color);
         this.§[!s§ = param2;
         this.§""C§ = new §9@§(this.§,"<§);
         this.§%T§ = new §8!?§();
         this.§,"$§ = 0;
         this.§7!_§ = false;
         this.§-!W§ = false;
         this.§`!o§ = getTimer() / 1000;
         this.§2!<§ = new Dictionary();
         for each(_loc6_ in this.§^!b§)
         {
            param2.addEventListener(_loc6_,this.§-"1§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§`!Q§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§`!Q§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&Q§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§'g§,false,1,true);
         this.mStage3D.visible = false;
         this.§7!e§(true);
         this.§]"<§ = param2.color;
         this.§8!g§ = param5;
      }
      
      public static function get §&!V§() : Boolean
      {
         if(§0"'§)
         {
            return §0"'§.§-8§;
         }
         return true;
      }
      
      public static function §9o§() : Boolean
      {
         §§push(Boolean(§#E§));
         if(Boolean(§#E§))
         {
            §§pop();
            §§push(Boolean(§#E§.§+_§));
            if(!Boolean(§#E§.§+_§))
            {
               §§pop();
               return §#E§.§!K§ != null && §#E§.§!K§.driverInfo != "Disposed";
            }
         }
         §§goto(addr31);
      }
      
      private static function §'"<§() : void
      {
         §+!7§ = true;
      }
      
      public static function get §#!%§() : Rectangle
      {
         return §@$§.clone();
      }
      
      public static function set §#!%§(param1:Rectangle) : void
      {
         §@$§ = param1.clone();
         §'"<§();
      }
      
      public static function set §["?§(param1:Boolean) : void
      {
         §]7§ = param1;
      }
      
      public static function get §["?§() : Boolean
      {
         return §]7§;
      }
      
      public static function get §0"'§() : §9H§
      {
         return §#E§;
      }
      
      public static function get §6<§() : §8!?§
      {
         return !!§#E§ ? §#E§.§6<§ : null;
      }
      
      public static function get §^Z§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §^Z§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §4b§() : Boolean
      {
         return §;"?§;
      }
      
      public static function set §4b§(param1:Boolean) : void
      {
         if(§#E§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §;"?§ = param1;
      }
      
      public static function §&!-§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§0"'§)
         {
            return Texture.§-!'§(§0"'§.§!K§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§#E§.§!K§)
         {
            §#E§.§!K§.drawToBitmapData(param1);
         }
         else if(§#E§.§?!u§.canvas)
         {
            _loc2_ = §#E§.§?!u§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §>7§() : §4"@§.DisplayObject
      {
         return this.§6u§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§]"<§ = param1;
      }
      
      public function get §'f§() : Number
      {
         return this.§+!h§;
      }
      
      public function get §^!I§() : Number
      {
         return this.§]A§;
      }
      
      public function §+n§() : void
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
               requestContext3D(this.§8!g§,profile);
            }
            else
            {
               requestContext3D(this.§8!g§);
            }
         }
         catch(e:Error)
         {
            §6o§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§-!R§ = true;
         this.§[!s§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§`!Q§,false);
         this.§[!s§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§`!Q§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&Q§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§'g§,false);
         for each(_loc1_ in this.§^!b§)
         {
            this.§[!s§.removeEventListener(_loc1_,this.§-"1§,false);
         }
         for each(_loc2_ in this.§2!<§)
         {
            _loc2_.dispose();
         }
         if(this.§!K§)
         {
            this.§!K§.dispose();
         }
         if(this.§""C§)
         {
            this.§""C§.dispose();
         }
         if(this.§?!u§)
         {
            this.§?!u§.dispose();
         }
         if(§#E§ == this)
         {
            §#E§ = null;
         }
         if(this.§=s§ && this.§=s§.bitmapData)
         {
            this.§=s§.bitmapData.dispose();
            this.§=s§.bitmapData = null;
         }
      }
      
      private function §2!h§() : void
      {
         this.§!K§ = this.mStage3D.context3D;
         this.§2!<§ = new Dictionary();
         if(this.§!K§)
         {
            this.§!K§.enableErrorChecking = this.§-!W§;
            if(this.§!K§.driverInfo.indexOf("Software") >= 0)
            {
               this.§-8§ = true;
            }
         }
         else
         {
            this.§-8§ = true;
         }
         §'"<§();
      }
      
      private function §^"'§() : void
      {
         if(this.§,"<§.numChildren > 0)
         {
            return;
         }
         if(this.§6u§ == null)
         {
            this.§6u§ = new this.§<L§();
         }
         if(this.§6u§ == null)
         {
            throw new Error("Invalid root class: " + this.§<L§);
         }
         this.§,"<§.addChild(this.§6u§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§!K§.configureBackBuffer(§@$§.width,§@$§.height,this.§,"$§,false);
            §+!7§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§9o§())
         {
            return;
         }
         if(§+!7§)
         {
            if(this.§!K§)
            {
               this.mStage3D.x = §@$§.x;
               this.mStage3D.y = §@$§.y;
               this.configureBackBuffer();
               if(§+!7§)
               {
                  return;
               }
               this.setCanvasSize(§@$§.width,§@$§.height);
            }
            else if(this.§=s§)
            {
               §+!7§ = false;
               this.setCanvasSize(§@$§.width,§@$§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§`!o§;
         this.§`!o§ = _loc1_;
         this.§,"<§.advanceTime(_loc2_);
         this.§%T§.advanceTime(_loc2_);
         this.§""C§.advanceTime(_loc2_);
         this.§?!u§.§?"6§(this.§,"<§.stageWidth,this.§,"<§.stageHeight);
         this.§?!u§.clear(this.§!K§,this.§]"<§,1);
         this.§?!u§.§>T§(this.§!K§,this.§#f§);
         this.§,"<§.render(this.§?!u§,1);
         this.§?!u§.§7j§();
         if(this.§"'§ != null)
         {
            this.§"'§();
            this.§"'§ = null;
         }
         this.§?!u§.finishRendering(this.§!K§);
         this.§?!u§.nextFrame();
      }
      
      public function set §&!d§(param1:Function) : void
      {
         this.§"'§ = param1;
      }
      
      private function §?!!§() : void
      {
         var _loc3_:BitmapData = null;
         this.§!`§.x = §@$§.x;
         this.§!`§.y = §@$§.y;
         var _loc1_:int = this.§!`§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§!`§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§[!s§.addChild(this.§!`§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§[!s§.removeChild(this.§!`§);
         }
         if(this.§?!u§ && this.§?!u§.canvas)
         {
            this.§?!u§.setCanvasSize(this.§^!o§,this.§36§,§@$§.width / this.§,"<§.stageWidth,§@$§.height / this.§,"<§.stageHeight);
            _loc3_ = this.§?!u§.canvas;
            if(this.§=s§.bitmapData != _loc3_)
            {
               this.§=s§.bitmapData = _loc3_;
            }
            if(this.§[!s§.getChildIndex(this.§!`§) > 0)
            {
               this.§[!s§.removeChild(this.§!`§);
               this.§[!s§.addChildAt(this.§!`§,0);
            }
         }
      }
      
      private function §6o§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§,"<§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§,"<§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§,"<§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§1!P§.addChild(_loc2_);
      }
      
      public function §[X§() : void
      {
         §#E§ = this;
      }
      
      public function start() : void
      {
         this.§`"$§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§`"$§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §7!e§(param1:Boolean) : void
      {
         this.§%!W§ = param1;
      }
      
      private function §'<§() : void
      {
         this.§+_§ = true;
         if(this.§=s§ == null)
         {
            this.§=s§ = new Bitmap();
            this.§1!P§.addChild(this.§=s§);
         }
      }
      
      private function §'g§(param1:ErrorEvent) : void
      {
         this.§'<§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §&Q§(param1:flash.events.Event) : void
      {
         if(this.§-!R§)
         {
            return;
         }
         ++§!!b§;
         this.§#f§ = §!!b§;
         if(this.§?!u§)
         {
            this.§?!u§.dispose();
         }
         if(!§9H§.§4b§ && this.§!K§)
         {
            this.§6o§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§[X§();
         this.§2!h§();
         this.§^"'§();
         if(this.§!K§ && this.§-8§)
         {
            this.mStage3DEnabled = false;
            this.§!K§ = null;
            this.§'<§();
         }
         if(this.§!K§)
         {
            this.§?!u§ = new §&"@§();
         }
         else
         {
            this.§?!u§ = new §"H§();
            this.§?!u§.setCanvasSize(this.§^!o§,this.§36§,§@$§.width / this.§,"<§.stageWidth,§@$§.height / this.§,"<§.stageHeight);
            this.§?!u§.clear(null,this.§]"<§);
         }
         this.§""C§.§6!"§ = this.§7!_§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§[X§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§`!o§;
         if(this.§`"$§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§!`§)
         {
            this.§?!!§();
         }
      }
      
      private function §`!Q§(param1:flash.events.KeyboardEvent) : void
      {
         this.§[X§();
         this.§,"<§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§+!h§;
         var _loc4_:Number = param2 / this.§]A§;
         if(!§["?§)
         {
            this.§,"<§.stageWidth = this.§+!h§ * _loc3_ / _loc4_;
            this.§,"<§.stageHeight = this.§]A§;
         }
         else
         {
            this.§,"<§.stageWidth = this.§+!h§;
            this.§,"<§.stageHeight = this.§]A§ * _loc4_ / _loc3_;
         }
         this.§^!o§ = param1;
         this.§36§ = param2;
         this.§,"<§.dispatchEvent(new §6!<§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §0c§() : void
      {
         this.setCanvasSize(this.§+!h§,this.§]A§);
      }
      
      private function §-"1§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§`"$§ || !this.§%!W§)
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
               this.§5>§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§5>§ = false;
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
               _loc5_ = §+0§.§6§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §+0§.§%F§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §+0§.§-O§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §+0§.§6§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §+0§.§-O§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§5>§ ? §+0§.§%F§ : §+0§.§,!_§;
         }
         if((_loc2_ < §@$§.left || _loc2_ >= §@$§.right || _loc3_ < §@$§.top || _loc3_ >= §@$§.bottom) && _loc5_ == §+0§.§6§)
         {
            return;
         }
         _loc2_ -= §@$§.x;
         _loc3_ -= §@$§.y;
         this.§""C§.§8"D§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §^!b§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §;!n§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§2!<§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§!K§ != null)
         {
            (_loc4_ = this.§!K§.createProgram()).upload(param2,param3);
            this.§2!<§[param1] = _loc4_;
         }
      }
      
      public function §5"8§(param1:String) : void
      {
         var _loc2_:Program3D = this.§@>§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§2!<§[param1];
         }
      }
      
      public function §@>§(param1:String) : Program3D
      {
         return this.§2!<§[param1] as Program3D;
      }
      
      public function §3!i§(param1:String) : Boolean
      {
         return param1 in this.§2!<§;
      }
      
      public function get §`q§() : Boolean
      {
         return this.§`"$§;
      }
      
      public function get §6<§() : §8!?§
      {
         return this.§%T§;
      }
      
      public function get §6!"§() : Boolean
      {
         return this.§7!_§;
      }
      
      public function set §6!"§(param1:Boolean) : void
      {
         this.§7!_§ = param1;
         if(this.§!K§)
         {
            this.§""C§.§6!"§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§-!W§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§-!W§ = param1;
         if(this.§!K§)
         {
            this.§!K§.enableErrorChecking = param1;
         }
      }
      
      public function get §4!#§() : int
      {
         return this.§,"$§;
      }
      
      public function set §4!#§(param1:int) : void
      {
         this.§,"$§ = param1;
         §'"<§();
      }
      
      public function get §1!P§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§!`§ == null)
         {
            this.§!`§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§!`§.contextMenu = _loc1_;
            this.§?!!§();
         }
         return this.§!`§;
      }
      
      public function get stage() : §4"@§.Stage
      {
         return this.§,"<§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §>!G§() : flash.display.Stage
      {
         return this.§[!s§;
      }
      
      public function get § !E§() : Boolean
      {
         return !this.§+_§;
      }
   }
}
