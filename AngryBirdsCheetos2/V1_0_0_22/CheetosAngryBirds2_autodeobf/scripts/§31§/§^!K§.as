package §31§
{
   import §!V§.§%!#§;
   import §>^§.§!6§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   
   public class §^!K§
   {
      
      private static var §@f§:§^!K§;
       
      
      private var §9+§:Vector.<XML>;
      
      private var §0-§:Boolean = false;
      
      private var §#!i§:int;
      
      private var §%q§:int;
      
      private var §#4§:Function;
      
      private var §91§:Function;
      
      private var §]W§:Loader;
      
      private var §4!8§:URLLoader;
      
      private var § e§:XML;
      
      private var §[G§:String = "";
      
      private var §?'§:int = 0;
      
      private var §[S§:Vector.<String>;
      
      private var §^!6§:String = "external_assets/LoadTest.swf";
      
      private var §-k§:Boolean = false;
      
      private var §#k§:Array;
      
      private var §+t§:String;
      
      private var §,G§:String;
      
      private var §1t§:Dictionary;
      
      private var §0§:String = "";
      
      private var §?!d§:Number = 0;
      
      private var §!B§:String = "";
      
      private var §-N§:§2[§;
      
      private var §[!<§:Object;
      
      public function §^!K§()
      {
         this.§#k§ = [];
         this.§1t§ = new Dictionary();
         super();
      }
      
      public static function get §'I§() : §^!K§
      {
         if(!§@f§)
         {
            §@f§ = new §^!K§();
         }
         return §@f§;
      }
      
      public static function §%!H§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §,!_§() : void
      {
         this.§#k§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§2[§, param5:Function = null, param6:String = "") : void
      {
         this.§+t§ = param2;
         this.§,G§ = param3;
         this.§-k§ = true;
         this.§0-§ = false;
         this.§-N§ = param4;
         this.§#4§ = param5;
         if(param6 != null && param6 != "")
         {
            this.§[!<§ = JSON.parse(param6);
         }
      }
      
      private function §'0§() : void
      {
         this.§-k§ = true;
         this.§0-§ = false;
      }
      
      public function §-!U§() : Boolean
      {
         return this.§-k§;
      }
      
      public function §?!+§() : Boolean
      {
         if(this.§0-§ || !this.§-!U§())
         {
            return false;
         }
         this.§9+§ = new Vector.<XML>();
         this.§#!i§ = 0;
         return true;
      }
      
      public function § S§(param1:XML) : void
      {
         if(this.§0-§ && this.§-!U§())
         {
            return;
         }
         this.§9+§.push(param1);
         ++this.§#!i§;
      }
      
      public function §5!S§(param1:Function = null) : void
      {
         if(this.§0-§ && this.§-!U§())
         {
            return;
         }
         this.§91§ = param1;
         this.§#!i§ = this.§9+§.length;
         this.§0-§ = true;
         this.§@!3§();
      }
      
      private function §;!6§() : Boolean
      {
         if(this.§-N§ && !this.§-N§.§&4§)
         {
            this.§-N§.removeEventListener(Event.COMPLETE,this.§[!B§);
            this.§-N§.addEventListener(Event.COMPLETE,this.§[!B§);
            return true;
         }
         return false;
      }
      
      private function §[!B§(param1:Event) : void
      {
         this.§-N§.removeEventListener(Event.COMPLETE,this.§[!B§);
         this.§@!3§();
      }
      
      private function §@!3§() : void
      {
         if(this.§9+§.length > 0)
         {
            this.§?!;§();
         }
         else if(this.§+!O§() >= 1)
         {
            this.§>!9§();
         }
      }
      
      private function §?!;§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§0-§ && this.§-!U§())
         {
            if(this.§;!6§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§,G§ != null && this.§,G§.length > 0)
            {
               _loc1_ = "?version=" + this.§,G§;
            }
            this.§?!d§ = 0;
            this.§ e§ = this.§9+§.shift();
            if(this.§ e§.localName() == "pack")
            {
               _loc2_ = this.§+t§ + this.§ e§.@url.toString();
               if(this.§[!<§)
               {
                  _loc2_ = this.§[!<§[_loc2_];
               }
               this.§4!8§ = new URLLoader();
               this.§4!8§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§4!8§.addEventListener(Event.COMPLETE,this.§^w§);
               this.§4!8§.addEventListener(IOErrorEvent.IO_ERROR,this.§6S§);
               this.§4!8§.addEventListener(ProgressEvent.PROGRESS,this.§97§);
               this.§!B§ = _loc2_ + _loc1_;
               this.§4!8§.load(new URLRequest(this.§!B§));
            }
            else if(this.§ e§.localName() == "xml")
            {
               this.§0§ = this.§ e§.@name;
               this.§4!8§ = new URLLoader();
               this.§4!8§.addEventListener(Event.COMPLETE,this.§1h§);
               this.§4!8§.addEventListener(IOErrorEvent.IO_ERROR,this.§6S§);
               this.§4!8§.addEventListener(ProgressEvent.PROGRESS,this.§97§);
               this.§!B§ = this.§+t§ + this.§ e§.@url.toString() + _loc1_;
               this.§4!8§.load(new URLRequest(this.§!B§));
            }
            else
            {
               _loc3_ = this.§+t§ + this.§[G§ + this.§ e§.@swf.toString();
               if(this.§[!<§)
               {
                  _loc3_ = this.§[!<§[_loc3_];
               }
               this.§]W§ = new Loader();
               this.§]W§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§^Z§);
               this.§]W§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§6S§);
               this.§]W§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§97§);
               this.§!B§ = _loc3_ + _loc1_;
               this.§]W§.load(new URLRequest(this.§!B§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §6S§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§!B§;
         this.§5!f§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§!B§,§%!#§.§1#§);
      }
      
      private function §1h§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§4!8§.data);
         this.§1t§[this.§0§] = _loc2_;
         this.§5!f§();
         ++this.§%q§;
         this.§@!3§();
      }
      
      public function §7y§(param1:String) : XML
      {
         return this.§1t§[param1];
      }
      
      private function §^w§(param1:Event) : void
      {
         this.§#k§.push(this.§4!8§.data);
         if(this.§#4§ != null)
         {
            this.§#4§(this.§4!8§.data);
         }
         if(this.§-N§)
         {
            this.§-N§.§^R§(this.§4!8§.data);
         }
         this.§5!f§();
         ++this.§%q§;
         this.§@!3§();
      }
      
      private function §97§(param1:ProgressEvent) : void
      {
         this.§?!d§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §^Z§(param1:Event) : void
      {
         this.§5!f§();
         ++this.§%q§;
         this.§@!3§();
      }
      
      private function §5!f§() : void
      {
         if(this.§]W§)
         {
            this.§]W§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^Z§);
            this.§]W§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6S§);
            this.§]W§.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.§97§);
            this.§]W§ = null;
         }
         if(this.§4!8§)
         {
            this.§4!8§.removeEventListener(Event.COMPLETE,this.§^w§);
            this.§4!8§.removeEventListener(Event.COMPLETE,this.§1h§);
            this.§4!8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6S§);
            this.§4!8§.removeEventListener(ProgressEvent.PROGRESS,this.§97§);
            this.§4!8§ = null;
         }
         this.§ e§ = null;
      }
      
      private function §>!9§() : void
      {
         this.§?!d§ = 0;
         if(this.§91§ != null)
         {
            this.§91§.call();
            this.§91§ = null;
         }
      }
      
      public function §`n§() : void
      {
         this.§?!d§ = 0;
         this.§0-§ = false;
         this.§#!i§ = 0;
         if(this.§9+§)
         {
            this.§9+§ = null;
         }
         this.§91§ = null;
         this.§5!f§();
      }
      
      public function §+!O§() : Number
      {
         if(!this.§-!U§())
         {
            §!6§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§0-§ || !this.§9+§ || !this.§-!U§())
         {
            §!6§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§%q§ == this.§#!i§)
         {
            if(this.§-N§ && this.§#!i§ > 0)
            {
               if(this.§-N§.§&4§)
               {
                  return 1;
               }
               return (this.§%q§ + this.§?!d§ - 0.5) / this.§#!i§;
            }
            return 1;
         }
         return this.§%q§ / this.§#!i§;
      }
   }
}
