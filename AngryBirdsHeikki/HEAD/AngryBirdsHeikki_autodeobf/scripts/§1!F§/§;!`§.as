package §1!F§
{
   import §&!b§.§ c§;
   import §9!Q§.§;!_§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §;!`§
   {
      
      private static var §=!7§:§;!`§;
       
      
      private var §'!T§:Vector.<XML>;
      
      private var §6[§:Boolean = false;
      
      private var §3V§:int;
      
      private var §2!>§:int;
      
      private var §8!E§:Function;
      
      private var §>O§:Function;
      
      private var §&!I§:Loader;
      
      private var §8@§:URLLoader;
      
      private var §8!0§:XML;
      
      private var §[R§:String = "";
      
      private var §2K§:int = 0;
      
      private var §'W§:Vector.<String>;
      
      private var §8!2§:String = "external_assets/LoadTest.swf";
      
      private var §"o§:Boolean = false;
      
      private var §in§:Array;
      
      private var §4a§:String;
      
      private var §1!;§:String;
      
      private var §!"§:Number = 0;
      
      private var §-!d§:String = "";
      
      private var §=o§:§-"§;
      
      public function §;!`§()
      {
         this.§in§ = [];
         super();
      }
      
      public static function get §?! §() : §;!`§
      {
         if(!§=!7§)
         {
            §=!7§ = new §;!`§();
         }
         return §=!7§;
      }
      
      public static function § m§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §for§() : void
      {
         this.§in§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§-"§, param5:Function = null) : void
      {
         this.§4a§ = param2;
         this.§1!;§ = param3;
         this.§"o§ = true;
         this.§6[§ = false;
         this.§=o§ = param4;
         this.§8!E§ = param5;
      }
      
      private function §4%§() : void
      {
         this.§"o§ = true;
         this.§6[§ = false;
      }
      
      public function §!!W§() : Boolean
      {
         return this.§"o§;
      }
      
      public function §?c§() : Boolean
      {
         if(this.§6[§ || !this.§!!W§())
         {
            return false;
         }
         this.§'!T§ = new Vector.<XML>();
         this.§3V§ = 0;
         return true;
      }
      
      public function §8J§(param1:XML) : void
      {
         if(this.§6[§ && this.§!!W§())
         {
            return;
         }
         this.§'!T§.push(param1);
         ++this.§3V§;
      }
      
      public function §3K§(param1:Function = null) : void
      {
         if(this.§6[§ && this.§!!W§())
         {
            return;
         }
         this.§>O§ = param1;
         this.§3V§ = this.§'!T§.length;
         this.§6[§ = true;
         this.§5!M§();
      }
      
      private function §[]§() : Boolean
      {
         if(this.§=o§ && !this.§=o§.§0@§)
         {
            this.§=o§.removeEventListener(Event.COMPLETE,this.§,L§);
            this.§=o§.addEventListener(Event.COMPLETE,this.§,L§);
            return true;
         }
         return false;
      }
      
      private function §,L§(param1:Event) : void
      {
         this.§=o§.removeEventListener(Event.COMPLETE,this.§,L§);
         this.§5!M§();
      }
      
      private function §5!M§() : void
      {
         if(this.§'!T§.length > 0)
         {
            this.§>$§();
         }
         else if(this.§;>§() >= 1)
         {
            this.§6w§();
         }
      }
      
      private function §>$§() : void
      {
         var _loc1_:String = null;
         if(this.§6[§ && this.§!!W§())
         {
            if(this.§[]§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§1!;§ != null && this.§1!;§.length > 0)
            {
               _loc1_ = "?version=" + this.§1!;§;
            }
            this.§!"§ = 0;
            this.§8!0§ = this.§'!T§.shift();
            if(this.§8!0§.localName() == "pack")
            {
               this.§8@§ = new URLLoader();
               this.§8@§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§8@§.addEventListener(Event.COMPLETE,this.§9§);
               this.§8@§.addEventListener(IOErrorEvent.IO_ERROR,this.§0b§);
               this.§8@§.addEventListener(ProgressEvent.PROGRESS,this.§0Z§);
               this.§-!d§ = this.§4a§ + this.§8!0§.@url.toString() + _loc1_;
               this.§8@§.load(new URLRequest(this.§-!d§));
            }
            else
            {
               this.§&!I§ = new Loader();
               this.§&!I§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§6@§);
               this.§&!I§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§0b§);
               this.§&!I§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§0Z§);
               this.§-!d§ = this.§4a§ + this.§[R§ + this.§8!0§.@swf.toString() + _loc1_;
               this.§&!I§.load(new URLRequest(this.§-!d§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §0b§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§-!d§;
         this.§8-§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§-!d§,§;!_§.§9D§);
      }
      
      private function §9§(param1:Event) : void
      {
         this.§in§.push(this.§8@§.data);
         if(this.§8!E§ != null)
         {
            this.§8!E§(this.§8@§.data);
         }
         if(this.§=o§)
         {
            this.§=o§.§0!Q§(this.§8@§.data);
         }
         this.§8-§();
         ++this.§2!>§;
         this.§5!M§();
      }
      
      private function §0Z§(param1:ProgressEvent) : void
      {
         this.§!"§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §6@§(param1:Event) : void
      {
         this.§8-§();
         ++this.§2!>§;
         this.§5!M§();
      }
      
      private function §8-§() : void
      {
         if(this.§&!I§)
         {
            this.§&!I§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6@§);
            this.§&!I§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§0b§);
            this.§&!I§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6@§);
            this.§&!I§ = null;
         }
         if(this.§8@§)
         {
            this.§8@§.removeEventListener(Event.COMPLETE,this.§9§);
            this.§8@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0b§);
            this.§8@§.removeEventListener(ProgressEvent.PROGRESS,this.§0Z§);
            this.§8@§ = null;
         }
         this.§8!0§ = null;
      }
      
      private function §6w§() : void
      {
         this.§!"§ = 0;
         if(this.§>O§ != null)
         {
            this.§>O§.call();
            this.§>O§ = null;
         }
      }
      
      public function §"$§() : void
      {
         this.§!"§ = 0;
         this.§6[§ = false;
         this.§3V§ = 0;
         if(this.§'!T§)
         {
            this.§'!T§ = null;
         }
         this.§>O§ = null;
         this.§8-§();
      }
      
      public function §;>§() : Number
      {
         if(!this.§!!W§())
         {
            § c§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§6[§ || !this.§'!T§ || !this.§!!W§())
         {
            § c§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§2!>§ == this.§3V§)
         {
            if(this.§=o§ && this.§3V§ > 0)
            {
               if(this.§=o§.§0@§)
               {
                  return 1;
               }
               return (this.§2!>§ + this.§!"§ - 0.5) / this.§3V§;
            }
            return 1;
         }
         return this.§2!>§ / this.§3V§;
      }
   }
}
