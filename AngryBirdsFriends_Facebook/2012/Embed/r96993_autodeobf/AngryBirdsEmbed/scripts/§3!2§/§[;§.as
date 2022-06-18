package §3!2§
{
   import §3v§.§1a§;
   import §4!'§.§2!;§;
   import com.rovio.assets.§''§;
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
   
   public class §[;§
   {
      
      private static var §0S§:§[;§;
       
      
      private var §&A§:Vector.<XML>;
      
      private var §"L§:Boolean = false;
      
      private var §6!F§:int;
      
      private var §#0§:int;
      
      private var §@!5§:Function;
      
      private var §-m§:Function;
      
      private var §<T§:Loader;
      
      private var §-L§:URLLoader;
      
      private var §#L§:XML;
      
      private var §1T§:String = "";
      
      private var §`q§:int = 0;
      
      private var §`!@§:Vector.<String>;
      
      private var §4t§:String = "external_assets/LoadTest.swf";
      
      private var §'@§:Boolean = false;
      
      private var §,!+§:Array;
      
      private var §4!4§:String;
      
      private var §>q§:String;
      
      private var §-!F§:Number = 0;
      
      private var §"p§:String = "";
      
      private var §'P§:§5!G§;
      
      public function §[;§()
      {
         this.§,!+§ = [];
         super();
      }
      
      public static function get §9r§() : §[;§
      {
         if(!§0S§)
         {
            §0S§ = new §[;§();
         }
         return §0S§;
      }
      
      public static function §!#§(param1:Loader, param2:XML) : void
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
            §''§.§<Z§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §9!D§() : void
      {
         this.§,!+§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§5!G§, param5:Function = null) : void
      {
         this.§4!4§ = param2;
         this.§>q§ = param3;
         this.§'@§ = true;
         this.§"L§ = false;
         this.§'P§ = param4;
         this.§@!5§ = param5;
      }
      
      private function §8C§() : void
      {
         this.§'@§ = true;
         this.§"L§ = false;
      }
      
      public function §&S§() : Boolean
      {
         return this.§'@§;
      }
      
      public function §=T§() : Boolean
      {
         if(this.§"L§ || !this.§&S§())
         {
            return false;
         }
         this.§&A§ = new Vector.<XML>();
         this.§6!F§ = 0;
         return true;
      }
      
      public function §2a§(param1:XML) : void
      {
         if(this.§"L§ && this.§&S§())
         {
            return;
         }
         this.§&A§.push(param1);
         ++this.§6!F§;
      }
      
      public function §"!E§(param1:Function = null) : void
      {
         if(this.§"L§ && this.§&S§())
         {
            return;
         }
         this.§-m§ = param1;
         this.§6!F§ = this.§&A§.length;
         this.§"L§ = true;
         this.§5M§();
      }
      
      private function §]!9§() : Boolean
      {
         if(this.§'P§ && !this.§'P§.§!8§)
         {
            this.§'P§.removeEventListener(Event.COMPLETE,this.§4o§);
            this.§'P§.addEventListener(Event.COMPLETE,this.§4o§);
            return true;
         }
         return false;
      }
      
      private function §4o§(param1:Event) : void
      {
         this.§'P§.removeEventListener(Event.COMPLETE,this.§4o§);
         this.§5M§();
      }
      
      private function §5M§() : void
      {
         if(this.§&A§.length > 0)
         {
            this.§@&§();
         }
         else if(this.§95§() >= 1)
         {
            this.§@f§();
         }
      }
      
      private function §@&§() : void
      {
         var _loc1_:String = null;
         if(this.§"L§ && this.§&S§())
         {
            if(this.§]!9§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§>q§ != null && this.§>q§.length > 0)
            {
               _loc1_ = "?version=" + this.§>q§;
            }
            this.§-!F§ = 0;
            this.§#L§ = this.§&A§.shift();
            if(this.§#L§.localName() == "pack")
            {
               this.§-L§ = new URLLoader();
               this.§-L§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§-L§.addEventListener(Event.COMPLETE,this.§!S§);
               this.§-L§.addEventListener(IOErrorEvent.IO_ERROR,this.§+l§);
               this.§-L§.addEventListener(ProgressEvent.PROGRESS,this.§'G§);
               this.§"p§ = this.§4!4§ + this.§#L§.@url.toString() + _loc1_;
               this.§-L§.load(new URLRequest(this.§"p§));
            }
            else
            {
               this.§<T§ = new Loader();
               this.§<T§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§[N§);
               this.§<T§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§+l§);
               this.§<T§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§'G§);
               this.§"p§ = this.§4!4§ + this.§1T§ + this.§#L§.@swf.toString() + _loc1_;
               this.§<T§.load(new URLRequest(this.§"p§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §+l§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§"p§;
         this.§%s§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§"p§,§2!;§.§,o§);
      }
      
      private function §!S§(param1:Event) : void
      {
         this.§,!+§.push(this.§-L§.data);
         if(this.§@!5§ != null)
         {
            this.§@!5§(this.§-L§.data);
         }
         if(this.§'P§)
         {
            this.§'P§.§9!"§(this.§-L§.data);
         }
         this.§%s§();
         ++this.§#0§;
         this.§5M§();
      }
      
      private function §'G§(param1:ProgressEvent) : void
      {
         this.§-!F§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §[N§(param1:Event) : void
      {
         §!#§(this.§<T§,this.§#L§);
         this.§%s§();
         ++this.§#0§;
         this.§5M§();
      }
      
      private function §%s§() : void
      {
         if(this.§<T§)
         {
            this.§<T§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§[N§);
            this.§<T§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§+l§);
            this.§<T§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§[N§);
            this.§<T§ = null;
         }
         if(this.§-L§)
         {
            this.§-L§.removeEventListener(Event.COMPLETE,this.§!S§);
            this.§-L§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+l§);
            this.§-L§.removeEventListener(ProgressEvent.PROGRESS,this.§'G§);
            this.§-L§ = null;
         }
         this.§#L§ = null;
      }
      
      private function §@f§() : void
      {
         this.§-!F§ = 0;
         if(this.§-m§ != null)
         {
            this.§-m§.call();
            this.§-m§ = null;
         }
      }
      
      public function §-]§() : void
      {
         this.§-!F§ = 0;
         this.§"L§ = false;
         this.§6!F§ = 0;
         if(this.§&A§)
         {
            this.§&A§ = null;
         }
         this.§-m§ = null;
         this.§%s§();
      }
      
      public function §95§() : Number
      {
         if(!this.§&S§())
         {
            §1a§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§"L§ || !this.§&A§ || !this.§&S§())
         {
            §1a§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§#0§ == this.§6!F§)
         {
            if(this.§'P§ && this.§6!F§ > 0)
            {
               if(this.§'P§.§!8§)
               {
                  return 1;
               }
               return (this.§#0§ + this.§-!F§ - 0.5) / this.§6!F§;
            }
            return 1;
         }
         return this.§#0§ / this.§6!F§;
      }
   }
}
