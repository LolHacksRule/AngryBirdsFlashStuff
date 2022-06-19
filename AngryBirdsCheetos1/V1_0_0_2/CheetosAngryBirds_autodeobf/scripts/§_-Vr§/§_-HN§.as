package §_-Vr§
{
   import §_-Eq§.§_-q§;
   import §_-Me§.§_-Dd§;
   import §_-aA§.§_-I0§;
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
   
   public class §_-HN§
   {
      
      private static var §_-9o§:§_-HN§;
       
      
      private var §_-Bk§:Vector.<XML>;
      
      private var §_-0-r§:Boolean = false;
      
      private var §_-AE§:int;
      
      private var §_-zw§:int;
      
      private var §_-VG§:Function;
      
      private var §_-mF§:Function;
      
      private var §_-AT§:Loader;
      
      private var §_-TL§:URLLoader;
      
      private var §_-vR§:XML;
      
      private var §_-6P§:String = "";
      
      private var §_-Vw§:int = 0;
      
      private var §_-U2§:Vector.<String>;
      
      private var §_-5w§:String = "external_assets/LoadTest.swf";
      
      private var §_-x3§:Boolean = false;
      
      private var §_-00A§:Array;
      
      private var §_-2G§:String;
      
      private var §_-RV§:String;
      
      private var §_-fx§:Number = 0;
      
      private var §_-2y§:String = "";
      
      private var §true§:§_-Gj§;
      
      public function §_-HN§()
      {
         this.§_-00A§ = [];
         super();
      }
      
      public static function get §_-0H§() : §_-HN§
      {
         if(!§_-9o§)
         {
            §_-9o§ = new §_-HN§();
         }
         return §_-9o§;
      }
      
      public static function §_-Hh§(param1:Loader, param2:XML) : void
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
            §_-q§.§_-CL§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §set §() : void
      {
         this.§_-00A§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§_-Gj§, param5:Function = null) : void
      {
         this.§_-2G§ = param2;
         this.§_-RV§ = param3;
         this.§_-x3§ = true;
         this.§_-0-r§ = false;
         this.§true§ = param4;
         this.§_-VG§ = param5;
      }
      
      private function §_-J0§() : void
      {
         this.§_-x3§ = true;
         this.§_-0-r§ = false;
      }
      
      public function §_-hr§() : Boolean
      {
         return this.§_-x3§;
      }
      
      public function §_-Dp§() : Boolean
      {
         if(this.§_-0-r§ || !this.§_-hr§())
         {
            return false;
         }
         this.§_-Bk§ = new Vector.<XML>();
         this.§_-AE§ = 0;
         return true;
      }
      
      public function §_-00-§(param1:XML) : void
      {
         if(this.§_-0-r§ && this.§_-hr§())
         {
            return;
         }
         this.§_-Bk§.push(param1);
         ++this.§_-AE§;
      }
      
      public function §_-cr§(param1:Function = null) : void
      {
         if(this.§_-0-r§ && this.§_-hr§())
         {
            return;
         }
         this.§_-mF§ = param1;
         this.§_-AE§ = this.§_-Bk§.length;
         this.§_-0-r§ = true;
         this.§_-Fw§();
      }
      
      private function §_-Ol§() : Boolean
      {
         if(this.§true§ && !this.§true§.§_-fH§)
         {
            this.§true§.removeEventListener(Event.COMPLETE,this.§_-eV§);
            this.§true§.addEventListener(Event.COMPLETE,this.§_-eV§);
            return true;
         }
         return false;
      }
      
      private function §_-eV§(param1:Event) : void
      {
         this.§true§.removeEventListener(Event.COMPLETE,this.§_-eV§);
         this.§_-Fw§();
      }
      
      private function §_-Fw§() : void
      {
         if(this.§_-Bk§.length > 0)
         {
            this.§_-04§();
         }
         else if(this.§_-17§() >= 1)
         {
            this.§_-3e§();
         }
      }
      
      private function §_-04§() : void
      {
         var _loc1_:String = null;
         if(this.§_-0-r§ && this.§_-hr§())
         {
            if(this.§_-Ol§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§_-RV§ != null && this.§_-RV§.length > 0)
            {
               _loc1_ = "?version=" + this.§_-RV§;
            }
            this.§_-fx§ = 0;
            this.§_-vR§ = this.§_-Bk§.shift();
            if(this.§_-vR§.localName() == "pack")
            {
               this.§_-TL§ = new URLLoader();
               this.§_-TL§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§_-TL§.addEventListener(Event.COMPLETE,this.§_-eq§);
               this.§_-TL§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-Jl§);
               this.§_-TL§.addEventListener(ProgressEvent.PROGRESS,this.§_-tg§);
               this.§_-2y§ = this.§_-2G§ + this.§_-vR§.@url.toString() + _loc1_;
               this.§_-TL§.load(new URLRequest(this.§_-2y§));
            }
            else
            {
               this.§_-AT§ = new Loader();
               this.§_-AT§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-u5§);
               this.§_-AT§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-Jl§);
               this.§_-AT§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§_-tg§);
               this.§_-2y§ = this.§_-2G§ + this.§_-6P§ + this.§_-vR§.@swf.toString() + _loc1_;
               this.§_-AT§.load(new URLRequest(this.§_-2y§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §_-Jl§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§_-2y§;
         this.§_-tP§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§_-2y§,§_-Dd§.§_-1A§);
      }
      
      private function §_-eq§(param1:Event) : void
      {
         this.§_-00A§.push(this.§_-TL§.data);
         if(this.§_-VG§ != null)
         {
            this.§_-VG§(this.§_-TL§.data);
         }
         if(this.§true§)
         {
            this.§true§.§_-kT§(this.§_-TL§.data);
         }
         this.§_-tP§();
         ++this.§_-zw§;
         this.§_-Fw§();
      }
      
      private function §_-tg§(param1:ProgressEvent) : void
      {
         this.§_-fx§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §_-u5§(param1:Event) : void
      {
         §_-Hh§(this.§_-AT§,this.§_-vR§);
         this.§_-tP§();
         ++this.§_-zw§;
         this.§_-Fw§();
      }
      
      private function §_-tP§() : void
      {
         if(this.§_-AT§)
         {
            this.§_-AT§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-u5§);
            this.§_-AT§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Jl§);
            this.§_-AT§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-u5§);
            this.§_-AT§ = null;
         }
         if(this.§_-TL§)
         {
            this.§_-TL§.removeEventListener(Event.COMPLETE,this.§_-eq§);
            this.§_-TL§.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-Jl§);
            this.§_-TL§.removeEventListener(ProgressEvent.PROGRESS,this.§_-tg§);
            this.§_-TL§ = null;
         }
         this.§_-vR§ = null;
      }
      
      private function §_-3e§() : void
      {
         this.§_-fx§ = 0;
         if(this.§_-mF§ != null)
         {
            this.§_-mF§.call();
            this.§_-mF§ = null;
         }
      }
      
      public function §_-78§() : void
      {
         this.§_-fx§ = 0;
         this.§_-0-r§ = false;
         this.§_-AE§ = 0;
         if(this.§_-Bk§)
         {
            this.§_-Bk§ = null;
         }
         this.§_-mF§ = null;
         this.§_-tP§();
      }
      
      public function §_-17§() : Number
      {
         if(!this.§_-hr§())
         {
            §_-I0§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§_-0-r§ || !this.§_-Bk§ || !this.§_-hr§())
         {
            §_-I0§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§_-zw§ == this.§_-AE§)
         {
            if(this.§true§ && this.§_-AE§ > 0)
            {
               if(this.§true§.§_-fH§)
               {
                  return 1;
               }
               return (this.§_-zw§ + this.§_-fx§ - 0.5) / this.§_-AE§;
            }
            return 1;
         }
         return this.§_-zw§ / this.§_-AE§;
      }
   }
}
