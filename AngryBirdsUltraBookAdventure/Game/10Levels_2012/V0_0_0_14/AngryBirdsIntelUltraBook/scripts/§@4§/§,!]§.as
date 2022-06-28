package §@4§
{
   import §!!9§.Texture;
   import §4g§.§ !w§;
   import §9E§.DisplayObject;
   import §9E§.Stage;
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
   import starling.events.§#!x§;
   import starling.events.§4!L§;
   import starling.events.§=<§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §,!]§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §2S§:§,!]§;
      
      private static var §'!^§:Boolean;
      
      private static var §>9§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §24§:§9E§.Stage;
      
      private var §"C§:Class;
      
      private var §]E§:§9E§.DisplayObject;
      
      private var §<!,§:§ !w§;
      
      private var §3B§:Boolean;
      
      private var §8!V§:Boolean;
      
      private var § !e§:§<!I§;
      
      private var §[3§:§#!x§;
      
      private var §5B§:int;
      
      private var §,!W§:Boolean;
      
      private var §function§:Boolean;
      
      private var §;!j§:Number;
      
      private var §5P§:Rectangle;
      
      private var §?q§:Boolean;
      
      private var §6@§:flash.display.Stage;
      
      private var §@!%§:Sprite;
      
      private var §>!Z§:Context3D;
      
      private var §&U§:Dictionary;
      
      private var §66§:int;
      
      private var §%!b§:Boolean;
      
      private var §9c§:Number;
      
      private var §?b§:Number;
      
      private var §2!F§:Number;
      
      private var §%!_§:Number;
      
      private var §^W§:Number;
      
      private var §4<§:Number;
      
      private var § ?§:Function;
      
      private var §'!k§:uint;
      
      private var §1!a§:String;
      
      private var §%!6§:Bitmap;
      
      private var §,`§:Boolean = false;
      
      private var §7j§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §17§:Boolean = false;
      
      public function §,!]§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§9c§ = param3.width;
         this.§?b§ = param3.height;
         this.§2!F§ = this.§9c§;
         this.§%!_§ = this.§?b§;
         this.§^W§ = param2.stageWidth;
         this.§4<§ = param2.stageHeight;
         §=!1§ = true;
         this.§2X§();
         this.§"C§ = param1;
         this.§5P§ = param3;
         this.mStage3D = param4;
         this.§24§ = new §9E§.Stage(param3.width,param3.height,param2.color);
         this.§6@§ = param2;
         this.§[3§ = new §#!x§(this.§24§);
         this.§<!,§ = new § !w§();
         this.§5B§ = 0;
         this.§,!W§ = false;
         this.§function§ = false;
         this.§;!j§ = getTimer() / 1000;
         this.§&U§ = new Dictionary();
         for each(_loc6_ in this.§[!2§)
         {
            param2.addEventListener(_loc6_,this.§<Z§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§7p§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§7p§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§,!f§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§9!q§,false,1,true);
         this.mStage3D.visible = false;
         this.§&!y§(true);
         this.§'!k§ = param2.color;
         this.§1!a§ = param5;
      }
      
      public static function get §,?§() : Boolean
      {
         if(§!9§)
         {
            return §!9§.§%!b§;
         }
         return true;
      }
      
      public static function §1!8§() : Boolean
      {
         return §2S§ && (§2S§.§,`§ || §2S§.§>!Z§ != null && §2S§.§>!Z§.driverInfo != "Disposed");
      }
      
      public static function get §!9§() : §,!]§
      {
         return §2S§;
      }
      
      public static function get §+!Z§() : § !w§
      {
         return !!§2S§ ? §2S§.§+!Z§ : null;
      }
      
      public static function get §use§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §use§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §=!1§() : Boolean
      {
         return §'!^§;
      }
      
      public static function set §=!1§(param1:Boolean) : void
      {
         if(§2S§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §'!^§ = param1;
      }
      
      public static function §[!K§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§!9§)
         {
            return Texture.§5!M§(§!9§.§>!Z§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§2S§.§>!Z§)
         {
            §2S§.§>!Z§.drawToBitmapData(param1);
         }
         else if(§2S§.§ !e§.canvas)
         {
            _loc2_ = §2S§.§ !e§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §;j§() : §9E§.DisplayObject
      {
         return this.§]E§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§'!k§ = param1;
      }
      
      public function get §;!I§() : Number
      {
         return this.§9c§;
      }
      
      public function get §%!Y§() : Number
      {
         return this.§?b§;
      }
      
      public function §[!x§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§1!a§);
         }
         catch(e:Error)
         {
            §<<§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§17§ = true;
         this.§6@§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§7p§,false);
         this.§6@§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§7p§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§,!f§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§9!q§,false);
         for each(_loc1_ in this.§[!2§)
         {
            this.§6@§.removeEventListener(_loc1_,this.§<Z§,false);
         }
         for each(_loc2_ in this.§&U§)
         {
            _loc2_.dispose();
         }
         if(this.§>!Z§)
         {
            this.§>!Z§.dispose();
         }
         if(this.§[3§)
         {
            this.§[3§.dispose();
         }
         if(this.§ !e§)
         {
            this.§ !e§.dispose();
         }
         if(§2S§ == this)
         {
            §2S§ = null;
         }
         if(this.§%!6§ && this.§%!6§.bitmapData)
         {
            this.§%!6§.bitmapData.dispose();
            this.§%!6§.bitmapData = null;
         }
      }
      
      private function §+"§() : void
      {
         this.§>!Z§ = this.mStage3D.context3D;
         this.§&U§ = new Dictionary();
         if(this.§>!Z§)
         {
            this.§>!Z§.enableErrorChecking = this.§function§;
            if(this.§>!Z§.driverInfo.indexOf("Software") >= 0)
            {
               this.§%!b§ = true;
            }
         }
         else
         {
            this.§%!b§ = true;
         }
         this.§3!-§();
      }
      
      private function §@O§() : void
      {
         if(this.§24§.numChildren > 0)
         {
            return;
         }
         if(this.§]E§ == null)
         {
            this.§]E§ = new this.§"C§();
         }
         if(this.§]E§ == null)
         {
            throw new Error("Invalid root class: " + this.§"C§);
         }
         this.§24§.addChild(this.§]E§);
      }
      
      private function §3!-§() : void
      {
         this.§7j§ = true;
         this.mStage3D.x = this.§5P§.x;
         this.mStage3D.y = this.§5P§.y;
      }
      
      private function render() : void
      {
         if(!§1!8§())
         {
            return;
         }
         if(this.§7j§)
         {
            if(this.§>!Z§)
            {
               this.§>!Z§.configureBackBuffer(this.§5P§.width,this.§5P§.height,this.§5B§,false);
            }
            this.§7j§ = false;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§;!j§;
         this.§;!j§ = _loc1_;
         this.§24§.advanceTime(_loc2_);
         this.§<!,§.advanceTime(_loc2_);
         this.§[3§.advanceTime(_loc2_);
         this.§ !e§.§&!j§(this.§24§.stageWidth,this.§24§.stageHeight);
         this.§ !e§.clear(this.§>!Z§,this.§'!k§,1);
         this.§ !e§.§-F§(this.§>!Z§,this.§66§);
         this.§24§.render(this.§ !e§,1);
         this.§ !e§.§ ;§();
         if(this.§ ?§ != null)
         {
            this.§ ?§();
            this.§ ?§ = null;
         }
         this.§ !e§.finishRendering(this.§>!Z§);
         this.§ !e§.§3!A§();
      }
      
      public function set §;!,§(param1:Function) : void
      {
         this.§ ?§ = param1;
      }
      
      private function §2J§() : void
      {
         var _loc3_:BitmapData = null;
         this.§@!%§.x = this.§5P§.x;
         this.§@!%§.y = this.§5P§.y;
         var _loc1_:int = this.§@!%§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@!%§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§6@§.addChild(this.§@!%§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§6@§.removeChild(this.§@!%§);
         }
         if(this.§ !e§ && this.§ !e§.canvas)
         {
            this.§ !e§.setCanvasSize(this.§2!F§,this.§%!_§,this.§5P§.width / this.§24§.stageWidth,this.§5P§.height / this.§24§.stageHeight);
            _loc3_ = this.§ !e§.canvas;
            if(this.§%!6§.bitmapData != _loc3_)
            {
               this.§%!6§.bitmapData = _loc3_;
            }
            if(this.§6@§.getChildIndex(this.§@!%§) > 0)
            {
               this.§6@§.removeChild(this.§@!%§);
               this.§6@§.addChildAt(this.§@!%§,0);
            }
         }
      }
      
      private function §<<§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§24§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§24§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§24§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§@J§.addChild(_loc2_);
      }
      
      public function §2X§() : void
      {
         §2S§ = this;
      }
      
      public function start() : void
      {
         this.§3B§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§3B§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §&!y§(param1:Boolean) : void
      {
         this.§8!V§ = param1;
      }
      
      private function § !g§() : void
      {
         this.§,`§ = true;
         if(this.§%!6§ == null)
         {
            this.§%!6§ = new Bitmap();
            this.§@J§.addChild(this.§%!6§);
         }
      }
      
      private function §9!q§(param1:ErrorEvent) : void
      {
         this.§ !g§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §,!f§(param1:flash.events.Event) : void
      {
         if(this.§17§)
         {
            return;
         }
         ++§>9§;
         this.§66§ = §>9§;
         if(this.§ !e§)
         {
            this.§ !e§.dispose();
         }
         if(!§,!]§.§=!1§ && this.§>!Z§)
         {
            this.§<<§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§2X§();
         this.§+"§();
         this.§@O§();
         if(this.§>!Z§ && this.§%!b§)
         {
            this.mStage3DEnabled = false;
            this.§>!Z§ = null;
            this.§ !g§();
         }
         if(this.§>!Z§)
         {
            this.§ !e§ = new §<!I§();
         }
         else
         {
            this.§ !e§ = new §^O§();
            this.§ !e§.setCanvasSize(this.§2!F§,this.§%!_§,this.§5P§.width / this.§24§.stageWidth,this.§5P§.height / this.§24§.stageHeight);
            this.§ !e§.clear(null,this.§'!k§);
         }
         this.§[3§.§`!1§ = this.§,!W§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§2X§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§;!j§;
         if(this.§3B§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§@!%§)
         {
            this.§2J§();
         }
      }
      
      private function §7p§(param1:flash.events.KeyboardEvent) : void
      {
         this.§2X§();
         this.§24§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§9c§;
         var _loc5_:Number = param2 / this.§?b§;
         if(!param3)
         {
            this.§24§.stageWidth = this.§9c§ * _loc4_ / _loc5_;
            this.§24§.stageHeight = this.§?b§;
         }
         else
         {
            this.§24§.stageWidth = this.§9c§;
            this.§24§.stageHeight = this.§?b§ * _loc5_ / _loc4_;
         }
         this.§2!F§ = param1;
         this.§%!_§ = param2;
         this.§24§.dispatchEvent(new §4!L§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §;!^§() : void
      {
         this.setCanvasSize(this.§9c§,this.§?b§);
      }
      
      private function §<Z§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§3B§ || !this.§8!V§)
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
               this.§?q§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§?q§ = false;
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
               _loc5_ = §=<§.§4c§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §=<§.§!!x§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §=<§.§<%§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §=<§.§4c§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §=<§.§<%§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§?q§ ? §=<§.§!!x§ : §=<§.§+!+§;
         }
         if((_loc2_ < this.§5P§.left || _loc2_ >= this.§5P§.right || _loc3_ < this.§5P§.top || _loc3_ >= this.§5P§.bottom) && _loc5_ == §=<§.§4c§)
         {
            return;
         }
         _loc2_ -= this.§5P§.x;
         _loc3_ -= this.§5P§.y;
         this.§[3§.§!4§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §[!2§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §2+§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§&U§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§>!Z§ != null)
         {
            (_loc4_ = this.§>!Z§.createProgram()).upload(param2,param3);
            this.§&U§[param1] = _loc4_;
         }
      }
      
      public function §&!c§(param1:String) : void
      {
         var _loc2_:Program3D = this.§,g§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§&U§[param1];
         }
      }
      
      public function §,g§(param1:String) : Program3D
      {
         return this.§&U§[param1] as Program3D;
      }
      
      public function §'!§(param1:String) : Boolean
      {
         return param1 in this.§&U§;
      }
      
      public function get §&h§() : Boolean
      {
         return this.§3B§;
      }
      
      public function get §+!Z§() : § !w§
      {
         return this.§<!,§;
      }
      
      public function get §`!1§() : Boolean
      {
         return this.§,!W§;
      }
      
      public function set §`!1§(param1:Boolean) : void
      {
         this.§,!W§ = param1;
         if(this.§>!Z§)
         {
            this.§[3§.§`!1§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§function§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§function§ = param1;
         if(this.§>!Z§)
         {
            this.§>!Z§.enableErrorChecking = param1;
         }
      }
      
      public function get §5n§() : int
      {
         return this.§5B§;
      }
      
      public function set §5n§(param1:int) : void
      {
         this.§5B§ = param1;
         this.§3!-§();
      }
      
      public function get §#S§() : Rectangle
      {
         return this.§5P§.clone();
      }
      
      public function set §#S§(param1:Rectangle) : void
      {
         this.§5P§ = param1.clone();
         this.§3!-§();
      }
      
      public function get §@J§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§@!%§ == null)
         {
            this.§@!%§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§@!%§.contextMenu = _loc1_;
            this.§2J§();
         }
         return this.§@!%§;
      }
      
      public function get stage() : §9E§.Stage
      {
         return this.§24§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §=S§() : flash.display.Stage
      {
         return this.§6@§;
      }
      
      public function get §@`§() : Boolean
      {
         return !this.§,`§;
      }
   }
}
