package §%!F§
{
   import §;!j§.§=!8§;
   import §=<§.§1+§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §5!j§
   {
      
      private static var §?e§:§5!j§;
       
      
      private var §97§:Vector.<XML>;
      
      private var §=Q§:Boolean = false;
      
      private var §%k§:int;
      
      private var §3!i§:int;
      
      private var § !d§:Function;
      
      private var §]!4§:Function;
      
      private var §;!0§:Loader;
      
      private var §0f§:URLLoader;
      
      private var §=!B§:XML;
      
      private var §7!%§:String = "";
      
      private var §>"§:int = 0;
      
      private var §>q§:Vector.<String>;
      
      private var §?!d§:String = "external_assets/LoadTest.swf";
      
      private var § !E§:Boolean = false;
      
      private var §"!!§:Array;
      
      private var §,!W§:String;
      
      private var §8G§:String;
      
      private var §&7§:Number = 0;
      
      private var §!!"§:String = "";
      
      private var §4! §:§4G§;
      
      public function §5!j§()
      {
         this.§"!!§ = [];
         super();
      }
      
      public static function get §'!S§() : §5!j§
      {
         if(!§?e§)
         {
            §?e§ = new §5!j§();
         }
         return §?e§;
      }
      
      public static function §"!+§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §@!1§() : void
      {
         this.§"!!§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§4G§, param5:Function = null) : void
      {
         this.§,!W§ = param2;
         this.§8G§ = param3;
         this.§ !E§ = true;
         this.§=Q§ = false;
         this.§4! § = param4;
         this.§ !d§ = param5;
      }
      
      private function §7p§() : void
      {
         this.§ !E§ = true;
         this.§=Q§ = false;
      }
      
      public function §`9§() : Boolean
      {
         return this.§ !E§;
      }
      
      public function §!7§() : Boolean
      {
         if(this.§=Q§ || !this.§`9§())
         {
            return false;
         }
         this.§97§ = new Vector.<XML>();
         this.§%k§ = 0;
         return true;
      }
      
      public function §7!g§(param1:XML) : void
      {
         if(this.§=Q§ && this.§`9§())
         {
            return;
         }
         this.§97§.push(param1);
         ++this.§%k§;
      }
      
      public function §"F§(param1:Function = null) : void
      {
         if(this.§=Q§ && this.§`9§())
         {
            return;
         }
         this.§]!4§ = param1;
         this.§%k§ = this.§97§.length;
         this.§=Q§ = true;
         this.§>O§();
      }
      
      private function §]x§() : Boolean
      {
         if(this.§4! § && !this.§4! §.§!!D§)
         {
            this.§4! §.removeEventListener(Event.COMPLETE,this.§1k§);
            this.§4! §.addEventListener(Event.COMPLETE,this.§1k§);
            return true;
         }
         return false;
      }
      
      private function §1k§(param1:Event) : void
      {
         this.§4! §.removeEventListener(Event.COMPLETE,this.§1k§);
         this.§>O§();
      }
      
      private function §>O§() : void
      {
         if(this.§97§.length > 0)
         {
            this.§,g§();
         }
         else if(this.§^!&§() >= 1)
         {
            this.§%p§();
         }
      }
      
      private function §,g§() : void
      {
         var _loc1_:String = null;
         if(this.§=Q§ && this.§`9§())
         {
            if(this.§]x§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§8G§ != null && this.§8G§.length > 0)
            {
               _loc1_ = "?version=" + this.§8G§;
            }
            this.§&7§ = 0;
            this.§=!B§ = this.§97§.shift();
            if(this.§=!B§.localName() == "pack")
            {
               this.§0f§ = new URLLoader();
               this.§0f§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§0f§.addEventListener(Event.COMPLETE,this.§=!I§);
               this.§0f§.addEventListener(IOErrorEvent.IO_ERROR,this.§%m§);
               this.§0f§.addEventListener(ProgressEvent.PROGRESS,this.§`>§);
               this.§!!"§ = this.§,!W§ + this.§=!B§.@url.toString() + _loc1_;
               this.§0f§.load(new URLRequest(this.§!!"§));
            }
            else
            {
               this.§;!0§ = new Loader();
               this.§;!0§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§<!D§);
               this.§;!0§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%m§);
               this.§;!0§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§`>§);
               this.§!!"§ = this.§,!W§ + this.§7!%§ + this.§=!B§.@swf.toString() + _loc1_;
               this.§;!0§.load(new URLRequest(this.§!!"§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §%m§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§!!"§;
         this.§0s§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§!!"§,§=!8§.§?M§);
      }
      
      private function §=!I§(param1:Event) : void
      {
         this.§"!!§.push(this.§0f§.data);
         if(this.§ !d§ != null)
         {
            this.§ !d§(this.§0f§.data);
         }
         if(this.§4! §)
         {
            this.§4! §.§,E§(this.§0f§.data);
         }
         this.§0s§();
         ++this.§3!i§;
         this.§>O§();
      }
      
      private function §`>§(param1:ProgressEvent) : void
      {
         this.§&7§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §<!D§(param1:Event) : void
      {
         this.§0s§();
         ++this.§3!i§;
         this.§>O§();
      }
      
      private function §0s§() : void
      {
         if(this.§;!0§)
         {
            this.§;!0§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§<!D§);
            this.§;!0§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%m§);
            this.§;!0§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§<!D§);
            this.§;!0§ = null;
         }
         if(this.§0f§)
         {
            this.§0f§.removeEventListener(Event.COMPLETE,this.§=!I§);
            this.§0f§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%m§);
            this.§0f§.removeEventListener(ProgressEvent.PROGRESS,this.§`>§);
            this.§0f§ = null;
         }
         this.§=!B§ = null;
      }
      
      private function §%p§() : void
      {
         this.§&7§ = 0;
         if(this.§]!4§ != null)
         {
            this.§]!4§.call();
            this.§]!4§ = null;
         }
      }
      
      public function §9V§() : void
      {
         this.§&7§ = 0;
         this.§=Q§ = false;
         this.§%k§ = 0;
         if(this.§97§)
         {
            this.§97§ = null;
         }
         this.§]!4§ = null;
         this.§0s§();
      }
      
      public function §^!&§() : Number
      {
         if(!this.§`9§())
         {
            §1+§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§=Q§ || !this.§97§ || !this.§`9§())
         {
            §1+§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§3!i§ == this.§%k§)
         {
            if(this.§4! § && this.§%k§ > 0)
            {
               if(this.§4! §.§!!D§)
               {
                  return 1;
               }
               return (this.§3!i§ + this.§&7§ - 0.5) / this.§%k§;
            }
            return 1;
         }
         return this.§3!i§ / this.§%k§;
      }
   }
}
