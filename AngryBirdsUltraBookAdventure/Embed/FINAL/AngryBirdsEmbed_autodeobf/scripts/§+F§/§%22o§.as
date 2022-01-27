package §+F§
{
   import §+!B§.§]!8§;
   import §3a§.§7!+§;
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
   
   public class §"o§
   {
      
      private static var §%I§:§"o§;
       
      
      private var §3?§:Vector.<XML>;
      
      private var §[!G§:Boolean = false;
      
      private var §<!5§:int;
      
      private var §#@§:int;
      
      private var §9"§:Function;
      
      private var §^K§:Function;
      
      private var §;$§:Loader;
      
      private var §64§:URLLoader;
      
      private var §@>§:XML;
      
      private var §,5§:String = "";
      
      private var §,X§:int = 0;
      
      private var §`L§:Vector.<String>;
      
      private var §4-§:String = "external_assets/LoadTest.swf";
      
      private var §%0§:Boolean = false;
      
      private var §^S§:Array;
      
      private var §6!-§:String;
      
      private var §1p§:String;
      
      private var §[N§:Dictionary;
      
      private var §,!1§:String = "";
      
      private var §2!C§:Number = 0;
      
      private var §-O§:String = "";
      
      private var §9o§:§9w§;
      
      private var §>[§:Object;
      
      public function §"o§()
      {
         this.§^S§ = [];
         this.§[N§ = new Dictionary();
         super();
      }
      
      public static function get §@6§() : §"o§
      {
         if(!§%I§)
         {
            §%I§ = new §"o§();
         }
         return §%I§;
      }
      
      public static function § else§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §3l§() : void
      {
         this.§^S§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§9w§, param5:Function = null, param6:String = "") : void
      {
         this.§6!-§ = param2;
         this.§1p§ = param3;
         this.§%0§ = true;
         this.§[!G§ = false;
         this.§9o§ = param4;
         this.§9"§ = param5;
         if(param6 != null && param6 != "")
         {
            this.§>[§ = JSON.parse(param6);
         }
      }
      
      private function §,0§() : void
      {
         this.§%0§ = true;
         this.§[!G§ = false;
      }
      
      public function §38§() : Boolean
      {
         return this.§%0§;
      }
      
      public function §6!§() : Boolean
      {
         if(this.§[!G§ || !this.§38§())
         {
            return false;
         }
         this.§3?§ = new Vector.<XML>();
         this.§<!5§ = 0;
         return true;
      }
      
      public function §]<§(param1:XML) : void
      {
         if(this.§[!G§ && this.§38§())
         {
            return;
         }
         this.§3?§.push(param1);
         ++this.§<!5§;
      }
      
      public function §^]§(param1:Function = null) : void
      {
         if(this.§[!G§ && this.§38§())
         {
            return;
         }
         this.§^K§ = param1;
         this.§<!5§ = this.§3?§.length;
         this.§[!G§ = true;
         this.§25§();
      }
      
      private function §]>§() : Boolean
      {
         if(this.§9o§ && !this.§9o§.§1!E§)
         {
            this.§9o§.removeEventListener(Event.COMPLETE,this.§ `§);
            this.§9o§.addEventListener(Event.COMPLETE,this.§ `§);
            return true;
         }
         return false;
      }
      
      private function § `§(param1:Event) : void
      {
         this.§9o§.removeEventListener(Event.COMPLETE,this.§ `§);
         this.§25§();
      }
      
      private function §25§() : void
      {
         if(this.§3?§.length > 0)
         {
            this.§5g§();
         }
         else if(this.§;W§() >= 1)
         {
            this.§<H§();
         }
      }
      
      private function §5g§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§[!G§ && this.§38§())
         {
            if(this.§]>§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§1p§ != null && this.§1p§.length > 0)
            {
               _loc1_ = "?version=" + this.§1p§;
            }
            this.§2!C§ = 0;
            this.§@>§ = this.§3?§.shift();
            if(this.§@>§.localName() == "pack")
            {
               _loc2_ = this.§6!-§ + this.§@>§.@url.toString();
               if(this.§>[§)
               {
                  _loc2_ = this.§>[§[_loc2_];
               }
               this.§64§ = new URLLoader();
               this.§64§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§64§.addEventListener(Event.COMPLETE,this.§`&§);
               this.§64§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
               this.§64§.addEventListener(ProgressEvent.PROGRESS,this.§0D§);
               this.§-O§ = _loc2_ + _loc1_;
               this.§64§.load(new URLRequest(this.§-O§));
            }
            else if(this.§@>§.localName() == "xml")
            {
               this.§,!1§ = this.§@>§.@name;
               this.§64§ = new URLLoader();
               this.§64§.addEventListener(Event.COMPLETE,this.§1]§);
               this.§64§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
               this.§64§.addEventListener(ProgressEvent.PROGRESS,this.§0D§);
               this.§-O§ = this.§6!-§ + this.§@>§.@url.toString() + _loc1_;
               this.§64§.load(new URLRequest(this.§-O§));
            }
            else
            {
               _loc3_ = this.§6!-§ + this.§,5§ + this.§@>§.@swf.toString();
               if(this.§>[§)
               {
                  _loc3_ = this.§>[§[_loc3_];
               }
               this.§;$§ = new Loader();
               this.§;$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§^!1§);
               this.§;$§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
               this.§;$§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§0D§);
               this.§-O§ = _loc3_ + _loc1_;
               this.§;$§.load(new URLRequest(this.§-O§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §#!+§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§-O§;
         this.§?!;§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§-O§,§]!8§.§>D§);
      }
      
      private function §1]§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§64§.data);
         this.§[N§[this.§,!1§] = _loc2_;
         this.§?!;§();
         ++this.§#@§;
         this.§25§();
      }
      
      public function §1i§(param1:String) : XML
      {
         return this.§[N§[param1];
      }
      
      private function §`&§(param1:Event) : void
      {
         this.§^S§.push(this.§64§.data);
         if(this.§9"§ != null)
         {
            this.§9"§(this.§64§.data);
         }
         if(this.§9o§)
         {
            this.§9o§.§+X§(this.§64§.data);
         }
         this.§?!;§();
         ++this.§#@§;
         this.§25§();
      }
      
      private function §0D§(param1:ProgressEvent) : void
      {
         this.§2!C§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §^!1§(param1:Event) : void
      {
         this.§?!;§();
         ++this.§#@§;
         this.§25§();
      }
      
      private function §?!;§() : void
      {
         if(this.§;$§)
         {
            this.§;$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^!1§);
            this.§;$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
            this.§;$§.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.§0D§);
            this.§;$§ = null;
         }
         if(this.§64§)
         {
            this.§64§.removeEventListener(Event.COMPLETE,this.§`&§);
            this.§64§.removeEventListener(Event.COMPLETE,this.§1]§);
            this.§64§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!+§);
            this.§64§.removeEventListener(ProgressEvent.PROGRESS,this.§0D§);
            this.§64§ = null;
         }
         this.§@>§ = null;
      }
      
      private function §<H§() : void
      {
         this.§2!C§ = 0;
         if(this.§^K§ != null)
         {
            this.§^K§.call();
            this.§^K§ = null;
         }
      }
      
      public function §1!8§() : void
      {
         this.§2!C§ = 0;
         this.§[!G§ = false;
         this.§<!5§ = 0;
         if(this.§3?§)
         {
            this.§3?§ = null;
         }
         this.§^K§ = null;
         this.§?!;§();
      }
      
      public function §;W§() : Number
      {
         if(!this.§38§())
         {
            §7!+§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§[!G§ || !this.§3?§ || !this.§38§())
         {
            §7!+§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§#@§ == this.§<!5§)
         {
            if(this.§9o§ && this.§<!5§ > 0)
            {
               if(this.§9o§.§1!E§)
               {
                  return 1;
               }
               return (this.§#@§ + this.§2!C§ - 0.5) / this.§<!5§;
            }
            return 1;
         }
         return this.§#@§ / this.§<!5§;
      }
   }
}
