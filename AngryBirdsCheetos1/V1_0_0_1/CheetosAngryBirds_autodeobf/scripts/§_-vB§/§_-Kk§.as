package §_-vB§
{
   import §_-Dk§.Texture;
   import §_-Ls§.DisplayObject;
   import §_-Ls§.Stage;
   import §_-Ls§.§_-Nd§;
   import §_-Ls§.§_-nY§;
   import §_-lh§.§_-6l§;
   import flash.display.BitmapData;
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
   import starling.events.§_-3x§;
   import starling.events.§_-Ic§;
   import starling.events.§_-bA§;
   
   public class §_-Kk§
   {
      
      private static var §_-J0§:§_-Kk§;
      
      private static var §_-GG§:Boolean;
      
      private static var §_-tG§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-Ls§.Stage;
      
      private var §_-lK§:Class;
      
      private var §_-AK§:§_-Ls§.DisplayObject;
      
      private var §_-Im§:§_-6l§;
      
      private var §_-s6§:Boolean;
      
      private var §_-N6§:Boolean;
      
      private var §_-cr§:§_-7p§;
      
      private var §_-gx§:§_-Ic§;
      
      private var §_-WF§:int;
      
      private var §_-t0§:Boolean;
      
      private var §_-0-s§:Boolean;
      
      private var §_-001§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-4F§:flash.display.Stage;
      
      private var §_-Du§:Sprite;
      
      private var §_-hL§:Context3D;
      
      private var §_-on§:Dictionary;
      
      private var §_-Pj§:int;
      
      private var §_-Dh§:Boolean;
      
      private var §_-BD§:Number;
      
      private var §_-CE§:Number;
      
      private var §_-Oi§:Number;
      
      private var §_-Cf§:Number;
      
      private var §_-7E§:Number;
      
      private var §_-ma§:Number;
      
      private var §_-Ix§:Function;
      
      private var §_-C4§:uint;
      
      private var §_-Pn§:String;
      
      public function §_-Kk§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§_-BD§ = param3.width;
         this.§_-CE§ = param3.height;
         this.§_-Oi§ = this.§_-BD§;
         this.§_-Cf§ = this.§_-CE§;
         this.§_-7E§ = param2.stageWidth;
         this.§_-ma§ = param2.stageHeight;
         this.§_-lK§ = param1;
         this.mViewPort = param3;
         this.mStage3D = param4;
         this.mStage = new §_-Ls§.Stage(param3.width,param3.height,param2.color);
         this.§_-C4§ = param2.color;
         this.§_-4F§ = param2;
         this.§_-gx§ = new §_-Ic§(this.mStage);
         this.§_-Im§ = new §_-6l§();
         this.§_-WF§ = 0;
         this.§_-t0§ = false;
         this.§_-0-s§ = false;
         this.§_-001§ = getTimer() / 1000;
         this.§_-on§ = new Dictionary();
         this.§_-cr§ = new §_-7p§();
         if(§_-J0§ == null)
         {
            this.§_-8x§();
         }
         var _loc6_:Array = [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
         for each(_loc7_ in _loc6_)
         {
            param2.addEventListener(_loc7_,this.§_-AI§,false,0,true);
         }
         param2.addEventListener(Event.ENTER_FRAME,this.§_-pw§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-3q§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-3q§,false,0,true);
         param2.addEventListener(Event.RESIZE,this.§_-k9§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-Me§,false,0,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-QZ§,false,0,true);
         this.mStage3D.visible = false;
         this.§_-iE§(true);
         this.§_-Pn§ = param5;
      }
      
      public static function get §_-gK§() : int
      {
         if(§_-NR§)
         {
            return §_-NR§.§_-Pj§;
         }
         return -1;
      }
      
      public static function get §_-GU§() : Boolean
      {
         if(§_-NR§)
         {
            return §_-NR§.§_-Dh§;
         }
         return false;
      }
      
      public static function get §_-RZ§() : Boolean
      {
         return false;
      }
      
      public static function §_-tl§() : Boolean
      {
         return §_-r9§ != null && §_-r9§.driverInfo != "Disposed";
      }
      
      public static function get §_-NR§() : §_-Kk§
      {
         return §_-J0§;
      }
      
      public static function get §_-r9§() : Context3D
      {
         if(§_-J0§)
         {
            return §_-J0§.§_-r9§;
         }
         return null;
      }
      
      public static function get §_-qh§() : §_-6l§
      {
         if(§_-J0§)
         {
            return §_-J0§.§_-qh§;
         }
         return null;
      }
      
      public static function get §_-48§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-48§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function §_-MS§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§_-NR§)
         {
            return Texture.§_-ug§(param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         if(§_-J0§.§_-hL§)
         {
            §_-J0§.§_-hL§.drawToBitmapData(param1);
         }
      }
      
      public function get stage() : §_-Ls§.Stage
      {
         return this.mStage;
      }
      
      public function get §_-6h§() : §_-Ls§.DisplayObject
      {
         return this.§_-AK§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-C4§ = param1;
      }
      
      public function get §_-5E§() : Number
      {
         return this.§_-BD§;
      }
      
      public function get §_-CO§() : Number
      {
         return this.§_-CE§;
      }
      
      public function §_-nK§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§_-Pn§);
         }
         catch(e:Error)
         {
            §_-QG§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Program3D = null;
         for each(_loc1_ in this.§_-on§)
         {
            _loc1_.dispose();
         }
         if(this.§_-hL§)
         {
            this.§_-hL§.dispose();
         }
         if(this.§_-gx§)
         {
            this.§_-gx§.dispose();
         }
      }
      
      private function §_-FN§() : void
      {
         this.§_-hL§ = this.mStage3D.context3D;
         this.§_-hL§.enableErrorChecking = this.§_-0-s§;
         this.§_-hL§.setDepthTest(false,Context3DCompareMode.NEVER);
         this.§_-G6§();
         if(this.§_-hL§.driverInfo.indexOf("Software") >= 0)
         {
            this.§_-Dh§ = true;
         }
      }
      
      private function §_-2V§() : void
      {
         if(!§_-GG§)
         {
            §_-nY§.§_-RL§(this);
            §_-Nd§.§_-RL§(this);
            §_-GG§ = true;
         }
      }
      
      private function §_-jY§() : void
      {
         if(this.§_-AK§ == null)
         {
            this.§_-AK§ = new this.§_-lK§();
         }
         if(this.§_-AK§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-lK§);
         }
         this.mStage.addChild(this.§_-AK§);
      }
      
      private function §_-G6§() : void
      {
         if(this.§_-hL§)
         {
            if(this.§_-hL§.driverInfo != "Disposed")
            {
               this.§_-hL§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-WF§,false);
            }
         }
         this.mStage3D.x = this.mViewPort.x;
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         if(this.§_-hL§ == null || !§_-tl§())
         {
            return;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-001§;
         this.§_-001§ = _loc1_;
         this.mStage.§_-DS§(_loc2_);
         this.§_-Im§.§_-DS§(_loc2_);
         this.§_-gx§.§_-DS§(_loc2_);
         this.§_-cr§.§_-dc§(this.mStage.stageWidth,this.mStage.stageHeight);
         this.§_-cr§.§_-8V§(true);
         this.§_-cr§.clear(this.§_-C4§,1);
         this.mStage.render(this.§_-cr§,1);
         if(this.§_-Ix§ != null)
         {
            this.§_-Ix§();
            this.§_-Ix§ = null;
         }
         this.§_-hL§.present();
         this.§_-cr§.§_-w5§();
      }
      
      public function set §_-cX§(param1:Function) : void
      {
         this.§_-Ix§ = param1;
      }
      
      private function §_-9b§() : void
      {
         this.§_-Du§.x = this.mViewPort.x;
         this.§_-Du§.y = this.mViewPort.y;
         this.§_-Du§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
         this.§_-Du§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
         var _loc1_:int = this.§_-Du§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-Du§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-4F§.addChild(this.§_-Du§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-4F§.removeChild(this.§_-Du§);
         }
      }
      
      private function §_-QG§(param1:String) : void
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
         this.§_-SZ§.addChild(_loc2_);
      }
      
      public function §_-8x§() : void
      {
         §_-J0§ = this;
      }
      
      public function start() : void
      {
         this.§_-s6§ = true;
         this.mStage3D.visible = true;
      }
      
      public function stop() : void
      {
         this.§_-s6§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §_-iE§(param1:Boolean) : void
      {
         this.§_-N6§ = param1;
      }
      
      private function §_-QZ§(param1:ErrorEvent) : void
      {
         this.§_-QG§("This application is not correctly embedded (wrong wmode value)");
         throw new Error(param1.errorID,"This application is not correctly embedded (wrong wmode value)");
      }
      
      private function §_-Me§(param1:Event) : void
      {
         ++§_-tG§;
         this.§_-Pj§ = §_-tG§;
         this.§_-on§ = new Dictionary();
         §_-GG§ = false;
         while(this.mStage.numChildren > 0)
         {
            this.mStage.removeChildAt(0);
         }
         this.§_-FN§();
         this.§_-2V§();
         this.§_-jY§();
         this.§_-gx§.§_-BQ§ = this.§_-t0§;
      }
      
      private function §_-pw§(param1:Event) : void
      {
         if(this.§_-Du§)
         {
            this.§_-9b§();
         }
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§_-001§;
         if(this.§_-s6§ || _loc3_ > 1)
         {
            this.render();
         }
      }
      
      private function §_-3q§(param1:flash.events.KeyboardEvent) : void
      {
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-k9§(param1:Event) : void
      {
      }
      
      public function §_-qG§(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§_-BD§;
         var _loc5_:Number = param2 / this.§_-CE§;
         if(!param3)
         {
            this.mStage.stageWidth = this.§_-BD§ * _loc4_ / _loc5_;
            this.mStage.stageHeight = this.§_-CE§;
         }
         else
         {
            this.mStage.stageWidth = this.§_-BD§;
            this.mStage.stageHeight = this.§_-CE§ * _loc5_ / _loc4_;
         }
         this.§_-Oi§ = param1;
         this.§_-Cf§ = param2;
         this.mStage.dispatchEvent(new §_-bA§(Event.RESIZE,param1,param2));
      }
      
      public function §_-Rw§() : void
      {
         this.§_-qG§(this.§_-BD§,this.§_-CE§);
      }
      
      private function §_-AI§(param1:Event) : void
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
                  return §_-3x§.§_-4G§;
               case MouseEvent.MOUSE_UP:
                  return §_-3x§.§_-JZ§;
               case MouseEvent.MOUSE_MOVE:
                  return !!mouseEvent.buttonDown ? §_-3x§.§_-zy§ : §_-3x§.§_-Nx§;
               default:
                  return null;
            }
         };
         var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
         {
            switch(param1.type)
            {
               case TouchEvent.TOUCH_BEGIN:
                  return §_-3x§.§_-4G§;
               case TouchEvent.TOUCH_MOVE:
                  return §_-3x§.§_-zy§;
               case TouchEvent.TOUCH_END:
                  return §_-3x§.§_-JZ§;
               default:
                  return null;
            }
         };
         if(!this.§_-s6§ || !this.§_-N6§)
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
         if((position.x < this.mViewPort.left || position.x >= this.mViewPort.right || position.y < this.mViewPort.top || position.y >= this.mViewPort.bottom) && phase == §_-3x§.§_-4G§)
         {
            return;
         }
         this.§_-gx§.§_-Oy§(touchID,phase,position.x,position.y);
      }
      
      public function §_-dk§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         if(this.§_-on§.hasOwnProperty(param1))
         {
            throw new Error("Another program with this name is already registered");
         }
         var _loc4_:Program3D;
         (_loc4_ = this.§_-hL§.createProgram()).upload(param2,param3);
         this.§_-on§[param1] = _loc4_;
      }
      
      public function §_-dD§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-DI§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-on§[param1];
         }
      }
      
      public function §_-DI§(param1:String) : Program3D
      {
         return this.§_-on§[param1] as Program3D;
      }
      
      public function get §_-7W§() : Boolean
      {
         return this.§_-s6§;
      }
      
      public function get §_-qh§() : §_-6l§
      {
         return this.§_-Im§;
      }
      
      public function get §_-r9§() : Context3D
      {
         return this.§_-hL§;
      }
      
      public function get §_-BQ§() : Boolean
      {
         return this.§_-t0§;
      }
      
      public function set §_-BQ§(param1:Boolean) : void
      {
         this.§_-t0§ = param1;
         if(this.§_-hL§)
         {
            this.§_-gx§.§_-BQ§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-0-s§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-0-s§ = param1;
         if(this.§_-hL§)
         {
            this.§_-hL§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-Nr§() : int
      {
         return this.§_-WF§;
      }
      
      public function set §_-Nr§(param1:int) : void
      {
         this.§_-WF§ = param1;
         this.§_-G6§();
      }
      
      public function get §_-Px§() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set §_-Px§(param1:Rectangle) : void
      {
         this.mViewPort = param1.clone();
         this.§_-G6§();
      }
      
      public function get §_-SZ§() : Sprite
      {
         if(this.§_-Du§ == null)
         {
            this.§_-Du§ = new Sprite();
            this.§_-4F§.addChild(this.§_-Du§);
            this.§_-9b§();
         }
         return this.§_-Du§;
      }
   }
}
