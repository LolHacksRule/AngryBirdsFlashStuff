package §&,§
{
   import §'!G§.§1C§;
   import §;m§.§=#§;
   import §="§.§@5§;
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
   
   public class §3F§
   {
      
      private static var §true §:§3F§;
       
      
      private var §;!A§:Vector.<XML>;
      
      private var §;V§:Boolean = false;
      
      private var §-"§:int;
      
      private var §+d§:int;
      
      private var §#!§:Function;
      
      private var §#2§:Function;
      
      private var §9!7§:Loader;
      
      private var §6!I§:URLLoader;
      
      private var §9!_§:XML;
      
      private var §9J§:String = "";
      
      private var §^q§:int = 0;
      
      private var §1!W§:Vector.<String>;
      
      private var §#x§:String = "external_assets/LoadTest.swf";
      
      private var §8!M§:Boolean = false;
      
      private var §>O§:Array;
      
      private var §>!4§:String;
      
      private var §;#§:String;
      
      private var §&!H§:Number = 0;
      
      private var §6j§:String = "";
      
      private var §<!J§:§-?§;
      
      public function §3F§()
      {
         this.§>O§ = [];
         super();
      }
      
      public static function get §@!c§() : §3F§
      {
         if(!§true §)
         {
            §true § = new §3F§();
         }
         return §true §;
      }
      
      public static function §5X§(param1:Loader, param2:XML) : void
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
            §@5§.§3z§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §2!7§() : void
      {
         this.§>O§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§-?§, param5:Function = null) : void
      {
         this.§>!4§ = param2;
         this.§;#§ = param3;
         this.§8!M§ = true;
         this.§;V§ = false;
         this.§<!J§ = param4;
         this.§#!§ = param5;
      }
      
      private function §'H§() : void
      {
         this.§8!M§ = true;
         this.§;V§ = false;
      }
      
      public function §@y§() : Boolean
      {
         return this.§8!M§;
      }
      
      public function §'1§() : Boolean
      {
         if(this.§;V§ || !this.§@y§())
         {
            return false;
         }
         this.§;!A§ = new Vector.<XML>();
         this.§-"§ = 0;
         return true;
      }
      
      public function §=!?§(param1:XML) : void
      {
         if(this.§;V§ && this.§@y§())
         {
            return;
         }
         this.§;!A§.push(param1);
         ++this.§-"§;
      }
      
      public function §^'§(param1:Function = null) : void
      {
         if(this.§;V§ && this.§@y§())
         {
            return;
         }
         this.§#2§ = param1;
         this.§-"§ = this.§;!A§.length;
         this.§;V§ = true;
         this.§6#§();
      }
      
      private function §,=§() : Boolean
      {
         if(this.§<!J§ && !this.§<!J§.§6!_§)
         {
            this.§<!J§.removeEventListener(Event.COMPLETE,this.§3`§);
            this.§<!J§.addEventListener(Event.COMPLETE,this.§3`§);
            return true;
         }
         return false;
      }
      
      private function §3`§(param1:Event) : void
      {
         this.§<!J§.removeEventListener(Event.COMPLETE,this.§3`§);
         this.§6#§();
      }
      
      private function §6#§() : void
      {
         if(this.§;!A§.length > 0)
         {
            this.§4!d§();
         }
         else if(this.§4%§() >= 1)
         {
            this.§!T§();
         }
      }
      
      private function §4!d§() : void
      {
         var _loc1_:String = null;
         if(this.§;V§ && this.§@y§())
         {
            if(this.§,=§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§;#§ != null && this.§;#§.length > 0)
            {
               _loc1_ = "?version=" + this.§;#§;
            }
            this.§&!H§ = 0;
            this.§9!_§ = this.§;!A§.shift();
            if(this.§9!_§.localName() == "pack")
            {
               this.§6!I§ = new URLLoader();
               this.§6!I§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§6!I§.addEventListener(Event.COMPLETE,this.§<y§);
               this.§6!I§.addEventListener(IOErrorEvent.IO_ERROR,this.§>z§);
               this.§6!I§.addEventListener(ProgressEvent.PROGRESS,this.§4R§);
               this.§6j§ = this.§>!4§ + this.§9!_§.@url.toString() + _loc1_;
               this.§6!I§.load(new URLRequest(this.§6j§));
            }
            else
            {
               this.§9!7§ = new Loader();
               this.§9!7§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§'!C§);
               this.§9!7§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§>z§);
               this.§9!7§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§4R§);
               this.§6j§ = this.§>!4§ + this.§9J§ + this.§9!_§.@swf.toString() + _loc1_;
               this.§9!7§.load(new URLRequest(this.§6j§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §>z§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§6j§;
         this.§<x§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§6j§,§=#§.§ k§);
      }
      
      private function §<y§(param1:Event) : void
      {
         this.§>O§.push(this.§6!I§.data);
         if(this.§#!§ != null)
         {
            this.§#!§(this.§6!I§.data);
         }
         if(this.§<!J§)
         {
            this.§<!J§.§&v§(this.§6!I§.data);
         }
         this.§<x§();
         ++this.§+d§;
         this.§6#§();
      }
      
      private function §4R§(param1:ProgressEvent) : void
      {
         this.§&!H§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §'!C§(param1:Event) : void
      {
         §5X§(this.§9!7§,this.§9!_§);
         this.§<x§();
         ++this.§+d§;
         this.§6#§();
      }
      
      private function §<x§() : void
      {
         if(this.§9!7§)
         {
            this.§9!7§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§'!C§);
            this.§9!7§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§>z§);
            this.§9!7§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§'!C§);
            this.§9!7§ = null;
         }
         if(this.§6!I§)
         {
            this.§6!I§.removeEventListener(Event.COMPLETE,this.§<y§);
            this.§6!I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>z§);
            this.§6!I§.removeEventListener(ProgressEvent.PROGRESS,this.§4R§);
            this.§6!I§ = null;
         }
         this.§9!_§ = null;
      }
      
      private function §!T§() : void
      {
         this.§&!H§ = 0;
         if(this.§#2§ != null)
         {
            this.§#2§.call();
            this.§#2§ = null;
         }
      }
      
      public function §'V§() : void
      {
         this.§&!H§ = 0;
         this.§;V§ = false;
         this.§-"§ = 0;
         if(this.§;!A§)
         {
            this.§;!A§ = null;
         }
         this.§#2§ = null;
         this.§<x§();
      }
      
      public function §4%§() : Number
      {
         if(!this.§@y§())
         {
            §1C§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§;V§ || !this.§;!A§ || !this.§@y§())
         {
            §1C§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§+d§ == this.§-"§)
         {
            if(this.§<!J§ && this.§-"§ > 0)
            {
               if(this.§<!J§.§6!_§)
               {
                  return 1;
               }
               return (this.§+d§ + this.§&!H§ - 0.5) / this.§-"§;
            }
            return 1;
         }
         return this.§+d§ / this.§-"§;
      }
   }
}
