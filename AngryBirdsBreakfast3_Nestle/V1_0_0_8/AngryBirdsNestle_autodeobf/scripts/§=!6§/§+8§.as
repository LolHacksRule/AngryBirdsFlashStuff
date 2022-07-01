package §=!6§
{
   import §&!;§.Texture;
   import §-![§.DisplayObject;
   import §-![§.Stage;
   import §7!i§.§-!>§;
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
   import starling.events.§"!]§;
   import starling.events.§'!+§;
   import starling.events.§>"7§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §+8§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §;!b§:Rectangle;
      
      private static var §5"§:Boolean = true;
      
      private static var §&S§:Boolean;
      
      private static var §#!5§:§+8§;
      
      private static var §0!<§:Boolean;
      
      private static var §8!g§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §;s§:§-![§.Stage;
      
      private var §&,§:Class;
      
      private var §=K§:§-![§.DisplayObject;
      
      private var §,!L§:§-!>§;
      
      private var §6e§:Boolean;
      
      private var §!!<§:Boolean;
      
      private var §@V§:§]q§;
      
      private var § !y§:§>"7§;
      
      private var §9![§:int;
      
      private var §]I§:Boolean;
      
      private var §2!r§:Boolean;
      
      private var §0!A§:Number;
      
      private var §@q§:Boolean;
      
      private var §9!k§:flash.display.Stage;
      
      private var §^H§:Sprite;
      
      private var §7]§:Context3D;
      
      private var §`!B§:Dictionary;
      
      private var §#p§:int;
      
      private var §6u§:Boolean;
      
      private var §6!9§:Number;
      
      private var §4!4§:Number;
      
      private var §0!M§:Number;
      
      private var §[g§:Number;
      
      private var §#!B§:Number;
      
      private var §`!N§:Number;
      
      private var §&!t§:Function;
      
      private var §+?§:uint;
      
      private var §!C§:String;
      
      private var §@J§:Bitmap;
      
      private var §=-§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §0'§:Boolean = false;
      
      private var §&!m§:Boolean = false;
      
      public function §+8§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§6!9§ = param3.width;
         this.§4!4§ = param3.height;
         this.§0!M§ = this.§6!9§;
         this.§[g§ = this.§4!4§;
         this.§#!B§ = param2.stageWidth;
         this.§`!N§ = param2.stageHeight;
         §`8§ = true;
         this.§1",§();
         this.§&,§ = param1;
         §;!b§ = param3;
         this.mStage3D = param4;
         this.§;s§ = new §-![§.Stage(param3.width,param3.height,param2.color);
         this.§9!k§ = param2;
         this.§ !y§ = new §>"7§(this.§;s§);
         this.§,!L§ = new §-!>§();
         this.§9![§ = 0;
         this.§]I§ = false;
         this.§2!r§ = false;
         this.§0!A§ = getTimer() / 1000;
         this.§`!B§ = new Dictionary();
         for each(_loc6_ in this.§%E§)
         {
            param2.addEventListener(_loc6_,this.§!!-§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§1"6§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§1"6§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§1"5§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§=f§,false,1,true);
         this.mStage3D.visible = false;
         this.§3+§(true);
         this.§+?§ = param2.color;
         this.§!C§ = param5;
      }
      
      public static function get §0"$§() : Boolean
      {
         if(§0j§)
         {
            return §0j§.§6u§;
         }
         return true;
      }
      
      public static function §,<§() : Boolean
      {
         return §#!5§ && (§#!5§.§=-§ || §#!5§.§7]§ != null && §#!5§.§7]§.driverInfo != "Disposed");
      }
      
      private static function § %§() : void
      {
         §&S§ = true;
      }
      
      public static function get §7!S§() : Rectangle
      {
         return §;!b§.clone();
      }
      
      public static function set §7!S§(param1:Rectangle) : void
      {
         §;!b§ = param1.clone();
         § %§();
      }
      
      public static function set §-C§(param1:Boolean) : void
      {
         §5"§ = param1;
      }
      
      public static function get §-C§() : Boolean
      {
         return §5"§;
      }
      
      public static function get §0j§() : §+8§
      {
         return §#!5§;
      }
      
      public static function get §@%§() : §-!>§
      {
         return !!§#!5§ ? §#!5§.§@%§ : null;
      }
      
      public static function get §+!J§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §+!J§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §`8§() : Boolean
      {
         return §0!<§;
      }
      
      public static function set §`8§(param1:Boolean) : void
      {
         if(§#!5§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §0!<§ = param1;
      }
      
      public static function §1!@§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§0j§)
         {
            return Texture.§"!&§(§0j§.§7]§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§#!5§.§7]§)
         {
            §#!5§.§7]§.drawToBitmapData(param1);
         }
         else if(§#!5§.§@V§.canvas)
         {
            _loc2_ = §#!5§.§@V§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §5!T§() : §-![§.DisplayObject
      {
         return this.§=K§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§+?§ = param1;
      }
      
      public function get §7z§() : Number
      {
         return this.§6!9§;
      }
      
      public function get § @§() : Number
      {
         return this.§4!4§;
      }
      
      public function § V§() : void
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
               profile = !!this.§&!m§ ? "baselineConstrained" : "baseline";
               requestContext3D(this.§!C§,profile);
            }
            else
            {
               requestContext3D(this.§!C§);
            }
         }
         catch(e:Error)
         {
            §&K§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§0'§ = true;
         this.§9!k§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§1"6§,false);
         this.§9!k§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§1"6§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§1"5§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§=f§,false);
         for each(_loc1_ in this.§%E§)
         {
            this.§9!k§.removeEventListener(_loc1_,this.§!!-§,false);
         }
         for each(_loc2_ in this.§`!B§)
         {
            _loc2_.dispose();
         }
         if(this.§7]§)
         {
            this.§7]§.dispose();
         }
         if(this.§ !y§)
         {
            this.§ !y§.dispose();
         }
         if(this.§@V§)
         {
            this.§@V§.dispose();
         }
         if(§#!5§ == this)
         {
            §#!5§ = null;
         }
         if(this.§@J§ && this.§@J§.bitmapData)
         {
            this.§@J§.bitmapData.dispose();
            this.§@J§.bitmapData = null;
         }
      }
      
      private function §^;§() : void
      {
         this.§7]§ = this.mStage3D.context3D;
         this.§`!B§ = new Dictionary();
         if(this.§7]§)
         {
            this.§7]§.enableErrorChecking = this.§2!r§;
            if(this.§7]§.driverInfo.indexOf("Software") >= 0)
            {
               this.§6u§ = true;
            }
         }
         else
         {
            this.§6u§ = true;
         }
         § %§();
      }
      
      private function §+!H§() : void
      {
         if(this.§;s§.numChildren > 0)
         {
            return;
         }
         if(this.§=K§ == null)
         {
            this.§=K§ = new this.§&,§();
         }
         if(this.§=K§ == null)
         {
            throw new Error("Invalid root class: " + this.§&,§);
         }
         this.§;s§.addChild(this.§=K§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§7]§.configureBackBuffer(§;!b§.width,§;!b§.height,this.§9![§,false);
            §&S§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§,<§())
         {
            return;
         }
         if(§&S§)
         {
            if(this.§7]§)
            {
               this.mStage3D.x = §;!b§.x;
               this.mStage3D.y = §;!b§.y;
               this.configureBackBuffer();
               if(§&S§)
               {
                  return;
               }
               this.setCanvasSize(§;!b§.width,§;!b§.height);
            }
            else if(this.§@J§)
            {
               §&S§ = false;
               this.setCanvasSize(§;!b§.width,§;!b§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§0!A§;
         this.§0!A§ = _loc1_;
         this.§;s§.advanceTime(_loc2_);
         this.§,!L§.advanceTime(_loc2_);
         this.§ !y§.advanceTime(_loc2_);
         this.§@V§.§%t§(this.§;s§.stageWidth,this.§;s§.stageHeight);
         this.§@V§.clear(this.§7]§,this.§+?§,1);
         this.§@V§.§'!=§(this.§7]§,this.§#p§);
         this.§;s§.render(this.§@V§,1);
         this.§@V§.§`!p§();
         if(this.§&!t§ != null)
         {
            this.§&!t§();
            this.§&!t§ = null;
         }
         this.§@V§.finishRendering(this.§7]§);
         this.§@V§.nextFrame();
      }
      
      public function set §^!X§(param1:Function) : void
      {
         this.§&!t§ = param1;
      }
      
      private function §;A§() : void
      {
         var _loc3_:BitmapData = null;
         this.§^H§.x = §;!b§.x;
         this.§^H§.y = §;!b§.y;
         var _loc1_:int = this.§^H§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§^H§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§9!k§.addChild(this.§^H§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§9!k§.removeChild(this.§^H§);
         }
         if(this.§@V§ && this.§@V§.canvas)
         {
            this.§@V§.setCanvasSize(this.§0!M§,this.§[g§,§;!b§.width / this.§;s§.stageWidth,§;!b§.height / this.§;s§.stageHeight);
            _loc3_ = this.§@V§.canvas;
            if(this.§@J§.bitmapData != _loc3_)
            {
               this.§@J§.bitmapData = _loc3_;
            }
            if(this.§9!k§.getChildIndex(this.§^H§) > 0)
            {
               this.§9!k§.removeChild(this.§^H§);
               this.§9!k§.addChildAt(this.§^H§,0);
            }
         }
      }
      
      private function §&K§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§;s§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§;s§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§;s§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§`_§.addChild(_loc2_);
      }
      
      public function §1",§() : void
      {
         §#!5§ = this;
      }
      
      public function start() : void
      {
         this.§6e§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§6e§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §3+§(param1:Boolean) : void
      {
         this.§!!<§ = param1;
      }
      
      private function §>!P§() : void
      {
         this.§=-§ = true;
         if(this.§@J§ == null)
         {
            this.§@J§ = new Bitmap();
            this.§`_§.addChild(this.§@J§);
         }
      }
      
      private function §=f§(param1:ErrorEvent) : void
      {
         this.§>!P§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §1"5§(param1:flash.events.Event) : void
      {
         if(this.§0'§)
         {
            return;
         }
         if(!this.§&!m§ && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
         {
            this.§&!m§ = true;
            this.§ V§();
            return;
         }
         ++§8!g§;
         this.§#p§ = §8!g§;
         if(this.§@V§)
         {
            this.§@V§.dispose();
         }
         if(!§+8§.§`8§ && this.§7]§)
         {
            this.§&K§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§1",§();
         this.§^;§();
         this.§+!H§();
         if(this.§7]§ && this.§6u§)
         {
            this.mStage3DEnabled = false;
            this.§7]§ = null;
            this.§>!P§();
         }
         if(this.§7]§)
         {
            this.§@V§ = new §]q§();
         }
         else
         {
            this.§@V§ = new §]0§();
            this.§@V§.setCanvasSize(this.§0!M§,this.§[g§,§;!b§.width / this.§;s§.stageWidth,§;!b§.height / this.§;s§.stageHeight);
            this.§@V§.clear(null,this.§+?§);
         }
         this.§ !y§.§#"%§ = this.§]I§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§1",§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§0!A§;
         if(this.§6e§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§^H§)
         {
            this.§;A§();
         }
      }
      
      private function §1"6§(param1:flash.events.KeyboardEvent) : void
      {
         this.§1",§();
         this.§;s§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§6!9§;
         var _loc4_:Number = param2 / this.§4!4§;
         if(!§-C§)
         {
            this.§;s§.stageWidth = this.§6!9§ * _loc3_ / _loc4_;
            this.§;s§.stageHeight = this.§4!4§;
         }
         else
         {
            this.§;s§.stageWidth = this.§6!9§;
            this.§;s§.stageHeight = this.§4!4§ * _loc4_ / _loc3_;
         }
         this.§0!M§ = param1;
         this.§[g§ = param2;
         this.§;s§.dispatchEvent(new §"!]§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §7!"§() : void
      {
         this.setCanvasSize(this.§6!9§,this.§4!4§);
      }
      
      private function §!!-§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§6e§ || !this.§!!<§)
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
               this.§@q§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§@q§ = false;
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
               _loc5_ = §'!+§.§-@§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §'!+§.§'p§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §'!+§.§^N§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §'!+§.§-@§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §'!+§.§^N§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§@q§ ? §'!+§.§'p§ : §'!+§.HOVER;
         }
         if((_loc2_ < §;!b§.left || _loc2_ >= §;!b§.right || _loc3_ < §;!b§.top || _loc3_ >= §;!b§.bottom) && _loc5_ == §'!+§.§-@§)
         {
            return;
         }
         _loc2_ -= §;!b§.x;
         _loc3_ -= §;!b§.y;
         this.§ !y§.§6R§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §%E§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §@X§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§`!B§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§7]§ != null)
         {
            (_loc4_ = this.§7]§.createProgram()).upload(param2,param3);
            this.§`!B§[param1] = _loc4_;
         }
      }
      
      public function §%N§(param1:String) : void
      {
         var _loc2_:Program3D = this.§'!J§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§`!B§[param1];
         }
      }
      
      public function §'!J§(param1:String) : Program3D
      {
         return this.§`!B§[param1] as Program3D;
      }
      
      public function §?K§(param1:String) : Boolean
      {
         return param1 in this.§`!B§;
      }
      
      public function get §]§() : Boolean
      {
         return this.§6e§;
      }
      
      public function get §@%§() : §-!>§
      {
         return this.§,!L§;
      }
      
      public function get §#"%§() : Boolean
      {
         return this.§]I§;
      }
      
      public function set §#"%§(param1:Boolean) : void
      {
         this.§]I§ = param1;
         if(this.§7]§)
         {
            this.§ !y§.§#"%§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§2!r§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§2!r§ = param1;
         if(this.§7]§)
         {
            this.§7]§.enableErrorChecking = param1;
         }
      }
      
      public function get §`Q§() : int
      {
         return this.§9![§;
      }
      
      public function set §`Q§(param1:int) : void
      {
         this.§9![§ = param1;
         § %§();
      }
      
      public function get §`_§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§^H§ == null)
         {
            this.§^H§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§^H§.contextMenu = _loc1_;
            this.§;A§();
         }
         return this.§^H§;
      }
      
      public function get stage() : §-![§.Stage
      {
         return this.§;s§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §,E§() : flash.display.Stage
      {
         return this.§9!k§;
      }
      
      public function get § H§() : Boolean
      {
         return !this.§=-§;
      }
   }
}
