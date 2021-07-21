package fl.rsl
{
   import fl.events.ProLoaderRSLPreloaderSandboxEvent;
   import fl.events.RSLErrorEvent;
   import fl.events.RSLEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Stage;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class RSLPreloader extends EventDispatcher
   {
       
      
      protected var mainTimeline:MovieClip;
      
      protected var contentClassName:String;
      
      protected var loaderAnim:Loader;
      
      protected var contentLoader:Loader;
      
      protected var _rslInfoList:Array;
      
      protected var loaderList:Array;
      
      protected var numRSLComplete:int;
      
      protected var numRSLFailed:int;
      
      protected var failedURLs:Array;
      
      protected var enterFrameClip:MovieClip;
      
      protected var _debugWaitTime:int;
      
      protected var debugWaitStart:int;
      
      public function RSLPreloader(param1:MovieClip = null)
      {
         var _loc2_:Object = null;
         super();
         this.mainTimeline = param1;
         this._rslInfoList = new Array();
         this.loaderList = new Array();
         this.debugWaitStart = -1;
         this.contentLoader = new Loader();
         this.contentLoader.contentLoaderInfo.addEventListener(Event.INIT,this.contentInit,false,0,true);
         if(param1 != null)
         {
            param1.loaderInfo.sharedEvents.dispatchEvent(new ProLoaderRSLPreloaderSandboxEvent(ProLoaderRSLPreloaderSandboxEvent.PROLOADER_RSLPRELOADER_SANDBOX,false,false,this.contentLoader.contentLoaderInfo));
            if(this.contentLoader.contentLoaderInfo.hasOwnProperty("childSandboxBridge"))
            {
               try
               {
                  _loc2_ = param1.loaderInfo["childSandboxBridge"];
                  if(_loc2_ != null)
                  {
                     this.contentLoader.contentLoaderInfo["childSandboxBridge"] = _loc2_;
                  }
               }
               catch(se:SecurityError)
               {
               }
               try
               {
                  _loc2_ = param1.loaderInfo["parentSandboxBridge"];
                  if(_loc2_ != null)
                  {
                     this.contentLoader.contentLoaderInfo["parentSandboxBridge"] = _loc2_;
                  }
               }
               catch(se:SecurityError)
               {
               }
            }
         }
      }
      
      public function set debugWaitTime(param1:int) : void
      {
         this._debugWaitTime = param1;
      }
      
      public function get debugWaitTime() : int
      {
         return this._debugWaitTime;
      }
      
      public function get numRSLInfos() : int
      {
         return this._rslInfoList.length;
      }
      
      public function getRSLInfoAt(param1:int) : RSLInfo
      {
         return this._rslInfoList[param1];
      }
      
      public function addRSLInfo(param1:RSLInfo) : void
      {
         this._rslInfoList.push(param1);
      }
      
      public function start(param1:Class = null, param2:String = null) : void
      {
         var _loc3_:ByteArray = null;
         var _loc4_:LoaderContext = null;
         this.contentClassName = param2;
         try
         {
            if(this.mainTimeline != null && param1 != null)
            {
               _loc3_ = new param1() as ByteArray;
            }
         }
         catch(err:Error)
         {
         }
         if(_loc3_ == null)
         {
            this.loadRSLFiles();
         }
         else
         {
            this.loaderAnim = new Loader();
            this.mainTimeline.addChild(this.loaderAnim);
            this.loaderAnim.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loaderAnimLoaded,false,0,true);
            this.loaderAnim.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.loaderAnimError,false,0,true);
            if((_loc4_ = new LoaderContext(false,new ApplicationDomain())).hasOwnProperty("allowLoadBytesCodeExecution"))
            {
               _loc4_["allowLoadBytesCodeExecution"] = true;
            }
            this.loaderAnim.loadBytes(_loc3_,_loc4_);
         }
      }
      
      public function loadContent() : void
      {
         var targetParent:DisplayObjectContainer = null;
         var contentClass:Class = Class(this.mainTimeline.loaderInfo.applicationDomain.getDefinition(this.contentClassName));
         var contentBytes:ByteArray = ByteArray(new contentClass());
         this.mainTimeline.addChild(this.contentLoader);
         var lc:LoaderContext = new LoaderContext(false,this.mainTimeline.loaderInfo.applicationDomain);
         if(lc.hasOwnProperty("allowLoadBytesCodeExecution"))
         {
            lc["allowLoadBytesCodeExecution"] = true;
         }
         if(lc.hasOwnProperty("requestedContentParent"))
         {
            try
            {
               targetParent = this.mainTimeline.parent as DisplayObjectContainer;
               if(targetParent == null || targetParent is Loader)
               {
                  targetParent = this.mainTimeline;
               }
            }
            catch(se:SecurityError)
            {
               targetParent = mainTimeline;
            }
            lc["requestedContentParent"] = targetParent;
         }
         if(lc.hasOwnProperty("parameters"))
         {
            lc["parameters"] = this.mainTimeline.loaderInfo.parameters;
         }
         this.contentLoader.loadBytes(contentBytes,lc);
      }
      
      protected function loaderAnimLoaded(param1:Event) : void
      {
         var _loc2_:Function = null;
         try
         {
            _loc2_ = this.loaderAnim.content["setRSLPreloader"] as Function;
            if(_loc2_ != null)
            {
               _loc2_(this);
            }
         }
         catch(err:Error)
         {
         }
         this.loadRSLFiles();
      }
      
      protected function loaderAnimError(param1:IOErrorEvent) : void
      {
         try
         {
            this.mainTimeline.removeChild(this.loaderAnim);
         }
         catch(err:Error)
         {
         }
         this.loaderAnim = null;
         this.loadRSLFiles();
      }
      
      protected function loadRSLFiles(param1:Event = null) : void
      {
         var _loc3_:RSLInfo = null;
         if(this._debugWaitTime > 0)
         {
            if(this.debugWaitStart < 0)
            {
               this.debugWaitStart = getTimer();
               this.enterFrameClip = this.mainTimeline == null ? new MovieClip() : this.mainTimeline;
               this.enterFrameClip.addEventListener(Event.ENTER_FRAME,this.loadRSLFiles);
               return;
            }
            if(getTimer() - this.debugWaitStart < this._debugWaitTime)
            {
               return;
            }
            this.enterFrameClip.removeEventListener(Event.ENTER_FRAME,this.loadRSLFiles);
            this.enterFrameClip = null;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this._rslInfoList.length)
         {
            _loc3_ = this._rslInfoList[_loc2_];
            _loc3_.addEventListener(ProgressEvent.PROGRESS,this.handleProgress,false,0,true);
            _loc3_.addEventListener(Event.COMPLETE,this.loadComplete,false,0,true);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.loadFailed,false,0,true);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loadFailed,false,0,true);
            this._rslInfoList[_loc2_].load();
            _loc2_++;
         }
      }
      
      protected function loadComplete(param1:Event) : void
      {
         var _loc2_:RSLInfo = param1.target as RSLInfo;
         if(_loc2_ == null)
         {
            return;
         }
         param1.target.removeEventListener(ProgressEvent.PROGRESS,this.handleProgress);
         param1.target.removeEventListener(Event.COMPLETE,this.loadComplete);
         param1.target.removeEventListener(IOErrorEvent.IO_ERROR,this.loadFailed);
         param1.target.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loadFailed);
         ++this.numRSLComplete;
         this.loaderList.push(_loc2_.loader);
         if(this.numRSLComplete + this.numRSLFailed >= this._rslInfoList.length)
         {
            this.finish();
         }
      }
      
      protected function loadFailed(param1:ErrorEvent) : void
      {
         var _loc2_:RSLInfo = param1.target as RSLInfo;
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.failed)
         {
            param1.target.removeEventListener(ProgressEvent.PROGRESS,this.handleProgress);
            param1.target.removeEventListener(Event.COMPLETE,this.loadComplete);
            param1.target.removeEventListener(IOErrorEvent.IO_ERROR,this.loadFailed);
            param1.target.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loadFailed);
            this.failedURLs = this.failedURLs == null ? _loc2_.rslURLs : this.failedURLs.concat(_loc2_.rslURLs);
            ++this.numRSLFailed;
            if(this.numRSLComplete + this.numRSLFailed >= this._rslInfoList.length)
            {
               this.finish();
            }
         }
      }
      
      protected function handleProgress(param1:ProgressEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:RSLInfo = null;
         var _loc4_:int = 0;
         while(_loc4_ < this._rslInfoList.length)
         {
            if(!(_loc5_ = this._rslInfoList[_loc4_]).failed)
            {
               _loc2_ += _loc5_.bytesLoaded;
               _loc3_ += _loc5_.bytesTotal;
            }
            _loc4_++;
         }
         if(_loc3_ > 0)
         {
            dispatchEvent(new RSLEvent(RSLEvent.RSL_PROGRESS,false,false,this.numRSLComplete,this.numRSLFailed,this._rslInfoList.length,_loc2_,_loc3_));
         }
      }
      
      protected function finish() : void
      {
         var calledFn:Boolean = false;
         var fn:Function = null;
         try
         {
            if(this.loaderAnim != null)
            {
               if(this.numRSLFailed > 0)
               {
                  fn = this.loaderAnim.content["handleRSLError"] as Function;
                  if(fn != null)
                  {
                     fn(this.completeCallback,this.numRSLComplete,this.numRSLFailed,this.failedURLs);
                     calledFn = true;
                  }
               }
               else
               {
                  fn = this.loaderAnim.content["handleRSLComplete"] as Function;
                  if(fn != null)
                  {
                     fn(this.completeCallback);
                     calledFn = true;
                  }
               }
            }
         }
         catch(err:Error)
         {
            calledFn = false;
         }
         if(!calledFn)
         {
            this.completeCallback();
         }
      }
      
      protected function completeCallback() : void
      {
         if(this.mainTimeline == null || this.contentClassName == null)
         {
            if(this.numRSLFailed > 0)
            {
               dispatchEvent(new RSLErrorEvent(RSLErrorEvent.RSL_LOAD_FAILED,false,false,this.numRSLComplete,this.numRSLFailed,this._rslInfoList.length,this.failedURLs));
            }
            else
            {
               dispatchEvent(new RSLEvent(RSLEvent.RSL_LOAD_COMPLETE,false,false,this.numRSLComplete,this.numRSLFailed,this._rslInfoList.length));
            }
         }
         else
         {
            this.mainTimeline.play();
         }
      }
      
      protected function contentInit(param1:Event) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:Shape = null;
         var _loc5_:Stage = null;
         if(this.loaderAnim != null)
         {
            try
            {
               this.mainTimeline.removeChild(this.mainTimeline.getChildAt(0));
            }
            catch(err:Error)
            {
            }
            try
            {
               this.mainTimeline.removeChild(this.loaderAnim);
            }
            catch(err:Error)
            {
            }
            if(this.loaderAnim.hasOwnProperty("unloadAndStop"))
            {
               this.loaderAnim.unloadAndStop(true);
            }
            else
            {
               this.loaderAnim.unload();
            }
         }
         this.contentLoader.content["__rslLoaders"] = this.loaderList;
         try
         {
            _loc3_ = DisplayObjectContainer(this.contentLoader.content);
            _loc4_ = new Shape();
            _loc3_.addChild(_loc4_);
            this.mainTimeline.loaderInfo.sharedEvents.dispatchEvent(new ProLoaderRSLPreloaderSandboxEvent(ProLoaderRSLPreloaderSandboxEvent.PROLOADER_RSLPRELOADER_SANDBOX,false,false,null,_loc4_));
            _loc3_.removeChild(_loc4_);
         }
         catch(err:Error)
         {
         }
         var _loc2_:DisplayObject = null;
         try
         {
            _loc2_ = this.contentLoader.content.parent;
         }
         catch(se:SecurityError)
         {
            _loc2_ = null;
         }
         if(_loc2_ == this.contentLoader)
         {
            try
            {
               _loc5_ = this.mainTimeline.parent as Stage;
            }
            catch(se:SecurityError)
            {
               _loc5_ = null;
            }
            if(_loc5_ == null)
            {
               this.mainTimeline.addChild(this.contentLoader.content);
            }
            else
            {
               _loc5_.addChildAt(this.contentLoader.content,_loc5_.getChildIndex(this.mainTimeline));
               try
               {
                  _loc5_.removeChild(this.mainTimeline);
               }
               catch(err:Error)
               {
               }
            }
         }
         else
         {
            try
            {
               this.mainTimeline.parent.removeChild(this.mainTimeline);
            }
            catch(err:Error)
            {
            }
         }
         try
         {
            if(this.mainTimeline["__rslPreloader"] == this)
            {
               this.mainTimeline["__rslPreloader"] = null;
            }
         }
         catch(err:Error)
         {
         }
      }
   }
}
