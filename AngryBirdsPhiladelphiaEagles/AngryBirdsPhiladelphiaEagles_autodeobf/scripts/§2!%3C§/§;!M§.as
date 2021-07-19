package §2!<§
{
   import §0!E§.§5!K§;
   import §`K§.§ L§;
   import com.rovio.assets.§[!D§;
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
   
   public class §;!M§
   {
      
      private static var §5! §:§;!M§;
       
      
      private var §1Z§:Vector.<XML>;
      
      private var §&!P§:Boolean = false;
      
      private var § ^§:int;
      
      private var §?x§:int;
      
      private var §&!8§:Function;
      
      private var §!W§:Function;
      
      private var §3P§:Loader;
      
      private var §5o§:URLLoader;
      
      private var §4k§:XML;
      
      private var § 6§:String = "";
      
      private var §<J§:int = 0;
      
      private var §;!#§:Vector.<String>;
      
      private var §%I§:String = "external_assets/LoadTest.swf";
      
      private var §+i§:Boolean = false;
      
      private var §2r§:Array;
      
      private var §[!J§:String;
      
      private var §+X§:String;
      
      private var §2a§:Number = 0;
      
      private var §0E§:String = "";
      
      private var §2!1§:§`U§;
      
      public function §;!M§()
      {
         this.§2r§ = [];
         super();
      }
      
      public static function get §>o§() : §;!M§
      {
         if(!§5! §)
         {
            §5! § = new §;!M§();
         }
         return §5! §;
      }
      
      public static function §6S§(param1:Loader, param2:XML) : void
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
            §[!D§.§2b§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §,U§() : void
      {
         this.§2r§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§`U§, param5:Function = null) : void
      {
         this.§[!J§ = param2;
         this.§+X§ = param3;
         this.§+i§ = true;
         this.§&!P§ = false;
         this.§2!1§ = param4;
         this.§&!8§ = param5;
      }
      
      private function §1u§() : void
      {
         this.§+i§ = true;
         this.§&!P§ = false;
      }
      
      public function §;Y§() : Boolean
      {
         return this.§+i§;
      }
      
      public function §0!C§() : Boolean
      {
         if(this.§&!P§ || !this.§;Y§())
         {
            return false;
         }
         this.§1Z§ = new Vector.<XML>();
         this.§ ^§ = 0;
         return true;
      }
      
      public function §?t§(param1:XML) : void
      {
         if(this.§&!P§ && this.§;Y§())
         {
            return;
         }
         this.§1Z§.push(param1);
         ++this.§ ^§;
      }
      
      public function §&p§(param1:Function = null) : void
      {
         if(this.§&!P§ && this.§;Y§())
         {
            return;
         }
         this.§!W§ = param1;
         this.§ ^§ = this.§1Z§.length;
         this.§&!P§ = true;
         this.§&]§();
      }
      
      private function §-!2§() : Boolean
      {
         if(this.§2!1§ && !this.§2!1§.§9L§)
         {
            this.§2!1§.removeEventListener(Event.COMPLETE,this.§7`§);
            this.§2!1§.addEventListener(Event.COMPLETE,this.§7`§);
            return true;
         }
         return false;
      }
      
      private function §7`§(param1:Event) : void
      {
         this.§2!1§.removeEventListener(Event.COMPLETE,this.§7`§);
         this.§&]§();
      }
      
      private function §&]§() : void
      {
         if(this.§1Z§.length > 0)
         {
            this.§][§();
         }
         else if(this.§#Q§() >= 1)
         {
            this.§`!>§();
         }
      }
      
      private function §][§() : void
      {
         var _loc1_:String = null;
         if(this.§&!P§ && this.§;Y§())
         {
            if(this.§-!2§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§+X§ != null && this.§+X§.length > 0)
            {
               _loc1_ = "?version=" + this.§+X§;
            }
            this.§2a§ = 0;
            this.§4k§ = this.§1Z§.shift();
            if(this.§4k§.localName() == "pack")
            {
               this.§5o§ = new URLLoader();
               this.§5o§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§5o§.addEventListener(Event.COMPLETE,this.§2]§);
               this.§5o§.addEventListener(IOErrorEvent.IO_ERROR,this.§;!§);
               this.§5o§.addEventListener(ProgressEvent.PROGRESS,this.§7X§);
               this.§0E§ = this.§[!J§ + this.§4k§.@url.toString() + _loc1_;
               this.§5o§.load(new URLRequest(this.§0E§));
            }
            else
            {
               this.§3P§ = new Loader();
               this.§3P§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§12§);
               this.§3P§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§;!§);
               this.§3P§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§7X§);
               this.§0E§ = this.§[!J§ + this.§ 6§ + this.§4k§.@swf.toString() + _loc1_;
               this.§3P§.load(new URLRequest(this.§0E§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §;!§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§0E§;
         this.§`H§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§0E§,§5!K§.§ !H§);
      }
      
      private function §2]§(param1:Event) : void
      {
         this.§2r§.push(this.§5o§.data);
         if(this.§&!8§ != null)
         {
            this.§&!8§(this.§5o§.data);
         }
         if(this.§2!1§)
         {
            this.§2!1§.§!$§(this.§5o§.data);
         }
         this.§`H§();
         ++this.§?x§;
         this.§&]§();
      }
      
      private function §7X§(param1:ProgressEvent) : void
      {
         this.§2a§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §12§(param1:Event) : void
      {
         §6S§(this.§3P§,this.§4k§);
         this.§`H§();
         ++this.§?x§;
         this.§&]§();
      }
      
      private function §`H§() : void
      {
         if(this.§3P§)
         {
            this.§3P§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§12§);
            this.§3P§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§;!§);
            this.§3P§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§12§);
            this.§3P§ = null;
         }
         if(this.§5o§)
         {
            this.§5o§.removeEventListener(Event.COMPLETE,this.§2]§);
            this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;!§);
            this.§5o§.removeEventListener(ProgressEvent.PROGRESS,this.§7X§);
            this.§5o§ = null;
         }
         this.§4k§ = null;
      }
      
      private function §`!>§() : void
      {
         this.§2a§ = 0;
         if(this.§!W§ != null)
         {
            this.§!W§.call();
            this.§!W§ = null;
         }
      }
      
      public function §`b§() : void
      {
         this.§2a§ = 0;
         this.§&!P§ = false;
         this.§ ^§ = 0;
         if(this.§1Z§)
         {
            this.§1Z§ = null;
         }
         this.§!W§ = null;
         this.§`H§();
      }
      
      public function §#Q§() : Number
      {
         if(!this.§;Y§())
         {
            § L§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§&!P§ || !this.§1Z§ || !this.§;Y§())
         {
            § L§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§?x§ == this.§ ^§)
         {
            if(this.§2!1§ && this.§ ^§ > 0)
            {
               if(this.§2!1§.§9L§)
               {
                  return 1;
               }
               return (this.§?x§ + this.§2a§ - 0.5) / this.§ ^§;
            }
            return 1;
         }
         return this.§?x§ / this.§ ^§;
      }
   }
}
