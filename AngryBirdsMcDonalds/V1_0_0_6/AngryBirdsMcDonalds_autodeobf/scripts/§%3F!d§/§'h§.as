package §?!d§
{
   import § e§.§!=§;
   import §8<§.§<!7§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §'h§
   {
      
      private static var §5k§:§'h§;
       
      
      private var §+T§:Vector.<XML>;
      
      private var §^p§:Boolean = false;
      
      private var §!!%§:int;
      
      private var §[0§:int;
      
      private var §!D§:Function;
      
      private var §get §:Function;
      
      private var §"d§:Loader;
      
      private var §>8§:URLLoader;
      
      private var §#!9§:XML;
      
      private var §4M§:String = "";
      
      private var §2!8§:int = 0;
      
      private var §-!I§:Vector.<String>;
      
      private var §1Z§:String = "external_assets/LoadTest.swf";
      
      private var §!4§:Boolean = false;
      
      private var §!J§:Array;
      
      private var §%!g§:String;
      
      private var §`!2§:String;
      
      private var §-0§:Number = 0;
      
      private var §1!H§:String = "";
      
      private var § "§:§7+§;
      
      public function §'h§()
      {
         this.§!J§ = [];
         super();
      }
      
      public static function get §+j§() : §'h§
      {
         if(!§5k§)
         {
            §5k§ = new §'h§();
         }
         return §5k§;
      }
      
      public static function §@I§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §2%§() : void
      {
         this.§!J§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§7+§, param5:Function = null) : void
      {
         this.§%!g§ = param2;
         this.§`!2§ = param3;
         this.§!4§ = true;
         this.§^p§ = false;
         this.§ "§ = param4;
         this.§!D§ = param5;
      }
      
      private function §3!4§() : void
      {
         this.§!4§ = true;
         this.§^p§ = false;
      }
      
      public function §2!;§() : Boolean
      {
         return this.§!4§;
      }
      
      public function §`?§() : Boolean
      {
         if(this.§^p§ || !this.§2!;§())
         {
            return false;
         }
         this.§+T§ = new Vector.<XML>();
         this.§!!%§ = 0;
         return true;
      }
      
      public function §0v§(param1:XML) : void
      {
         if(this.§^p§ && this.§2!;§())
         {
            return;
         }
         this.§+T§.push(param1);
         ++this.§!!%§;
      }
      
      public function §5!m§(param1:Function = null) : void
      {
         if(this.§^p§ && this.§2!;§())
         {
            return;
         }
         this.§get § = param1;
         this.§!!%§ = this.§+T§.length;
         this.§^p§ = true;
         this.§3[§();
      }
      
      private function §@!#§() : Boolean
      {
         if(this.§ "§ && !this.§ "§.§6!=§)
         {
            this.§ "§.removeEventListener(Event.COMPLETE,this.§6!e§);
            this.§ "§.addEventListener(Event.COMPLETE,this.§6!e§);
            return true;
         }
         return false;
      }
      
      private function §6!e§(param1:Event) : void
      {
         this.§ "§.removeEventListener(Event.COMPLETE,this.§6!e§);
         this.§3[§();
      }
      
      private function §3[§() : void
      {
         if(this.§+T§.length > 0)
         {
            this.§1b§();
         }
         else if(this.§-+§() >= 1)
         {
            this.§=!9§();
         }
      }
      
      private function §1b§() : void
      {
         var _loc1_:String = null;
         if(this.§^p§ && this.§2!;§())
         {
            if(this.§@!#§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§`!2§ != null && this.§`!2§.length > 0)
            {
               _loc1_ = "?version=" + this.§`!2§;
            }
            this.§-0§ = 0;
            this.§#!9§ = this.§+T§.shift();
            if(this.§#!9§.localName() == "pack")
            {
               this.§>8§ = new URLLoader();
               this.§>8§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§>8§.addEventListener(Event.COMPLETE,this.§@z§);
               this.§>8§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!G§);
               this.§>8§.addEventListener(ProgressEvent.PROGRESS,this.§4^§);
               this.§1!H§ = this.§%!g§ + this.§#!9§.@url.toString() + _loc1_;
               this.§>8§.load(new URLRequest(this.§1!H§));
            }
            else
            {
               this.§"d§ = new Loader();
               this.§"d§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§&F§);
               this.§"d§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9!G§);
               this.§"d§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§4^§);
               this.§1!H§ = this.§%!g§ + this.§4M§ + this.§#!9§.@swf.toString() + _loc1_;
               this.§"d§.load(new URLRequest(this.§1!H§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §9!G§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§1!H§;
         this.§,!k§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§1!H§,§!=§.§4f§);
      }
      
      private function §@z§(param1:Event) : void
      {
         this.§!J§.push(this.§>8§.data);
         if(this.§!D§ != null)
         {
            this.§!D§(this.§>8§.data);
         }
         if(this.§ "§)
         {
            this.§ "§.§6>§(this.§>8§.data);
         }
         this.§,!k§();
         ++this.§[0§;
         this.§3[§();
      }
      
      private function §4^§(param1:ProgressEvent) : void
      {
         this.§-0§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §&F§(param1:Event) : void
      {
         this.§,!k§();
         ++this.§[0§;
         this.§3[§();
      }
      
      private function §,!k§() : void
      {
         if(this.§"d§)
         {
            this.§"d§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&F§);
            this.§"d§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!G§);
            this.§"d§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&F§);
            this.§"d§ = null;
         }
         if(this.§>8§)
         {
            this.§>8§.removeEventListener(Event.COMPLETE,this.§@z§);
            this.§>8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!G§);
            this.§>8§.removeEventListener(ProgressEvent.PROGRESS,this.§4^§);
            this.§>8§ = null;
         }
         this.§#!9§ = null;
      }
      
      private function §=!9§() : void
      {
         this.§-0§ = 0;
         if(this.§get § != null)
         {
            this.§get §.call();
            this.§get § = null;
         }
      }
      
      public function §@!l§() : void
      {
         this.§-0§ = 0;
         this.§^p§ = false;
         this.§!!%§ = 0;
         if(this.§+T§)
         {
            this.§+T§ = null;
         }
         this.§get § = null;
         this.§,!k§();
      }
      
      public function §-+§() : Number
      {
         if(!this.§2!;§())
         {
            §<!7§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§^p§ || !this.§+T§ || !this.§2!;§())
         {
            §<!7§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§[0§ == this.§!!%§)
         {
            if(this.§ "§ && this.§!!%§ > 0)
            {
               if(this.§ "§.§6!=§)
               {
                  return 1;
               }
               return (this.§[0§ + this.§-0§ - 0.5) / this.§!!%§;
            }
            return 1;
         }
         return this.§[0§ / this.§!!%§;
      }
   }
}
