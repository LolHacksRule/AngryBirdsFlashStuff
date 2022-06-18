package §null §
{
   import §-'§.§9q§;
   import §9H§.§@M§;
   import com.rovio.assets.§ 3§;
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
   
   public class §;i§
   {
      
      private static var §'u§:§;i§;
       
      
      private var §'-§:Vector.<XML>;
      
      private var §#J§:Boolean = false;
      
      private var §>Y§:int;
      
      private var §>!F§:int;
      
      private var §'H§:Function;
      
      private var §]3§:Function;
      
      private var §2I§:Loader;
      
      private var §[!+§:URLLoader;
      
      private var §!!$§:XML;
      
      private var §,c§:String = "";
      
      private var §1V§:int = 0;
      
      private var §;3§:Vector.<String>;
      
      private var §5d§:String = "external_assets/LoadTest.swf";
      
      private var §extends§:Boolean = false;
      
      private var §[;§:Array;
      
      private var §6e§:String;
      
      private var §!! §:String;
      
      private var §2!,§:Number = 0;
      
      private var § ! §:String = "";
      
      private var §4!0§:§!@§;
      
      public function §;i§()
      {
         this.§[;§ = [];
         super();
      }
      
      public static function get §+S§() : §;i§
      {
         if(!§'u§)
         {
            §'u§ = new §;i§();
         }
         return §'u§;
      }
      
      public static function §5B§(param1:Loader, param2:XML) : void
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
            § 3§.§<h§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §'5§() : void
      {
         this.§[;§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§!@§, param5:Function = null) : void
      {
         this.§6e§ = param2;
         this.§!! § = param3;
         this.§extends§ = true;
         this.§#J§ = false;
         this.§4!0§ = param4;
         this.§'H§ = param5;
      }
      
      private function §^!?§() : void
      {
         this.§extends§ = true;
         this.§#J§ = false;
      }
      
      public function §'7§() : Boolean
      {
         return this.§extends§;
      }
      
      public function §if§() : Boolean
      {
         if(this.§#J§ || !this.§'7§())
         {
            return false;
         }
         this.§'-§ = new Vector.<XML>();
         this.§>Y§ = 0;
         return true;
      }
      
      public function §'O§(param1:XML) : void
      {
         if(this.§#J§ && this.§'7§())
         {
            return;
         }
         this.§'-§.push(param1);
         ++this.§>Y§;
      }
      
      public function §-Y§(param1:Function = null) : void
      {
         if(this.§#J§ && this.§'7§())
         {
            return;
         }
         this.§]3§ = param1;
         this.§>Y§ = this.§'-§.length;
         this.§#J§ = true;
         this.§>L§();
      }
      
      private function §2[§() : Boolean
      {
         if(this.§4!0§ && !this.§4!0§.§"L§)
         {
            this.§4!0§.removeEventListener(Event.COMPLETE,this.§5!-§);
            this.§4!0§.addEventListener(Event.COMPLETE,this.§5!-§);
            return true;
         }
         return false;
      }
      
      private function §5!-§(param1:Event) : void
      {
         this.§4!0§.removeEventListener(Event.COMPLETE,this.§5!-§);
         this.§>L§();
      }
      
      private function §>L§() : void
      {
         if(this.§'-§.length > 0)
         {
            this.§6!7§();
         }
         else if(this.§!M§() >= 1)
         {
            this.§8!&§();
         }
      }
      
      private function §6!7§() : void
      {
         var _loc1_:String = null;
         if(this.§#J§ && this.§'7§())
         {
            if(this.§2[§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§!! § != null && this.§!! §.length > 0)
            {
               _loc1_ = "?version=" + this.§!! §;
            }
            this.§2!,§ = 0;
            this.§!!$§ = this.§'-§.shift();
            if(this.§!!$§.localName() == "pack")
            {
               this.§[!+§ = new URLLoader();
               this.§[!+§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§[!+§.addEventListener(Event.COMPLETE,this.§]!;§);
               this.§[!+§.addEventListener(IOErrorEvent.IO_ERROR,this.§+3§);
               this.§[!+§.addEventListener(ProgressEvent.PROGRESS,this.§0L§);
               this.§ ! § = this.§6e§ + this.§!!$§.@url.toString() + _loc1_;
               this.§[!+§.load(new URLRequest(this.§ ! §));
            }
            else
            {
               this.§2I§ = new Loader();
               this.§2I§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§9!C§);
               this.§2I§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§+3§);
               this.§2I§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§0L§);
               this.§ ! § = this.§6e§ + this.§,c§ + this.§!!$§.@swf.toString() + _loc1_;
               this.§2I§.load(new URLRequest(this.§ ! §),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §+3§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§ ! §;
         this.§`r§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§ ! §,§9q§.§1z§);
      }
      
      private function §]!;§(param1:Event) : void
      {
         this.§[;§.push(this.§[!+§.data);
         if(this.§'H§ != null)
         {
            this.§'H§(this.§[!+§.data);
         }
         if(this.§4!0§)
         {
            this.§4!0§.§3<§(this.§[!+§.data);
         }
         this.§`r§();
         ++this.§>!F§;
         this.§>L§();
      }
      
      private function §0L§(param1:ProgressEvent) : void
      {
         this.§2!,§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §9!C§(param1:Event) : void
      {
         §5B§(this.§2I§,this.§!!$§);
         this.§`r§();
         ++this.§>!F§;
         this.§>L§();
      }
      
      private function §`r§() : void
      {
         if(this.§2I§)
         {
            this.§2I§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§9!C§);
            this.§2I§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§+3§);
            this.§2I§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§9!C§);
            this.§2I§ = null;
         }
         if(this.§[!+§)
         {
            this.§[!+§.removeEventListener(Event.COMPLETE,this.§]!;§);
            this.§[!+§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+3§);
            this.§[!+§.removeEventListener(ProgressEvent.PROGRESS,this.§0L§);
            this.§[!+§ = null;
         }
         this.§!!$§ = null;
      }
      
      private function §8!&§() : void
      {
         this.§2!,§ = 0;
         if(this.§]3§ != null)
         {
            this.§]3§.call();
            this.§]3§ = null;
         }
      }
      
      public function §<!8§() : void
      {
         this.§2!,§ = 0;
         this.§#J§ = false;
         this.§>Y§ = 0;
         if(this.§'-§)
         {
            this.§'-§ = null;
         }
         this.§]3§ = null;
         this.§`r§();
      }
      
      public function §!M§() : Number
      {
         if(!this.§'7§())
         {
            §@M§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§#J§ || !this.§'-§ || !this.§'7§())
         {
            §@M§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§>!F§ == this.§>Y§)
         {
            if(this.§4!0§ && this.§>Y§ > 0)
            {
               if(this.§4!0§.§"L§)
               {
                  return 1;
               }
               return (this.§>!F§ + this.§2!,§ - 0.5) / this.§>Y§;
            }
            return 1;
         }
         return this.§>!F§ / this.§>Y§;
      }
   }
}
