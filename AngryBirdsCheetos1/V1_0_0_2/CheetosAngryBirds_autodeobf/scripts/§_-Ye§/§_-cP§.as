package §_-Ye§
{
   import §_-BS§.§_-rg§;
   import §_-GY§.DisplayObject;
   import §_-GY§.Stage;
   import §_-GY§.§_-4W§;
   import §_-GY§.§_-Bf§;
   import §_-yp§.Texture;
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
   import starling.events.§_-BH§;
   import starling.events.§_-V2§;
   import starling.events.§_-bz§;
   
   public class §_-cP§
   {
      
      private static var §_-yt§:§_-cP§;
      
      private static var §_-8T§:Boolean;
      
      private static var §_-Pp§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-GY§.Stage;
      
      private var §_-L1§:Class;
      
      private var §_-Q§:§_-GY§.DisplayObject;
      
      private var §_-Iz§:§_-rg§;
      
      private var §_-Sp§:Boolean;
      
      private var §_-Cm§:Boolean;
      
      private var §_-xa§:§_-CT§;
      
      private var §_-FW§:§_-bz§;
      
      private var §_-qQ§:int;
      
      private var §_-77§:Boolean;
      
      private var §_-6A§:Boolean;
      
      private var §_-36§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-2u§:flash.display.Stage;
      
      private var §_-hQ§:Sprite;
      
      private var §_-2n§:Context3D;
      
      private var §_-6E§:Dictionary;
      
      private var §_-37§:int;
      
      private var §_-xZ§:Boolean;
      
      private var §_-bi§:Number;
      
      private var §_-Zk§:Number;
      
      private var §_-nL§:Number;
      
      private var §_-k9§:Number;
      
      private var §_-Vq§:Number;
      
      private var §_-Ll§:Number;
      
      private var §_-9r§:Function;
      
      private var §_-kG§:uint;
      
      private var §_-Hb§:String;
      
      public function §_-cP§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.§_-bi§ = param3.width;
         this.§_-Zk§ = param3.height;
         this.§_-nL§ = this.§_-bi§;
         this.§_-k9§ = this.§_-Zk§;
         this.§_-Vq§ = param2.stageWidth;
         this.§_-Ll§ = param2.stageHeight;
         this.§_-L1§ = param1;
         this.mViewPort = param3;
         this.mStage3D = param4;
         this.mStage = new §_-GY§.Stage(param3.width,param3.height,param2.color);
         this.§_-kG§ = param2.color;
         this.§_-2u§ = param2;
         this.§_-FW§ = new §_-bz§(this.mStage);
         this.§_-Iz§ = new §_-rg§();
         this.§_-qQ§ = 0;
         this.§_-77§ = false;
         this.§_-6A§ = false;
         this.§_-36§ = getTimer() / 1000;
         this.§_-6E§ = new Dictionary();
         this.§_-xa§ = new §_-CT§();
         if(§_-yt§ == null)
         {
            this.§_-gx§();
         }
         var _loc6_:Array = [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
         for each(_loc7_ in _loc6_)
         {
            param2.addEventListener(_loc7_,this.§_-TQ§,false,0,true);
         }
         param2.addEventListener(Event.ENTER_FRAME,this.§_-TU§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-s§,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-s§,false,0,true);
         param2.addEventListener(Event.RESIZE,this.§_-xO§,false,0,true);
         this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-yF§,false,0,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-pb§,false,0,true);
         this.mStage3D.visible = false;
         this.§_-O-§(true);
         this.§_-Hb§ = param5;
      }
      
      public static function get §_-Fb§() : int
      {
         if(§_-004§)
         {
            return §_-004§.§_-37§;
         }
         return -1;
      }
      
      public static function get §_-PM§() : Boolean
      {
         if(§_-004§)
         {
            return §_-004§.§_-xZ§;
         }
         return false;
      }
      
      public static function get §_-P6§() : Boolean
      {
         return false;
      }
      
      public static function §_-Te§() : Boolean
      {
         return §_-eZ§ != null && §_-eZ§.driverInfo != "Disposed";
      }
      
      public static function get §_-004§() : §_-cP§
      {
         return §_-yt§;
      }
      
      public static function get §_-eZ§() : Context3D
      {
         if(§_-yt§)
         {
            return §_-yt§.§_-eZ§;
         }
         return null;
      }
      
      public static function get §_-Nz§() : §_-rg§
      {
         if(§_-yt§)
         {
            return §_-yt§.§_-Nz§;
         }
         return null;
      }
      
      public static function get §_-7J§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-7J§(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function §_-w3§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(§_-004§)
         {
            return Texture.§_-uW§(param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         if(§_-yt§.§_-2n§)
         {
            §_-yt§.§_-2n§.drawToBitmapData(param1);
         }
      }
      
      public function get stage() : §_-GY§.Stage
      {
         return this.mStage;
      }
      
      public function get §_-HV§() : §_-GY§.DisplayObject
      {
         return this.§_-Q§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-kG§ = param1;
      }
      
      public function get §_-tB§() : Number
      {
         return this.§_-bi§;
      }
      
      public function get §_-TO§() : Number
      {
         return this.§_-Zk§;
      }
      
      public function §_-BA§() : void
      {
         try
         {
            this.mStage3D.requestContext3D(this.§_-Hb§);
         }
         catch(e:Error)
         {
            §_-2R§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Program3D = null;
         for each(_loc1_ in this.§_-6E§)
         {
            _loc1_.dispose();
         }
         if(this.§_-2n§)
         {
            this.§_-2n§.dispose();
         }
         if(this.§_-FW§)
         {
            this.§_-FW§.dispose();
         }
      }
      
      private function §_-SR§() : void
      {
         this.§_-2n§ = this.mStage3D.context3D;
         this.§_-2n§.enableErrorChecking = this.§_-6A§;
         this.§_-2n§.setDepthTest(false,Context3DCompareMode.NEVER);
         this.§_-l8§();
         if(this.§_-2n§.driverInfo.indexOf("Software") >= 0)
         {
            this.§_-xZ§ = true;
         }
      }
      
      private function §_-Dq§() : void
      {
         if(!§_-8T§)
         {
            §_-Bf§.each(this);
            §_-4W§.each(this);
            §_-8T§ = true;
         }
      }
      
      private function §_-6f§() : void
      {
         if(this.§_-Q§ == null)
         {
            this.§_-Q§ = new this.§_-L1§();
         }
         if(this.§_-Q§ == null)
         {
            throw new Error("Invalid root class: " + this.§_-L1§);
         }
         this.mStage.addChild(this.§_-Q§);
      }
      
      private function §_-l8§() : void
      {
         if(this.§_-2n§)
         {
            if(this.§_-2n§.driverInfo != "Disposed")
            {
               this.§_-2n§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-qQ§,false);
            }
         }
         this.mStage3D.x = this.mViewPort.x;
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         if(this.§_-2n§ == null || !§_-Te§())
         {
            return;
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.§_-36§;
         this.§_-36§ = _loc1_;
         this.mStage.§_-cj§(_loc2_);
         this.§_-Iz§.§_-cj§(_loc2_);
         this.§_-FW§.§_-cj§(_loc2_);
         this.§_-xa§.§ for§(this.mStage.stageWidth,this.mStage.stageHeight);
         this.§_-xa§.§_-NO§(true);
         this.§_-xa§.clear(this.§_-kG§,1);
         this.mStage.render(this.§_-xa§,1);
         if(this.§_-9r§ != null)
         {
            this.§_-9r§();
            this.§_-9r§ = null;
         }
         this.§_-2n§.present();
         this.§_-xa§.§_-M-§();
      }
      
      public function set §_-FE§(param1:Function) : void
      {
         this.§_-9r§ = param1;
      }
      
      private function §_-ri§() : void
      {
         this.§_-hQ§.x = this.mViewPort.x;
         this.§_-hQ§.y = this.mViewPort.y;
         this.§_-hQ§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
         this.§_-hQ§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
         var _loc1_:int = this.§_-hQ§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-hQ§.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.§_-2u§.addChild(this.§_-hQ§);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.§_-2u§.removeChild(this.§_-hQ§);
         }
      }
      
      private function §_-2R§(param1:String) : void
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
         this.§_-Bs§.addChild(_loc2_);
      }
      
      public function §_-gx§() : void
      {
         §_-yt§ = this;
      }
      
      public function start() : void
      {
         this.§_-Sp§ = true;
         this.mStage3D.visible = true;
      }
      
      public function stop() : void
      {
         this.§_-Sp§ = false;
         this.mStage3D.visible = false;
      }
      
      public function §_-O-§(param1:Boolean) : void
      {
         this.§_-Cm§ = param1;
      }
      
      private function §_-pb§(param1:ErrorEvent) : void
      {
         this.§_-2R§("This application is not correctly embedded (wrong wmode value)");
         throw new Error(param1.errorID,"This application is not correctly embedded (wrong wmode value)");
      }
      
      private function §_-yF§(param1:Event) : void
      {
         ++§_-Pp§;
         this.§_-37§ = §_-Pp§;
         this.§_-6E§ = new Dictionary();
         §_-8T§ = false;
         while(this.mStage.numChildren > 0)
         {
            this.mStage.removeChildAt(0);
         }
         this.§_-SR§();
         this.§_-Dq§();
         this.§_-6f§();
         this.§_-FW§.§_-gS§ = this.§_-77§;
      }
      
      private function §_-TU§(param1:Event) : void
      {
         if(this.§_-hQ§)
         {
            this.§_-ri§();
         }
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.§_-36§;
         if(this.§_-Sp§ || _loc3_ > 1)
         {
            this.render();
         }
      }
      
      private function §_-s§(param1:flash.events.KeyboardEvent) : void
      {
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function §_-xO§(param1:Event) : void
      {
      }
      
      public function §_-Cs§(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = param1 / this.§_-bi§;
         var _loc5_:Number = param2 / this.§_-Zk§;
         if(!param3)
         {
            this.mStage.stageWidth = this.§_-bi§ * _loc4_ / _loc5_;
            this.mStage.stageHeight = this.§_-Zk§;
         }
         else
         {
            this.mStage.stageWidth = this.§_-bi§;
            this.mStage.stageHeight = this.§_-Zk§ * _loc5_ / _loc4_;
         }
         this.§_-nL§ = param1;
         this.§_-k9§ = param2;
         this.mStage.dispatchEvent(new §_-V2§(Event.RESIZE,param1,param2));
      }
      
      public function §_-Hz§() : void
      {
         this.§_-Cs§(this.§_-bi§,this.§_-Zk§);
      }
      
      private function §_-TQ§(param1:Event) : void
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
                  return §_-BH§.§_-vK§;
               case MouseEvent.MOUSE_UP:
                  return §_-BH§.§_-mx§;
               case MouseEvent.MOUSE_MOVE:
                  return !!mouseEvent.buttonDown ? §_-BH§.§_-WZ§ : §_-BH§.§_-Dt§;
               default:
                  return null;
            }
         };
         var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
         {
            switch(param1.type)
            {
               case TouchEvent.TOUCH_BEGIN:
                  return §_-BH§.§_-vK§;
               case TouchEvent.TOUCH_MOVE:
                  return §_-BH§.§_-WZ§;
               case TouchEvent.TOUCH_END:
                  return §_-BH§.§_-mx§;
               default:
                  return null;
            }
         };
         if(!this.§_-Sp§ || !this.§_-Cm§)
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
         if((position.x < this.mViewPort.left || position.x >= this.mViewPort.right || position.y < this.mViewPort.top || position.y >= this.mViewPort.bottom) && phase == §_-BH§.§_-vK§)
         {
            return;
         }
         this.§_-FW§.§_-ll§(touchID,phase,position.x,position.y);
      }
      
      public function §_-JK§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         if(this.§_-6E§.hasOwnProperty(param1))
         {
            throw new Error("Another program with this name is already registered");
         }
         var _loc4_:Program3D;
         (_loc4_ = this.§_-2n§.createProgram()).upload(param2,param3);
         this.§_-6E§[param1] = _loc4_;
      }
      
      public function §_-53§(param1:String) : void
      {
         var _loc2_:Program3D = this.§_-Bj§(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.§_-6E§[param1];
         }
      }
      
      public function §_-Bj§(param1:String) : Program3D
      {
         return this.§_-6E§[param1] as Program3D;
      }
      
      public function get §_-LT§() : Boolean
      {
         return this.§_-Sp§;
      }
      
      public function get §_-Nz§() : §_-rg§
      {
         return this.§_-Iz§;
      }
      
      public function get §_-eZ§() : Context3D
      {
         return this.§_-2n§;
      }
      
      public function get §_-gS§() : Boolean
      {
         return this.§_-77§;
      }
      
      public function set §_-gS§(param1:Boolean) : void
      {
         this.§_-77§ = param1;
         if(this.§_-2n§)
         {
            this.§_-FW§.§_-gS§ = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-6A§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.§_-6A§ = param1;
         if(this.§_-2n§)
         {
            this.§_-2n§.enableErrorChecking = param1;
         }
      }
      
      public function get §_-oq§() : int
      {
         return this.§_-qQ§;
      }
      
      public function set §_-oq§(param1:int) : void
      {
         this.§_-qQ§ = param1;
         this.§_-l8§();
      }
      
      public function get §_-Uf§() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set §_-Uf§(param1:Rectangle) : void
      {
         this.mViewPort = param1.clone();
         this.§_-l8§();
      }
      
      public function get §_-Bs§() : Sprite
      {
         if(this.§_-hQ§ == null)
         {
            this.§_-hQ§ = new Sprite();
            this.§_-2u§.addChild(this.§_-hQ§);
            this.§_-ri§();
         }
         return this.§_-hQ§;
      }
   }
}
