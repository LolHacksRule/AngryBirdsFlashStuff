package §9g§
{
   import §%t§.§@!%§;
   import §<K§.§0e§;
   import §`!@§.§>5§;
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
   
   public class §<x§
   {
      
      private static var §9!R§:§<x§;
       
      
      private var §"K§:Vector.<XML>;
      
      private var §2,§:Boolean = false;
      
      private var §&!$§:int;
      
      private var §]$§:int;
      
      private var §,B§:Function;
      
      private var §8d§:Function;
      
      private var §3$§:Loader;
      
      private var §1R§:URLLoader;
      
      private var §>!U§:XML;
      
      private var §^1§:String = "";
      
      private var §#M§:int = 0;
      
      private var §3V§:Vector.<String>;
      
      private var §!!;§:String = "external_assets/LoadTest.swf";
      
      private var §?l§:Boolean = false;
      
      private var §>!6§:Array;
      
      private var §9v§:String;
      
      private var §02§:String;
      
      private var §6§:Number = 0;
      
      private var §]l§:String = "";
      
      private var §3l§:§64§;
      
      public function §<x§()
      {
         this.§>!6§ = [];
         super();
      }
      
      public static function get §0E§() : §<x§
      {
         if(!§9!R§)
         {
            §9!R§ = new §<x§();
         }
         return §9!R§;
      }
      
      public static function §2D§(param1:Loader, param2:XML) : void
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
            §0e§.§[7§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §%!H§() : void
      {
         this.§>!6§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§64§, param5:Function = null) : void
      {
         this.§9v§ = param2;
         this.§02§ = param3;
         this.§?l§ = true;
         this.§2,§ = false;
         this.§3l§ = param4;
         this.§,B§ = param5;
      }
      
      private function §?i§() : void
      {
         this.§?l§ = true;
         this.§2,§ = false;
      }
      
      public function §!!0§() : Boolean
      {
         return this.§?l§;
      }
      
      public function §1w§() : Boolean
      {
         if(this.§2,§ || !this.§!!0§())
         {
            return false;
         }
         this.§"K§ = new Vector.<XML>();
         this.§&!$§ = 0;
         return true;
      }
      
      public function §'p§(param1:XML) : void
      {
         if(this.§2,§ && this.§!!0§())
         {
            return;
         }
         this.§"K§.push(param1);
         ++this.§&!$§;
      }
      
      public function §7M§(param1:Function = null) : void
      {
         if(this.§2,§ && this.§!!0§())
         {
            return;
         }
         this.§8d§ = param1;
         this.§&!$§ = this.§"K§.length;
         this.§2,§ = true;
         this.§<c§();
      }
      
      private function §',§() : Boolean
      {
         if(this.§3l§ && !this.§3l§.§=S§)
         {
            this.§3l§.removeEventListener(Event.COMPLETE,this.§6>§);
            this.§3l§.addEventListener(Event.COMPLETE,this.§6>§);
            return true;
         }
         return false;
      }
      
      private function §6>§(param1:Event) : void
      {
         this.§3l§.removeEventListener(Event.COMPLETE,this.§6>§);
         this.§<c§();
      }
      
      private function §<c§() : void
      {
         if(this.§"K§.length > 0)
         {
            this.§^J§();
         }
         else if(this.§]!M§() >= 1)
         {
            this.§'!I§();
         }
      }
      
      private function §^J§() : void
      {
         var _loc1_:String = null;
         if(this.§2,§ && this.§!!0§())
         {
            if(this.§',§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§02§ != null && this.§02§.length > 0)
            {
               _loc1_ = "?version=" + this.§02§;
            }
            this.§6§ = 0;
            this.§>!U§ = this.§"K§.shift();
            if(this.§>!U§.localName() == "pack")
            {
               this.§1R§ = new URLLoader();
               this.§1R§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§1R§.addEventListener(Event.COMPLETE,this.§6!S§);
               this.§1R§.addEventListener(IOErrorEvent.IO_ERROR,this.§0`§);
               this.§1R§.addEventListener(ProgressEvent.PROGRESS,this.§&y§);
               this.§]l§ = this.§9v§ + this.§>!U§.@url.toString() + _loc1_;
               this.§1R§.load(new URLRequest(this.§]l§));
            }
            else
            {
               this.§3$§ = new Loader();
               this.§3$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§!! §);
               this.§3$§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§0`§);
               this.§3$§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§&y§);
               this.§]l§ = this.§9v§ + this.§^1§ + this.§>!U§.@swf.toString() + _loc1_;
               this.§3$§.load(new URLRequest(this.§]l§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §0`§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§]l§;
         this.§3!0§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§]l§,§>5§.§<q§);
      }
      
      private function §6!S§(param1:Event) : void
      {
         this.§>!6§.push(this.§1R§.data);
         if(this.§,B§ != null)
         {
            this.§,B§(this.§1R§.data);
         }
         if(this.§3l§)
         {
            this.§3l§.§#$§(this.§1R§.data);
         }
         this.§3!0§();
         ++this.§]$§;
         this.§<c§();
      }
      
      private function §&y§(param1:ProgressEvent) : void
      {
         this.§6§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §!! §(param1:Event) : void
      {
         §2D§(this.§3$§,this.§>!U§);
         this.§3!0§();
         ++this.§]$§;
         this.§<c§();
      }
      
      private function §3!0§() : void
      {
         if(this.§3$§)
         {
            this.§3$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!! §);
            this.§3$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§0`§);
            this.§3$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!! §);
            this.§3$§ = null;
         }
         if(this.§1R§)
         {
            this.§1R§.removeEventListener(Event.COMPLETE,this.§6!S§);
            this.§1R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0`§);
            this.§1R§.removeEventListener(ProgressEvent.PROGRESS,this.§&y§);
            this.§1R§ = null;
         }
         this.§>!U§ = null;
      }
      
      private function §'!I§() : void
      {
         this.§6§ = 0;
         if(this.§8d§ != null)
         {
            this.§8d§.call();
            this.§8d§ = null;
         }
      }
      
      public function §"b§() : void
      {
         this.§6§ = 0;
         this.§2,§ = false;
         this.§&!$§ = 0;
         if(this.§"K§)
         {
            this.§"K§ = null;
         }
         this.§8d§ = null;
         this.§3!0§();
      }
      
      public function §]!M§() : Number
      {
         if(!this.§!!0§())
         {
            §@!%§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§2,§ || !this.§"K§ || !this.§!!0§())
         {
            §@!%§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§]$§ == this.§&!$§)
         {
            if(this.§3l§ && this.§&!$§ > 0)
            {
               if(this.§3l§.§=S§)
               {
                  return 1;
               }
               return (this.§]$§ + this.§6§ - 0.5) / this.§&!$§;
            }
            return 1;
         }
         return this.§]$§ / this.§&!$§;
      }
   }
}
