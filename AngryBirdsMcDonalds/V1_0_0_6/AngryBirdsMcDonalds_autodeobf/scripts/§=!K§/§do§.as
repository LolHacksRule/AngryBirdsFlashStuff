package §=!K§
{
   import § !^§.Texture;
   import §2![§.DisplayObject;
   import §2![§.Stage;
   import §3A§.§;!M§;
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
   import starling.events.§ !=§;
   import starling.events.§#!!§;
   import starling.events.§4!=§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §do§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §<!1§:§do§;
      
      private static var §,`§:Boolean;
      
      private static var §0+§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §]n§:§2![§.Stage;
      
      private var §;!?§:Class;
      
      private var §^! §:§2![§.DisplayObject;
      
      private var §"!m§:§;!M§;
      
      private var §<z§:Boolean;
      
      private var §^Q§:Boolean;
      
      private var §@l§:§>[§;
      
      private var § !?§:§4!=§;
      
      private var override:int;
      
      private var §'L§:Boolean;
      
      private var §#!Q§:Boolean;
      
      private var §,Y§:Number;
      
      private var §7E§:Rectangle;
      
      private var §!y§:Boolean;
      
      private var §8f§:flash.display.Stage;
      
      private var §>;§:Sprite;
      
      private var §=A§:Context3D;
      
      private var §^!T§:Dictionary;
      
      private var §3Y§:int;
      
      private var §<d§:Boolean;
      
      private var §!!_§:Number;
      
      private var §4!e§:Number;
      
      private var §?!#§:Number;
      
      private var §6![§:Number;
      
      private var §%!$§:Number;
      
      private var §`W§:Number;
      
      private var §-!"§:Function;
      
      private var §?[§:uint;
      
      private var §^!@§:String;
      
      private var § =§:Bitmap;
      
      private var §6J§:Boolean = false;
      
      private var §5!B§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §7!R§:Boolean = false;
      
      public function §do§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§!!_§ = param3.width;
         this.§4!e§ = param3.height;
         this.§?!#§ = this.§!!_§;
         this.§6![§ = this.§4!e§;
         this.§%!$§ = param2.stageWidth;
         this.§`W§ = param2.stageHeight;
         §[J§ = true;
         this.§8[§();
         this.§;!?§ = param1;
         this.§7E§ = param3;
         this.mStage3D = param4;
         this.§]n§ = new §2![§.Stage(param3.width,param3.height,param2.color);
         this.§8f§ = param2;
         this.§ !?§ = new §4!=§(this.§]n§);
         this.§"!m§ = new §;!M§();
         this.override = 0;
         this.§'L§ = false;
         this.§#!Q§ = false;
         this.§,Y§ = getTimer() / 1000;
         this.§^!T§ = new Dictionary();
         for each(_loc6_ in this.§>Q§)
         {
            param2.addEventListener(_loc6_,this.§7a§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=8§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=8§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§<g§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§8!C§,false,1,true);
         this.mStage3D.visible = false;
         this.§-9§(true);
         this.§?[§ = param2.color;
         this.§^!@§ = param5;
      }
      
      public static function get §@$§() : Boolean
      {
         if(§4!G§)
         {
            return §4!G§.§<d§;
         }
         return true;
      }
      
      public static function §7X§() : Boolean
      {
         return §<!1§ && (§<!1§.§6J§ || §<!1§.§=A§ != null && §<!1§.§=A§.driverInfo != "Disposed");
      }
      
      public static function get §4!G§() : §do§
      {
         return §<!1§;
      }
      
      public static function get §]X§() : §;!M§
      {
         return !!§<!1§ ? §<!1§.§]X§ : null;
      }
      
      public static function get §3'§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §3'§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §[J§() : Boolean
      {
         return §,`§;
      }
      
      public static function set §[J§(param1:Boolean) : void
      {
         if(§<!1§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §,`§ = param1;
      }
      
      public static function §1a§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§4!G§)
         {
            return Texture.§8!b§(§4!G§.§=A§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§<!1§.§=A§)
         {
            §<!1§.§=A§.drawToBitmapData(param1);
         }
         else if(§<!1§.§@l§.canvas)
         {
            _loc2_ = §<!1§.§@l§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §9!e§() : §2![§.DisplayObject
      {
         return this.§^! §;
      }
      
      public function set color(param1:uint) : void
      {
         this.§?[§ = param1;
      }
      
      public function get §<!D§() : Number
      {
         return this.§!!_§;
      }
      
      public function get §]K§() : Number
      {
         return this.§4!e§;
      }
      
      public function §!X§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§^!@§);
         }
         catch(e:Error)
         {
            §[!n§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§7!R§ = true;
         this.§8f§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=8§,false);
         this.§8f§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=8§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§<g§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§8!C§,false);
         for each(_loc1_ in this.§>Q§)
         {
            this.§8f§.removeEventListener(_loc1_,this.§7a§,false);
         }
         for each(_loc2_ in this.§^!T§)
         {
            _loc2_.dispose();
         }
         if(this.§=A§)
         {
            this.§=A§.dispose();
         }
         if(this.§ !?§)
         {
            this.§ !?§.dispose();
         }
         if(this.§@l§)
         {
            this.§@l§.dispose();
         }
         if(§<!1§ == this)
         {
            §<!1§ = null;
         }
         if(this.§ =§ && this.§ =§.bitmapData)
         {
            this.§ =§.bitmapData.dispose();
            this.§ =§.bitmapData = null;
         }
      }
      
      private function §9#§() : void
      {
         this.§=A§ = this.mStage3D.context3D;
         this.§^!T§ = new Dictionary();
         if(this.§=A§)
         {
            this.§=A§.enableErrorChecking = this.§#!Q§;
            if(this.§=A§.driverInfo.indexOf("Software") >= 0)
            {
               this.§<d§ = true;
            }
         }
         else
         {
            this.§<d§ = true;
         }
         this.§[#§();
      }
      
      private function §;z§() : void
      {
         if(this.§]n§.numChildren > 0)
         {
            return;
         }
         if(this.§^! § == null)
         {
            this.§^! § = new this.§;!?§();
         }
         if(this.§^! § == null)
         {
            throw new Error("Invalid root class: " + this.§;!?§);
         }
         this.§]n§.addChild(this.§^! §);
      }
      
      private function §[#§() : void
      {
         this.§5!B§ = true;
         this.mStage3D.x = this.§7E§.x;
         this.mStage3D.y = this.§7E§.y;
      }
      
      private function render() : void
      {
         if(!§7X§())
         {
            return;
         }
         if(this.§5!B§)
         {
            if(this.§=A§)
            {
               this.§=A§.configureBackBuffer(this.§7E§.width,this.§7E§.height,this.override,false);
            }
            this.§5!B§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§,Y§;
         this.§,Y§ = _loc1_;
         this.§]n§.advanceTime(_loc2_);
         this.§"!m§.advanceTime(_loc2_);
         this.§ !?§.advanceTime(_loc2_);
         this.§@l§.§>!>§(this.§]n§.stageWidth,this.§]n§.stageHeight);
         this.§@l§.clear(this.§=A§,this.§?[§,1);
         this.§@l§.§1g§(this.§=A§,this.§3Y§);
         this.§]n§.render(this.§@l§,1);
         this.§@l§.§59§();
         if(this.§-!"§ != null)
         {
            this.§-!"§();
            this.§-!"§ = null;
         }
         this.§@l§.finishRendering(this.§=A§);
         this.§@l§.§^o§();
      }
      
      public function set §2!Q§(param1:Function) : void
      {
         this.§-!"§ = param1;
      }
      
      private function §4!P§() : void
      {
         var _loc3_:BitmapData = null;
         this.§>;§.x = this.§7E§.x;
         this.§>;§.y = this.§7E§.y;
         var _loc1_:int = this.§>;§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§>;§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§8f§.addChild(this.§>;§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§8f§.removeChild(this.§>;§);
         }
         if(this.§@l§ && this.§@l§.canvas)
         {
            this.§@l§.setCanvasSize(this.§?!#§,this.§6![§,this.§7E§.width / this.§]n§.stageWidth,this.§7E§.height / this.§]n§.stageHeight);
            _loc3_ = this.§@l§.canvas;
            if(this.§ =§.bitmapData != _loc3_)
            {
               this.§ =§.bitmapData = _loc3_;
            }
            if(this.§8f§.getChildIndex(this.§>;§) > 0)
            {
               this.§8f§.removeChild(this.§>;§);
               this.§8f§.addChildAt(this.§>;§,0);
            }
         }
      }
      
      private function §[!n§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§]n§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§]n§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§]n§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§ !g§.addChild(_loc2_);
      }
      
      public function §8[§() : void
      {
         §<!1§ = this;
      }
      
      public function start() : void
      {
         this.§<z§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§<z§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §-9§(param1:Boolean) : void
      {
         this.§^Q§ = param1;
      }
      
      private function §-!V§() : void
      {
         this.§6J§ = true;
         if(this.§ =§ == null)
         {
            this.§ =§ = new Bitmap();
            this.§ !g§.addChild(this.§ =§);
         }
      }
      
      private function §8!C§(param1:ErrorEvent) : void
      {
         this.§-!V§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §<g§(param1:flash.events.Event) : void
      {
         if(this.§7!R§)
         {
            return;
         }
         ++§0+§;
         this.§3Y§ = §0+§;
         if(this.§@l§)
         {
            this.§@l§.dispose();
         }
         if(!§do§.§[J§ && this.§=A§)
         {
            this.§[!n§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§8[§();
         this.§9#§();
         this.§;z§();
         if(this.§=A§ && this.§<d§)
         {
            this.mStage3DEnabled = false;
            this.§=A§ = null;
            this.§-!V§();
         }
         if(this.§=A§)
         {
            this.§@l§ = new §>[§();
         }
         else
         {
            this.§@l§ = new §;!k§();
            this.§@l§.setCanvasSize(this.§?!#§,this.§6![§,this.§7E§.width / this.§]n§.stageWidth,this.§7E§.height / this.§]n§.stageHeight);
            this.§@l§.clear(null,this.§?[§);
         }
         this.§ !?§.simulateMultitouch = this.§'L§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function §1+§(param1:flash.events.Event) : void
      {
         this.§8[§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§,Y§;
         if(this.§<z§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§>;§)
         {
            this.§4!P§();
         }
      }
      
      private function §=8§(param1:flash.events.KeyboardEvent) : void
      {
         this.§8[§();
         this.§]n§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§!!_§;
         var _loc5_:Number = param2 / this.§4!e§;
         if(!param3)
         {
            this.§]n§.stageWidth = this.§!!_§ * _loc4_ / _loc5_;
            this.§]n§.stageHeight = this.§4!e§;
         }
         else
         {
            this.§]n§.stageWidth = this.§!!_§;
            this.§]n§.stageHeight = this.§4!e§ * _loc5_ / _loc4_;
         }
         this.§?!#§ = param1;
         this.§6![§ = param2;
         this.§]n§.dispatchEvent(new §#!!§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §#@§() : void
      {
         this.setCanvasSize(this.§!!_§,this.§4!e§);
      }
      
      private function §7a§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§<z§ || !this.§^Q§)
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
               this.§!y§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§!y§ = false;
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
               _loc5_ = § !=§.§`U§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = § !=§.§!!§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = § !=§.§`!T§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = § !=§.§`U§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = § !=§.§`!T§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§!y§ ? § !=§.§!!§ : § !=§.§;;§;
         }
         if((_loc2_ < this.§7E§.left || _loc2_ >= this.§7E§.right || _loc3_ < this.§7E§.top || _loc3_ >= this.§7E§.bottom) && _loc5_ == § !=§.§`U§)
         {
            return;
         }
         _loc2_ -= this.§7E§.x;
         _loc3_ -= this.§7E§.y;
         this.§ !?§.§<#§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §>Q§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §%!P§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§^!T§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§=A§ != null)
         {
            (_loc4_ = this.§=A§.createProgram()).upload(param2,param3);
            this.§^!T§[param1] = _loc4_;
         }
      }
      
      public function §4!§(param1:String) : void
      {
         var _loc2_:Program3D = this.§[&§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§^!T§[param1];
         }
      }
      
      public function §[&§(param1:String) : Program3D
      {
         return this.§^!T§[param1] as Program3D;
      }
      
      public function §%d§(param1:String) : Boolean
      {
         return param1 in this.§^!T§;
      }
      
      public function get §5=§() : Boolean
      {
         return this.§<z§;
      }
      
      public function get §]X§() : §;!M§
      {
         return this.§"!m§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§'L§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.§'L§ = param1;
         if(this.§=A§)
         {
            this.§ !?§.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§#!Q§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§#!Q§ = param1;
         if(this.§=A§)
         {
            this.§=A§.enableErrorChecking = param1;
         }
      }
      
      public function get §1!U§() : int
      {
         return this.override;
      }
      
      public function set §1!U§(param1:int) : void
      {
         this.override = param1;
         this.§[#§();
      }
      
      public function get §,w§() : Rectangle
      {
         return this.§7E§.clone();
      }
      
      public function set §,w§(param1:Rectangle) : void
      {
         this.§7E§ = param1.clone();
         this.§[#§();
      }
      
      public function get § !g§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§>;§ == null)
         {
            this.§>;§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§>;§.contextMenu = _loc1_;
            this.§4!P§();
         }
         return this.§>;§;
      }
      
      public function get stage() : §2![§.Stage
      {
         return this.§]n§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §;[§() : flash.display.Stage
      {
         return this.§8f§;
      }
      
      public function get §%!=§() : Boolean
      {
         return !this.§6J§;
      }
   }
}
