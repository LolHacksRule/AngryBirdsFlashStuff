package starling.core
{
   import starling.textures.Texture;
   import starling.display.DisplayObject;
   import starling.display.Stage;
   import starling.animation.Juggler;
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
   import starling.events.TouchPhase;
   import starling.events.ResizeEvent;
   import starling.events.TouchProcessor;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var sViewPort:Rectangle;
      
      private static var sMaintainWidth:Boolean = true;
      
      private static var sBackBufferConfigurationRequested:Boolean;
      
      private static var sCurrent:Starling;
      
      private static var sHandleLostContext:Boolean;
      
      private static var sContextId:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:starling.display.Stage;
      
      private var mRootClass:Class;
      
      private var mRootObject:starling.display.DisplayObject;
      
      private var mJuggler:Juggler;
      
      private var mStarted:Boolean;
      
      private var mMouseEnabled:Boolean;
      
      private var mSupport:RenderSupport;
      
      private var mTouchProcessor:TouchProcessor;
      
      private var mAntiAliasing:int;
      
      private var mSimulateMultitouch:Boolean;
      
      private var mEnableErrorChecking:Boolean;
      
      private var mLastFrameTimestamp:Number;
      
      private var mLeftMouseDown:Boolean;
      
      private var mNativeStage:flash.display.Stage;
      
      private var mNativeOverlay:Sprite;
      
      private var mContext:Context3D;
      
      private var mPrograms:Dictionary;
      
      private var mContextId:int;
      
      private var mIsSoftware:Boolean;
      
      private var mInitialCanvasWidth:Number;
      
      private var mInitialCanvasHeight:Number;
      
      private var mCurrentCanvasWidth:Number;
      
      private var mCurrentCanvasHeight:Number;
      
      private var mInitialStageWidth:Number;
      
      private var mInitialStageHeight:Number;
      
      private var mScreenShotCallback:Function;
      
      private var mColor:uint;
      
      private var mRenderMode:String;
      
      private var mSoftwareBitmap:Bitmap;
      
      private var mBitmapDataContext:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var mDisposed:Boolean = false;
      
      private var mConstrainedMode:Boolean = false;
      
      public function Starling(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
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
         this.mInitialCanvasWidth = param3.width;
         this.mInitialCanvasHeight = param3.height;
         this.mCurrentCanvasWidth = this.mInitialCanvasWidth;
         this.mCurrentCanvasHeight = this.mInitialCanvasHeight;
         this.mInitialStageWidth = param2.stageWidth;
         this.mInitialStageHeight = param2.stageHeight;
         handleLostContext = true;
         this.makeCurrent();
         this.mRootClass = param1;
         sViewPort = param3;
         this.mStage3D = param4;
         this.mStage = new starling.display.Stage(param3.width,param3.height,param2.color);
         this.mNativeStage = param2;
         this.mTouchProcessor = new TouchProcessor(this.mStage);
         this.mJuggler = new Juggler();
         this.mAntiAliasing = 0;
         this.mSimulateMultitouch = false;
         this.mEnableErrorChecking = false;
         this.mLastFrameTimestamp = getTimer() / 1000;
         this.mPrograms = new Dictionary();
         for each(_loc6_ in this.touchEventTypes)
         {
            param2.addEventListener(_loc6_,this.onTouch,false,0,true);
         }
         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.onContextCreated,false,1,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.onStage3DError,false,1,true);
         this.mStage3D.visible = false;
         this.enableMouse(true);
         this.mColor = param2.color;
         this.mRenderMode = param5;
      }
      
      public static function get isSoftware() : Boolean
      {
         if(current)
         {
            return current.mIsSoftware;
         }
         return true;
      }
      
      public static function contextAvailable() : Boolean
      {
         return sCurrent && (sCurrent.mBitmapDataContext || sCurrent.mContext != null && sCurrent.mContext.driverInfo != "Disposed");
      }
      
      private static function updateViewPort() : void
      {
         sBackBufferConfigurationRequested = true;
      }
      
      public static function get viewPort() : Rectangle
      {
         return sViewPort.clone();
      }
      
      public static function set viewPort(param1:Rectangle) : void
      {
         sViewPort = param1.clone();
         updateViewPort();
      }
      
      public static function set maintainWidth(param1:Boolean) : void
      {
         sMaintainWidth = param1;
      }
      
      public static function get maintainWidth() : Boolean
      {
         return sMaintainWidth;
      }
      
      public static function get current() : Starling
      {
         return sCurrent;
      }
      
      public static function get juggler() : Juggler
      {
         return !!sCurrent ? sCurrent.juggler : null;
      }
      
      public static function get multitouchEnabled() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set multitouchEnabled(param1:Boolean) : void
      {
         Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get handleLostContext() : Boolean
      {
         return sHandleLostContext;
      }
      
      public static function set handleLostContext(param1:Boolean) : void
      {
         if(sCurrent != null)
         {
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         sHandleLostContext = param1;
      }
      
      public static function textureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         if(current)
         {
            return Texture.fromBitmapData(current.mContext,param1,param2,param3);
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = null;
         if(sCurrent.mContext)
         {
            sCurrent.mContext.drawToBitmapData(param1);
         }
         else if(sCurrent.mSupport.canvas)
         {
            _loc2_ = sCurrent.mSupport.canvas;
            param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get rootObject() : starling.display.DisplayObject
      {
         return this.mRootObject;
      }
      
      public function set color(param1:uint) : void
      {
         this.mColor = param1;
      }
      
      public function get canvasWidth() : Number
      {
         return this.mInitialCanvasWidth;
      }
      
      public function get canvasHeight() : Number
      {
         return this.mInitialCanvasHeight;
      }
      
      public function createContext() : void
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
               profile = !!this.mConstrainedMode ? "baselineConstrained" : "baseline";
               requestContext3D(this.mRenderMode,profile);
            }
            else
            {
               requestContext3D(this.mRenderMode);
            }
         }
         catch(e:Error)
         {
            showFatalError("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         this.mDisposed = true;
         this.mNativeStage.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.mNativeStage.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.onContextCreated,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.onStage3DError,false);
         for each(_loc1_ in this.touchEventTypes)
         {
            this.mNativeStage.removeEventListener(_loc1_,this.onTouch,false);
         }
         for each(_loc2_ in this.mPrograms)
         {
            _loc2_.dispose();
         }
         if(this.mContext)
         {
            this.mContext.dispose();
         }
         if(this.mTouchProcessor)
         {
            this.mTouchProcessor.dispose();
         }
         if(this.mSupport)
         {
            this.mSupport.dispose();
         }
         if(sCurrent == this)
         {
            sCurrent = null;
         }
         if(this.mSoftwareBitmap && this.mSoftwareBitmap.bitmapData)
         {
            this.mSoftwareBitmap.bitmapData.dispose();
            this.mSoftwareBitmap.bitmapData = null;
         }
      }
      
      private function initializeGraphicsAPI() : void
      {
         this.mContext = this.mStage3D.context3D;
         this.mPrograms = new Dictionary();
         if(this.mContext)
         {
            this.mContext.enableErrorChecking = this.mEnableErrorChecking;
            if(this.mContext.driverInfo.indexOf("Software") >= 0)
            {
               this.mIsSoftware = true;
            }
         }
         else
         {
            this.mIsSoftware = true;
         }
         updateViewPort();
      }
      
      private function initializeRoot() : void
      {
         if(this.mStage.numChildren > 0)
         {
            return;
         }
         if(this.mRootObject == null)
         {
            this.mRootObject = new this.mRootClass();
         }
         if(this.mRootObject == null)
         {
            throw new Error("Invalid root class: " + this.mRootClass);
         }
         this.mStage.addChild(this.mRootObject);
      }
      
      private function configureBackBuffer() : void
      {
         try
         {
            this.mContext.configureBackBuffer(sViewPort.width,sViewPort.height,this.mAntiAliasing,false);
            sBackBufferConfigurationRequested = false;
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         if(!contextAvailable())
         {
            return;
         }
         if(sBackBufferConfigurationRequested)
         {
            if(this.mContext)
            {
               this.mStage3D.x = sViewPort.x;
               this.mStage3D.y = sViewPort.y;
               this.configureBackBuffer();
               if(sBackBufferConfigurationRequested)
               {
                  return;
               }
               this.setCanvasSize(sViewPort.width,sViewPort.height);
            }
            else if(this.mSoftwareBitmap)
            {
               sBackBufferConfigurationRequested = false;
               this.setCanvasSize(sViewPort.width,sViewPort.height);
            }
         }
         var _loc1_:Number = getTimer() / 1000;
         var _loc2_:Number = _loc1_ - this.mLastFrameTimestamp;
         this.mLastFrameTimestamp = _loc1_;
         this.mStage.advanceTime(_loc2_);
         this.mJuggler.advanceTime(_loc2_);
         this.mTouchProcessor.advanceTime(_loc2_);
         this.mSupport.setOrthographicProjection(this.mStage.stageWidth,this.mStage.stageHeight);
         this.mSupport.clear(this.mContext,this.mColor,1);
         this.mSupport.setContext(this.mContext,this.mContextId);
         this.mStage.render(this.mSupport,1);
         this.mSupport.finishQuadBatch();
         if(this.mScreenShotCallback != null)
         {
            this.mScreenShotCallback();
            this.mScreenShotCallback = null;
         }
         this.mSupport.finishRendering(this.mContext);
         this.mSupport.nextFrame();
      }
      
      public function set screenShotCallback(param1:Function) : void
      {
         this.mScreenShotCallback = param1;
      }
      
      private function updateNativeOverlay() : void
      {
         var _loc3_:BitmapData = null;
         this.mNativeOverlay.x = sViewPort.x;
         this.mNativeOverlay.y = sViewPort.y;
         var _loc1_:int = this.mNativeOverlay.numChildren;
         var _loc2_:flash.display.DisplayObject = this.mNativeOverlay.parent;
         if(_loc1_ != 0 && _loc2_ == null)
         {
            this.mNativeStage.addChild(this.mNativeOverlay);
         }
         else if(_loc1_ == 0 && _loc2_)
         {
            this.mNativeStage.removeChild(this.mNativeOverlay);
         }
         if(this.mSupport && this.mSupport.canvas)
         {
            this.mSupport.setCanvasSize(this.mCurrentCanvasWidth,this.mCurrentCanvasHeight,sViewPort.width / this.mStage.stageWidth,sViewPort.height / this.mStage.stageHeight);
            _loc3_ = this.mSupport.canvas;
            if(this.mSoftwareBitmap.bitmapData != _loc3_)
            {
               this.mSoftwareBitmap.bitmapData = _loc3_;
            }
            if(this.mNativeStage.getChildIndex(this.mNativeOverlay) > 0)
            {
               this.mNativeStage.removeChild(this.mNativeOverlay);
               this.mNativeStage.addChildAt(this.mNativeOverlay,0);
            }
         }
      }
      
      private function showFatalError(param1:String) : void
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
         this.nativeOverlay.addChild(_loc2_);
      }
      
      public function makeCurrent() : void
      {
         sCurrent = this;
      }
      
      public function start() : void
      {
         this.mStarted = true;
         this.mStage3D.visible = this.mStage3DEnabled;
      }
      
      public function stop() : void
      {
         this.mStarted = false;
         this.mStage3D.visible = false;
      }
      
      public function enableMouse(param1:Boolean) : void
      {
         this.mMouseEnabled = param1;
      }
      
      private function initializeBitmapDataRendering() : void
      {
         this.mBitmapDataContext = true;
         if(this.mSoftwareBitmap == null)
         {
            this.mSoftwareBitmap = new Bitmap();
            this.nativeOverlay.addChild(this.mSoftwareBitmap);
         }
      }
      
      private function onStage3DError(param1:ErrorEvent) : void
      {
         this.initializeBitmapDataRendering();
         this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
      }
      
      private function onContextCreated(param1:flash.events.Event) : void
      {
         if(this.mDisposed)
         {
            return;
         }
         if(!this.mConstrainedMode && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
         {
            this.mConstrainedMode = true;
            this.createContext();
            return;
         }
         ++sContextId;
         this.mContextId = sContextId;
         if(this.mSupport)
         {
            this.mSupport.dispose();
         }
         if(!Starling.handleLostContext && this.mContext)
         {
            this.showFatalError("Fatal error: The application lost the device context!");
            this.stop();
            return;
         }
         this.makeCurrent();
         this.initializeGraphicsAPI();
         this.initializeRoot();
         if(this.mContext && this.mIsSoftware)
         {
            this.mStage3DEnabled = false;
            this.mContext = null;
            this.initializeBitmapDataRendering();
         }
         if(this.mContext)
         {
            this.mSupport = new RenderSupport();
         }
         else
         {
            this.mSupport = new BitmapDataRenderSupport();
            this.mSupport.setCanvasSize(this.mCurrentCanvasWidth,this.mCurrentCanvasHeight,sViewPort.width / this.mStage.stageWidth,sViewPort.height / this.mStage.stageHeight);
            this.mSupport.clear(null,this.mColor);
         }
         this.mTouchProcessor.simulateMultitouch = this.mSimulateMultitouch;
         dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         this.makeCurrent();
         var _loc2_:Number = getTimer() / 1000;
         var _loc3_:Number = _loc2_ - this.mLastFrameTimestamp;
         if(this.mStarted || _loc3_ > 1)
         {
            this.render();
         }
         if(this.mNativeOverlay)
         {
            this.updateNativeOverlay();
         }
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         this.makeCurrent();
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / this.mInitialCanvasWidth;
         var _loc4_:Number = param2 / this.mInitialCanvasHeight;
         if(!maintainWidth)
         {
            this.mStage.stageWidth = this.mInitialCanvasWidth * _loc3_ / _loc4_;
            this.mStage.stageHeight = this.mInitialCanvasHeight;
         }
         else
         {
            this.mStage.stageWidth = this.mInitialCanvasWidth;
            this.mStage.stageHeight = this.mInitialCanvasHeight * _loc4_ / _loc3_;
         }
         this.mCurrentCanvasWidth = param1;
         this.mCurrentCanvasHeight = param2;
         this.mStage.dispatchEvent(new ResizeEvent(flash.events.Event.RESIZE,param1,param2));
      }
      
      public function resetCanvasSize() : void
      {
         this.setCanvasSize(this.mInitialCanvasWidth,this.mInitialCanvasHeight);
      }
      
      private function onTouch(param1:flash.events.Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!this.mStarted || !this.mMouseEnabled)
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
               this.mLeftMouseDown = true;
            }
            else if(param1.type == MouseEvent.MOUSE_UP)
            {
               this.mLeftMouseDown = false;
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
               _loc5_ = TouchPhase.BEGAN;
               break;
            case TouchEvent.TOUCH_MOVE:
               _loc5_ = TouchPhase.MOVED;
               break;
            case TouchEvent.TOUCH_END:
               _loc5_ = TouchPhase.ENDED;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc5_ = TouchPhase.BEGAN;
               break;
            case MouseEvent.MOUSE_UP:
               _loc5_ = TouchPhase.ENDED;
               break;
            case MouseEvent.MOUSE_MOVE:
               _loc5_ = !!this.mLeftMouseDown ? TouchPhase.MOVED : TouchPhase.HOVER;
         }
         if((_loc2_ < sViewPort.left || _loc2_ >= sViewPort.right || _loc3_ < sViewPort.top || _loc3_ >= sViewPort.bottom) && _loc5_ == TouchPhase.BEGAN)
         {
            return;
         }
         _loc2_ -= sViewPort.x;
         _loc3_ -= sViewPort.y;
         this.mTouchProcessor.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function get touchEventTypes() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function registerProgram(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc4_:Program3D = null;
         if(param1 in this.mPrograms)
         {
            throw new Error("Another program with this name is already registered");
         }
         if(this.mContext != null)
         {
            (_loc4_ = this.mContext.createProgram()).upload(param2,param3);
            this.mPrograms[param1] = _loc4_;
         }
      }
      
      public function deleteProgram(param1:String) : void
      {
         var _loc2_:Program3D = this.getProgram(param1);
         if(_loc2_)
         {
            _loc2_.dispose();
            delete this.mPrograms[param1];
         }
      }
      
      public function getProgram(param1:String) : Program3D
      {
         return this.mPrograms[param1] as Program3D;
      }
      
      public function hasProgram(param1:String) : Boolean
      {
         return param1 in this.mPrograms;
      }
      
      public function get isStarted() : Boolean
      {
         return this.mStarted;
      }
      
      public function get juggler() : Juggler
      {
         return this.mJuggler;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.mSimulateMultitouch;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         this.mSimulateMultitouch = param1;
         if(this.mContext)
         {
            this.mTouchProcessor.simulateMultitouch = param1;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.mEnableErrorChecking;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         this.mEnableErrorChecking = param1;
         if(this.mContext)
         {
            this.mContext.enableErrorChecking = param1;
         }
      }
      
      public function get antiAliasing() : int
      {
         return this.mAntiAliasing;
      }
      
      public function set antiAliasing(param1:int) : void
      {
         this.mAntiAliasing = param1;
         updateViewPort();
      }
      
      public function get nativeOverlay() : Sprite
      {
         var _loc1_:ContextMenu = null;
         if(this.mNativeOverlay == null)
         {
            this.mNativeOverlay = new Sprite();
            _loc1_ = new ContextMenu();
            _loc1_.hideBuiltInItems();
            this.mNativeOverlay.contextMenu = _loc1_;
            this.updateNativeOverlay();
         }
         return this.mNativeOverlay;
      }
      
      public function get stage() : starling.display.Stage
      {
         return this.mStage;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get nativeStage() : flash.display.Stage
      {
         return this.mNativeStage;
      }
      
      public function get quadBatchingEnabled() : Boolean
      {
         return !this.mBitmapDataContext;
      }
   }
}
