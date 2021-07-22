package §"a§
{
   import §'!6§.DisplayObject;
   import §'!6§.Stage;
   import §+"Y§.§#v§;
   import §<5§.Texture;
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
   import starling.events.§#%§;
   import starling.events.§%a§;
   import starling.events.§'! §;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §!"J§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §,!8§:Rectangle;
      
      private static var §7"C§:Boolean = true;
      
      private static var §@K§:Boolean;
      
      private static var §5"Z§:§!"J§;
      
      private static var §02§:Boolean;
      
      private static var §1!+§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var §,">§:§'!6§.Stage;
      
      private var §]e§:Class;
      
      private var §&!!§:§'!6§.DisplayObject;
      
      private var §'z§:§#v§;
      
      private var §&K§:Boolean;
      
      private var §6!v§:Boolean;
      
      private var §-!q§:§>w§;
      
      private var §"?§:§#%§;
      
      private var §5!Q§:int;
      
      private var §^s§:Boolean;
      
      private var §>3§:Boolean;
      
      private var §%!5§:Number;
      
      private var §@W§:Boolean;
      
      private var §^b§:flash.display.Stage;
      
      private var §2"Z§:Sprite;
      
      private var §-!A§:Context3D;
      
      private var §,F§:Dictionary;
      
      private var §9";§:int;
      
      private var §7"F§:Boolean;
      
      private var §-!t§:Number;
      
      private var §5"=§:Number;
      
      private var §5V§:Number;
      
      private var §,!D§:Number;
      
      private var §+"T§:Number;
      
      private var §,"3§:Number;
      
      private var §"";§:Function;
      
      private var §+!m§:uint;
      
      private var §?"9§:String;
      
      private var §""?§:Bitmap;
      
      private var §>D§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §&"@§:Boolean = false;
      
      public function §!"J§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§-!t§ = param3.width;
         this.§5"=§ = param3.height;
         this.§5V§ = this.§-!t§;
         this.§,!D§ = this.§5"=§;
         this.§+"T§ = param2.stageWidth;
         this.§,"3§ = param2.stageHeight;
         §27§ = true;
         this.§?!U§();
         this.§]e§ = param1;
         §,!8§ = param3;
         this.mStage3D = param4;
         this.§,">§ = new §'!6§.Stage(param3.width,param3.height,param2.color);
         this.§^b§ = param2;
         this.§"?§ = new §#%§(this.§,">§);
         this.§'z§ = new §#v§();
         this.§5!Q§ = 0;
         this.§^s§ = false;
         this.§>3§ = false;
         this.§%!5§ = getTimer() / 1000;
         this.§,F§ = new Dictionary();
         for each(_loc6_ in this.§#"1§)
         {
            param2.addEventListener(_loc6_,this.§4@§,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ !y§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ !y§,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§?3§,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§;!z§,false,1,true);
         this.mStage3D.visible = false;
         this.§>"1§(true);
         this.§+!m§ = param2.color;
         this.§?"9§ = param5;
      }
      
      public static function get §!X§() : Boolean
      {
         if(§1&§)
         {
            return §1&§.§7"F§;
         }
         return true;
      }
      
      public static function §+",§() : Boolean
      {
         return §5"Z§ && (§5"Z§.§>D§ || §5"Z§.§-!A§ != null && §5"Z§.§-!A§.driverInfo != "Disposed");
      }
      
      private static function §8"0§() : void
      {
         §@K§ = true;
      }
      
      public static function get §8N§() : Rectangle
      {
         return §,!8§.clone();
      }
      
      public static function set §8N§(param1:Rectangle) : void
      {
         §,!8§ = param1.clone();
         §8"0§();
      }
      
      public static function set §8!'§(param1:Boolean) : void
      {
         §7"C§ = param1;
      }
      
      public static function get §8!'§() : Boolean
      {
         return §7"C§;
      }
      
      public static function get §1&§() : §!"J§
      {
         return §5"Z§;
      }
      
      public static function get §<!C§() : §#v§
      {
         return !!§5"Z§ ? §5"Z§.§<!C§ : null;
      }
      
      public static function get §2",§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §2",§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get §27§() : Boolean
      {
         return §02§;
      }
      
      public static function set §27§(param1:Boolean) : void
      {
         if(§5"Z§ != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §02§ = param1;
      }
      
      public static function §^G§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§1&§)
         {
            return Texture.§""C§(§1&§.§-!A§,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(§5"Z§.§-!A§)
         {
            §5"Z§.§-!A§.drawToBitmapData(param1);
         }
         else if(§5"Z§.§-!q§.canvas)
         {
            _loc2_ = §5"Z§.§-!q§.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get §7Z§() : §'!6§.DisplayObject
      {
         return this.§&!!§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§+!m§ = param1;
      }
      
      public function get §@[§() : Number
      {
         return this.§-!t§;
      }
      
      public function get §!A§() : Number
      {
         return this.§5"=§;
      }
      
      public function §?"D§() : void
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
               requestContext3D(this.§?"9§,profile);
            }
            else
            {
               requestContext3D(this.§?"9§);
            }
         }
         catch(e:Error)
         {
            §+"Q§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.§&"@§ = true;
         this.§^b§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§ !y§,false);
         this.§^b§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§ !y§,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§?3§,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§;!z§,false);
         for each(_loc1_ in this.§#"1§)
         {
            this.§^b§.removeEventListener(_loc1_,this.§4@§,false);
         }
         for each(_loc2_ in this.§,F§)
         {
            _loc2_.dispose();
         }
         if(this.§-!A§)
         {
            this.§-!A§.dispose();
         }
         if(this.§"?§)
         {
            this.§"?§.dispose();
         }
         if(this.§-!q§)
         {
            this.§-!q§.dispose();
         }
         if(§5"Z§ == this)
         {
            §5"Z§ = null;
         }
         if(this.§""?§ && this.§""?§.bitmapData)
         {
            this.§""?§.bitmapData.dispose();
            this.§""?§.bitmapData = null;
         }
      }
      
      private function §6!X§() : void
      {
         this.§-!A§ = this.mStage3D.context3D;
         this.§,F§ = new Dictionary();
         if(this.§-!A§)
         {
            this.§-!A§.enableErrorChecking = this.§>3§;
            if(this.§-!A§.driverInfo.indexOf("Software") >= 0)
            {
               this.§7"F§ = true;
            }
         }
         else
         {
            this.§7"F§ = true;
         }
         §8"0§();
      }
      
      private function §,"S§() : void
      {
         if(this.§,">§.numChildren > 0)
         {
            return;
         }
         if(this.§&!!§ == null)
         {
            this.§&!!§ = new this.§]e§();
         }
         if(this.§&!!§ == null)
         {
            throw new Error("Invalid root class: " + this.§]e§);
         }
         this.§,">§.addChild(this.§&!!§);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.§-!A§.configureBackBuffer(§,!8§.width,§,!8§.height,this.§5!Q§,false);
            §@K§ = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!§+",§())
         {
            return;
         }
         if(§@K§)
         {
            if(this.§-!A§)
            {
               this.mStage3D.x = §,!8§.x;
               this.mStage3D.y = §,!8§.y;
               this.configureBackBuffer();
               if(§@K§)
               {
                  return;
               }
               this.setCanvasSize(§,!8§.width,§,!8§.height);
            }
            else if(this.§""?§)
            {
               §@K§ = false;
               this.setCanvasSize(§,!8§.width,§,!8§.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§%!5§;
         this.§%!5§ = _loc1_;
         this.§,">§.advanceTime(_loc2_);
         this.§'z§.advanceTime(_loc2_);
         this.§"?§.advanceTime(_loc2_);
         this.§-!q§.§2M§(this.§,">§.stageWidth,this.§,">§.stageHeight);
         this.§-!q§.clear(this.§-!A§,this.§+!m§,1);
         this.§-!q§.§&!-§(this.§-!A§,this.§9";§);
         this.§,">§.render(this.§-!q§,1);
         this.§-!q§.§1"U§();
         if(this.§"";§ != null)
         {
            this.§"";§();
            this.§"";§ = null;
         }
         this.§-!q§.finishRendering(this.§-!A§);
         this.§-!q§.§@<§();
      }
      
      public function set §`3§(param1:Function) : void
      {
         this.§"";§ = param1;
      }
      
      private function §8!!§() : void
      {
         var _loc3_:BitmapData = null;
         this.§2"Z§.x = §,!8§.x;
         this.§2"Z§.y = §,!8§.y;
         var _loc1_:int = this.§2"Z§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§2"Z§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§^b§.addChild(this.§2"Z§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§^b§.removeChild(this.§2"Z§);
         }
         if(this.§-!q§ && this.§-!q§.canvas)
         {
            this.§-!q§.setCanvasSize(this.§5V§,this.§,!D§,§,!8§.width / this.§,">§.stageWidth,§,!8§.height / this.§,">§.stageHeight);
            _loc3_ = this.§-!q§.canvas;
            if(this.§""?§.bitmapData != _loc3_)
            {
               this.§""?§.bitmapData = _loc3_;
            }
            if(this.§^b§.getChildIndex(this.§2"Z§) > 0)
            {
               this.§^b§.removeChild(this.§2"Z§);
               this.§^b§.addChildAt(this.§2"Z§,0);
            }
         }
      }
      
      private function §+"Q§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.§,">§.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.§,">§.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.§,">§.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§<"!§.addChild(_loc2_);
      }
      
      public function §?!U§() : void
      {
         §5"Z§ = this;
      }
      
      public function start() : void
      {
         this.§&K§ = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.§&K§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §>"1§(param1:Boolean) : void
      {
         this.§6!v§ = param1;
      }
      
      private function § !F§() : void
      {
         this.§>D§ = true;
         if(this.§""?§ == null)
         {
            this.§""?§ = new Bitmap();
            this.§<"!§.addChild(this.§""?§);
         }
      }
      
      private function §;!z§(param1:ErrorEvent) : void
      {
         this.§ !F§();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function §?3§(param1:flash.events.Event) : void
      {
         if(this.§&"@§)
         {
            return;
         }
         ++§1!+§;
         this.§9";§ = §1!+§;
         if(this.§-!q§)
         {
            this.§-!q§.dispose();
         }
         if(!§!"J§.§27§ && this.§-!A§)
         {
            this.§+"Q§("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.§?!U§();
         this.§6!X§();
         this.§,"S§();
         if(this.§-!A§ && this.§7"F§)
         {
            this.mStage3DEnabled = false;
            this.§-!A§ = null;
            this.§ !F§();
         }
         if(this.§-!A§)
         {
            this.§-!q§ = new §>w§();
         }
         else
         {
            this.§-!q§ = new §'" §();
            this.§-!q§.setCanvasSize(this.§5V§,this.§,!D§,§,!8§.width / this.§,">§.stageWidth,§,!8§.height / this.§,">§.stageHeight);
            this.§-!q§.clear(null,this.§+!m§);
         }
         this.§"?§.§`!m§ = this.§^s§;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.§?!U§();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§%!5§;
         if(this.§&K§ || _loc3_ > 1)
         {
            this.render();
         }
         if(this.§2"Z§)
         {
            this.§8!!§();
         }
      }
      
      private function § !y§(param1:flash.events.KeyboardEvent) : void
      {
         this.§?!U§();
         this.§,">§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.§-!t§;
         var _loc4_:Number = param2 / this.§5"=§;
         if(!§8!'§)
         {
            this.§,">§.stageWidth = this.§-!t§ * _loc3_ / _loc4_;
            this.§,">§.stageHeight = this.§5"=§;
         }
         else
         {
            this.§,">§.stageWidth = this.§-!t§;
            this.§,">§.stageHeight = this.§5"=§ * _loc4_ / _loc3_;
         }
         this.§5V§ = param1;
         this.§,!D§ = param2;
         this.§,">§.dispatchEvent(new §%a§(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function §"K§() : void
      {
         this.setCanvasSize(this.§-!t§,this.§5"=§);
      }
      
      private function §4@§(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.§&K§ || !this.§6!v§)
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
               this.§@W§ = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.§@W§ = false;
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
               _loc5_ = §'! §.§?""§;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = §'! §.§8!Y§;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = §'! §.§2!3§;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = §'! §.§?""§;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = §'! §.§2!3§;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.§@W§ ? §'! §.§8!Y§ : §'! §.§5"G§;
         }
         if((_loc2_ < §,!8§.left || _loc2_ >= §,!8§.right || _loc3_ < §,!8§.top || _loc3_ >= §,!8§.bottom) && _loc5_ == §'! §.§?""§)
         {
            return;
         }
         _loc2_ -= §,!8§.x;
         _loc3_ -= §,!8§.y;
         this.§"?§.§0"%§(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get §#"1§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §'!Q§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.§,F§)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.§-!A§ != null)
         {
            (_loc4_ = this.§-!A§.createProgram()).upload(param2,param3);
            this.§,F§[param1] = _loc4_;
         }
      }
      
      public function §^S§(param1:String) : void
      {
         var _loc2_:Program3D = this.§ z§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§,F§[param1];
         }
      }
      
      public function § z§(param1:String) : Program3D
      {
         return this.§,F§[param1] as Program3D;
      }
      
      public function §6"6§(param1:String) : Boolean
      {
         return param1 in this.§,F§;
      }
      
      public function get §5I§() : Boolean
      {
         return this.§&K§;
      }
      
      public function get §<!C§() : §#v§
      {
         return this.§'z§;
      }
      
      public function get §`!m§() : Boolean
      {
         return this.§^s§;
      }
      
      public function set §`!m§(param1:Boolean) : void
      {
         this.§^s§ = param1;
         if(this.§-!A§)
         {
            this.§"?§.§`!m§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§>3§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§>3§ = param1;
         if(this.§-!A§)
         {
            this.§-!A§.enableErrorChecking = param1;
         }
      }
      
      public function get §#'§() : int
      {
         return this.§5!Q§;
      }
      
      public function set §#'§(param1:int) : void
      {
         this.§5!Q§ = param1;
         §8"0§();
      }
      
      public function get §<"!§() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.§2"Z§ == null)
         {
            this.§2"Z§ = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.§2"Z§.contextMenu = _loc1_;
            this.§8!!§();
         }
         return this.§2"Z§;
      }
      
      public function get stage() : §'!6§.Stage
      {
         return this.§,">§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §!!1§() : flash.display.Stage
      {
         return this.§^b§;
      }
      
      public function get §28§() : Boolean
      {
         return !this.§>D§;
      }
   }
}
