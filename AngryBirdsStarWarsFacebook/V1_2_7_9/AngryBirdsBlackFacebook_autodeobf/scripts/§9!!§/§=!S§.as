package §9!!§
{
   import §1"s§.DisplayObject;
   import §1"s§.Stage;
   import §3[§.§>"5§;
   import §<"L§.Texture;
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
   import starling.events.§2!a§;
   import starling.events.§7x§;
   import starling.events.§;!9§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §=!S§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §'"n§:Rectangle;
      
      private static var §<"[§:Boolean = true;
      
      private static var §,!&§:Boolean;
      
      private static var §;e§:§=!S§;
      
      private static var §@s§:Boolean;
      
      private static var §if§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §#o§:§1"s§.Stage;
      
      private var §#"L§:Class;
      
      private var § !y§:§1"s§.DisplayObject;
      
      private var §3`§:§>"5§;
      
      private var §]#4§:Boolean;
      
      private var §?"9§:Boolean;
      
      private var §<^§:§ _§;
      
      private var §;">§:§2!a§;
      
      private var §8"I§:int;
      
      private var §""O§:Boolean;
      
      private var §%!5§:Boolean;
      
      private var §=!Y§:Number;
      
      private var § "z§:Boolean;
      
      private var §&#1§:flash.display.Stage;
      
      private var §7_§:Sprite;
      
      private var §5K§:Context3D;
      
      private var §>!g§:Dictionary;
      
      private var §7F§:int;
      
      private var §=!'§:Boolean;
      
      private var §""N§:Number;
      
      private var §+;§:Number;
      
      private var §2"`§:Number;
      
      private var §"!7§:Number;
      
      private var § >§:Number;
      
      private var §6"n§:Number;
      
      private var §&">§:Function;
      
      private var §7I§:uint;
      
      private var §3!Z§:String;
      
      private var §=]§:Bitmap;
      
      private var §!!]§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §`"i§:Boolean = false;
      
      private var §#"$§:Boolean = false;
      
      public function §=!S§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§""N§ = param3.width;
         this.§+;§ = param3.height;
         this.§2"`§ = this.§""N§;
         this.§"!7§ = this.§+;§;
         this.§ >§ = param2.stageWidth;
         this.§6"n§ = param2.stageHeight;
         §`!d§ = true;
         this.§6"h§();
         this.§#"L§ = param1;
         §'"n§ = param3;
         this.mStage3D = param4;
         this.§#o§ = new §1"s§.Stage(param3.width,param3.height,param2.color);
         this.§&#1§ = param2;
         this.§;">§ = new §2!a§(this.§#o§);
         this.§3`§ = new §>"5§();
         this.§8"I§ = 0;
         this.§""O§ = false;
         this.§%!5§ = false;
         this.§=!Y§ = getTimer() / 1000;
         this.§>!g§ = new Dictionary();
         for each(_loc6_ in this.§<!Y§)
         {
            param2.addEventListener(_loc6_,this.§>&§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8D§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8D§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#!'§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§+!#§,false,1,true);
         this.mStage3D.visible = false;
         this.§%j§(true);
         this.§7I§ = param2.color;
         this.§3!Z§ = param5;
      }
      
      public static function get §&!n§() : Boolean
      {
         if(§8y§)
         {
            return §8y§.§=!'§;
         }
         return true;
      }
      
      public static function §!!,§() : Boolean
      {
         §§push(Boolean(§;e§));
         if(Boolean(§;e§))
         {
            §§pop();
            §§push(Boolean(§;e§.§!!]§));
            if(!Boolean(§;e§.§!!]§))
            {
               §§pop();
               return §;e§.§5K§ != null && §;e§.§5K§.driverInfo != "Disposed";
            }
         }
         §§goto(addr27);
      }
      
      private static function §9"+§() : void
      {
         §,!&§ = true;
      }
      
      public static function get § "-§() : Rectangle
      {
         return §'"n§.clone();
      }
      
      public static function set § "-§(param1:Rectangle) : void
      {
         §'"n§ = param1.clone();
         §9"+§();
      }
      
      public static function set §3"4§(param1:Boolean) : void
      {
         §<"[§ = param1;
      }
      
      public static function get §3"4§() : Boolean
      {
         return §<"[§;
      }
      
      public static function get §8y§() : §=!S§
      {
         return §;e§;
      }
      
      public static function get § #"§() : §>"5§
      {
         return !!§;e§ ? §;e§.§ #"§ : null;
      }
      
      public static function get §#!3§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §#!3§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §`!d§() : Boolean
      {
         return §@s§;
      }
      
      public static function set §`!d§(param1:Boolean) : void
      {
         if(§;e§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §@s§ = param1;
      }
      
      public static function §0X§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§8y§)
         {
            return Texture.§7i§(§8y§.§5K§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§;e§.§5K§)
         {
            §;e§.§5K§.drawToBitmapData(param1);
         }
         else if(§;e§.§<^§.canvas)
         {
            _loc2_ = §;e§.§<^§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §?"0§() : §1"s§.DisplayObject
      {
         return this.§ !y§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§7I§ = param1;
      }
      
      public function get §3!?§() : Number
      {
         return this.§""N§;
      }
      
      public function get §'[§() : Number
      {
         return this.§+;§;
      }
      
      public function §`!;§() : void
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
               profile = !!this.§#"$§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§3!Z§,profile);
            }
            else
            {
               requestContext3D(this.§3!Z§);
            }
         }
         catch(e:Error)
         {
            §3"G§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§`"i§ = true;
         this.§&#1§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§8D§,false);
         this.§&#1§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§8D§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§#!'§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§+!#§,false);
         for each(_loc1_ in this.§<!Y§)
         {
            this.§&#1§.removeEventListener(_loc1_,this.§>&§,false);
         }
         for each(_loc2_ in this.§>!g§)
         {
            _loc2_.dispose();
         }
         if(this.§5K§)
         {
            this.§5K§.dispose();
         }
         if(this.§;">§)
         {
            this.§;">§.dispose();
         }
         if(this.§<^§)
         {
            this.§<^§.dispose();
         }
         if(§;e§ == this)
         {
            §;e§ = null;
         }
         if(this.§=]§ && this.§=]§.bitmapData)
         {
            this.§=]§.bitmapData.dispose();
            this.§=]§.bitmapData = null;
         }
      }
      
      private function §`"S§() : void
      {
         this.§5K§ = this.mStage3D.context3D;
         this.§>!g§ = new Dictionary();
         if(this.§5K§)
         {
            this.§5K§.enableErrorChecking = this.§%!5§;
            if(this.§5K§.driverInfo.indexOf("Software") >= 0)
            {
               this.§=!'§ = true;
            }
         }
         else
         {
            this.§=!'§ = true;
         }
         §9"+§();
      }
      
      private function § ?§() : void
      {
         if(this.§#o§.numChildren > 0)
         {
            return;
         }
         if(this.§ !y§ == null)
         {
            this.§ !y§ = new this.§#"L§();
         }
         if(this.§ !y§ == null)
         {
            throw new Error("Invalid root class: " + this.§#"L§);
         }
         this.§#o§.addChild(this.§ !y§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§5K§.configureBackBuffer(§'"n§.width,§'"n§.height,this.§8"I§,false);
            §,!&§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§!!,§())
         {
            return;
         }
         if(§,!&§)
         {
            if(this.§5K§)
            {
               this.mStage3D.x = §'"n§.x;
               this.mStage3D.y = §'"n§.y;
               this.configureBackBuffer();
               if(§,!&§)
               {
                  return;
               }
               this.setCanvasSize(§'"n§.width,§'"n§.height);
            }
            else if(this.§=]§)
            {
               §,!&§ = false;
               this.setCanvasSize(§'"n§.width,§'"n§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§=!Y§;
         this.§=!Y§ = _loc1_;
         this.§#o§.advanceTime(_loc2_);
         this.§3`§.advanceTime(_loc2_);
         this.§;">§.advanceTime(_loc2_);
         this.§<^§.§@"g§(this.§#o§.stageWidth,this.§#o§.stageHeight);
         this.§<^§.clear(this.§5K§,this.§7I§,1);
         this.§<^§.§>8§(this.§5K§,this.§7F§);
         this.§#o§.render(this.§<^§,1);
         this.§<^§.§62§();
         if(this.§&">§ != null)
         {
            this.§&">§();
            this.§&">§ = null;
         }
         this.§<^§.finishRendering(this.§5K§);
         this.§<^§.nextFrame();
      }
      
      public function set §1S§(param1:Function) : void
      {
         this.§&">§ = param1;
      }
      
      private function §?!V§() : void
      {
         var _loc3_:BitmapData = null;
         this.§7_§.x = §'"n§.x;
         this.§7_§.y = §'"n§.y;
         var _loc1_:int = this.§7_§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§7_§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§&#1§.addChild(this.§7_§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§&#1§.removeChild(this.§7_§);
         }
         if(this.§<^§ && this.§<^§.canvas)
         {
            this.§<^§.setCanvasSize(this.§2"`§,this.§"!7§,§'"n§.width / this.§#o§.stageWidth,§'"n§.height / this.§#o§.stageHeight);
            _loc3_ = this.§<^§.canvas;
            if(this.§=]§.bitmapData != _loc3_)
            {
               this.§=]§.bitmapData = _loc3_;
            }
            if(this.§&#1§.getChildIndex(this.§7_§) > 0)
            {
               this.§&#1§.removeChild(this.§7_§);
               this.§&#1§.addChildAt(this.§7_§,0);
            }
         }
      }
      
      private function §3"G§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§#o§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§#o§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§#o§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§6<§.addChild(_loc2_);
      }
      
      public function §6"h§() : void
      {
         §;e§ = this;
      }
      
      public function start() : void
      {
         this.§]#4§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§]#4§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §%j§(param1:Boolean) : void
      {
         this.§?"9§ = param1;
      }
      
      private function §>!<§() : void
      {
         this.§!!]§ = true;
         if(this.§=]§ == null)
         {
            this.§=]§ = new Bitmap();
            this.§6<§.addChild(this.§=]§);
         }
      }
      
      private function §+!#§(param1:ErrorEvent) : void
      {
         this.§>!<§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §#!'§(param1:flash.events.Event) : void
      {
         if(this.§`"i§)
         {
            return;
         }
         if(!this.§#"$§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
         {
            this.§#"$§ = true;
            this.§`!;§();
            return;
         }
         ++§if§;
         this.§7F§ = §if§;
         if(this.§<^§)
         {
            this.§<^§.dispose();
         }
         if(!§=!S§.§`!d§ && this.§5K§)
         {
            this.§3"G§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§6"h§();
         this.§`"S§();
         this.§ ?§();
         if(this.§5K§ && this.§=!'§)
         {
            this.mStage3DEnabled = false;
            this.§5K§ = null;
            this.§>!<§();
         }
         if(this.§5K§)
         {
            this.§<^§ = new § _§();
         }
         else
         {
            this.§<^§ = new §5!B§();
            this.§<^§.setCanvasSize(this.§2"`§,this.§"!7§,§'"n§.width / this.§#o§.stageWidth,§'"n§.height / this.§#o§.stageHeight);
            this.§<^§.clear(null,this.§7I§);
         }
         this.§;">§.§0!X§ = this.§""O§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§6"h§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§=!Y§;
         if(this.§]#4§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§7_§)
         {
            this.§?!V§();
         }
      }
      
      private function §8D§(param1:flash.events.KeyboardEvent) : void
      {
         this.§6"h§();
         this.§#o§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§""N§;
         var _loc4_:Number = param2 / this.§+;§;
         if(!§3"4§)
         {
            this.§#o§.stageWidth = this.§""N§ * _loc3_ / _loc4_;
            this.§#o§.stageHeight = this.§+;§;
         }
         else
         {
            this.§#o§.stageWidth = this.§""N§;
            this.§#o§.stageHeight = this.§+;§ * _loc4_ / _loc3_;
         }
         this.§2"`§ = param1;
         this.§"!7§ = param2;
         this.§#o§.dispatchEvent(new §7x§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §6"Y§() : void
      {
         this.setCanvasSize(this.§""N§,this.§+;§);
      }
      
      private function §>&§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§]#4§ || !this.§?"9§)
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
               this.§ "z§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§ "z§ = false;
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
               _loc5_ = §;!9§.§0"1§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §;!9§.§%!C§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §;!9§.§,"F§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §;!9§.§0"1§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §;!9§.§,"F§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§ "z§ ? §;!9§.§%!C§ : §;!9§.§9A§;
         }
         if((_loc2_ < §'"n§.left || _loc2_ >= §'"n§.right || _loc3_ < §'"n§.top || _loc3_ >= §'"n§.bottom) && _loc5_ == §;!9§.§0"1§)
         {
            return;
         }
         _loc2_ -= §'"n§.x;
         _loc3_ -= §'"n§.y;
         this.§;">§.§'%§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §<!Y§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §&"6§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§>!g§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§5K§ != null)
         {
            (_loc4_ = this.§5K§.createProgram()).upload(param2,param3);
            this.§>!g§[param1] = _loc4_;
         }
      }
      
      public function §7"g§(param1:String) : void
      {
         var _loc2_:Program3D = this.§@"J§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§>!g§[param1];
         }
      }
      
      public function §@"J§(param1:String) : Program3D
      {
         return this.§>!g§[param1] as Program3D;
      }
      
      public function §+f§(param1:String) : Boolean
      {
         return param1 in this.§>!g§;
      }
      
      public function get §#q§() : Boolean
      {
         return this.§]#4§;
      }
      
      public function get § #"§() : §>"5§
      {
         return this.§3`§;
      }
      
      public function get §0!X§() : Boolean
      {
         return this.§""O§;
      }
      
      public function set §0!X§(param1:Boolean) : void
      {
         this.§""O§ = param1;
         if(this.§5K§)
         {
            this.§;">§.§0!X§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§%!5§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§%!5§ = param1;
         if(this.§5K§)
         {
            this.§5K§.enableErrorChecking = param1;
         }
      }
      
      public function get §]!'§() : int
      {
         return this.§8"I§;
      }
      
      public function set §]!'§(param1:int) : void
      {
         this.§8"I§ = param1;
         §9"+§();
      }
      
      public function get §6<§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§7_§ == null)
         {
            this.§7_§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§7_§.contextMenu = _loc1_;
            this.§?!V§();
         }
         return this.§7_§;
      }
      
      public function get stage() : §1"s§.Stage
      {
         return this.§#o§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §?p§() : flash.display.Stage
      {
         return this.§&#1§;
      }
      
      public function get §+!E§() : Boolean
      {
         return !this.§!!]§;
      }
   }
}
