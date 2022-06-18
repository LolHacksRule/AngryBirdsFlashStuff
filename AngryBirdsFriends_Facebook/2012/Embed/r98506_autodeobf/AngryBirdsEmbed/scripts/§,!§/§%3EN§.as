package §,!§
{
   import §-p§.§&2§;
   import §>K§.§"@§;
   import com.rovio.assets.§53§;
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
   
   public class §>N§
   {
      
      private static var §3o§:§>N§;
       
      
      private var §8U§:Vector.<XML>;
      
      private var §&!G§:Boolean = false;
      
      private var §"u§:int;
      
      private var §-'§:int;
      
      private var §6X§:Function;
      
      private var §'!K§:Function;
      
      private var §=X§:Loader;
      
      private var §8O§:URLLoader;
      
      private var §%!'§:XML;
      
      private var §@H§:String = "";
      
      private var § 8§:int = 0;
      
      private var §'!C§:Vector.<String>;
      
      private var §-E§:String = "external_assets/LoadTest.swf";
      
      private var §1!2§:Boolean = false;
      
      private var §3<§:Array;
      
      private var §2[§:String;
      
      private var §&C§:String;
      
      private var §<!,§:Number = 0;
      
      private var §@G§:String = "";
      
      private var §%#§:§0!6§;
      
      public function §>N§()
      {
         this.§3<§ = [];
         super();
      }
      
      public static function get §72§() : §>N§
      {
         if(!§3o§)
         {
            §3o§ = new §>N§();
         }
         return §3o§;
      }
      
      public static function §1T§(param1:Loader, param2:XML) : void
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
            §53§.§8J§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §?%§() : void
      {
         this.§3<§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§0!6§, param5:Function = null) : void
      {
         this.§2[§ = param2;
         this.§&C§ = param3;
         this.§1!2§ = true;
         this.§&!G§ = false;
         this.§%#§ = param4;
         this.§6X§ = param5;
      }
      
      private function §"j§() : void
      {
         this.§1!2§ = true;
         this.§&!G§ = false;
      }
      
      public function §<=§() : Boolean
      {
         return this.§1!2§;
      }
      
      public function §6!#§() : Boolean
      {
         if(this.§&!G§ || !this.§<=§())
         {
            return false;
         }
         this.§8U§ = new Vector.<XML>();
         this.§"u§ = 0;
         return true;
      }
      
      public function §]g§(param1:XML) : void
      {
         if(this.§&!G§ && this.§<=§())
         {
            return;
         }
         this.§8U§.push(param1);
         ++this.§"u§;
      }
      
      public function §@@§(param1:Function = null) : void
      {
         if(this.§&!G§ && this.§<=§())
         {
            return;
         }
         this.§'!K§ = param1;
         this.§"u§ = this.§8U§.length;
         this.§&!G§ = true;
         this.§]Z§();
      }
      
      private function §'!%§() : Boolean
      {
         if(this.§%#§ && !this.§%#§.§7!!§)
         {
            this.§%#§.removeEventListener(Event.COMPLETE,this.§`!J§);
            this.§%#§.addEventListener(Event.COMPLETE,this.§`!J§);
            return true;
         }
         return false;
      }
      
      private function §`!J§(param1:Event) : void
      {
         this.§%#§.removeEventListener(Event.COMPLETE,this.§`!J§);
         this.§]Z§();
      }
      
      private function §]Z§() : void
      {
         if(this.§8U§.length > 0)
         {
            this.§[,§();
         }
         else if(this.§@§() >= 1)
         {
            this.§^k§();
         }
      }
      
      private function §[,§() : void
      {
         var _loc1_:String = null;
         if(this.§&!G§ && this.§<=§())
         {
            if(this.§'!%§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§&C§ != null && this.§&C§.length > 0)
            {
               _loc1_ = "?version=" + this.§&C§;
            }
            this.§<!,§ = 0;
            this.§%!'§ = this.§8U§.shift();
            if(this.§%!'§.localName() == "pack")
            {
               this.§8O§ = new URLLoader();
               this.§8O§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§8O§.addEventListener(Event.COMPLETE,this.§`E§);
               this.§8O§.addEventListener(IOErrorEvent.IO_ERROR,this.§%Q§);
               this.§8O§.addEventListener(ProgressEvent.PROGRESS,this.§5K§);
               this.§@G§ = this.§2[§ + this.§%!'§.@url.toString() + _loc1_;
               this.§8O§.load(new URLRequest(this.§@G§));
            }
            else
            {
               this.§=X§ = new Loader();
               this.§=X§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ w§);
               this.§=X§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%Q§);
               this.§=X§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§5K§);
               this.§@G§ = this.§2[§ + this.§@H§ + this.§%!'§.@swf.toString() + _loc1_;
               this.§=X§.load(new URLRequest(this.§@G§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §%Q§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§@G§;
         this.§+N§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§@G§,§"@§.§-!D§);
      }
      
      private function §`E§(param1:Event) : void
      {
         this.§3<§.push(this.§8O§.data);
         if(this.§6X§ != null)
         {
            this.§6X§(this.§8O§.data);
         }
         if(this.§%#§)
         {
            this.§%#§.§5l§(this.§8O§.data);
         }
         this.§+N§();
         ++this.§-'§;
         this.§]Z§();
      }
      
      private function §5K§(param1:ProgressEvent) : void
      {
         this.§<!,§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function § w§(param1:Event) : void
      {
         §1T§(this.§=X§,this.§%!'§);
         this.§+N§();
         ++this.§-'§;
         this.§]Z§();
      }
      
      private function §+N§() : void
      {
         if(this.§=X§)
         {
            this.§=X§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ w§);
            this.§=X§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%Q§);
            this.§=X§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ w§);
            this.§=X§ = null;
         }
         if(this.§8O§)
         {
            this.§8O§.removeEventListener(Event.COMPLETE,this.§`E§);
            this.§8O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%Q§);
            this.§8O§.removeEventListener(ProgressEvent.PROGRESS,this.§5K§);
            this.§8O§ = null;
         }
         this.§%!'§ = null;
      }
      
      private function §^k§() : void
      {
         this.§<!,§ = 0;
         if(this.§'!K§ != null)
         {
            this.§'!K§.call();
            this.§'!K§ = null;
         }
      }
      
      public function §7!?§() : void
      {
         this.§<!,§ = 0;
         this.§&!G§ = false;
         this.§"u§ = 0;
         if(this.§8U§)
         {
            this.§8U§ = null;
         }
         this.§'!K§ = null;
         this.§+N§();
      }
      
      public function §@§() : Number
      {
         if(!this.§<=§())
         {
            §&2§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§&!G§ || !this.§8U§ || !this.§<=§())
         {
            §&2§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§-'§ == this.§"u§)
         {
            if(this.§%#§ && this.§"u§ > 0)
            {
               if(this.§%#§.§7!!§)
               {
                  return 1;
               }
               return (this.§-'§ + this.§<!,§ - 0.5) / this.§"u§;
            }
            return 1;
         }
         return this.§-'§ / this.§"u§;
      }
   }
}
