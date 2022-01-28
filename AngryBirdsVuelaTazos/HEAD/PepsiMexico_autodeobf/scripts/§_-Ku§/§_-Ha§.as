package §_-Ku§
{
   import §_-SE§.DisplayObject;
   import §_-SE§.Stage;
   import §_-SE§.§_-rl§;
   import §_-SE§.§_-uX§;
   import §_-W0§.§_-Sq§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DCompareMode;
   import flash.display3D.Program3D;
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
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import starling.events.KeyboardEvent;
   import starling.events.§_-6c§;
   import starling.events.§_-7v§;
   import starling.events.§_-sT§;
   
   public class §_-Ha§
   {
      
      private static var §_-81§:§_-Ha§;
      
      private static var §_-LK§:Boolean;
      
      private static var §_-VW§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-SE§.Stage;
      
      private var §_-N4§:Class;
      
      private var §_-bt§:§_-SE§.DisplayObject;
      
      private var §_-tl§:§_-Sq§;
      
      private var §_-jD§:Boolean;
      
      private var §_-Eq§:Boolean;
      
      private var §_-Gl§:§_-Nq§;
      
      private var §_-uQ§:§_-6c§;
      
      private var §_-CK§:int;
      
      private var §_-MO§:Boolean;
      
      private var §_-NR§:Boolean;
      
      private var §_-H§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-ay§:flash.display.Stage;
      
      private var §_-ll§:Sprite;
      
      private var §_-id§:Context3D;
      
      private var §_-Xh§:Dictionary;
      
      private var §_-HA§:int;
      
      private var §_-w3§:Boolean;
      
      private var §_-Pv§:Number;
      
      private var §_-7a§:Number;
      
      private var §_-YI§:Number;
      
      private var §_-2e§:Number;
      
      private var §_-r§:Number;
      
      private var §_-Lr§:Number;
      
      private var §_-rK§:Function;
      
      private var §_-70§:uint;
      
      private var §_-ME§:String;
      
      public function §_-Ha§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc7_:String = null;
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
         this.§_-Pv§ = param3.width;
         this.§_-7a§ = param3.height;
         this.§_-YI§ = this.§_-Pv§;
         this.§_-2e§ = this.§_-7a§;
         this.§_-r§ = param2.stageWidth;
         this.§_-Lr§ = param2.stageHeight;
         this.§_-N4§ = param1;
         this.mViewPort = param3;
         this.mStage3D = param4;
         this.mStage = new §_-SE§.Stage(param3.width,param3.height,param2.color);
         this.§_-70§ = param2.color;
         this.§_-ay§ = param2;
         this.§_-uQ§ = new §_-6c§(this.mStage);
         this.§_-tl§ = new §_-Sq§();
         this.§_-CK§ = 0;
         this.§_-MO§ = false;
         this.§_-NR§ = false;
         this.§_-H§ = getTimer() / 1000;
         this.§_-Xh§ = new Dictionary();
         this.§_-Gl§ = new §_-Nq§();
         if(§_-81§ == null)
         {
            this.§_-Ym§();
         }
         var _loc6_:Array = [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
         for each(_loc7_ in _loc6_)
         {
            param2.addEventListener(_loc7_,this.§_-fO§,false,0,true);
         }
         param2.addEventListener(Event.ENTER_FRAME,this.§_-pa§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-Sg§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-Sg§,false,0,true);
         param2.addEventListener(Event.RESIZE,this.§_-L0§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-Ch§,false,0,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-Or§,false,0,true);
         this.mStage3D.visible = false;
         this.§_-cN§(true);
         this.§_-ME§ = param5;
      }
      
      public static function get §_-Gg§() : int
      {
         if(§_-Aq§)
         {
            return §_-Aq§.§_-HA§;
         }
         return -1;
      }
      
      public static function get §_-0E§() : Boolean
      {
         if(§_-Aq§)
         {
            return §_-Aq§.§_-w3§;
         }
         return false;
      }
      
      public static function §_-97§() : Boolean
      {
         return §_-8o§ != null && §_-8o§.driverInfo != "Disposed";
      }
      
      public static function get §_-Aq§() : §_-Ha§
      {
         return §_-81§;
      }
      
      public static function get §_-8o§() : Context3D
      {
         if(§_-81§)
         {
            return §_-81§.§_-8o§;
         }
         return null;
      }
      
      public static function get §for §() : §_-Sq§
      {
         if(§_-81§)
         {
            return §_-81§.§for §;
         }
         return null;
      }
      
      public static function get §_-NB§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-NB§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public function get stage() : §_-SE§.Stage
      {
         return this.mStage;
      }
      
      public function get §_-hO§() : §_-SE§.DisplayObject
      {
         return this.§_-bt§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-70§ = param1;
      }
      
      public function get §_-dE§() : Number
      {
         return this.§_-Pv§;
      }
      
      public function get §_-mw§() : Number
      {
         return this.§_-7a§;
      }
      
      public function §_-Nb§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§_-ME§);
         }
         catch(e:Error)
         {
            §_-k4§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Program3D = null;
         for each(_loc1_ in this.§_-Xh§)
         {
            _loc1_.dispose();
         }
         if(this.§_-id§)
         {
            this.§_-id§.dispose();
         }
         if(this.§_-uQ§)
         {
            this.§_-uQ§.dispose();
         }
      }
      
      private function §_-gl§() : void
      {
         this.§_-id§ = this.mStage3D.context3D;
         this.§_-id§.enableErrorChecking = this.§_-NR§;
         this.§_-id§.setDepthTest(false,Context3DCompareMode.NEVER);
         this.§_-st§();
         if(this.§_-id§.driverInfo.indexOf("Software") >= 0)
         {
            this.§_-w3§ = true;
         }
      }
      
      private function §_-LT§() : void
      {
         if(!§_-LK§)
         {
            §_-uX§.§_-pO§(this);
            §_-rl§.§_-pO§(this);
            §_-LK§ = true;
         }
      }
      
      private function §_-rR§() : void
      {
         if(this.§_-bt§ == null)
         {
            this.§_-bt§ = new this.§_-N4§();
         }
         if(this.§_-bt§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-N4§);
         }
         this.mStage.addChild(this.§_-bt§);
      }
      
      private function §_-st§() : void
      {
         if(this.§_-id§)
         {
            if(this.§_-id§.driverInfo != "Disposed")
            {
               this.§_-id§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-CK§,false);
            }
         }
         this.mStage3D.x = this.mViewPort.x;
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         if(this.§_-id§ == null || !§_-97§())
         {
            return;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-H§;
         this.§_-H§ = _loc1_;
         this.mStage.§_-TL§(_loc2_);
         this.§_-tl§.§_-TL§(_loc2_);
         this.§_-uQ§.§_-TL§(_loc2_);
         this.§_-Gl§.§_-dn§(this.mStage.stageWidth,this.mStage.stageHeight);
         this.§_-Gl§.§_-Mc§(true);
         this.§_-Gl§.clear(this.§_-70§,1);
         this.mStage.render(this.§_-Gl§,1);
         if(this.§_-rK§ != null)
         {
            this.§_-rK§();
            this.§_-rK§ = null;
         }
         this.§_-id§.present();
         this.§_-Gl§.§_-Nz§();
      }
      
      public function set §_-J7§(param1:Function) : void
      {
         this.§_-rK§ = param1;
      }
      
      private function §_-I-§() : void
      {
         this.§_-ll§.x = this.mViewPort.x;
         this.§_-ll§.y = this.mViewPort.y;
         this.§_-ll§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
         this.§_-ll§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
         var _loc1_:int = this.§_-ll§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-ll§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-ay§.addChild(this.§_-ll§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-ay§.removeChild(this.§_-ll§);
         }
      }
      
      private function §_-k4§(param1:String) : void
      {
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.wordWrap = true;
         _loc2_.width = this.mStage.stageWidth * 0.75;
         _loc2_.autoSize = TextFieldAutoSize.CENTER;
         _loc2_.text = param1;
         _loc2_.x = (this.mStage.stageWidth - _loc2_.width) / 2;
         _loc2_.y = (this.mStage.stageHeight - _loc2_.height) / 2;
         _loc2_.background = true;
         _loc2_.backgroundColor = 4456448;
         this.§ in§.addChild(_loc2_);
      }
      
      public function §_-Ym§() : void
      {
         §_-81§ = this;
      }
      
      public function start() : void
      {
         this.§_-jD§ = true;
         this.mStage3D.visible = true;
      }
      
      public function stop() : void
      {
         this.§_-jD§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §_-cN§(param1:Boolean) : void
      {
         this.§_-Eq§ = param1;
      }
      
      private function §_-Or§(param1:ErrorEvent) : void
      {
         this.§_-k4§("This application is not correctly embedded (wrong wmode value)");
         throw new Error(param1.errorID,"This application is not correctly embedded (wrong wmode value)");
      }
      
      private function §_-Ch§(param1:Event) : void
      {
         ++§_-VW§;
         this.§_-HA§ = §_-VW§;
         this.§_-Xh§ = new Dictionary();
         §_-LK§ = false;
         while(this.mStage.numChildren > 0)
         {
            this.mStage.removeChildAt(0);
         }
         this.§_-gl§();
         this.§_-LT§();
         this.§_-rR§();
         this.§_-uQ§.§_-bK§ = this.§_-MO§;
      }
      
      private function §_-pa§(param1:Event) : void
      {
         if(this.§_-ll§)
         {
            this.§_-I-§();
         }
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§_-H§;
         if(this.§_-jD§ || _loc3_ > 1)
         {
            this.render();
         }
      }
      
      private function §_-Sg§(param1:flash.events.KeyboardEvent) : void
      {
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-L0§(param1:Event) : void
      {
      }
      
      public function §_-CM§(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§_-Pv§;
         var _loc5_:Number = param2 / this.§_-7a§;
         if(!param3)
         {
            this.mStage.stageWidth = this.§_-Pv§ * _loc4_ / _loc5_;
            this.mStage.stageHeight = this.§_-7a§;
         }
         else
         {
            this.mStage.stageWidth = this.§_-Pv§;
            this.mStage.stageHeight = this.§_-7a§ * _loc5_ / _loc4_;
         }
         this.§_-YI§ = param1;
         this.§_-2e§ = param2;
         this.mStage.dispatchEvent(new §_-sT§(Event.RESIZE,param1,param2));
      }
      
      public function §_-Cw§() : void
      {
         this.§_-CM§(this.§_-Pv§,this.§_-7a§);
      }
      
      private function §_-fO§(param1:Event) : void
      {
         var position:Point = null;
         var phase:String = null;
         var touchID:int = 0;
         var mouseEvent:MouseEvent = null;
         var touchEvent:TouchEvent = null;
         var event:Event = param1;
         var convertPosition:Function = function(param1:Point):Point
         {
            return new Point(param1.x - mViewPort.x + mViewPort.width / mStage.stageWidth,param1.y - mViewPort.y + mViewPort.height / mStage.stageHeight);
         };
         var getPhaseFromMouseEvent:Function = function(param1:MouseEvent):String
         {
            switch(param1.type)
            {
               case MouseEvent.MOUSE_DOWN:
                  return §_-7v§.§_-Xe§;
               case MouseEvent.MOUSE_UP:
                  return §_-7v§.§_-dk§;
               case MouseEvent.MOUSE_MOVE:
                  return !!mouseEvent.buttonDown ? §_-7v§.§_-P9§ : §_-7v§.§_-Vh§;
               default:
                  return null;
            }
         };
         var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
         {
            switch(param1.type)
            {
               case TouchEvent.TOUCH_BEGIN:
                  return §_-7v§.§_-Xe§;
               case TouchEvent.TOUCH_MOVE:
                  return §_-7v§.§_-P9§;
               case TouchEvent.TOUCH_END:
                  return §_-7v§.§_-dk§;
               default:
                  return null;
            }
         };
         if(!this.§_-jD§ || !this.§_-Eq§)
         {
            return;
         }
         if(event is MouseEvent)
         {
            mouseEvent = event as MouseEvent;
            position = convertPosition(new Point(mouseEvent.stageX,mouseEvent.stageY));
            phase = getPhaseFromMouseEvent(mouseEvent);
            touchID = 0;
         }
         else
         {
            touchEvent = event as TouchEvent;
            position = convertPosition(new Point(touchEvent.stageX,touchEvent.stageY));
            phase = getPhaseFromTouchEvent(touchEvent);
            touchID = touchEvent.touchPointID;
         }
         if((position.x < this.mViewPort.left || position.x >= this.mViewPort.right || position.y < this.mViewPort.top || position.y >= this.mViewPort.bottom) && phase == §_-7v§.§_-Xe§)
         {
            return;
         }
         this.§_-uQ§.§_-on§(touchID,phase,position.x,position.y);
      }
      
      public function §_-mX§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         if(this.§_-Xh§.hasOwnProperty(param1))
         {
            throw new Error("Another program with this name is already registered");
         }
         var _loc4_:Program3D;
         (_loc4_ = this.§_-id§.createProgram()).upload(param2,param3);
         this.§_-Xh§[param1] = _loc4_;
      }
      
      public function §_-TI§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-w2§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-Xh§[param1];
         }
      }
      
      public function §_-w2§(param1:String) : Program3D
      {
         return this.§_-Xh§[param1] as Program3D;
      }
      
      public function get §_-eE§() : Boolean
      {
         return this.§_-jD§;
      }
      
      public function get §for §() : §_-Sq§
      {
         return this.§_-tl§;
      }
      
      public function get §_-8o§() : Context3D
      {
         return this.§_-id§;
      }
      
      public function get §_-bK§() : Boolean
      {
         return this.§_-MO§;
      }
      
      public function set §_-bK§(param1:Boolean) : void
      {
         this.§_-MO§ = param1;
         if(this.§_-id§)
         {
            this.§_-uQ§.§_-bK§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-NR§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-NR§ = param1;
         if(this.§_-id§)
         {
            this.§_-id§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-Wm§() : int
      {
         return this.§_-CK§;
      }
      
      public function set §_-Wm§(param1:int) : void
      {
         this.§_-CK§ = param1;
         this.§_-st§();
      }
      
      public function get §_-lQ§() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set §_-lQ§(param1:Rectangle) : void
      {
         this.mViewPort = param1.clone();
         this.§_-st§();
      }
      
      public function get § in§() : Sprite
      {
         if(this.§_-ll§ == null)
         {
            this.§_-ll§ = new Sprite();
            this.§_-ay§.addChild(this.§_-ll§);
            this.§_-I-§();
         }
         return this.§_-ll§;
      }
   }
}
