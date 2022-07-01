package fl.rsl
{
   import flash.display.Loader;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.utils.ByteArray;
   
   public class RSLInfo extends EventDispatcher
   {
       
      
      protected var _rslURLs:Array;
      
      protected var _policyFileURLs:Array;
      
      protected var _index:int;
      
      protected var _urlLoader:URLLoader;
      
      protected var _loader:Loader;
      
      protected var _failed:Boolean;
      
      protected var _complete:Boolean;
      
      public function RSLInfo()
      {
         super();
         this._index = -1;
         this._rslURLs = new Array();
         this._policyFileURLs = new Array();
      }
      
      public function get loader() : Loader
      {
         return this._loader;
      }
      
      public function get policyFileURLs() : Array
      {
         return this._policyFileURLs;
      }
      
      public function get rslURLs() : Array
      {
         return this._rslURLs;
      }
      
      public function get currentAttemptIndex() : int
      {
         return this._index;
      }
      
      public function get complete() : Boolean
      {
         return this._complete;
      }
      
      public function get failed() : Boolean
      {
         return this._failed;
      }
      
      public function get bytesLoaded() : int
      {
         return this._urlLoader == null ? 0 : int(this._urlLoader.bytesLoaded);
      }
      
      public function get bytesTotal() : int
      {
         return this._urlLoader == null ? 0 : int(this._urlLoader.bytesTotal);
      }
      
      public function addEntry(param1:String, param2:String = null) : void
      {
         this._rslURLs.push(param1);
         this.policyFileURLs.push(param2);
      }
      
      public function load() : void
      {
         var req:URLRequest = null;
         var colonIndex:int = 0;
         var protocol:String = null;
         req = this.getNextRequest();
         if(req == null)
         {
            this._failed = true;
            dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR));
         }
         while(req != null)
         {
            try
            {
               if(Security.sandboxType == Security.LOCAL_WITH_FILE)
               {
                  colonIndex = req.url.indexOf(":");
                  if(colonIndex >= 0)
                  {
                     protocol = req.url.substring(0,colonIndex);
                     if(protocol != "file")
                     {
                        req = this.getNextRequest();
                        continue;
                     }
                  }
               }
               if(this._urlLoader == null)
               {
                  this._urlLoader = new URLLoader();
                  this._urlLoader.dataFormat = URLLoaderDataFormat.BINARY;
                  this._urlLoader.addEventListener(ProgressEvent.PROGRESS,this.handleProgress);
                  this._urlLoader.addEventListener(Event.COMPLETE,this.urlLoaderComplete);
                  this._urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.urlLoaderError);
                  this._urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.urlLoaderError);
               }
               this._urlLoader.load(req);
            }
            catch(se:SecurityError)
            {
               req = getNextRequest();
               if(req == null)
               {
                  _failed = true;
               }
               dispatchEvent(new SecurityErrorEvent(SecurityErrorEvent.SECURITY_ERROR,false,false,se.message));
               continue;
            }
            break;
         }
         if(req == null)
         {
            if(this._loader != null)
            {
               this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.loaderComplete);
               this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.loaderError);
            }
            if(this._urlLoader != null)
            {
               this._urlLoader.removeEventListener(ProgressEvent.PROGRESS,this.handleProgress);
               this._urlLoader.removeEventListener(Event.COMPLETE,this.urlLoaderComplete);
               this._urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.urlLoaderError);
               this._urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.urlLoaderError);
            }
         }
      }
      
      protected function getNextRequest() : URLRequest
      {
         ++this._index;
         if(this._index >= this.rslURLs.length)
         {
            return null;
         }
         var _loc1_:URLRequest = new URLRequest();
         _loc1_.url = this._rslURLs[this._index];
         var _loc2_:String = this._policyFileURLs[this._index];
         if(_loc2_ != null && _loc2_.length > 0 && Security.sandboxType != Security.LOCAL_WITH_FILE)
         {
            Security.loadPolicyFile(_loc2_);
         }
         return _loc1_;
      }
      
      protected function handleProgress(param1:ProgressEvent) : *
      {
         dispatchEvent(param1);
      }
      
      protected function urlLoaderComplete(param1:Event) : void
      {
         var lc:LoaderContext = null;
         var e:Event = param1;
         this._urlLoader.removeEventListener(ProgressEvent.PROGRESS,this.handleProgress);
         this._urlLoader.removeEventListener(Event.COMPLETE,this.urlLoaderComplete);
         this._urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.urlLoaderError);
         this._urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.urlLoaderError);
         if(this._loader == null)
         {
            this._loader = new Loader();
            this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loaderComplete);
            this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.loaderError);
         }
         try
         {
            lc = new LoaderContext(false,ApplicationDomain.currentDomain);
            if(lc.hasOwnProperty("allowLoadBytesCodeExecution"))
            {
               lc["allowLoadBytesCodeExecution"] = true;
            }
            this._loader.loadBytes(ByteArray(this._urlLoader.data),lc);
         }
         catch(se:SecurityError)
         {
            _failed = _index + 1 >= rslURLs.length;
            dispatchEvent(new SecurityErrorEvent(SecurityErrorEvent.SECURITY_ERROR,false,false,se.message));
            loaderError(null);
         }
      }
      
      protected function urlLoaderError(param1:ErrorEvent) : void
      {
         this._failed = this._index + 1 >= this.rslURLs.length;
         dispatchEvent(param1);
         if(this._failed)
         {
            this._urlLoader.removeEventListener(ProgressEvent.PROGRESS,this.handleProgress);
            this._urlLoader.removeEventListener(Event.COMPLETE,this.urlLoaderComplete);
            this._urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.urlLoaderError);
            this._urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.urlLoaderError);
         }
         else
         {
            this.load();
         }
      }
      
      protected function loaderComplete(param1:Event) : void
      {
         this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.loaderComplete);
         this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.loaderError);
         this._complete = true;
         dispatchEvent(param1);
      }
      
      protected function loaderError(param1:IOErrorEvent) : void
      {
         this._failed = this._index + 1 >= this.rslURLs.length;
         dispatchEvent(param1);
         if(this._failed)
         {
            this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.loaderComplete);
            this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.loaderError);
         }
         else
         {
            this.load();
         }
      }
   }
}
