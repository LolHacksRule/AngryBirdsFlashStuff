package §"!_§
{
   import §%!$§.§[Z§;
   import §4!9§.§&8§;
   import §7S§.§3t§;
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
   
   public class §?!0§
   {
      
      private static var §0!#§:§?!0§;
       
      
      private var §1a§:Vector.<XML>;
      
      private var §^u§:Boolean = false;
      
      private var §@!6§:int;
      
      private var § Z§:int;
      
      private var §#o§:Function;
      
      private var §"9§:Function;
      
      private var §#g§:Loader;
      
      private var §<!R§:URLLoader;
      
      private var §#!!§:XML;
      
      private var § S§:String = "";
      
      private var §[A§:int = 0;
      
      private var §+!&§:Vector.<String>;
      
      private var §;f§:String = "external_assets/LoadTest.swf";
      
      private var §8!b§:Boolean = false;
      
      private var §!i§:Array;
      
      private var §]t§:String;
      
      private var § 3§:String;
      
      private var §<5§:Number = 0;
      
      private var §,[§:String = "";
      
      private var §9!N§:§!d§;
      
      public function §?!0§()
      {
         this.§!i§ = [];
         super();
      }
      
      public static function get §'![§() : §?!0§
      {
         if(!§0!#§)
         {
            §0!#§ = new §?!0§();
         }
         return §0!#§;
      }
      
      public static function §^?§(param1:Loader, param2:XML) : void
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
            §3t§.§4!=§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §21§() : void
      {
         this.§!i§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§!d§, param5:Function = null) : void
      {
         this.§]t§ = param2;
         this.§ 3§ = param3;
         this.§8!b§ = true;
         this.§^u§ = false;
         this.§9!N§ = param4;
         this.§#o§ = param5;
      }
      
      private function §7i§() : void
      {
         this.§8!b§ = true;
         this.§^u§ = false;
      }
      
      public function §+F§() : Boolean
      {
         return this.§8!b§;
      }
      
      public function §7k§() : Boolean
      {
         if(this.§^u§ || !this.§+F§())
         {
            return false;
         }
         this.§1a§ = new Vector.<XML>();
         this.§@!6§ = 0;
         return true;
      }
      
      public function §%!X§(param1:XML) : void
      {
         if(this.§^u§ && this.§+F§())
         {
            return;
         }
         this.§1a§.push(param1);
         ++this.§@!6§;
      }
      
      public function §-!7§(param1:Function = null) : void
      {
         if(this.§^u§ && this.§+F§())
         {
            return;
         }
         this.§"9§ = param1;
         this.§@!6§ = this.§1a§.length;
         this.§^u§ = true;
         this.§0%§();
      }
      
      private function §,!3§() : Boolean
      {
         if(this.§9!N§ && !this.§9!N§.§@8§)
         {
            this.§9!N§.removeEventListener(Event.COMPLETE,this.§#%§);
            this.§9!N§.addEventListener(Event.COMPLETE,this.§#%§);
            return true;
         }
         return false;
      }
      
      private function §#%§(param1:Event) : void
      {
         this.§9!N§.removeEventListener(Event.COMPLETE,this.§#%§);
         this.§0%§();
      }
      
      private function §0%§() : void
      {
         if(this.§1a§.length > 0)
         {
            this.§?2§();
         }
         else if(this.§#7§() >= 1)
         {
            this.§]-§();
         }
      }
      
      private function §?2§() : void
      {
         var _loc1_:String = null;
         if(this.§^u§ && this.§+F§())
         {
            if(this.§,!3§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§ 3§ != null && this.§ 3§.length > 0)
            {
               _loc1_ = "?version=" + this.§ 3§;
            }
            this.§<5§ = 0;
            this.§#!!§ = this.§1a§.shift();
            if(this.§#!!§.localName() == "pack")
            {
               this.§<!R§ = new URLLoader();
               this.§<!R§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§<!R§.addEventListener(Event.COMPLETE,this.§&g§);
               this.§<!R§.addEventListener(IOErrorEvent.IO_ERROR,this.§3E§);
               this.§<!R§.addEventListener(ProgressEvent.PROGRESS,this.§;x§);
               this.§,[§ = this.§]t§ + this.§#!!§.@url.toString() + _loc1_;
               this.§<!R§.load(new URLRequest(this.§,[§));
            }
            else
            {
               this.§#g§ = new Loader();
               this.§#g§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?k§);
               this.§#g§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§3E§);
               this.§#g§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§;x§);
               this.§,[§ = this.§]t§ + this.§ S§ + this.§#!!§.@swf.toString() + _loc1_;
               this.§#g§.load(new URLRequest(this.§,[§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §3E§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§,[§;
         this.§+e§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§,[§,§&8§.§,K§);
      }
      
      private function §&g§(param1:Event) : void
      {
         this.§!i§.push(this.§<!R§.data);
         if(this.§#o§ != null)
         {
            this.§#o§(this.§<!R§.data);
         }
         if(this.§9!N§)
         {
            this.§9!N§.§!<§(this.§<!R§.data);
         }
         this.§+e§();
         ++this.§ Z§;
         this.§0%§();
      }
      
      private function §;x§(param1:ProgressEvent) : void
      {
         this.§<5§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §?k§(param1:Event) : void
      {
         §^?§(this.§#g§,this.§#!!§);
         this.§+e§();
         ++this.§ Z§;
         this.§0%§();
      }
      
      private function §+e§() : void
      {
         if(this.§#g§)
         {
            this.§#g§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?k§);
            this.§#g§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§3E§);
            this.§#g§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?k§);
            this.§#g§ = null;
         }
         if(this.§<!R§)
         {
            this.§<!R§.removeEventListener(Event.COMPLETE,this.§&g§);
            this.§<!R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3E§);
            this.§<!R§.removeEventListener(ProgressEvent.PROGRESS,this.§;x§);
            this.§<!R§ = null;
         }
         this.§#!!§ = null;
      }
      
      private function §]-§() : void
      {
         this.§<5§ = 0;
         if(this.§"9§ != null)
         {
            this.§"9§.call();
            this.§"9§ = null;
         }
      }
      
      public function §]!$§() : void
      {
         this.§<5§ = 0;
         this.§^u§ = false;
         this.§@!6§ = 0;
         if(this.§1a§)
         {
            this.§1a§ = null;
         }
         this.§"9§ = null;
         this.§+e§();
      }
      
      public function §#7§() : Number
      {
         if(!this.§+F§())
         {
            §[Z§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§^u§ || !this.§1a§ || !this.§+F§())
         {
            §[Z§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§ Z§ == this.§@!6§)
         {
            if(this.§9!N§ && this.§@!6§ > 0)
            {
               if(this.§9!N§.§@8§)
               {
                  return 1;
               }
               return (this.§ Z§ + this.§<5§ - 0.5) / this.§@!6§;
            }
            return 1;
         }
         return this.§ Z§ / this.§@!6§;
      }
   }
}
