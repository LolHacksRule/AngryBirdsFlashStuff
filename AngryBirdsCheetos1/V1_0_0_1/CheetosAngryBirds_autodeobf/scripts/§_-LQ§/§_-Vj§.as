package §_-LQ§
{
   import §_-3-§.§_-ki§;
   import §_-U0§.§_-tF§;
   import §_-wO§.§_-Q0§;
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
   
   public class §_-Vj§
   {
      
      private static var §_-Pu§:§_-Vj§;
       
      
      private var §_-7A§:Vector.<XML>;
      
      private var §_-4e§:Boolean = false;
      
      private var §_-SA§:int;
      
      private var §_-v§:int;
      
      private var §_-hU§:Function;
      
      private var §_-j1§:Function;
      
      private var §_-0O§:Loader;
      
      private var §_-CY§:URLLoader;
      
      private var §_-tH§:XML;
      
      private var §_-0-j§:String = "";
      
      private var §_-36§:int = 0;
      
      private var §_-og§:Vector.<String>;
      
      private var §_-Xs§:String = "external_assets/LoadTest.swf";
      
      private var §_-AH§:Boolean = false;
      
      private var §_-SB§:Array;
      
      private var §_-aN§:String;
      
      private var §_-Yv§:String;
      
      private var §_-HO§:Number = 0;
      
      private var §_-Ve§:String = "";
      
      private var §_-NY§:§_-R§;
      
      public function §_-Vj§()
      {
         this.§_-SB§ = [];
         super();
      }
      
      public static function get §var §() : §_-Vj§
      {
         if(!§_-Pu§)
         {
            §_-Pu§ = new §_-Vj§();
         }
         return §_-Pu§;
      }
      
      public static function §_-rA§(param1:Loader, param2:XML) : void
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
            §_-ki§.§_-Z-§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §_-NN§() : void
      {
         this.§_-SB§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§_-R§, param5:Function = null) : void
      {
         this.§_-aN§ = param2;
         this.§_-Yv§ = param3;
         this.§_-AH§ = true;
         this.§_-4e§ = false;
         this.§_-NY§ = param4;
         this.§_-hU§ = param5;
      }
      
      private function §_-IH§() : void
      {
         this.§_-AH§ = true;
         this.§_-4e§ = false;
      }
      
      public function §_-bd§() : Boolean
      {
         return this.§_-AH§;
      }
      
      public function §_-nR§() : Boolean
      {
         if(this.§_-4e§ || !this.§_-bd§())
         {
            return false;
         }
         this.§_-7A§ = new Vector.<XML>();
         this.§_-SA§ = 0;
         return true;
      }
      
      public function §_-sm§(param1:XML) : void
      {
         if(this.§_-4e§ && this.§_-bd§())
         {
            return;
         }
         this.§_-7A§.push(param1);
         ++this.§_-SA§;
      }
      
      public function §_-CP§(param1:Function = null) : void
      {
         if(this.§_-4e§ && this.§_-bd§())
         {
            return;
         }
         this.§_-j1§ = param1;
         this.§_-SA§ = this.§_-7A§.length;
         this.§_-4e§ = true;
         this.§_-We§();
      }
      
      private function §_-EH§() : Boolean
      {
         if(this.§_-NY§ && !this.§_-NY§.§_-rv§)
         {
            this.§_-NY§.removeEventListener(Event.COMPLETE,this.§_-rx§);
            this.§_-NY§.addEventListener(Event.COMPLETE,this.§_-rx§);
            return true;
         }
         return false;
      }
      
      private function §_-rx§(param1:Event) : void
      {
         this.§_-NY§.removeEventListener(Event.COMPLETE,this.§_-rx§);
         this.§_-We§();
      }
      
      private function §_-We§() : void
      {
         if(this.§_-7A§.length > 0)
         {
            this.§_-0-k§();
         }
         else if(this.§_-eH§() >= 1)
         {
            this.§_-Yp§();
         }
      }
      
      private function §_-0-k§() : void
      {
         var _loc1_:String = null;
         if(this.§_-4e§ && this.§_-bd§())
         {
            if(this.§_-EH§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§_-Yv§ != null && this.§_-Yv§.length > 0)
            {
               _loc1_ = "?version=" + this.§_-Yv§;
            }
            this.§_-HO§ = 0;
            this.§_-tH§ = this.§_-7A§.shift();
            if(this.§_-tH§.localName() == "pack")
            {
               this.§_-CY§ = new URLLoader();
               this.§_-CY§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§_-CY§.addEventListener(Event.COMPLETE,this.§_-92§);
               this.§_-CY§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-jh§);
               this.§_-CY§.addEventListener(ProgressEvent.PROGRESS,this.§_-r2§);
               this.§_-Ve§ = this.§_-aN§ + this.§_-tH§.@url.toString() + _loc1_;
               this.§_-CY§.load(new URLRequest(this.§_-Ve§));
            }
            else
            {
               this.§_-0O§ = new Loader();
               this.§_-0O§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-yC§);
               this.§_-0O§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-jh§);
               this.§_-0O§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§_-r2§);
               this.§_-Ve§ = this.§_-aN§ + this.§_-0-j§ + this.§_-tH§.@swf.toString() + _loc1_;
               this.§_-0O§.load(new URLRequest(this.§_-Ve§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §_-jh§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§_-Ve§;
         this.§case §();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§_-Ve§,§_-Q0§.§_-w§);
      }
      
      private function §_-92§(param1:Event) : void
      {
         this.§_-SB§.push(this.§_-CY§.data);
         if(this.§_-hU§ != null)
         {
            this.§_-hU§(this.§_-CY§.data);
         }
         if(this.§_-NY§)
         {
            this.§_-NY§.§_-Q6§(this.§_-CY§.data);
         }
         this.§case §();
         ++this.§_-v§;
         this.§_-We§();
      }
      
      private function §_-r2§(param1:ProgressEvent) : void
      {
         this.§_-HO§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §_-yC§(param1:Event) : void
      {
         §_-rA§(this.§_-0O§,this.§_-tH§);
         this.§case §();
         ++this.§_-v§;
         this.§_-We§();
      }
      
      private function §case §() : void
      {
         if(this.§_-0O§)
         {
            this.§_-0O§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-yC§);
            this.§_-0O§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-jh§);
            this.§_-0O§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-yC§);
            this.§_-0O§ = null;
         }
         if(this.§_-CY§)
         {
            this.§_-CY§.removeEventListener(Event.COMPLETE,this.§_-92§);
            this.§_-CY§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-jh§);
            this.§_-CY§.removeEventListener(ProgressEvent.PROGRESS,this.§_-r2§);
            this.§_-CY§ = null;
         }
         this.§_-tH§ = null;
      }
      
      private function §_-Yp§() : void
      {
         this.§_-HO§ = 0;
         if(this.§_-j1§ != null)
         {
            this.§_-j1§.call();
            this.§_-j1§ = null;
         }
      }
      
      public function §_-Z5§() : void
      {
         this.§_-HO§ = 0;
         this.§_-4e§ = false;
         this.§_-SA§ = 0;
         if(this.§_-7A§)
         {
            this.§_-7A§ = null;
         }
         this.§_-j1§ = null;
         this.§case §();
      }
      
      public function §_-eH§() : Number
      {
         if(!this.§_-bd§())
         {
            §_-tF§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§_-4e§ || !this.§_-7A§ || !this.§_-bd§())
         {
            §_-tF§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§_-v§ == this.§_-SA§)
         {
            if(this.§_-NY§ && this.§_-SA§ > 0)
            {
               if(this.§_-NY§.§_-rv§)
               {
                  return 1;
               }
               return (this.§_-v§ + this.§_-HO§ - 0.5) / this.§_-SA§;
            }
            return 1;
         }
         return this.§_-v§ / this.§_-SA§;
      }
   }
}
