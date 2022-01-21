package §"J§
{
   import §5K§.§[C§;
   import §?I§.§@F§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §0I§
   {
      
      private static var §^1§:§0I§;
       
      
      private var §#3§:Vector.<XML>;
      
      private var § !]§:Boolean = false;
      
      private var § !c§:int;
      
      private var §>!Q§:int;
      
      private var §6f§:Function;
      
      private var §3r§:Function;
      
      private var §19§:Loader;
      
      private var §6!_§:URLLoader;
      
      private var §-t§:XML;
      
      private var §+$§:String = "";
      
      private var §7!Y§:int = 0;
      
      private var §<1§:Vector.<String>;
      
      private var §@!S§:String = "external_assets/LoadTest.swf";
      
      private var §+>§:Boolean = false;
      
      private var §#!0§:Array;
      
      private var §`!4§:String;
      
      private var §9`§:String;
      
      private var §0v§:Number = 0;
      
      private var §1!#§:String = "";
      
      private var §%!k§:§5^§;
      
      public function §0I§()
      {
         this.§#!0§ = [];
         super();
      }
      
      public static function get §@!7§() : §0I§
      {
         if(!§^1§)
         {
            §^1§ = new §0I§();
         }
         return §^1§;
      }
      
      public static function §7!O§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §,!0§() : void
      {
         this.§#!0§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§5^§, param5:Function = null) : void
      {
         this.§`!4§ = param2;
         this.§9`§ = param3;
         this.§+>§ = true;
         this.§ !]§ = false;
         this.§%!k§ = param4;
         this.§6f§ = param5;
      }
      
      private function §1!n§() : void
      {
         this.§+>§ = true;
         this.§ !]§ = false;
      }
      
      public function §9p§() : Boolean
      {
         return this.§+>§;
      }
      
      public function §0!J§() : Boolean
      {
         if(this.§ !]§ || !this.§9p§())
         {
            return false;
         }
         this.§#3§ = new Vector.<XML>();
         this.§ !c§ = 0;
         return true;
      }
      
      public function §+;§(param1:XML) : void
      {
         if(this.§ !]§ && this.§9p§())
         {
            return;
         }
         this.§#3§.push(param1);
         ++this.§ !c§;
      }
      
      public function §8G§(param1:Function = null) : void
      {
         if(this.§ !]§ && this.§9p§())
         {
            return;
         }
         this.§3r§ = param1;
         this.§ !c§ = this.§#3§.length;
         this.§ !]§ = true;
         this.§4;§();
      }
      
      private function §6b§() : Boolean
      {
         if(this.§%!k§ && !this.§%!k§.§[!'§)
         {
            this.§%!k§.removeEventListener(Event.COMPLETE,this.§+!a§);
            this.§%!k§.addEventListener(Event.COMPLETE,this.§+!a§);
            return true;
         }
         return false;
      }
      
      private function §+!a§(param1:Event) : void
      {
         this.§%!k§.removeEventListener(Event.COMPLETE,this.§+!a§);
         this.§4;§();
      }
      
      private function §4;§() : void
      {
         if(this.§#3§.length > 0)
         {
            this.§[o§();
         }
         else if(this.§&!+§() >= 1)
         {
            this.§9f§();
         }
      }
      
      private function §[o§() : void
      {
         var _loc1_:String = null;
         if(this.§ !]§ && this.§9p§())
         {
            if(this.§6b§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§9`§ != null && this.§9`§.length > 0)
            {
               _loc1_ = "?version=" + this.§9`§;
            }
            this.§0v§ = 0;
            this.§-t§ = this.§#3§.shift();
            if(this.§-t§.localName() == "pack")
            {
               this.§6!_§ = new URLLoader();
               this.§6!_§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§6!_§.addEventListener(Event.COMPLETE,this.§[O§);
               this.§6!_§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!h§);
               this.§6!_§.addEventListener(ProgressEvent.PROGRESS,this.§=[§);
               this.§1!#§ = this.§`!4§ + this.§-t§.@url.toString() + _loc1_;
               this.§6!_§.load(new URLRequest(this.§1!#§));
            }
            else
            {
               this.§19§ = new Loader();
               this.§19§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2`§);
               this.§19§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"!h§);
               this.§19§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§=[§);
               this.§1!#§ = this.§`!4§ + this.§+$§ + this.§-t§.@swf.toString() + _loc1_;
               this.§19§.load(new URLRequest(this.§1!#§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §"!h§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§1!#§;
         this.§2m§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§1!#§,§@F§.§0i§);
      }
      
      private function §[O§(param1:Event) : void
      {
         this.§#!0§.push(this.§6!_§.data);
         if(this.§6f§ != null)
         {
            this.§6f§(this.§6!_§.data);
         }
         if(this.§%!k§)
         {
            this.§%!k§.§,+§(this.§6!_§.data);
         }
         this.§2m§();
         ++this.§>!Q§;
         this.§4;§();
      }
      
      private function §=[§(param1:ProgressEvent) : void
      {
         this.§0v§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §2`§(param1:Event) : void
      {
         this.§2m§();
         ++this.§>!Q§;
         this.§4;§();
      }
      
      private function §2m§() : void
      {
         if(this.§19§)
         {
            this.§19§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2`§);
            this.§19§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!h§);
            this.§19§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2`§);
            this.§19§ = null;
         }
         if(this.§6!_§)
         {
            this.§6!_§.removeEventListener(Event.COMPLETE,this.§[O§);
            this.§6!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!h§);
            this.§6!_§.removeEventListener(ProgressEvent.PROGRESS,this.§=[§);
            this.§6!_§ = null;
         }
         this.§-t§ = null;
      }
      
      private function §9f§() : void
      {
         this.§0v§ = 0;
         if(this.§3r§ != null)
         {
            this.§3r§.call();
            this.§3r§ = null;
         }
      }
      
      public function §'!§() : void
      {
         this.§0v§ = 0;
         this.§ !]§ = false;
         this.§ !c§ = 0;
         if(this.§#3§)
         {
            this.§#3§ = null;
         }
         this.§3r§ = null;
         this.§2m§();
      }
      
      public function §&!+§() : Number
      {
         if(!this.§9p§())
         {
            §[C§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§ !]§ || !this.§#3§ || !this.§9p§())
         {
            §[C§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§>!Q§ == this.§ !c§)
         {
            if(this.§%!k§ && this.§ !c§ > 0)
            {
               if(this.§%!k§.§[!'§)
               {
                  return 1;
               }
               return (this.§>!Q§ + this.§0v§ - 0.5) / this.§ !c§;
            }
            return 1;
         }
         return this.§>!Q§ / this.§ !c§;
      }
   }
}
