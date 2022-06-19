package §`C§
{
   import §]!B§.Texture;
   import §]@§.DisplayObject;
   import §]@§.Stage;
   import §`!M§.§]!N§;
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
   import starling.events.§-,§;
   import starling.events.§3M§;
   import starling.events.§6C§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §9!'§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var § F§:§9!'§;
      
      private static var §@L§:Boolean;
      
      private static var §9!8§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §6$§:§]@§.Stage;
      
      private var §"!&§:Class;
      
      private var §9!]§:§]@§.DisplayObject;
      
      private var §^!5§:§]!N§;
      
      private var §<!A§:Boolean;
      
      private var § "§:Boolean;
      
      private var §@![§:§'!N§;
      
      private var §2!S§:§-,§;
      
      private var §]q§:int;
      
      private var §2!X§:Boolean;
      
      private var § f§:Boolean;
      
      private var §9+§:Number;
      
      private var §9S§:Rectangle;
      
      private var § !4§:Boolean;
      
      private var §8!#§:flash.display.Stage;
      
      private var §]S§:Sprite;
      
      private var §<n§:Context3D;
      
      private var §`Y§:Dictionary;
      
      private var §0!F§:int;
      
      private var §"F§:Boolean;
      
      private var §&I§:Number;
      
      private var §5!;§:Number;
      
      private var §4L§:Number;
      
      private var §52§:Number;
      
      private var §@z§:Number;
      
      private var §19§:Number;
      
      private var §%m§:Function;
      
      private var §^!W§:uint;
      
      private var §0!7§:String;
      
      private var §^z§:Bitmap;
      
      private var §2!Z§:Boolean = false;
      
      private var §]K§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §67§:Boolean = false;
      
      public function §9!'§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§&I§ = param3.width;
         this.§5!;§ = param3.height;
         this.§4L§ = this.§&I§;
         this.§52§ = this.§5!;§;
         this.§@z§ = param2.stageWidth;
         this.§19§ = param2.stageHeight;
         §+!N§ = true;
         this.§?!^§();
         this.§"!&§ = param1;
         this.§9S§ = param3;
         this.mStage3D = param4;
         this.§6$§ = new §]@§.Stage(param3.width,param3.height,param2.color);
         this.§8!#§ = param2;
         this.§2!S§ = new §-,§(this.§6$§);
         this.§^!5§ = new §]!N§();
         this.§]q§ = 0;
         this.§2!X§ = false;
         this.§ f§ = false;
         this.§9+§ = getTimer() / 1000;
         this.§`Y§ = new Dictionary();
         for each(_loc6_ in this.§;![§)
         {
            param2.addEventListener(_loc6_,this.§4u§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§&!^§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§&!^§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§"$§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§7O§,false,1,true);
         this.mStage3D.visible = false;
         this.§'!<§(true);
         this.§^!W§ = param2.color;
         this.§0!7§ = param5;
      }
      
      public static function get §'!$§() : Boolean
      {
         if(§7!Z§)
         {
            return §7!Z§.§"F§;
         }
         return true;
      }
      
      public static function §%C§() : Boolean
      {
         return § F§ && (§ F§.§2!Z§ || § F§.§<n§ != null && § F§.§<n§.driverInfo != "Disposed");
      }
      
      public static function get §7!Z§() : §9!'§
      {
         return § F§;
      }
      
      public static function get §`!@§() : §]!N§
      {
         return !!§ F§ ? § F§.§`!@§ : null;
      }
      
      public static function get §4I§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §4I§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §+!N§() : Boolean
      {
         return §@L§;
      }
      
      public static function set §+!N§(param1:Boolean) : void
      {
         if(§ F§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §@L§ = param1;
      }
      
      public static function §9!L§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§7!Z§)
         {
            return Texture.§5C§(§7!Z§.§<n§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§ F§.§<n§)
         {
            § F§.§<n§.drawToBitmapData(param1);
         }
         else if(§ F§.§@![§.canvas)
         {
            _loc2_ = § F§.§@![§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §'Q§() : §]@§.DisplayObject
      {
         return this.§9!]§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§^!W§ = param1;
      }
      
      public function get §>]§() : Number
      {
         return this.§&I§;
      }
      
      public function get §9!+§() : Number
      {
         return this.§5!;§;
      }
      
      public function §1!Y§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§0!7§);
         }
         catch(e:Error)
         {
            §>!H§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§67§ = true;
         this.§8!#§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§&!^§,false);
         this.§8!#§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§&!^§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§"$§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§7O§,false);
         for each(_loc1_ in this.§;![§)
         {
            this.§8!#§.removeEventListener(_loc1_,this.§4u§,false);
         }
         for each(_loc2_ in this.§`Y§)
         {
            _loc2_.dispose();
         }
         if(this.§<n§)
         {
            this.§<n§.dispose();
         }
         if(this.§2!S§)
         {
            this.§2!S§.dispose();
         }
         if(this.§@![§)
         {
            this.§@![§.dispose();
         }
         if(§ F§ == this)
         {
            § F§ = null;
         }
         if(this.§^z§ && this.§^z§.bitmapData)
         {
            this.§^z§.bitmapData.dispose();
            this.§^z§.bitmapData = null;
         }
      }
      
      private function §^!&§() : void
      {
         this.§<n§ = this.mStage3D.context3D;
         this.§`Y§ = new Dictionary();
         if(this.§<n§)
         {
            this.§<n§.enableErrorChecking = this.§ f§;
            if(this.§<n§.driverInfo.indexOf("Software") >= 0)
            {
               this.§"F§ = true;
            }
         }
         else
         {
            this.§"F§ = true;
         }
         this.§"!]§();
      }
      
      private function §'m§() : void
      {
         if(this.§6$§.numChildren > 0)
         {
            return;
         }
         if(this.§9!]§ == null)
         {
            this.§9!]§ = new this.§"!&§();
         }
         if(this.§9!]§ == null)
         {
            throw new Error("Invalid root class: " + this.§"!&§);
         }
         this.§6$§.addChild(this.§9!]§);
      }
      
      private function §"!]§() : void
      {
         this.§]K§ = true;
         this.mStage3D.x = this.§9S§.x;
         this.mStage3D.y = this.§9S§.y;
      }
      
      private function render() : void
      {
         if(!§%C§())
         {
            return;
         }
         if(this.§]K§)
         {
            if(this.§<n§)
            {
               this.§<n§.configureBackBuffer(this.§9S§.width,this.§9S§.height,this.§]q§,false);
            }
            this.§]K§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§9+§;
         this.§9+§ = _loc1_;
         this.§6$§.advanceTime(_loc2_);
         this.§^!5§.advanceTime(_loc2_);
         this.§2!S§.advanceTime(_loc2_);
         this.§@![§.§!D§(this.§6$§.stageWidth,this.§6$§.stageHeight);
         this.§@![§.clear(this.§<n§,this.§^!W§,1);
         this.§@![§.§;g§(this.§<n§,this.§0!F§);
         this.§6$§.render(this.§@![§,1);
         this.§@![§.§+!2§();
         if(this.§%m§ != null)
         {
            this.§%m§();
            this.§%m§ = null;
         }
         this.§@![§.finishRendering(this.§<n§);
         this.§@![§.§2y§();
      }
      
      public function set §7%§(param1:Function) : void
      {
         this.§%m§ = param1;
      }
      
      private function §^q§() : void
      {
         var _loc3_:BitmapData = null;
         this.§]S§.x = this.§9S§.x;
         this.§]S§.y = this.§9S§.y;
         var _loc1_:int = this.§]S§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§]S§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§8!#§.addChild(this.§]S§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§8!#§.removeChild(this.§]S§);
         }
         if(this.§@![§ && this.§@![§.canvas)
         {
            this.§@![§.setCanvasSize(this.§4L§,this.§52§,this.§9S§.width / this.§6$§.stageWidth,this.§9S§.height / this.§6$§.stageHeight);
            _loc3_ = this.§@![§.canvas;
            if(this.§^z§.bitmapData != _loc3_)
            {
               this.§^z§.bitmapData = _loc3_;
            }
            if(this.§8!#§.getChildIndex(this.§]S§) > 0)
            {
               this.§8!#§.removeChild(this.§]S§);
               this.§8!#§.addChildAt(this.§]S§,0);
            }
         }
      }
      
      private function §>!H§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§6$§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§6$§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§6$§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§]!<§.addChild(_loc2_);
      }
      
      public function §?!^§() : void
      {
         § F§ = this;
      }
      
      public function start() : void
      {
         this.§<!A§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§<!A§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §'!<§(param1:Boolean) : void
      {
         this.§ "§ = param1;
      }
      
      private function §<c§() : void
      {
         this.§2!Z§ = true;
         if(this.§^z§ == null)
         {
            this.§^z§ = new Bitmap();
            this.§]!<§.addChild(this.§^z§);
         }
      }
      
      private function §7O§(param1:ErrorEvent) : void
      {
         this.§<c§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §"$§(param1:flash.events.Event) : void
      {
         if(this.§67§)
         {
            return;
         }
         ++§9!8§;
         this.§0!F§ = §9!8§;
         if(this.§@![§)
         {
            this.§@![§.dispose();
         }
         if(!§9!'§.§+!N§ && this.§<n§)
         {
            this.§>!H§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§?!^§();
         this.§^!&§();
         this.§'m§();
         if(this.§<n§ && this.§"F§)
         {
            this.mStage3DEnabled = false;
            this.§<n§ = null;
            this.§<c§();
         }
         if(this.§<n§)
         {
            this.§@![§ = new §'!N§();
         }
         else
         {
            this.§@![§ = new §!T§();
            this.§@![§.setCanvasSize(this.§4L§,this.§52§,this.§9S§.width / this.§6$§.stageWidth,this.§9S§.height / this.§6$§.stageHeight);
            this.§@![§.clear(null,this.§^!W§);
         }
         this.§2!S§.§&?§ = this.§2!X§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §<!%§(param1:flash.events.Event) : void
      {
         this.§?!^§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§9+§;
         if(this.§<!A§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§]S§)
         {
            this.§^q§();
         }
      }
      
      private function §&!^§(param1:flash.events.KeyboardEvent) : void
      {
         this.§?!^§();
         this.§6$§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§&I§;
         var _loc5_:Number = param2 / this.§5!;§;
         if(!param3)
         {
            this.§6$§.stageWidth = this.§&I§ * _loc4_ / _loc5_;
            this.§6$§.stageHeight = this.§5!;§;
         }
         else
         {
            this.§6$§.stageWidth = this.§&I§;
            this.§6$§.stageHeight = this.§5!;§ * _loc5_ / _loc4_;
         }
         this.§4L§ = param1;
         this.§52§ = param2;
         this.§6$§.dispatchEvent(new §6C§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §4[§() : void
      {
         this.setCanvasSize(this.§&I§,this.§5!;§);
      }
      
      private function §4u§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§<!A§ || !this.§ "§)
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
               this.§ !4§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§ !4§ = false;
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
               _loc5_ = §3M§.§+c§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §3M§.§@!,§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §3M§.§"!,§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §3M§.§+c§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §3M§.§"!,§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§ !4§ ? §3M§.§@!,§ : §3M§.§3!$§;
         }
         if((_loc2_ < this.§9S§.left || _loc2_ >= this.§9S§.right || _loc3_ < this.§9S§.top || _loc3_ >= this.§9S§.bottom) && _loc5_ == §3M§.§+c§)
         {
            return;
         }
         _loc2_ -= this.§9S§.x;
         _loc3_ -= this.§9S§.y;
         this.§2!S§.§,<§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §;![§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §8V§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§`Y§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§<n§ != null)
         {
            (_loc4_ = this.§<n§.createProgram()).upload(param2,param3);
            this.§`Y§[param1] = _loc4_;
         }
      }
      
      public function §throw§(param1:String) : void
      {
         var _loc2_:Program3D = this.§@!O§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§`Y§[param1];
         }
      }
      
      public function §@!O§(param1:String) : Program3D
      {
         return this.§`Y§[param1] as Program3D;
      }
      
      public function §!P§(param1:String) : Boolean
      {
         return param1 in this.§`Y§;
      }
      
      public function get §]!W§() : Boolean
      {
         return this.§<!A§;
      }
      
      public function get §`!@§() : §]!N§
      {
         return this.§^!5§;
      }
      
      public function get §&?§() : Boolean
      {
         return this.§2!X§;
      }
      
      public function set §&?§(param1:Boolean) : void
      {
         this.§2!X§ = param1;
         if(this.§<n§)
         {
            this.§2!S§.§&?§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§ f§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§ f§ = param1;
         if(this.§<n§)
         {
            this.§<n§.enableErrorChecking = param1;
         }
      }
      
      public function get §">§() : int
      {
         return this.§]q§;
      }
      
      public function set §">§(param1:int) : void
      {
         this.§]q§ = param1;
         this.§"!]§();
      }
      
      public function get §>!D§() : Rectangle
      {
         return this.§9S§.clone();
      }
      
      public function set §>!D§(param1:Rectangle) : void
      {
         this.§9S§ = param1.clone();
         this.§"!]§();
      }
      
      public function get §]!<§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§]S§ == null)
         {
            this.§]S§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§]S§.contextMenu = _loc1_;
            this.§^q§();
         }
         return this.§]S§;
      }
      
      public function get stage() : §]@§.Stage
      {
         return this.§6$§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §;Y§() : flash.display.Stage
      {
         return this.§8!#§;
      }
      
      public function get §+!<§() : Boolean
      {
         return !this.§2!Z§;
      }
   }
}
