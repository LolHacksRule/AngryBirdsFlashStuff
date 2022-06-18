package §3P§
{
   import §'D§.§8e§;
   import §'O§.§='§;
   import §]0§.§%%§;
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
   
   public class §-!3§
   {
      
      private static var §,!6§:§-!3§;
       
      
      private var §+1§:Vector.<XML>;
      
      private var §,!?§:Boolean = false;
      
      private var §5!M§:int;
      
      private var §!!V§:int;
      
      private var §%s§:Function;
      
      private var §+E§:Function;
      
      private var §`!S§:Loader;
      
      private var §9%§:URLLoader;
      
      private var §!!<§:XML;
      
      private var §,!W§:String = "";
      
      private var §?S§:int = 0;
      
      private var §3I§:Vector.<String>;
      
      private var §<f§:String = "external_assets/LoadTest.swf";
      
      private var §3`§:Boolean = false;
      
      private var §[i§:Array;
      
      private var §=9§:String;
      
      private var §@!P§:String;
      
      private var §-,§:Number = 0;
      
      private var §+z§:String = "";
      
      private var §+e§:§3v§;
      
      public function §-!3§()
      {
         this.§[i§ = [];
         super();
      }
      
      public static function get §!!8§() : §-!3§
      {
         if(!§,!6§)
         {
            §,!6§ = new §-!3§();
         }
         return §,!6§;
      }
      
      public static function §8!T§(param1:Loader, param2:XML) : void
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
            §%%§.§!!0§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §;j§() : void
      {
         this.§[i§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§3v§, param5:Function = null) : void
      {
         this.§=9§ = param2;
         this.§@!P§ = param3;
         this.§3`§ = true;
         this.§,!?§ = false;
         this.§+e§ = param4;
         this.§%s§ = param5;
      }
      
      private function §9V§() : void
      {
         this.§3`§ = true;
         this.§,!?§ = false;
      }
      
      public function §>!N§() : Boolean
      {
         return this.§3`§;
      }
      
      public function §]R§() : Boolean
      {
         if(this.§,!?§ || !this.§>!N§())
         {
            return false;
         }
         this.§+1§ = new Vector.<XML>();
         this.§5!M§ = 0;
         return true;
      }
      
      public function §+T§(param1:XML) : void
      {
         if(this.§,!?§ && this.§>!N§())
         {
            return;
         }
         this.§+1§.push(param1);
         ++this.§5!M§;
      }
      
      public function §9!M§(param1:Function = null) : void
      {
         if(this.§,!?§ && this.§>!N§())
         {
            return;
         }
         this.§+E§ = param1;
         this.§5!M§ = this.§+1§.length;
         this.§,!?§ = true;
         this.§7k§();
      }
      
      private function §4!§() : Boolean
      {
         if(this.§+e§ && !this.§+e§.§-!<§)
         {
            this.§+e§.removeEventListener(Event.COMPLETE,this.§=y§);
            this.§+e§.addEventListener(Event.COMPLETE,this.§=y§);
            return true;
         }
         return false;
      }
      
      private function §=y§(param1:Event) : void
      {
         this.§+e§.removeEventListener(Event.COMPLETE,this.§=y§);
         this.§7k§();
      }
      
      private function §7k§() : void
      {
         if(this.§+1§.length > 0)
         {
            this.§6b§();
         }
         else if(this.§@!1§() >= 1)
         {
            this.§>z§();
         }
      }
      
      private function §6b§() : void
      {
         var _loc1_:String = null;
         if(this.§,!?§ && this.§>!N§())
         {
            if(this.§4!§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§@!P§ != null && this.§@!P§.length > 0)
            {
               _loc1_ = "?version=" + this.§@!P§;
            }
            this.§-,§ = 0;
            this.§!!<§ = this.§+1§.shift();
            if(this.§!!<§.localName() == "pack")
            {
               this.§9%§ = new URLLoader();
               this.§9%§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§9%§.addEventListener(Event.COMPLETE,this.§<n§);
               this.§9%§.addEventListener(IOErrorEvent.IO_ERROR,this.§`u§);
               this.§9%§.addEventListener(ProgressEvent.PROGRESS,this.§^7§);
               this.§+z§ = this.§=9§ + this.§!!<§.@url.toString() + _loc1_;
               this.§9%§.load(new URLRequest(this.§+z§));
            }
            else
            {
               this.§`!S§ = new Loader();
               this.§`!S§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§1f§);
               this.§`!S§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§`u§);
               this.§`!S§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§^7§);
               this.§+z§ = this.§=9§ + this.§,!W§ + this.§!!<§.@swf.toString() + _loc1_;
               this.§`!S§.load(new URLRequest(this.§+z§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §`u§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§+z§;
         this.§5b§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§+z§,§='§.§ '§);
      }
      
      private function §<n§(param1:Event) : void
      {
         this.§[i§.push(this.§9%§.data);
         if(this.§%s§ != null)
         {
            this.§%s§(this.§9%§.data);
         }
         if(this.§+e§)
         {
            this.§+e§.§#P§(this.§9%§.data);
         }
         this.§5b§();
         ++this.§!!V§;
         this.§7k§();
      }
      
      private function §^7§(param1:ProgressEvent) : void
      {
         this.§-,§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §1f§(param1:Event) : void
      {
         §8!T§(this.§`!S§,this.§!!<§);
         this.§5b§();
         ++this.§!!V§;
         this.§7k§();
      }
      
      private function §5b§() : void
      {
         if(this.§`!S§)
         {
            this.§`!S§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1f§);
            this.§`!S§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`u§);
            this.§`!S§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1f§);
            this.§`!S§ = null;
         }
         if(this.§9%§)
         {
            this.§9%§.removeEventListener(Event.COMPLETE,this.§<n§);
            this.§9%§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`u§);
            this.§9%§.removeEventListener(ProgressEvent.PROGRESS,this.§^7§);
            this.§9%§ = null;
         }
         this.§!!<§ = null;
      }
      
      private function §>z§() : void
      {
         this.§-,§ = 0;
         if(this.§+E§ != null)
         {
            this.§+E§.call();
            this.§+E§ = null;
         }
      }
      
      public function §"#§() : void
      {
         this.§-,§ = 0;
         this.§,!?§ = false;
         this.§5!M§ = 0;
         if(this.§+1§)
         {
            this.§+1§ = null;
         }
         this.§+E§ = null;
         this.§5b§();
      }
      
      public function §@!1§() : Number
      {
         if(!this.§>!N§())
         {
            §8e§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§,!?§ || !this.§+1§ || !this.§>!N§())
         {
            §8e§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§!!V§ == this.§5!M§)
         {
            if(this.§+e§ && this.§5!M§ > 0)
            {
               if(this.§+e§.§-!<§)
               {
                  return 1;
               }
               return (this.§!!V§ + this.§-,§ - 0.5) / this.§5!M§;
            }
            return 1;
         }
         return this.§!!V§ / this.§5!M§;
      }
   }
}
