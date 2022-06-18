package §>T§
{
   import §+d§.§?k§;
   import §7!P§.§-3§;
   import §^q§.§8,§;
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
   
   public class §`z§
   {
      
      private static var §9-§:§`z§;
       
      
      private var §6!6§:Vector.<XML>;
      
      private var §9B§:Boolean = false;
      
      private var §<!@§:int;
      
      private var §6!E§:int;
      
      private var §!L§:Function;
      
      private var §@!I§:Function;
      
      private var §do §:Loader;
      
      private var §>!#§:URLLoader;
      
      private var §8=§:XML;
      
      private var §`d§:String = "";
      
      private var §?!V§:int = 0;
      
      private var §`S§:Vector.<String>;
      
      private var §,!;§:String = "external_assets/LoadTest.swf";
      
      private var §>Z§:Boolean = false;
      
      private var § ! §:Array;
      
      private var §`!=§:String;
      
      private var §#K§:String;
      
      private var §8!1§:Number = 0;
      
      private var §`0§:String = "";
      
      private var §2N§:§=7§;
      
      public function §`z§()
      {
         this.§ ! § = [];
         super();
      }
      
      public static function get §<?§() : §`z§
      {
         if(!§9-§)
         {
            §9-§ = new §`z§();
         }
         return §9-§;
      }
      
      public static function §,=§(param1:Loader, param2:XML) : void
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
            §8,§.§^!S§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §2!P§() : void
      {
         this.§ ! § = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§=7§, param5:Function = null) : void
      {
         this.§`!=§ = param2;
         this.§#K§ = param3;
         this.§>Z§ = true;
         this.§9B§ = false;
         this.§2N§ = param4;
         this.§!L§ = param5;
      }
      
      private function §<^§() : void
      {
         this.§>Z§ = true;
         this.§9B§ = false;
      }
      
      public function §0!N§() : Boolean
      {
         return this.§>Z§;
      }
      
      public function §;_§() : Boolean
      {
         if(this.§9B§ || !this.§0!N§())
         {
            return false;
         }
         this.§6!6§ = new Vector.<XML>();
         this.§<!@§ = 0;
         return true;
      }
      
      public function §9;§(param1:XML) : void
      {
         if(this.§9B§ && this.§0!N§())
         {
            return;
         }
         this.§6!6§.push(param1);
         ++this.§<!@§;
      }
      
      public function §5'§(param1:Function = null) : void
      {
         if(this.§9B§ && this.§0!N§())
         {
            return;
         }
         this.§@!I§ = param1;
         this.§<!@§ = this.§6!6§.length;
         this.§9B§ = true;
         this.§8!7§();
      }
      
      private function §7!T§() : Boolean
      {
         if(this.§2N§ && !this.§2N§.§=!V§)
         {
            this.§2N§.removeEventListener(Event.COMPLETE,this.§1!D§);
            this.§2N§.addEventListener(Event.COMPLETE,this.§1!D§);
            return true;
         }
         return false;
      }
      
      private function §1!D§(param1:Event) : void
      {
         this.§2N§.removeEventListener(Event.COMPLETE,this.§1!D§);
         this.§8!7§();
      }
      
      private function §8!7§() : void
      {
         if(this.§6!6§.length > 0)
         {
            this.§^!a§();
         }
         else if(this.§8g§() >= 1)
         {
            this.§1!5§();
         }
      }
      
      private function §^!a§() : void
      {
         var _loc1_:String = null;
         if(this.§9B§ && this.§0!N§())
         {
            if(this.§7!T§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§#K§ != null && this.§#K§.length > 0)
            {
               _loc1_ = "?version=" + this.§#K§;
            }
            this.§8!1§ = 0;
            this.§8=§ = this.§6!6§.shift();
            if(this.§8=§.localName() == "pack")
            {
               this.§>!#§ = new URLLoader();
               this.§>!#§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§>!#§.addEventListener(Event.COMPLETE,this.§0s§);
               this.§>!#§.addEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
               this.§>!#§.addEventListener(ProgressEvent.PROGRESS,this.§ $§);
               this.§`0§ = this.§`!=§ + this.§8=§.@url.toString() + _loc1_;
               this.§>!#§.load(new URLRequest(this.§`0§));
            }
            else
            {
               this.§do § = new Loader();
               this.§do §.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§6Z§);
               this.§do §.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
               this.§do §.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§ $§);
               this.§`0§ = this.§`!=§ + this.§`d§ + this.§8=§.@swf.toString() + _loc1_;
               this.§do §.load(new URLRequest(this.§`0§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §<5§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§`0§;
         this.§6U§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§`0§,§?k§.§[!J§);
      }
      
      private function §0s§(param1:Event) : void
      {
         this.§ ! §.push(this.§>!#§.data);
         if(this.§!L§ != null)
         {
            this.§!L§(this.§>!#§.data);
         }
         if(this.§2N§)
         {
            this.§2N§.§?P§(this.§>!#§.data);
         }
         this.§6U§();
         ++this.§6!E§;
         this.§8!7§();
      }
      
      private function § $§(param1:ProgressEvent) : void
      {
         this.§8!1§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §6Z§(param1:Event) : void
      {
         §,=§(this.§do §,this.§8=§);
         this.§6U§();
         ++this.§6!E§;
         this.§8!7§();
      }
      
      private function §6U§() : void
      {
         if(this.§do §)
         {
            this.§do §.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6Z§);
            this.§do §.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
            this.§do §.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6Z§);
            this.§do § = null;
         }
         if(this.§>!#§)
         {
            this.§>!#§.removeEventListener(Event.COMPLETE,this.§0s§);
            this.§>!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
            this.§>!#§.removeEventListener(ProgressEvent.PROGRESS,this.§ $§);
            this.§>!#§ = null;
         }
         this.§8=§ = null;
      }
      
      private function §1!5§() : void
      {
         this.§8!1§ = 0;
         if(this.§@!I§ != null)
         {
            this.§@!I§.call();
            this.§@!I§ = null;
         }
      }
      
      public function §7o§() : void
      {
         this.§8!1§ = 0;
         this.§9B§ = false;
         this.§<!@§ = 0;
         if(this.§6!6§)
         {
            this.§6!6§ = null;
         }
         this.§@!I§ = null;
         this.§6U§();
      }
      
      public function §8g§() : Number
      {
         if(!this.§0!N§())
         {
            §-3§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§9B§ || !this.§6!6§ || !this.§0!N§())
         {
            §-3§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§6!E§ == this.§<!@§)
         {
            if(this.§2N§ && this.§<!@§ > 0)
            {
               if(this.§2N§.§=!V§)
               {
                  return 1;
               }
               return (this.§6!E§ + this.§8!1§ - 0.5) / this.§<!@§;
            }
            return 1;
         }
         return this.§6!E§ / this.§<!@§;
      }
   }
}
