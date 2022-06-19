package §_-23§
{
   import §_-2B§.§_-wA§;
   import §_-aD§.§_-0-V§;
   import §_-r6§.§_-Oy§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.Font;
   
   public class §_-oZ§
   {
      
      private static var §_-KF§:§_-oZ§;
       
      
      private var §_-7E§:Vector.<XML>;
      
      private var §_-65§:Boolean = false;
      
      private var §_-Fd§:int;
      
      private var §_-UE§:int;
      
      private var §_-0-Y§:Function;
      
      private var §_-00o§:Function;
      
      private var §_-m-§:Loader;
      
      private var §_-y7§:URLLoader;
      
      private var §in§:XML;
      
      private var §_-Fq§:String = "";
      
      private var §_-ui§:int = 0;
      
      private var §_-yQ§:Vector.<String>;
      
      private var §_-SM§:String = "external_assets/LoadTest.swf";
      
      private var §_-Fh§:Boolean = false;
      
      private var §_-Ac§:Array;
      
      private var §_-YT§:String;
      
      private var §_-rN§:String;
      
      private var §_-M5§:Number = 0;
      
      private var §_-kL§:String = "";
      
      private var §_-1q§:§_-M0§;
      
      public function §_-oZ§()
      {
         this.§_-Ac§ = [];
         super();
      }
      
      public static function get §_-yU§() : §_-oZ§
      {
         if(!§_-KF§)
         {
            §_-KF§ = new §_-oZ§();
         }
         return §_-KF§;
      }
      
      public static function §_-EI§(param1:Loader, param2:XML) : void
      {
         var asset:XML = null;
         var assetCls:Class = null;
         var loader:Loader = param1;
         var library:XML = param2;
         for each(asset in library.Asset)
         {
            try
            {
               assetCls = loader.contentLoaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class;
            }
            catch(e:ReferenceError)
            {
               throw new Error("Could not find asset class \'" + asset.@name + "\' in " + library.@swf);
            }
            §_-wA§.§_-N3§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §_-og§() : void
      {
         this.§_-Ac§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§_-M0§, param5:Function = null) : void
      {
         this.§_-YT§ = param2;
         this.§_-rN§ = param3;
         this.§_-Fh§ = true;
         this.§_-65§ = false;
         this.§_-1q§ = param4;
         this.§_-0-Y§ = param5;
      }
      
      private function §_-Le§() : void
      {
         this.§_-Fh§ = true;
         this.§_-65§ = false;
      }
      
      public function §_-BG§() : Boolean
      {
         return this.§_-Fh§;
      }
      
      public function §_-v2§() : Boolean
      {
         if(this.§_-65§ || !this.§_-BG§())
         {
            return false;
         }
         this.§_-7E§ = new Vector.<XML>();
         this.§_-Fd§ = 0;
         return true;
      }
      
      public function §use§(param1:XML) : void
      {
         if(this.§_-65§ && this.§_-BG§())
         {
            return;
         }
         this.§_-7E§.push(param1);
         ++this.§_-Fd§;
      }
      
      public function §_-RS§(param1:Function = null) : void
      {
         if(this.§_-65§ && this.§_-BG§())
         {
            return;
         }
         this.§_-00o§ = param1;
         this.§_-Fd§ = this.§_-7E§.length;
         this.§_-65§ = true;
         this.§_-ZX§();
      }
      
      private function §_-J2§() : Boolean
      {
         if(this.§_-1q§ && !this.§_-1q§.§_-qZ§)
         {
            this.§_-1q§.removeEventListener(Event.COMPLETE,this.§_-l5§);
            this.§_-1q§.addEventListener(Event.COMPLETE,this.§_-l5§);
            return true;
         }
         return false;
      }
      
      private function §_-l5§(param1:Event) : void
      {
         this.§_-1q§.removeEventListener(Event.COMPLETE,this.§_-l5§);
         this.§_-ZX§();
      }
      
      private function §_-ZX§() : void
      {
         if(this.§_-7E§.length > 0)
         {
            this.§_-xd§();
         }
         else if(this.§_-PK§() >= 1)
         {
            this.§_-UR§();
         }
      }
      
      private function §_-xd§() : void
      {
         var _loc1_:String = null;
         if(this.§_-65§ && this.§_-BG§())
         {
            if(this.§_-J2§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§_-rN§ != null && this.§_-rN§.length > 0)
            {
               _loc1_ = "?version=" + this.§_-rN§;
            }
            this.§_-M5§ = 0;
            this.§in§ = this.§_-7E§.shift();
            if(this.§in§.localName() == "pack")
            {
               this.§_-y7§ = new URLLoader();
               this.§_-y7§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§_-y7§.addEventListener(Event.COMPLETE,this.§class§);
               this.§_-y7§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-4R§);
               this.§_-y7§.addEventListener(ProgressEvent.PROGRESS,this.§_-QG§);
               this.§_-kL§ = this.§_-YT§ + this.§in§.@url.toString() + _loc1_;
               this.§_-y7§.load(new URLRequest(this.§_-kL§));
            }
            else
            {
               this.§_-m-§ = new Loader();
               this.§_-m-§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-7R§);
               this.§_-m-§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-4R§);
               this.§_-m-§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§_-QG§);
               this.§_-kL§ = this.§_-YT§ + this.§_-Fq§ + this.§in§.@swf.toString() + _loc1_;
               this.§_-m-§.load(new URLRequest(this.§_-kL§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §_-4R§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§_-kL§;
         this.§_-FJ§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§_-kL§,§_-0-V§.§_-mn§);
      }
      
      private function §class§(param1:Event) : void
      {
         this.§_-Ac§.push(this.§_-y7§.data);
         if(this.§_-0-Y§ != null)
         {
            this.§_-0-Y§(this.§_-y7§.data);
         }
         if(this.§_-1q§)
         {
            this.§_-1q§.§_-0-v§(this.§_-y7§.data);
         }
         this.§_-FJ§();
         ++this.§_-UE§;
         this.§_-ZX§();
      }
      
      private function §_-QG§(param1:ProgressEvent) : void
      {
         this.§_-M5§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §_-7R§(param1:Event) : void
      {
         §_-EI§(this.§_-m-§,this.§in§);
         this.§_-FJ§();
         ++this.§_-UE§;
         this.§_-ZX§();
      }
      
      private function §_-FJ§() : void
      {
         if(this.§_-m-§)
         {
            this.§_-m-§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-7R§);
            this.§_-m-§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-4R§);
            this.§_-m-§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-7R§);
            this.§_-m-§ = null;
         }
         if(this.§_-y7§)
         {
            this.§_-y7§.removeEventListener(Event.COMPLETE,this.§class§);
            this.§_-y7§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-4R§);
            this.§_-y7§.removeEventListener(ProgressEvent.PROGRESS,this.§_-QG§);
            this.§_-y7§ = null;
         }
         this.§in§ = null;
      }
      
      private function §_-UR§() : void
      {
         this.§_-M5§ = 0;
         if(this.§_-00o§ != null)
         {
            this.§_-00o§.call();
            this.§_-00o§ = null;
         }
      }
      
      public function §_-Q3§() : void
      {
         this.§_-M5§ = 0;
         this.§_-65§ = false;
         this.§_-Fd§ = 0;
         if(this.§_-7E§)
         {
            this.§_-7E§ = null;
         }
         this.§_-00o§ = null;
         this.§_-FJ§();
      }
      
      public function §_-PK§() : Number
      {
         if(!this.§_-BG§())
         {
            §_-Oy§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§_-65§ || !this.§_-7E§ || !this.§_-BG§())
         {
            §_-Oy§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§_-UE§ == this.§_-Fd§)
         {
            if(this.§_-1q§ && this.§_-Fd§ > 0)
            {
               if(this.§_-1q§.§_-qZ§)
               {
                  return 1;
               }
               return (this.§_-UE§ + this.§_-M5§ - 0.5) / this.§_-Fd§;
            }
            return 1;
         }
         return this.§_-UE§ / this.§_-Fd§;
      }
   }
}
