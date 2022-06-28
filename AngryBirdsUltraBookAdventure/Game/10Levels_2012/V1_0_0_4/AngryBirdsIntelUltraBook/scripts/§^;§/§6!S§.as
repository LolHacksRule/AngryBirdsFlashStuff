package §^;§
{
   import §0X§.§%'§;
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
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
   
   public class §6!S§
   {
      
      private static var §[!W§:§6!S§;
       
      
      private var §;W§:Vector.<XML>;
      
      private var §7!e§:Boolean = false;
      
      private var §2!p§:int;
      
      private var §&g§:int;
      
      private var §3!Q§:Function;
      
      private var §"!§:Function;
      
      private var §`!u§:Loader;
      
      private var §'D§:URLLoader;
      
      private var §`v§:XML;
      
      private var §7-§:String = "";
      
      private var §7!w§:int = 0;
      
      private var §[!u§:Vector.<String>;
      
      private var §9!_§:String = "external_assets/LoadTest.swf";
      
      private var §6!7§:Boolean = false;
      
      private var §?!n§:Array;
      
      private var §,!o§:String;
      
      private var §6!4§:String;
      
      private var §<!'§:Number = 0;
      
      private var §4?§:String = "";
      
      private var §8§:§`E§;
      
      public function §6!S§()
      {
         this.§?!n§ = [];
         super();
      }
      
      public static function get §<d§() : §6!S§
      {
         if(!§[!W§)
         {
            §[!W§ = new §6!S§();
         }
         return §[!W§;
      }
      
      public static function §>!'§(param1:Loader, param2:XML) : void
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
            §%!G§.§7q§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §1[§() : void
      {
         this.§?!n§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§`E§, param5:Function = null) : void
      {
         this.§,!o§ = param2;
         this.§6!4§ = param3;
         this.§6!7§ = true;
         this.§7!e§ = false;
         this.§8§ = param4;
         this.§3!Q§ = param5;
      }
      
      private function §9!C§() : void
      {
         this.§6!7§ = true;
         this.§7!e§ = false;
      }
      
      public function §?!H§() : Boolean
      {
         return this.§6!7§;
      }
      
      public function §%G§() : Boolean
      {
         if(this.§7!e§ || !this.§?!H§())
         {
            return false;
         }
         this.§;W§ = new Vector.<XML>();
         this.§2!p§ = 0;
         return true;
      }
      
      public function §]!$§(param1:XML) : void
      {
         if(this.§7!e§ && this.§?!H§())
         {
            return;
         }
         this.§;W§.push(param1);
         ++this.§2!p§;
      }
      
      public function §7![§(param1:Function = null) : void
      {
         if(this.§7!e§ && this.§?!H§())
         {
            return;
         }
         this.§"!§ = param1;
         this.§2!p§ = this.§;W§.length;
         this.§7!e§ = true;
         this.§'5§();
      }
      
      private function §3q§() : Boolean
      {
         if(this.§8§ && !this.§8§.§"!E§)
         {
            this.§8§.removeEventListener(Event.COMPLETE,this.§0!L§);
            this.§8§.addEventListener(Event.COMPLETE,this.§0!L§);
            return true;
         }
         return false;
      }
      
      private function §0!L§(param1:Event) : void
      {
         this.§8§.removeEventListener(Event.COMPLETE,this.§0!L§);
         this.§'5§();
      }
      
      private function §'5§() : void
      {
         if(this.§;W§.length > 0)
         {
            this.§5M§();
         }
         else if(this.§4!C§() >= 1)
         {
            this.§&!_§();
         }
      }
      
      private function §5M§() : void
      {
         var _loc1_:String = null;
         if(this.§7!e§ && this.§?!H§())
         {
            if(this.§3q§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6!4§ != null && this.§6!4§.length > 0)
            {
               _loc1_ = "?version=" + this.§6!4§;
            }
            this.§<!'§ = 0;
            this.§`v§ = this.§;W§.shift();
            if(this.§`v§.localName() == "pack")
            {
               this.§'D§ = new URLLoader();
               this.§'D§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§'D§.addEventListener(Event.COMPLETE,this.§ p§);
               this.§'D§.addEventListener(IOErrorEvent.IO_ERROR,this.§@!;§);
               this.§'D§.addEventListener(ProgressEvent.PROGRESS,this.§9!]§);
               this.§4?§ = this.§,!o§ + this.§`v§.@url.toString() + _loc1_;
               this.§'D§.load(new URLRequest(this.§4?§));
            }
            else
            {
               this.§`!u§ = new Loader();
               this.§`!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#"§);
               this.§`!u§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§@!;§);
               this.§`!u§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§9!]§);
               this.§4?§ = this.§,!o§ + this.§7-§ + this.§`v§.@swf.toString() + _loc1_;
               this.§`!u§.load(new URLRequest(this.§4?§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §@!;§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§4?§;
         this.§ !8§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§4?§,§%'§.§+!o§);
      }
      
      private function § p§(param1:Event) : void
      {
         this.§?!n§.push(this.§'D§.data);
         if(this.§3!Q§ != null)
         {
            this.§3!Q§(this.§'D§.data);
         }
         if(this.§8§)
         {
            this.§8§.§get §(this.§'D§.data);
         }
         this.§ !8§();
         ++this.§&g§;
         this.§'5§();
      }
      
      private function §9!]§(param1:ProgressEvent) : void
      {
         this.§<!'§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §#"§(param1:Event) : void
      {
         §>!'§(this.§`!u§,this.§`v§);
         this.§ !8§();
         ++this.§&g§;
         this.§'5§();
      }
      
      private function § !8§() : void
      {
         if(this.§`!u§)
         {
            this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#"§);
            this.§`!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§@!;§);
            this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#"§);
            this.§`!u§ = null;
         }
         if(this.§'D§)
         {
            this.§'D§.removeEventListener(Event.COMPLETE,this.§ p§);
            this.§'D§.removeEventListener(IOErrorEvent.IO_ERROR,this.§@!;§);
            this.§'D§.removeEventListener(ProgressEvent.PROGRESS,this.§9!]§);
            this.§'D§ = null;
         }
         this.§`v§ = null;
      }
      
      private function §&!_§() : void
      {
         this.§<!'§ = 0;
         if(this.§"!§ != null)
         {
            this.§"!§.call();
            this.§"!§ = null;
         }
      }
      
      public function §4!B§() : void
      {
         this.§<!'§ = 0;
         this.§7!e§ = false;
         this.§2!p§ = 0;
         if(this.§;W§)
         {
            this.§;W§ = null;
         }
         this.§"!§ = null;
         this.§ !8§();
      }
      
      public function §4!C§() : Number
      {
         if(!this.§?!H§())
         {
            §!>§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§7!e§ || !this.§;W§ || !this.§?!H§())
         {
            §!>§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§&g§ == this.§2!p§)
         {
            if(this.§8§ && this.§2!p§ > 0)
            {
               if(this.§8§.§"!E§)
               {
                  return 1;
               }
               return (this.§&g§ + this.§<!'§ - 0.5) / this.§2!p§;
            }
            return 1;
         }
         return this.§&g§ / this.§2!p§;
      }
   }
}
