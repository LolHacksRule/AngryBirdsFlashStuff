package starling.core
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DCompareMode;
   import flash.display3D.Context3DTriangleFace;
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
   import flash.ui.Mouse;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import starling.animation.Juggler;
   import starling.display.DisplayObject;
   import starling.display.Stage;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.ResizeEvent;
   import starling.events.TouchPhase;
   import starling.textures.Texture;
   import starling.utils.HAlign;
   import starling.utils.VAlign;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.3";
      
      private static const PROGRAM_DATA_NAME:String = "Starling.programs";
      
      private static var sViewPort:Rectangle;
      
      private static var sMaintainWidth:Boolean = true;
      
      private static var sNoScale:Boolean = false;
      
      private static var sBackBufferConfigurationRequested:Boolean;
      
      private static var sCurrent:Starling;
      
      private static var sHandleLostContext:Boolean;
      
      private static var sContextData:Dictionary = new Dictionary(true);
      
      private static var sContextId:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:starling.display.Stage;
      
      private var mRootClass:Class;
      
      private var mRoot:starling.display.DisplayObject;
      
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
      
      private var mStatsDisplay:StatsDisplay;
      
      private var mShareContext:Boolean;
      
      private var mProfile:String;
      
      private var mContext:Context3D;
      
      private var mPreviousViewPort:Rectangle;
      
      private var mClippedViewPort:Rectangle;
      
      private var mNativeStage:flash.display.Stage;
      
      private var mNativeOverlay:Sprite;
      
      private var mContextId:int;
      
      private var mIsSoftware:Boolean;
      
      private var mAllowSoftwareStage3D:Boolean = true;
      
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
      
      private var mTrackRenderDelay:Boolean = false;
      
      private var mRenderDelayThresholdMilliSeconds:Number = 25.0;
      
      private var mRenderThresholdPassCount:int = 0;
      
      public function Starling(rootClass:Class, stage:flash.display.Stage, viewPort:Rectangle = null, stage3D:Stage3D = null, renderMode:String = "auto", profile:String = "baselineConstrained")
      {
         var touchEventType:String = null;
         super();
         if(stage == null)
         {
            throw new ArgumentError("Stage must not be null");
         }
         if(rootClass == null)
         {
            throw new ArgumentError("Root class must not be null");
         }
         if(viewPort == null)
         {
            viewPort = new Rectangle(0,0,stage.stageWidth,stage.stageHeight);
         }
         if(stage3D == null)
         {
            stage3D = stage.stage3Ds[0];
         }
         this.mInitialCanvasWidth = viewPort.width;
         this.mInitialCanvasHeight = viewPort.height;
         this.mCurrentCanvasWidth = this.mInitialCanvasWidth;
         this.mCurrentCanvasHeight = this.mInitialCanvasHeight;
         this.mInitialStageWidth = stage.stageWidth;
         this.mInitialStageHeight = stage.stageHeight;
         handleLostContext = true;
         this.makeCurrent();
         this.mRootClass = rootClass;
         sViewPort = viewPort;
         this.mPreviousViewPort = new Rectangle();
         this.mStage3D = stage3D;
         this.mStage = new starling.display.Stage(viewPort.width,viewPort.height,stage.color);
         this.mNativeOverlay = new Sprite();
         this.mNativeStage = stage;
         this.mNativeStage.addChild(this.mNativeOverlay);
         this.mTouchProcessor = new TouchProcessor(this.mStage);
         this.mJuggler = new Juggler();
         this.mAntiAliasing = 0;
         this.mSimulateMultitouch = false;
         this.mEnableErrorChecking = false;
         this.mProfile = profile;
         this.mLastFrameTimestamp = getTimer() / 1000;
         sContextData[stage3D] = new Dictionary();
         sContextData[stage3D][PROGRAM_DATA_NAME] = new Dictionary();
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         for each(touchEventType in this.touchEventTypes)
         {
            stage.addEventListener(touchEventType,this.onTouch,false,0,true);
         }
         stage.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
         stage.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
         stage.addEventListener(flash.events.Event.MOUSE_LEAVE,this.onMouseLeave,false,0,true);
         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.onContextCreated,false,10,true);
         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.onStage3DError,false,10,true);
         this.mStage3D.visible = false;
         this.enableMouse(true);
         this.mColor = stage.color;
         this.mRenderMode = renderMode;
         if(this.mStage3D.context3D && this.mStage3D.context3D.driverInfo != "Disposed")
         {
            this.mShareContext = true;
            setTimeout(this.initialize,1);
         }
         else
         {
            this.mShareContext = false;
         }
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
      
      public static function get contextValid() : Boolean
      {
         return contextAvailable();
      }
      
      public static function get viewPort() : Rectangle
      {
         return sViewPort.clone();
      }
      
      public static function set viewPort(value:Rectangle) : void
      {
         sViewPort = value.clone();
         sBackBufferConfigurationRequested = true;
      }
      
      public static function set noScale(value:Boolean) : void
      {
         sNoScale = value;
      }
      
      public static function get noScale() : Boolean
      {
         return sNoScale;
      }
      
      public static function set maintainWidth(maintainWidth:Boolean) : void
      {
         sMaintainWidth = maintainWidth;
      }
      
      public static function get maintainWidth() : Boolean
      {
         return sMaintainWidth;
      }
      
      public static function get current() : Starling
      {
         return sCurrent;
      }
      
      public static function get context() : Context3D
      {
         return !!sCurrent ? sCurrent.context : null;
      }
      
      public static function get juggler() : Juggler
      {
         return !!sCurrent ? sCurrent.juggler : null;
      }
      
      public static function get contentScaleFactor() : Number
      {
         return !!sCurrent ? Number(sCurrent.contentScaleFactor) : Number(1);
      }
      
      public static function get multitouchEnabled() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set multitouchEnabled(value:Boolean) : void
      {
         if(sCurrent)
         {
            throw new IllegalOperationError("\'multitouchEnabled\' must be set before Starling instance is created");
         }
         Multitouch.inputMode = !!value ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
      }
      
      public static function get handleLostContext() : Boolean
      {
         return sHandleLostContext;
      }
      
      public static function set handleLostContext(value:Boolean) : void
      {
         if(sCurrent)
         {
            throw new IllegalOperationError("\'handleLostContext\' must be set before Starling instance is created");
         }
         sHandleLostContext = value;
      }
      
      public static function textureFromBitmapData(data:BitmapData, generateMipMaps:Boolean = true, optimizeForRenderTexture:Boolean = false, scale:Number = 1) : Texture
      {
         if(current)
         {
            return Texture.fromBitmapData(current.mContext,data,generateMipMaps,optimizeForRenderTexture,scale);
         }
         return null;
      }
      
      public static function drawToBitmapData(bitmapData:BitmapData) : void
      {
         var canvas:BitmapData = null;
         if(sCurrent.mContext)
         {
            sCurrent.mContext.drawToBitmapData(bitmapData);
         }
         else if(sCurrent.mSupport.canvas)
         {
            canvas = sCurrent.mSupport.canvas;
            bitmapData.copyPixels(canvas,canvas.rect,new Point(0,0),null,null,true);
         }
      }
      
      public function get rootObject() : starling.display.DisplayObject
      {
         return this.mRoot;
      }
      
      public function set color(color:uint) : void
      {
         this.mColor = color;
      }
      
      public function set trackRenderDelay(trackRenderDelay:Boolean) : void
      {
         if(!this.mTrackRenderDelay && trackRenderDelay)
         {
            this.mRenderThresholdPassCount = 0;
         }
         this.mTrackRenderDelay = trackRenderDelay;
      }
      
      public function get trackRenderDelay() : Boolean
      {
         return this.mTrackRenderDelay;
      }
      
      public function set renderDelayThresholdMilliSeconds(thresholdMilliSeconds:Number) : void
      {
         this.mRenderDelayThresholdMilliSeconds = thresholdMilliSeconds;
      }
      
      public function get renderDelayThresholdMilliSeconds() : Number
      {
         return this.mRenderDelayThresholdMilliSeconds;
      }
      
      public function get renderThresholdPassCount() : int
      {
         return this.mRenderThresholdPassCount;
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
         var requestContext3D:Function = null;
         var moreThanOne:Boolean = false;
         var profile:String = null;
         try
         {
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
         var touchEventType:String = null;
         this.stop();
         this.mDisposed = true;
         this.mNativeStage.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
         this.mNativeStage.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
         this.mNativeStage.removeEventListener(flash.events.Event.MOUSE_LEAVE,this.onMouseLeave,false);
         this.mNativeStage.removeChild(this.mNativeOverlay);
         this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.onContextCreated,false);
         this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.onStage3DError,false);
         for each(touchEventType in this.touchEventTypes)
         {
            this.mNativeStage.removeEventListener(touchEventType,this.onTouch,false);
         }
         if(this.mStage)
         {
            this.mStage.dispose();
         }
         if(this.mSupport)
         {
            this.mSupport.dispose();
         }
         if(this.mTouchProcessor)
         {
            this.mTouchProcessor.dispose();
         }
         if(this.mContext && !this.mShareContext)
         {
            this.mContext.dispose();
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
      
      private function initialize() : void
      {
         this.makeCurrent();
         this.initializeGraphicsAPI();
         this.initializeRoot();
         this.mTouchProcessor.simulateMultitouch = this.mSimulateMultitouch;
         this.mLastFrameTimestamp = getTimer() / 1000;
      }
      
      private function initializeGraphicsAPI() : void
      {
         this.mContext = this.mStage3D.context3D;
         this.mContext.setDepthTest(false,Context3DCompareMode.ALWAYS);
         this.mContext.setCulling(Context3DTriangleFace.NONE);
         if(!this.mAllowSoftwareStage3D && this.mContext && this.mIsSoftware)
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
         if(this.mContext)
         {
            this.mContext.enableErrorChecking = this.mEnableErrorChecking;
            if(this.mContext.driverInfo.indexOf("Software") >= 0)
            {
               this.mIsSoftware = true;
            }
         }
         this.contextData[PROGRAM_DATA_NAME] = new Dictionary();
         this.updateViewPort(true);
         dispatchEventWith(starling.events.Event.CONTEXT3D_CREATE,false,this.mContext);
      }
      
      private function initializeRoot() : void
      {
         if(this.mRoot == null)
         {
            this.mRoot = new this.mRootClass() as starling.display.DisplayObject;
            if(this.mRoot == null)
            {
               throw new Error("Invalid root class: " + this.mRootClass);
            }
            this.mStage.addChildAt(this.mRoot,0);
            dispatchEventWith(starling.events.Event.ROOT_CREATED,false,this.mRoot);
         }
      }
      
      public function nextFrame() : void
      {
         var now:Number = getTimer() / 1000;
         var passedTime:Number = now - this.mLastFrameTimestamp;
         this.mLastFrameTimestamp = now;
         this.advanceTime(passedTime);
         this.render();
      }
      
      public function advanceTime(passedTime:Number) : void
      {
         this.makeCurrent();
         this.mTouchProcessor.advanceTime(passedTime);
         this.mStage.advanceTime(passedTime);
         this.mJuggler.advanceTime(passedTime);
      }
      
      public function render() : void
      {
         var start:int = 0;
         var end:int = 0;
         if(!contextValid)
         {
            return;
         }
         this.makeCurrent();
         this.updateViewPort();
         this.updateNativeOverlay();
         this.mSupport.nextFrame();
         if(!this.mShareContext)
         {
            RenderSupport.clear(this.mContext,this.mColor,1);
         }
         this.mSupport.setContext(this.mContext,this.mContextId);
         this.mSupport.renderTarget = null;
         this.mSupport.setOrthographicProjection(0,0,this.mStage.projectionCanvasWidth,this.mStage.projectionCanvasHeight);
         this.mStage.render(this.mSupport,1);
         this.mSupport.finishQuadBatch();
         if(this.mScreenShotCallback != null)
         {
            this.mScreenShotCallback();
            this.mScreenShotCallback = null;
         }
         if(this.mStatsDisplay)
         {
            this.mStatsDisplay.drawCount = this.mSupport.drawCount;
         }
         if(!this.mShareContext)
         {
            if(this.mTrackRenderDelay)
            {
               start = getTimer();
               this.mSupport.finishRendering(this.mContext);
               end = getTimer();
               if(end - start > this.mRenderDelayThresholdMilliSeconds)
               {
                  ++this.mRenderThresholdPassCount;
               }
            }
            else
            {
               this.mSupport.finishRendering(this.mContext);
            }
         }
      }
      
      public function set screenShotCallback(value:Function) : void
      {
         this.mScreenShotCallback = value;
      }
      
      private function updateViewPort(updateAliasing:Boolean = false) : void
      {
         if(updateAliasing || this.mPreviousViewPort.width != sViewPort.width || this.mPreviousViewPort.height != sViewPort.height || this.mPreviousViewPort.x != sViewPort.x || this.mPreviousViewPort.y != sViewPort.y)
         {
            this.mPreviousViewPort.setTo(sViewPort.x,sViewPort.y,sViewPort.width,sViewPort.height);
            this.mClippedViewPort = sViewPort.intersection(new Rectangle(0,0,this.mNativeStage.stageWidth,this.mNativeStage.stageHeight));
            this.setCanvasSize(this.mClippedViewPort.width,this.mClippedViewPort.height);
            if(!this.mShareContext)
            {
               this.mStage3D.x = this.mClippedViewPort.x;
               this.mStage3D.y = this.mClippedViewPort.y;
               this.configureBackBuffer();
            }
            else
            {
               this.mSupport.backBufferWidth = this.mClippedViewPort.width;
               this.mSupport.backBufferHeight = this.mClippedViewPort.height;
            }
         }
      }
      
      private function updateNativeOverlay() : void
      {
         var canvas:BitmapData = null;
         this.mNativeOverlay.x = sViewPort.x;
         this.mNativeOverlay.y = sViewPort.y;
         var numChildren:int = this.mNativeOverlay.numChildren;
         var parent:flash.display.DisplayObject = this.mNativeOverlay.parent;
         if(numChildren != 0 && parent == null)
         {
            this.mNativeStage.addChild(this.mNativeOverlay);
         }
         else if(numChildren == 0 && parent)
         {
            this.mNativeStage.removeChild(this.mNativeOverlay);
         }
         if(this.mSupport && this.mSupport.canvas)
         {
            this.mSupport.setCanvasSize(this.mCurrentCanvasWidth,this.mCurrentCanvasHeight,sViewPort.width / this.mStage.stageWidth,sViewPort.height / this.mStage.stageHeight);
            canvas = this.mSupport.canvas;
            if(this.mSoftwareBitmap.bitmapData != canvas)
            {
               this.mSoftwareBitmap.bitmapData = canvas;
            }
            if(this.mNativeStage.getChildIndex(this.mNativeOverlay) > 0)
            {
               this.mNativeStage.removeChild(this.mNativeOverlay);
               this.mNativeStage.addChildAt(this.mNativeOverlay,0);
            }
         }
      }
      
      private function showFatalError(message:String) : void
      {
         var textField:TextField = new TextField();
         var textFormat:TextFormat = new TextFormat("Verdana",12,16777215);
         textFormat.align = TextFormatAlign.CENTER;
         textField.defaultTextFormat = textFormat;
         textField.wordWrap = true;
         textField.width = this.mStage.stageWidth * 0.75;
         textField.autoSize = TextFieldAutoSize.CENTER;
         textField.text = message;
         textField.x = (this.mStage.stageWidth - textField.width) / 2;
         textField.y = (this.mStage.stageHeight - textField.height) / 2;
         textField.background = true;
         textField.backgroundColor = 4456448;
         this.nativeOverlay.addChild(textField);
      }
      
      public function makeCurrent() : void
      {
         sCurrent = this;
      }
      
      public function start() : void
      {
         this.mStarted = true;
         this.mLastFrameTimestamp = getTimer() / 1000;
         this.mStage3D.visible = this.mStage3DEnabled;
         if(this.mRoot)
         {
            this.mRoot.visible = this.mStage3DEnabled;
         }
      }
      
      public function stop() : void
      {
         this.mStarted = false;
         this.mStage3D.visible = false;
         if(this.mRoot)
         {
            this.mRoot.visible = false;
         }
      }
      
      public function enableMouse(enabled:Boolean) : void
      {
         this.mMouseEnabled = enabled;
      }
      
      public function set stationaryTouchLifeTime(lifeTimeMilliSeconds:Number) : void
      {
         this.mTouchProcessor.stationaryTouchLifeTime = lifeTimeMilliSeconds;
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
      
      private function onStage3DError(event:ErrorEvent) : void
      {
         if(event.errorID == 3702)
         {
            this.showFatalError("This application is not correctly embedded (wrong wmode value)");
         }
         else
         {
            this.showFatalError("Stage3D error: " + event.text);
         }
      }
      
      private function onContextCreated(event:flash.events.Event) : void
      {
         if(!Starling.handleLostContext && this.mContext)
         {
            this.stop();
            event.stopImmediatePropagation();
            this.showFatalError("Fatal error: The application lost the device context!");
         }
         else
         {
            if(!this.mConstrainedMode && this.mStage3D.context3D && this.mStage3D.context3D.driverInfo.indexOf("Software") >= 0)
            {
               this.mConstrainedMode = true;
               this.createContext();
               return;
            }
            ++this.mContextId;
            this.initialize();
         }
      }
      
      public function onEnterFrame(event:flash.events.Event) : void
      {
         if(!this.mShareContext)
         {
            if(this.mStarted)
            {
               this.nextFrame();
            }
            else
            {
               this.render();
            }
         }
      }
      
      private function onKey(event:flash.events.KeyboardEvent) : void
      {
         if(!this.mStarted)
         {
            return;
         }
         this.makeCurrent();
         this.mStage.dispatchEvent(new starling.events.KeyboardEvent(event.type,event.charCode,event.keyCode,event.keyLocation,event.ctrlKey,event.altKey,event.shiftKey));
      }
      
      private function onMouseLeave(event:flash.events.Event) : void
      {
         this.mTouchProcessor.enqueueMouseLeftStage();
      }
      
      private function setCanvasSize(canvasWidth:Number, canvasHeight:Number) : void
      {
         var widthScale:Number = canvasWidth / this.mInitialCanvasWidth;
         var heightScale:Number = canvasHeight / this.mInitialCanvasHeight;
         if(noScale)
         {
            this.mStage.projectionCanvasWidth = canvasWidth;
            this.mStage.projectionCanvasHeight = canvasHeight;
         }
         else if(!maintainWidth)
         {
            this.mStage.projectionCanvasWidth = this.mInitialCanvasWidth * widthScale / heightScale;
            this.mStage.projectionCanvasHeight = this.mInitialCanvasHeight;
         }
         else
         {
            this.mStage.projectionCanvasWidth = this.mInitialCanvasWidth;
            this.mStage.projectionCanvasHeight = this.mInitialCanvasHeight * heightScale / widthScale;
         }
         this.mStage.stageWidth = canvasWidth;
         this.mStage.stageHeight = canvasHeight;
         this.mCurrentCanvasWidth = canvasWidth;
         this.mCurrentCanvasHeight = canvasHeight;
         this.mStage.dispatchEvent(new ResizeEvent(flash.events.Event.RESIZE,canvasWidth,canvasHeight));
      }
      
      public function resetCanvasSize() : void
      {
         this.setCanvasSize(this.mInitialCanvasWidth,this.mInitialCanvasHeight);
      }
      
      private function onTouch(event:flash.events.Event) : void
      {
         var globalX:Number = NaN;
         var globalY:Number = NaN;
         var touchID:int = 0;
         var phase:String = null;
         var mouseEvent:MouseEvent = null;
         var touchEvent:TouchEvent = null;
         if(!this.mStarted || !this.mMouseEnabled)
         {
            return;
         }
         var pressure:Number = 1;
         var width:Number = 1;
         var height:Number = 1;
         if(event is MouseEvent)
         {
            mouseEvent = event as MouseEvent;
            globalX = mouseEvent.stageX;
            globalY = mouseEvent.stageY;
            touchID = 0;
            if(event.type == MouseEvent.MOUSE_DOWN)
            {
               this.mLeftMouseDown = true;
            }
            else if(event.type == MouseEvent.MOUSE_UP)
            {
               this.mLeftMouseDown = false;
            }
         }
         else
         {
            touchEvent = event as TouchEvent;
            globalX = touchEvent.stageX;
            globalY = touchEvent.stageY;
            touchID = touchEvent.touchPointID;
            pressure = touchEvent.pressure;
            width = touchEvent.sizeX;
            height = touchEvent.sizeY;
         }
         switch(event.type)
         {
            case TouchEvent.TOUCH_BEGIN:
               phase = TouchPhase.BEGAN;
               break;
            case TouchEvent.TOUCH_MOVE:
               phase = TouchPhase.MOVED;
               break;
            case TouchEvent.TOUCH_END:
               phase = TouchPhase.ENDED;
               break;
            case MouseEvent.MOUSE_DOWN:
               phase = TouchPhase.BEGAN;
               break;
            case MouseEvent.MOUSE_UP:
               phase = TouchPhase.ENDED;
               break;
            case MouseEvent.MOUSE_MOVE:
               phase = !!this.mLeftMouseDown ? TouchPhase.MOVED : TouchPhase.HOVER;
         }
         if((globalX < sViewPort.left || globalX >= sViewPort.right || globalY < sViewPort.top || globalY >= sViewPort.bottom) && phase == TouchPhase.BEGAN)
         {
            return;
         }
         globalX -= sViewPort.x;
         globalY -= sViewPort.y;
         this.mTouchProcessor.enqueue(touchID,phase,globalX,globalY,pressure,width,height);
      }
      
      private function get touchEventTypes() : Array
      {
         return Mouse.supportsCursor || !multitouchEnabled ? [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP] : [TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END];
      }
      
      public function registerProgram(name:String, vertexProgram:ByteArray, fragmentProgram:ByteArray) : void
      {
         this.deleteProgram(name);
         var program:Program3D = this.mContext.createProgram();
         program.upload(vertexProgram,fragmentProgram);
         this.programs[name] = program;
      }
      
      public function deleteProgram(name:String) : void
      {
         var program:Program3D = this.getProgram(name);
         if(program)
         {
            program.dispose();
            delete this.programs[name];
         }
      }
      
      public function getProgram(name:String) : Program3D
      {
         return this.programs[name] as Program3D;
      }
      
      public function hasProgram(name:String) : Boolean
      {
         return name in this.programs;
      }
      
      private function get programs() : Dictionary
      {
         return this.contextData[PROGRAM_DATA_NAME];
      }
      
      public function get isStarted() : Boolean
      {
         return this.mStarted;
      }
      
      public function get juggler() : Juggler
      {
         return this.mJuggler;
      }
      
      public function get context() : Context3D
      {
         return this.mContext;
      }
      
      public function get contextData() : Dictionary
      {
         return sContextData[this.mStage3D] as Dictionary;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.mSimulateMultitouch;
      }
      
      public function set simulateMultitouch(value:Boolean) : void
      {
         this.mSimulateMultitouch = value;
         if(this.mContext)
         {
            this.mTouchProcessor.simulateMultitouch = value;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.mEnableErrorChecking;
      }
      
      public function set enableErrorChecking(value:Boolean) : void
      {
         this.mEnableErrorChecking = value;
         if(this.mContext)
         {
            this.mContext.enableErrorChecking = value;
         }
      }
      
      public function get antiAliasing() : int
      {
         if(!this.mIsSoftware)
         {
            return this.mAntiAliasing;
         }
         return 0;
      }
      
      public function set antiAliasing(value:int) : void
      {
         if(this.antiAliasing != value)
         {
            this.mAntiAliasing = value;
            if(contextValid)
            {
               this.updateViewPort(true);
            }
         }
      }
      
      private function configureBackBuffer() : void
      {
         var error:int = 0;
         try
         {
            this.mSupport.configureBackBuffer(this.mClippedViewPort.width,this.mClippedViewPort.height,this.antiAliasing,false);
            sBackBufferConfigurationRequested = false;
         }
         catch(e:Error)
         {
            error = 1;
         }
      }
      
      public function get contentScaleFactor() : Number
      {
         return 1;
      }
      
      public function get nativeOverlay() : Sprite
      {
         return this.mNativeOverlay;
      }
      
      public function get showStats() : Boolean
      {
         return this.mStatsDisplay && this.mStatsDisplay.parent;
      }
      
      public function set showStats(value:Boolean) : void
      {
         if(value == this.showStats)
         {
            return;
         }
         if(value)
         {
            if(this.mStatsDisplay)
            {
               this.mStage.addChild(this.mStatsDisplay);
            }
            else
            {
               this.showStatsAt();
            }
         }
         else
         {
            this.mStatsDisplay.removeFromParent();
         }
      }
      
      public function showStatsAt(hAlign:String = "left", vAlign:String = "top", scale:Number = 1) : void
      {
         var onRootCreated:Function = null;
         var stageWidth:int = 0;
         var stageHeight:int = 0;
         onRootCreated = function():void
         {
            showStatsAt(hAlign,vAlign,scale);
            removeEventListener(Event.ROOT_CREATED,onRootCreated);
         };
         if(this.mContext == null)
         {
            addEventListener(starling.events.Event.ROOT_CREATED,onRootCreated);
         }
         else
         {
            if(this.mStatsDisplay == null)
            {
               this.mStatsDisplay = new StatsDisplay();
               this.mStatsDisplay.touchable = false;
               this.mStage.addChild(this.mStatsDisplay);
            }
            stageWidth = this.mStage.stageWidth;
            stageHeight = this.mStage.stageHeight;
            this.mStatsDisplay.scaleX = this.mStatsDisplay.scaleY = scale;
            if(hAlign == HAlign.LEFT)
            {
               this.mStatsDisplay.x = 0;
            }
            else if(hAlign == HAlign.RIGHT)
            {
               this.mStatsDisplay.x = stageWidth - this.mStatsDisplay.width;
            }
            else
            {
               this.mStatsDisplay.x = int((stageWidth - this.mStatsDisplay.width) / 2);
            }
            if(vAlign == VAlign.TOP)
            {
               this.mStatsDisplay.y = 0;
            }
            else if(vAlign == VAlign.BOTTOM)
            {
               this.mStatsDisplay.y = stageHeight - this.mStatsDisplay.height;
            }
            else
            {
               this.mStatsDisplay.y = int((stageHeight - this.mStatsDisplay.height) / 2);
            }
         }
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
      
      public function get root() : starling.display.DisplayObject
      {
         return this.mRoot;
      }
      
      public function get shareContext() : Boolean
      {
         return this.mShareContext;
      }
      
      public function set shareContext(value:Boolean) : void
      {
         this.mShareContext = value;
      }
      
      public function get profile() : String
      {
         return this.mProfile;
      }
      
      public function get disposed() : Boolean
      {
         return this.mDisposed;
      }
   }
}
