package §3!4§
{
   import §'!&§.DisplayObject;
   import §'!&§.Stage;
   import §+!Q§.§`l§;
   import §3"$§.Texture;
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
   import starling.events.§#!m§;
   import starling.events.§&!+§;
   import starling.events.§0!i§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class § ![§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §^!h§:Rectangle;
      
      private static var §-7§:Boolean = true;
      
      private static var §9"3§:Boolean;
      
      private static var §]S§:§ ![§;
      
      private static var §>W§:Boolean;
      
      private static var §1!M§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §,""§:§'!&§.Stage;
      
      private var §=g§:Class;
      
      private var §'<§:§'!&§.DisplayObject;
      
      private var §]L§:§`l§;
      
      private var §,-§:Boolean;
      
      private var §"u§:Boolean;
      
      private var §?C§:§3=§;
      
      private var §^c§:§&!+§;
      
      private var §`§:int;
      
      private var §4J§:Boolean;
      
      private var §]p§:Boolean;
      
      private var §3f§:Number;
      
      private var §5"!§:Boolean;
      
      private var §9I§:flash.display.Stage;
      
      private var § -§:Sprite;
      
      private var §!"2§:Context3D;
      
      private var §&"!§:Dictionary;
      
      private var §9!^§:int;
      
      private var §6"$§:Boolean;
      
      private var §-O§:Number;
      
      private var §<!T§:Number;
      
      private var §=!i§:Number;
      
      private var §]!a§:Number;
      
      private var §;"6§:Number;
      
      private var §#7§:Number;
      
      private var §3!+§:Function;
      
      private var §8!F§:uint;
      
      private var §=_§:String;
      
      private var §4">§:Bitmap;
      
      private var §6!W§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §4P§:Boolean = false;
      
      public function § ![§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§-O§ = param3.width;
         this.§<!T§ = param3.height;
         this.§=!i§ = this.§-O§;
         this.§]!a§ = this.§<!T§;
         this.§;"6§ = param2.stageWidth;
         this.§#7§ = param2.stageHeight;
         §%!<§ = true;
         this.§+!@§();
         this.§=g§ = param1;
         §^!h§ = param3;
         this.mStage3D = param4;
         this.§,""§ = new §'!&§.Stage(param3.width,param3.height,param2.color);
         this.§9I§ = param2;
         this.§^c§ = new §&!+§(this.§,""§);
         this.§]L§ = new §`l§();
         this.§`§ = 0;
         this.§4J§ = false;
         this.§]p§ = false;
         this.§3f§ = getTimer() / 1000;
         this.§&"!§ = new Dictionary();
         for each(_loc6_ in this.§#!l§)
         {
            param2.addEventListener(_loc6_,this.§'!9§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0[§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0[§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§+!0§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§6j§,false,1,true);
         this.mStage3D.visible = false;
         this.§`!>§(true);
         this.§8!F§ = param2.color;
         this.§=_§ = param5;
      }
      
      public static function get §>n§() : Boolean
      {
         if(§!G§)
         {
            return §!G§.§6"$§;
         }
         return true;
      }
      
      public static function §[c§() : Boolean
      {
         return §]S§ && (§]S§.§6!W§ || §]S§.§!"2§ != null && §]S§.§!"2§.driverInfo != "Disposed");
      }
      
      private static function §'3§() : void
      {
         §9"3§ = true;
      }
      
      public static function get §]D§() : Rectangle
      {
         return §^!h§.clone();
      }
      
      public static function set §]D§(param1:Rectangle) : void
      {
         §^!h§ = param1.clone();
         §'3§();
      }
      
      public static function set §import§(param1:Boolean) : void
      {
         §-7§ = param1;
      }
      
      public static function get §import§() : Boolean
      {
         return §-7§;
      }
      
      public static function get §!G§() : § ![§
      {
         return §]S§;
      }
      
      public static function get §7`§() : §`l§
      {
         return !!§]S§ ? §]S§.§7`§ : null;
      }
      
      public static function get §<J§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §<J§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §%!<§() : Boolean
      {
         return §>W§;
      }
      
      public static function set §%!<§(param1:Boolean) : void
      {
         if(§]S§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §>W§ = param1;
      }
      
      public static function §-1§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§!G§)
         {
            return Texture.§8!<§(§!G§.§!"2§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§]S§.§!"2§)
         {
            §]S§.§!"2§.drawToBitmapData(param1);
         }
         else if(§]S§.§?C§.canvas)
         {
            _loc2_ = §]S§.§?C§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §#M§() : §'!&§.DisplayObject
      {
         return this.§'<§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§8!F§ = param1;
      }
      
      public function get § 8§() : Number
      {
         return this.§-O§;
      }
      
      public function get §;"F§() : Number
      {
         return this.§<!T§;
      }
      
      public function §9D§() : void
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
               requestContext3D(this.§=_§,profile);
            }
            else
            {
               requestContext3D(this.§=_§);
            }
         }
         catch(e:Error)
         {
            §62§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§4P§ = true;
         this.§9I§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§0[§,false);
         this.§9I§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§0[§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§+!0§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§6j§,false);
         for each(_loc1_ in this.§#!l§)
         {
            this.§9I§.removeEventListener(_loc1_,this.§'!9§,false);
         }
         for each(_loc2_ in this.§&"!§)
         {
            _loc2_.dispose();
         }
         if(this.§!"2§)
         {
            this.§!"2§.dispose();
         }
         if(this.§^c§)
         {
            this.§^c§.dispose();
         }
         if(this.§?C§)
         {
            this.§?C§.dispose();
         }
         if(§]S§ == this)
         {
            §]S§ = null;
         }
         if(this.§4">§ && this.§4">§.bitmapData)
         {
            this.§4">§.bitmapData.dispose();
            this.§4">§.bitmapData = null;
         }
      }
      
      private function § h§() : void
      {
         this.§!"2§ = this.mStage3D.context3D;
         this.§&"!§ = new Dictionary();
         if(this.§!"2§)
         {
            this.§!"2§.enableErrorChecking = this.§]p§;
            if(this.§!"2§.driverInfo.indexOf("Software") >= 0)
            {
               this.§6"$§ = true;
            }
         }
         else
         {
            this.§6"$§ = true;
         }
         §'3§();
      }
      
      private function §;?§() : void
      {
         if(this.§,""§.numChildren > 0)
         {
            return;
         }
         if(this.§'<§ == null)
         {
            this.§'<§ = new this.§=g§();
         }
         if(this.§'<§ == null)
         {
            throw new Error("Invalid root class: " + this.§=g§);
         }
         this.§,""§.addChild(this.§'<§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§!"2§.configureBackBuffer(§^!h§.width,§^!h§.height,this.§`§,false);
            §9"3§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§[c§())
         {
            return;
         }
         if(§9"3§)
         {
            if(this.§!"2§)
            {
               this.mStage3D.x = §^!h§.x;
               this.mStage3D.y = §^!h§.y;
               this.configureBackBuffer();
               if(§9"3§)
               {
                  return;
               }
               this.setCanvasSize(§^!h§.width,§^!h§.height);
            }
            else if(this.§4">§)
            {
               §9"3§ = false;
               this.setCanvasSize(§^!h§.width,§^!h§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§3f§;
         this.§3f§ = _loc1_;
         this.§,""§.advanceTime(_loc2_);
         this.§]L§.advanceTime(_loc2_);
         this.§^c§.advanceTime(_loc2_);
         this.§?C§.§3!o§(this.§,""§.stageWidth,this.§,""§.stageHeight);
         this.§?C§.clear(this.§!"2§,this.§8!F§,1);
         this.§?C§.§1E§(this.§!"2§,this.§9!^§);
         this.§,""§.render(this.§?C§,1);
         this.§?C§.§7§();
         if(this.§3!+§ != null)
         {
            this.§3!+§();
            this.§3!+§ = null;
         }
         this.§?C§.finishRendering(this.§!"2§);
         this.§?C§.nextFrame();
      }
      
      public function set §1" §(param1:Function) : void
      {
         this.§3!+§ = param1;
      }
      
      private function §2!P§() : void
      {
         var _loc3_:BitmapData = null;
         this.§ -§.x = §^!h§.x;
         this.§ -§.y = §^!h§.y;
         var _loc1_:int = this.§ -§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§ -§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§9I§.addChild(this.§ -§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§9I§.removeChild(this.§ -§);
         }
         if(this.§?C§ && this.§?C§.canvas)
         {
            this.§?C§.setCanvasSize(this.§=!i§,this.§]!a§,§^!h§.width / this.§,""§.stageWidth,§^!h§.height / this.§,""§.stageHeight);
            _loc3_ = this.§?C§.canvas;
            if(this.§4">§.bitmapData != _loc3_)
            {
               this.§4">§.bitmapData = _loc3_;
            }
            if(this.§9I§.getChildIndex(this.§ -§) > 0)
            {
               this.§9I§.removeChild(this.§ -§);
               this.§9I§.addChildAt(this.§ -§,0);
            }
         }
      }
      
      private function §62§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§,""§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§,""§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§,""§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§2C§.addChild(_loc2_);
      }
      
      public function §+!@§() : void
      {
         §]S§ = this;
      }
      
      public function start() : void
      {
         this.§,-§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§,-§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §`!>§(param1:Boolean) : void
      {
         this.§"u§ = param1;
      }
      
      private function §'v§() : void
      {
         this.§6!W§ = true;
         if(this.§4">§ == null)
         {
            this.§4">§ = new Bitmap();
            this.§2C§.addChild(this.§4">§);
         }
      }
      
      private function §6j§(param1:ErrorEvent) : void
      {
         this.§'v§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §+!0§(param1:flash.events.Event) : void
      {
         if(this.§4P§)
         {
            return;
         }
         ++§1!M§;
         this.§9!^§ = §1!M§;
         if(this.§?C§)
         {
            this.§?C§.dispose();
         }
         if(!§ ![§.§%!<§ && this.§!"2§)
         {
            this.§62§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§+!@§();
         this.§ h§();
         this.§;?§();
         if(this.§!"2§ && this.§6"$§)
         {
            this.mStage3DEnabled = false;
            this.§!"2§ = null;
            this.§'v§();
         }
         if(this.§!"2§)
         {
            this.§?C§ = new §3=§();
         }
         else
         {
            this.§?C§ = new §&'§();
            this.§?C§.setCanvasSize(this.§=!i§,this.§]!a§,§^!h§.width / this.§,""§.stageWidth,§^!h§.height / this.§,""§.stageHeight);
            this.§?C§.clear(null,this.§8!F§);
         }
         this.§^c§.§>H§ = this.§4J§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§+!@§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§3f§;
         if(this.§,-§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§ -§)
         {
            this.§2!P§();
         }
      }
      
      private function §0[§(param1:flash.events.KeyboardEvent) : void
      {
         this.§+!@§();
         this.§,""§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§-O§;
         var _loc4_:Number = param2 / this.§<!T§;
         if(!§import§)
         {
            this.§,""§.stageWidth = this.§-O§ * _loc3_ / _loc4_;
            this.§,""§.stageHeight = this.§<!T§;
         }
         else
         {
            this.§,""§.stageWidth = this.§-O§;
            this.§,""§.stageHeight = this.§<!T§ * _loc4_ / _loc3_;
         }
         this.§=!i§ = param1;
         this.§]!a§ = param2;
         this.§,""§.dispatchEvent(new §#!m§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §&"4§() : void
      {
         this.setCanvasSize(this.§-O§,this.§<!T§);
      }
      
      private function §'!9§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§,-§ || !this.§"u§)
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
               this.§5"!§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§5"!§ = false;
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
               _loc5_ = §0!i§.§>! §;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §0!i§.§3!r§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §0!i§.§?!-§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §0!i§.§>! §;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §0!i§.§?!-§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§5"!§ ? §0!i§.§3!r§ : §0!i§.§"!j§;
         }
         if((_loc2_ < §^!h§.left || _loc2_ >= §^!h§.right || _loc3_ < §^!h§.top || _loc3_ >= §^!h§.bottom) && _loc5_ == §0!i§.§>! §)
         {
            return;
         }
         _loc2_ -= §^!h§.x;
         _loc3_ -= §^!h§.y;
         this.§^c§.§ !s§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §#!l§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §,!R§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§&"!§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§!"2§ != null)
         {
            (_loc4_ = this.§!"2§.createProgram()).upload(param2,param3);
            this.§&"!§[param1] = _loc4_;
         }
      }
      
      public function §+!<§(param1:String) : void
      {
         var _loc2_:Program3D = this.§9",§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§&"!§[param1];
         }
      }
      
      public function §9",§(param1:String) : Program3D
      {
         return this.§&"!§[param1] as Program3D;
      }
      
      public function § "D§(param1:String) : Boolean
      {
         return param1 in this.§&"!§;
      }
      
      public function get §1<§() : Boolean
      {
         return this.§,-§;
      }
      
      public function get §7`§() : §`l§
      {
         return this.§]L§;
      }
      
      public function get §>H§() : Boolean
      {
         return this.§4J§;
      }
      
      public function set §>H§(param1:Boolean) : void
      {
         this.§4J§ = param1;
         if(this.§!"2§)
         {
            this.§^c§.§>H§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§]p§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§]p§ = param1;
         if(this.§!"2§)
         {
            this.§!"2§.enableErrorChecking = param1;
         }
      }
      
      public function get §;<§() : int
      {
         return this.§`§;
      }
      
      public function set §;<§(param1:int) : void
      {
         this.§`§ = param1;
         §'3§();
      }
      
      public function get §2C§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§ -§ == null)
         {
            this.§ -§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§ -§.contextMenu = _loc1_;
            this.§2!P§();
         }
         return this.§ -§;
      }
      
      public function get stage() : §'!&§.Stage
      {
         return this.§,""§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §>a§() : flash.display.Stage
      {
         return this.§9I§;
      }
      
      public function get § 4§() : Boolean
      {
         return !this.§6!W§;
      }
   }
}
