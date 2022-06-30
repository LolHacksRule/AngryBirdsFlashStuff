package §<N§
{
   import §=! §.§?;§;
   import §@R§.§4,§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §'M§
   {
      
      private static var §2I§:§'M§;
       
      
      private var §2?§:Vector.<XML>;
      
      private var §#&§:Boolean = false;
      
      private var §`!V§:int;
      
      private var §2T§:int;
      
      private var §>V§:Function;
      
      private var § w§:Function;
      
      private var §',§:Loader;
      
      private var §%U§:URLLoader;
      
      private var § J§:XML;
      
      private var §1B§:String = "";
      
      private var §0"§:int = 0;
      
      private var §6$§:Vector.<String>;
      
      private var §1!?§:String = "external_assets/LoadTest.swf";
      
      private var §&;§:Boolean = false;
      
      private var §7I§:Array;
      
      private var §+!B§:String;
      
      private var §'!G§:String;
      
      private var §[%§:Number = 0;
      
      private var §=y§:String = "";
      
      private var §5!`§:§8]§;
      
      public function §'M§()
      {
         this.§7I§ = [];
         super();
      }
      
      public static function get § s§() : §'M§
      {
         if(!§2I§)
         {
            §2I§ = new §'M§();
         }
         return §2I§;
      }
      
      public static function §"!5§(param1:Loader, param2:XML) : void
      {
      }
      
      public function § !c§() : void
      {
         this.§7I§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§8]§, param5:Function = null) : void
      {
         this.§+!B§ = param2;
         this.§'!G§ = param3;
         this.§&;§ = true;
         this.§#&§ = false;
         this.§5!`§ = param4;
         this.§>V§ = param5;
      }
      
      private function §6L§() : void
      {
         this.§&;§ = true;
         this.§#&§ = false;
      }
      
      public function §<p§() : Boolean
      {
         return this.§&;§;
      }
      
      public function §+!H§() : Boolean
      {
         if(this.§#&§ || !this.§<p§())
         {
            return false;
         }
         this.§2?§ = new Vector.<XML>();
         this.§`!V§ = 0;
         return true;
      }
      
      public function §;n§(param1:XML) : void
      {
         if(this.§#&§ && this.§<p§())
         {
            return;
         }
         this.§2?§.push(param1);
         ++this.§`!V§;
      }
      
      public function §-l§(param1:Function = null) : void
      {
         if(this.§#&§ && this.§<p§())
         {
            return;
         }
         this.§ w§ = param1;
         this.§`!V§ = this.§2?§.length;
         this.§#&§ = true;
         this.§^A§();
      }
      
      private function §>N§() : Boolean
      {
         if(this.§5!`§ && !this.§5!`§.§-!4§)
         {
            this.§5!`§.removeEventListener(Event.COMPLETE,this.§9!e§);
            this.§5!`§.addEventListener(Event.COMPLETE,this.§9!e§);
            return true;
         }
         return false;
      }
      
      private function §9!e§(param1:Event) : void
      {
         this.§5!`§.removeEventListener(Event.COMPLETE,this.§9!e§);
         this.§^A§();
      }
      
      private function §^A§() : void
      {
         if(this.§2?§.length > 0)
         {
            this.§+Z§();
         }
         else if(this.§#!0§() >= 1)
         {
            this.§+1§();
         }
      }
      
      private function §+Z§() : void
      {
         var _loc1_:String = null;
         if(this.§#&§ && this.§<p§())
         {
            if(this.§>N§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§'!G§ != null && this.§'!G§.length > 0)
            {
               _loc1_ = "?version=" + this.§'!G§;
            }
            this.§[%§ = 0;
            this.§ J§ = this.§2?§.shift();
            if(this.§ J§.localName() == "pack")
            {
               this.§%U§ = new URLLoader();
               this.§%U§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§%U§.addEventListener(Event.COMPLETE,this.§4!%§);
               this.§%U§.addEventListener(IOErrorEvent.IO_ERROR,this.§8!=§);
               this.§%U§.addEventListener(ProgressEvent.PROGRESS,this.§>u§);
               this.§=y§ = this.§+!B§ + this.§ J§.@url.toString() + _loc1_;
               this.§%U§.load(new URLRequest(this.§=y§));
            }
            else
            {
               this.§',§ = new Loader();
               this.§',§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§<!T§);
               this.§',§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§8!=§);
               this.§',§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§>u§);
               this.§=y§ = this.§+!B§ + this.§1B§ + this.§ J§.@swf.toString() + _loc1_;
               this.§',§.load(new URLRequest(this.§=y§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §8!=§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§=y§;
         this.§0?§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§=y§,§?;§.§^v§);
      }
      
      private function §4!%§(param1:Event) : void
      {
         this.§7I§.push(this.§%U§.data);
         if(this.§>V§ != null)
         {
            this.§>V§(this.§%U§.data);
         }
         if(this.§5!`§)
         {
            this.§5!`§.§'#§(this.§%U§.data);
         }
         this.§0?§();
         ++this.§2T§;
         this.§^A§();
      }
      
      private function §>u§(param1:ProgressEvent) : void
      {
         this.§[%§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §<!T§(param1:Event) : void
      {
         this.§0?§();
         ++this.§2T§;
         this.§^A§();
      }
      
      private function §0?§() : void
      {
         if(this.§',§)
         {
            this.§',§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§<!T§);
            this.§',§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!=§);
            this.§',§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§<!T§);
            this.§',§ = null;
         }
         if(this.§%U§)
         {
            this.§%U§.removeEventListener(Event.COMPLETE,this.§4!%§);
            this.§%U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!=§);
            this.§%U§.removeEventListener(ProgressEvent.PROGRESS,this.§>u§);
            this.§%U§ = null;
         }
         this.§ J§ = null;
      }
      
      private function §+1§() : void
      {
         this.§[%§ = 0;
         if(this.§ w§ != null)
         {
            this.§ w§.call();
            this.§ w§ = null;
         }
      }
      
      public function § _§() : void
      {
         this.§[%§ = 0;
         this.§#&§ = false;
         this.§`!V§ = 0;
         if(this.§2?§)
         {
            this.§2?§ = null;
         }
         this.§ w§ = null;
         this.§0?§();
      }
      
      public function §#!0§() : Number
      {
         if(!this.§<p§())
         {
            §4,§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§#&§ || !this.§2?§ || !this.§<p§())
         {
            §4,§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§2T§ == this.§`!V§)
         {
            if(this.§5!`§ && this.§`!V§ > 0)
            {
               if(this.§5!`§.§-!4§)
               {
                  return 1;
               }
               return (this.§2T§ + this.§[%§ - 0.5) / this.§`!V§;
            }
            return 1;
         }
         return this.§2T§ / this.§`!V§;
      }
   }
}
