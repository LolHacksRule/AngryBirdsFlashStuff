package §_-dX§
{
   import §_-0BH§.§_-FK§;
   import §_-eS§.§_-4E§;
   import com.rovio.assets.§_-Fc§;
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
   
   public class §_-03L§
   {
      
      private static var §_-es§:§_-03L§;
       
      
      private var §_-ZZ§:Vector.<XML>;
      
      private var §_-hH§:Boolean = false;
      
      private var §_-Vz§:int;
      
      private var §_-00h§:int;
      
      private var §_-tY§:Function;
      
      private var §_-29§:Function;
      
      private var §_-l2§:Loader;
      
      private var §_-sT§:URLLoader;
      
      private var §_-0BB§:XML;
      
      private var §_-rI§:String = "";
      
      private var §_-zp§:int = 0;
      
      private var §_-t§:Vector.<String>;
      
      private var §_-GU§:String = "external_assets/LoadTest.swf";
      
      private var §_-0-s§:Boolean = false;
      
      private var §_-lK§:Array;
      
      private var §_-Bl§:String;
      
      private var §_-Df§:String;
      
      private var §_-NY§:Number = 0;
      
      private var §_-Gr§:String = "";
      
      private var §_-B8§:§_-J4§;
      
      public function §_-03L§()
      {
         this.§_-lK§ = [];
         super();
      }
      
      public static function get §_-3S§() : §_-03L§
      {
         if(!§_-es§)
         {
            §_-es§ = new §_-03L§();
         }
         return §_-es§;
      }
      
      public static function §_-1L§(param1:Loader, param2:XML) : void
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
            §_-Fc§.§_-AG§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §_-qu§() : void
      {
         this.§_-lK§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§_-J4§, param5:Function = null) : void
      {
         this.§_-Bl§ = param2;
         this.§_-Df§ = param3;
         this.§_-0-s§ = true;
         this.§_-hH§ = false;
         this.§_-B8§ = param4;
         this.§_-tY§ = param5;
      }
      
      private function §_-X8§() : void
      {
         this.§_-0-s§ = true;
         this.§_-hH§ = false;
      }
      
      public function §_-gB§() : Boolean
      {
         return this.§_-0-s§;
      }
      
      public function §_-02K§() : Boolean
      {
         if(this.§_-hH§ || !this.§_-gB§())
         {
            return false;
         }
         this.§_-ZZ§ = new Vector.<XML>();
         this.§_-Vz§ = 0;
         return true;
      }
      
      public function §_-0Ab§(param1:XML) : void
      {
         if(this.§_-hH§ && this.§_-gB§())
         {
            return;
         }
         this.§_-ZZ§.push(param1);
         ++this.§_-Vz§;
      }
      
      public function §_-Zb§(param1:Function = null) : void
      {
         if(this.§_-hH§ && this.§_-gB§())
         {
            return;
         }
         this.§_-29§ = param1;
         this.§_-Vz§ = this.§_-ZZ§.length;
         this.§_-hH§ = true;
         this.§_-0-T§();
      }
      
      private function §_-2r§() : Boolean
      {
         if(this.§_-B8§ && !this.§_-B8§.§_-wB§)
         {
            this.§_-B8§.removeEventListener(Event.COMPLETE,this.§_-3Q§);
            this.§_-B8§.addEventListener(Event.COMPLETE,this.§_-3Q§);
            return true;
         }
         return false;
      }
      
      private function §_-3Q§(param1:Event) : void
      {
         this.§_-B8§.removeEventListener(Event.COMPLETE,this.§_-3Q§);
         this.§_-0-T§();
      }
      
      private function §_-0-T§() : void
      {
         if(this.§_-ZZ§.length > 0)
         {
            this.§_-vV§();
         }
         else if(this.§_-B2§() >= 1)
         {
            this.§_-Qa§();
         }
      }
      
      private function §_-vV§() : void
      {
         var _loc1_:String = null;
         if(this.§_-hH§ && this.§_-gB§())
         {
            if(this.§_-2r§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§_-Df§ != null && this.§_-Df§.length > 0)
            {
               _loc1_ = "?version=" + this.§_-Df§;
            }
            this.§_-NY§ = 0;
            this.§_-0BB§ = this.§_-ZZ§.shift();
            if(this.§_-0BB§.localName() == "pack")
            {
               this.§_-sT§ = new URLLoader();
               this.§_-sT§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§_-sT§.addEventListener(Event.COMPLETE,this.§_-96§);
               this.§_-sT§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-03G§);
               this.§_-sT§.addEventListener(ProgressEvent.PROGRESS,this.§_-07U§);
               this.§_-Gr§ = this.§_-Bl§ + this.§_-0BB§.@url.toString() + _loc1_;
               this.§_-sT§.load(new URLRequest(this.§_-Gr§));
            }
            else
            {
               this.§_-l2§ = new Loader();
               this.§_-l2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-Mt§);
               this.§_-l2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-03G§);
               this.§_-l2§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§_-07U§);
               this.§_-Gr§ = this.§_-Bl§ + this.§_-rI§ + this.§_-0BB§.@swf.toString() + _loc1_;
               this.§_-l2§.load(new URLRequest(this.§_-Gr§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §_-03G§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§_-Gr§;
         this.§_-Ix§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§_-Gr§,§_-4E§.§_-fq§);
      }
      
      private function §_-96§(param1:Event) : void
      {
         this.§_-lK§.push(this.§_-sT§.data);
         if(this.§_-tY§ != null)
         {
            this.§_-tY§(this.§_-sT§.data);
         }
         if(this.§_-B8§)
         {
            this.§_-B8§.§_-Vt§(this.§_-sT§.data);
         }
         this.§_-Ix§();
         ++this.§_-00h§;
         this.§_-0-T§();
      }
      
      private function §_-07U§(param1:ProgressEvent) : void
      {
         this.§_-NY§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §_-Mt§(param1:Event) : void
      {
         §_-1L§(this.§_-l2§,this.§_-0BB§);
         this.§_-Ix§();
         ++this.§_-00h§;
         this.§_-0-T§();
      }
      
      private function §_-Ix§() : void
      {
         if(this.§_-l2§)
         {
            this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-Mt§);
            this.§_-l2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-03G§);
            this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-Mt§);
            this.§_-l2§ = null;
         }
         if(this.§_-sT§)
         {
            this.§_-sT§.removeEventListener(Event.COMPLETE,this.§_-96§);
            this.§_-sT§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-03G§);
            this.§_-sT§.removeEventListener(ProgressEvent.PROGRESS,this.§_-07U§);
            this.§_-sT§ = null;
         }
         this.§_-0BB§ = null;
      }
      
      private function §_-Qa§() : void
      {
         this.§_-NY§ = 0;
         if(this.§_-29§ != null)
         {
            this.§_-29§.call();
            this.§_-29§ = null;
         }
      }
      
      public function §_-0Eu§() : void
      {
         this.§_-NY§ = 0;
         this.§_-hH§ = false;
         this.§_-Vz§ = 0;
         if(this.§_-ZZ§)
         {
            this.§_-ZZ§ = null;
         }
         this.§_-29§ = null;
         this.§_-Ix§();
      }
      
      public function §_-B2§() : Number
      {
         if(!this.§_-gB§())
         {
            §_-FK§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§_-hH§ || !this.§_-ZZ§ || !this.§_-gB§())
         {
            §_-FK§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§_-00h§ == this.§_-Vz§)
         {
            if(this.§_-B8§ && this.§_-Vz§ > 0)
            {
               if(this.§_-B8§.§_-wB§)
               {
                  return 1;
               }
               return (this.§_-00h§ + this.§_-NY§ - 0.5) / this.§_-Vz§;
            }
            return 1;
         }
         return this.§_-00h§ / this.§_-Vz§;
      }
   }
}
