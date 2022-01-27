package §1y§
{
   import § 0§.Texture;
   import §#!f§.DisplayObject;
   import §#!f§.Stage;
   import §;!+§.§7%§;
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
   import starling.events.§4!a§;
   import starling.events.§7G§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`!H§;
   
   public class §&!B§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §?!]§:§&!B§;
      
      private static var §<]§:Boolean;
      
      private static var §^r§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §%!$§:§#!f§.Stage;
      
      private var §+@§:Class;
      
      private var §;!Y§:§#!f§.DisplayObject;
      
      private var §9D§:§7%§;
      
      private var § L§:Boolean;
      
      private var §09§:Boolean;
      
      private var §0!1§:§2n§;
      
      private var §<!4§:§7G§;
      
      private var §,r§:int;
      
      private var §`!'§:Boolean;
      
      private var §1]§:Boolean;
      
      private var §!!P§:Number;
      
      private var §^7§:Rectangle;
      
      private var §]L§:Boolean;
      
      private var §4[§:flash.display.Stage;
      
      private var §<!I§:Sprite;
      
      private var §%W§:Context3D;
      
      private var §+V§:Dictionary;
      
      private var §#M§:int;
      
      private var §62§:Boolean;
      
      private var §1p§:Number;
      
      private var §6!c§:Number;
      
      private var §]!,§:Number;
      
      private var §6F§:Number;
      
      private var §=!T§:Number;
      
      private var §`Q§:Number;
      
      private var §2c§:Function;
      
      private var §4!%§:uint;
      
      private var §'!6§:String;
      
      private var §@^§:Bitmap;
      
      private var §3!0§:Boolean = false;
      
      private var §1!$§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §#J§:Boolean = false;
      
      public function §&!B§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§1p§ = param3.width;
         this.§6!c§ = param3.height;
         this.§]!,§ = this.§1p§;
         this.§6F§ = this.§6!c§;
         this.§=!T§ = param2.stageWidth;
         this.§`Q§ = param2.stageHeight;
         §1!>§ = true;
         this.§0!Y§();
         this.§+@§ = param1;
         this.§^7§ = param3;
         this.mStage3D = param4;
         this.§%!$§ = new §#!f§.Stage(param3.width,param3.height,param2.color);
         this.§4[§ = param2;
         this.§<!4§ = new §7G§(this.§%!$§);
         this.§9D§ = new §7%§();
         this.§,r§ = 0;
         this.§`!'§ = false;
         this.§1]§ = false;
         this.§!!P§ = getTimer() / 1000;
         this.§+V§ = new Dictionary();
         for each(_loc6_ in this.§!5§)
         {
            param2.addEventListener(_loc6_,this.§%U§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§1x§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§1x§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#!1§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§ !E§,false,1,true);
         this.mStage3D.visible = false;
         this.§6y§(true);
         this.§4!%§ = param2.color;
         this.§'!6§ = param5;
      }
      
      public static function get §&!F§() : Boolean
      {
         if(§^8§)
         {
            return §^8§.§62§;
         }
         return true;
      }
      
      public static function §`Y§() : Boolean
      {
         return §?!]§ && (§?!]§.§3!0§ || §?!]§.§%W§ != null && §?!]§.§%W§.driverInfo != "Disposed");
      }
      
      public static function get §^8§() : §&!B§
      {
         return §?!]§;
      }
      
      public static function get §[q§() : §7%§
      {
         return !!§?!]§ ? §?!]§.§[q§ : null;
      }
      
      public static function get §4!R§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §4!R§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §1!>§() : Boolean
      {
         return §<]§;
      }
      
      public static function set §1!>§(param1:Boolean) : void
      {
         if(§?!]§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §<]§ = param1;
      }
      
      public static function §]>§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§^8§)
         {
            return Texture.§2!K§(§^8§.§%W§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§?!]§.§%W§)
         {
            §?!]§.§%W§.drawToBitmapData(param1);
         }
         else if(§?!]§.§0!1§.canvas)
         {
            _loc2_ = §?!]§.§0!1§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §?!V§() : §#!f§.DisplayObject
      {
         return this.§;!Y§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§4!%§ = param1;
      }
      
      public function get §7!!§() : Number
      {
         return this.§1p§;
      }
      
      public function get §1!O§() : Number
      {
         return this.§6!c§;
      }
      
      public function §^&§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§'!6§);
         }
         catch(e:Error)
         {
            §1G§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§#J§ = true;
         this.§4[§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§1x§,false);
         this.§4[§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§1x§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#!1§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§ !E§,false);
         for each(_loc1_ in this.§!5§)
         {
            this.§4[§.removeEventListener(_loc1_,this.§%U§,false);
         }
         for each(_loc2_ in this.§+V§)
         {
            _loc2_.dispose();
         }
         if(this.§%W§)
         {
            this.§%W§.dispose();
         }
         if(this.§<!4§)
         {
            this.§<!4§.dispose();
         }
         if(this.§0!1§)
         {
            this.§0!1§.dispose();
         }
         if(§?!]§ == this)
         {
            §?!]§ = null;
         }
         if(this.§@^§ && this.§@^§.bitmapData)
         {
            this.§@^§.bitmapData.dispose();
            this.§@^§.bitmapData = null;
         }
      }
      
      private function §,!?§() : void
      {
         this.§%W§ = this.mStage3D.context3D;
         this.§+V§ = new Dictionary();
         if(this.§%W§)
         {
            this.§%W§.enableErrorChecking = this.§1]§;
            if(this.§%W§.driverInfo.indexOf("Software") >= 0)
            {
               this.§62§ = true;
            }
         }
         else
         {
            this.§62§ = true;
         }
         this.§]!'§();
      }
      
      private function §"#§() : void
      {
         if(this.§%!$§.numChildren > 0)
         {
            return;
         }
         if(this.§;!Y§ == null)
         {
            this.§;!Y§ = new this.§+@§();
         }
         if(this.§;!Y§ == null)
         {
            throw new Error("Invalid root class: " + this.§+@§);
         }
         this.§%!$§.addChild(this.§;!Y§);
      }
      
      private function §]!'§() : void
      {
         this.§1!$§ = true;
         this.mStage3D.x = this.§^7§.x;
         this.mStage3D.y = this.§^7§.y;
      }
      
      private function render() : void
      {
         if(!§`Y§())
         {
            return;
         }
         if(this.§1!$§)
         {
            if(this.§%W§)
            {
               this.§%W§.configureBackBuffer(this.§^7§.width,this.§^7§.height,this.§,r§,false);
            }
            this.§1!$§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§!!P§;
         this.§!!P§ = _loc1_;
         this.§%!$§.advanceTime(_loc2_);
         this.§9D§.advanceTime(_loc2_);
         this.§<!4§.advanceTime(_loc2_);
         this.§0!1§.§8!=§(this.§%!$§.stageWidth,this.§%!$§.stageHeight);
         this.§0!1§.clear(this.§%W§,this.§4!%§,1);
         this.§0!1§.§ !]§(this.§%W§,this.§#M§);
         this.§%!$§.render(this.§0!1§,1);
         this.§0!1§.§"_§();
         if(this.§2c§ != null)
         {
            this.§2c§();
            this.§2c§ = null;
         }
         this.§0!1§.finishRendering(this.§%W§);
         this.§0!1§.§8$§();
      }
      
      public function set §#-§(param1:Function) : void
      {
         this.§2c§ = param1;
      }
      
      private function §?!Y§() : void
      {
         var _loc3_:BitmapData = null;
         this.§<!I§.x = this.§^7§.x;
         this.§<!I§.y = this.§^7§.y;
         var _loc1_:int = this.§<!I§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§<!I§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§4[§.addChild(this.§<!I§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§4[§.removeChild(this.§<!I§);
         }
         if(this.§0!1§ && this.§0!1§.canvas)
         {
            this.§0!1§.setCanvasSize(this.§]!,§,this.§6F§,this.§^7§.width / this.§%!$§.stageWidth,this.§^7§.height / this.§%!$§.stageHeight);
            _loc3_ = this.§0!1§.canvas;
            if(this.§@^§.bitmapData != _loc3_)
            {
               this.§@^§.bitmapData = _loc3_;
            }
            if(this.§4[§.getChildIndex(this.§<!I§) > 0)
            {
               this.§4[§.removeChild(this.§<!I§);
               this.§4[§.addChildAt(this.§<!I§,0);
            }
         }
      }
      
      private function §1G§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§%!$§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§%!$§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§%!$§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§-H§.addChild(_loc2_);
      }
      
      public function §0!Y§() : void
      {
         §?!]§ = this;
      }
      
      public function start() : void
      {
         this.§ L§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§ L§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §6y§(param1:Boolean) : void
      {
         this.§09§ = param1;
      }
      
      private function §false§() : void
      {
         this.§3!0§ = true;
         if(this.§@^§ == null)
         {
            this.§@^§ = new Bitmap();
            this.§-H§.addChild(this.§@^§);
         }
      }
      
      private function § !E§(param1:ErrorEvent) : void
      {
         this.§false§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §#!1§(param1:flash.events.Event) : void
      {
         if(this.§#J§)
         {
            return;
         }
         ++§^r§;
         this.§#M§ = §^r§;
         if(this.§0!1§)
         {
            this.§0!1§.dispose();
         }
         if(!§&!B§.§1!>§ && this.§%W§)
         {
            this.§1G§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§0!Y§();
         this.§,!?§();
         this.§"#§();
         if(this.§%W§ && this.§62§)
         {
            this.mStage3DEnabled = false;
            this.§%W§ = null;
            this.§false§();
         }
         if(this.§%W§)
         {
            this.§0!1§ = new §2n§();
         }
         else
         {
            this.§0!1§ = new §=!§();
            this.§0!1§.setCanvasSize(this.§]!,§,this.§6F§,this.§^7§.width / this.§%!$§.stageWidth,this.§^7§.height / this.§%!$§.stageHeight);
            this.§0!1§.clear(null,this.§4!%§);
         }
         this.§<!4§.simulateMultitouch = this.§`!'§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §-!e§(param1:flash.events.Event) : void
      {
         this.§0!Y§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§!!P§;
         if(this.§ L§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§<!I§)
         {
            this.§?!Y§();
         }
      }
      
      private function §1x§(param1:flash.events.KeyboardEvent) : void
      {
         this.§0!Y§();
         this.§%!$§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§1p§;
         var _loc5_:Number = param2 / this.§6!c§;
         if(!param3)
         {
            this.§%!$§.stageWidth = this.§1p§ * _loc4_ / _loc5_;
            this.§%!$§.stageHeight = this.§6!c§;
         }
         else
         {
            this.§%!$§.stageWidth = this.§1p§;
            this.§%!$§.stageHeight = this.§6!c§ * _loc5_ / _loc4_;
         }
         this.§]!,§ = param1;
         this.§6F§ = param2;
         this.§%!$§.dispatchEvent(new §`!H§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §6L§() : void
      {
         this.setCanvasSize(this.§1p§,this.§6!c§);
      }
      
      private function §%U§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§ L§ || !this.§09§)
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
               this.§]L§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§]L§ = false;
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
               _loc5_ = §4!a§.§#!Y§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §4!a§.§>!%§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §4!a§.§,§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §4!a§.§#!Y§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §4!a§.§,§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§]L§ ? §4!a§.§>!%§ : §4!a§.§-c§;
         }
         if((_loc2_ < this.§^7§.left || _loc2_ >= this.§^7§.right || _loc3_ < this.§^7§.top || _loc3_ >= this.§^7§.bottom) && _loc5_ == §4!a§.§#!Y§)
         {
            return;
         }
         _loc2_ -= this.§^7§.x;
         _loc3_ -= this.§^7§.y;
         this.§<!4§.§#!2§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §!5§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §]j§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§+V§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§%W§ != null)
         {
            (_loc4_ = this.§%W§.createProgram()).upload(param2,param3);
            this.§+V§[param1] = _loc4_;
         }
      }
      
      public function §0!B§(param1:String) : void
      {
         var _loc2_:Program3D = this.§&V§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§+V§[param1];
         }
      }
      
      public function §&V§(param1:String) : Program3D
      {
         return this.§+V§[param1] as Program3D;
      }
      
      public function §%7§(param1:String) : Boolean
      {
         return param1 in this.§+V§;
      }
      
      public function get §58§() : Boolean
      {
         return this.§ L§;
      }
      
      public function get §[q§() : §7%§
      {
         return this.§9D§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§`!'§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§`!'§ = param1;
         if(this.§%W§)
         {
            this.§<!4§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§1]§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§1]§ = param1;
         if(this.§%W§)
         {
            this.§%W§.enableErrorChecking = param1;
         }
      }
      
      public function get §6u§() : int
      {
         return this.§,r§;
      }
      
      public function set §6u§(param1:int) : void
      {
         this.§,r§ = param1;
         this.§]!'§();
      }
      
      public function get §1L§() : Rectangle
      {
         return this.§^7§.clone();
      }
      
      public function set §1L§(param1:Rectangle) : void
      {
         this.§^7§ = param1.clone();
         this.§]!'§();
      }
      
      public function get §-H§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§<!I§ == null)
         {
            this.§<!I§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§<!I§.contextMenu = _loc1_;
            this.§?!Y§();
         }
         return this.§<!I§;
      }
      
      public function get stage() : §#!f§.Stage
      {
         return this.§%!$§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §var§() : flash.display.Stage
      {
         return this.§4[§;
      }
      
      public function get §@A§() : Boolean
      {
         return !this.§3!0§;
      }
   }
}
