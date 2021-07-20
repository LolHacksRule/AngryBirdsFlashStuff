package §"X§
{
   import § !;§.§=-§;
   import §2§.§0!<§;
   import com.rovio.assets.§7!D§;
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
   
   public class §^!;§
   {
      
      private static var §6!3§:§^!;§;
       
      
      private var §3!-§:Vector.<XML>;
      
      private var §-C§:Boolean = false;
      
      private var §2Q§:int;
      
      private var §"!$§:int;
      
      private var §@,§:Function;
      
      private var §1D§:Function;
      
      private var §^!#§:Loader;
      
      private var §+z§:URLLoader;
      
      private var §,!9§:XML;
      
      private var §[7§:String = "";
      
      private var §"a§:int = 0;
      
      private var §41§:Vector.<String>;
      
      private var §59§:String = "external_assets/LoadTest.swf";
      
      private var §0h§:Boolean = false;
      
      private var §7q§:Array;
      
      private var §3#§:String;
      
      private var §?M§:String;
      
      private var §;S§:Number = 0;
      
      private var §<g§:String = "";
      
      private var §!L§:§&?§;
      
      public function §^!;§()
      {
         this.§7q§ = [];
         super();
      }
      
      public static function get §-]§() : §^!;§
      {
         if(!§6!3§)
         {
            §6!3§ = new §^!;§();
         }
         return §6!3§;
      }
      
      public static function §1!%§(param1:Loader, param2:XML) : void
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
            §7!D§.§%!D§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §8!$§() : void
      {
         this.§7q§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§&?§, param5:Function = null) : void
      {
         this.§3#§ = param2;
         this.§?M§ = param3;
         this.§0h§ = true;
         this.§-C§ = false;
         this.§!L§ = param4;
         this.§@,§ = param5;
      }
      
      private function §`N§() : void
      {
         this.§0h§ = true;
         this.§-C§ = false;
      }
      
      public function §;d§() : Boolean
      {
         return this.§0h§;
      }
      
      public function §9y§() : Boolean
      {
         if(this.§-C§ || !this.§;d§())
         {
            return false;
         }
         this.§3!-§ = new Vector.<XML>();
         this.§2Q§ = 0;
         return true;
      }
      
      public function §6j§(param1:XML) : void
      {
         if(this.§-C§ && this.§;d§())
         {
            return;
         }
         this.§3!-§.push(param1);
         ++this.§2Q§;
      }
      
      public function §7s§(param1:Function = null) : void
      {
         if(this.§-C§ && this.§;d§())
         {
            return;
         }
         this.§1D§ = param1;
         this.§2Q§ = this.§3!-§.length;
         this.§-C§ = true;
         this.§`W§();
      }
      
      private function §'W§() : Boolean
      {
         if(this.§!L§ && !this.§!L§.§98§)
         {
            this.§!L§.removeEventListener(Event.COMPLETE,this.§%=§);
            this.§!L§.addEventListener(Event.COMPLETE,this.§%=§);
            return true;
         }
         return false;
      }
      
      private function §%=§(param1:Event) : void
      {
         this.§!L§.removeEventListener(Event.COMPLETE,this.§%=§);
         this.§`W§();
      }
      
      private function §`W§() : void
      {
         if(this.§3!-§.length > 0)
         {
            this.§?!#§();
         }
         else if(this.§5x§() >= 1)
         {
            this.§7L§();
         }
      }
      
      private function §?!#§() : void
      {
         var _loc1_:String = null;
         if(this.§-C§ && this.§;d§())
         {
            if(this.§'W§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§?M§ != null && this.§?M§.length > 0)
            {
               _loc1_ = "?version=" + this.§?M§;
            }
            this.§;S§ = 0;
            this.§,!9§ = this.§3!-§.shift();
            if(this.§,!9§.localName() == "pack")
            {
               this.§+z§ = new URLLoader();
               this.§+z§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§+z§.addEventListener(Event.COMPLETE,this.§>M§);
               this.§+z§.addEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
               this.§+z§.addEventListener(ProgressEvent.PROGRESS,this.§`!@§);
               this.§<g§ = this.§3#§ + this.§,!9§.@url.toString() + _loc1_;
               this.§+z§.load(new URLRequest(this.§<g§));
            }
            else
            {
               this.§^!#§ = new Loader();
               this.§^!#§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§>`§);
               this.§^!#§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
               this.§^!#§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§`!@§);
               this.§<g§ = this.§3#§ + this.§[7§ + this.§,!9§.@swf.toString() + _loc1_;
               this.§^!#§.load(new URLRequest(this.§<g§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §?!<§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§<g§;
         this.§^0§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§<g§,§=-§.§&^§);
      }
      
      private function §>M§(param1:Event) : void
      {
         this.§7q§.push(this.§+z§.data);
         if(this.§@,§ != null)
         {
            this.§@,§(this.§+z§.data);
         }
         if(this.§!L§)
         {
            this.§!L§.§?s§(this.§+z§.data);
         }
         this.§^0§();
         ++this.§"!$§;
         this.§`W§();
      }
      
      private function §`!@§(param1:ProgressEvent) : void
      {
         this.§;S§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §>`§(param1:Event) : void
      {
         §1!%§(this.§^!#§,this.§,!9§);
         this.§^0§();
         ++this.§"!$§;
         this.§`W§();
      }
      
      private function §^0§() : void
      {
         if(this.§^!#§)
         {
            this.§^!#§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>`§);
            this.§^!#§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
            this.§^!#§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>`§);
            this.§^!#§ = null;
         }
         if(this.§+z§)
         {
            this.§+z§.removeEventListener(Event.COMPLETE,this.§>M§);
            this.§+z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!<§);
            this.§+z§.removeEventListener(ProgressEvent.PROGRESS,this.§`!@§);
            this.§+z§ = null;
         }
         this.§,!9§ = null;
      }
      
      private function §7L§() : void
      {
         this.§;S§ = 0;
         if(this.§1D§ != null)
         {
            this.§1D§.call();
            this.§1D§ = null;
         }
      }
      
      public function §;,§() : void
      {
         this.§;S§ = 0;
         this.§-C§ = false;
         this.§2Q§ = 0;
         if(this.§3!-§)
         {
            this.§3!-§ = null;
         }
         this.§1D§ = null;
         this.§^0§();
      }
      
      public function §5x§() : Number
      {
         if(!this.§;d§())
         {
            §0!<§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§-C§ || !this.§3!-§ || !this.§;d§())
         {
            §0!<§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§"!$§ == this.§2Q§)
         {
            if(this.§!L§ && this.§2Q§ > 0)
            {
               if(this.§!L§.§98§)
               {
                  return 1;
               }
               return (this.§"!$§ + this.§;S§ - 0.5) / this.§2Q§;
            }
            return 1;
         }
         return this.§"!$§ / this.§2Q§;
      }
   }
}
