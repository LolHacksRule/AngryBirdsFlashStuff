package §-!3§
{
   import §3V§.§2M§;
   import §@!;§.§!!=§;
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
   
   public class §!S§
   {
      
      private static var §1w§:§!S§;
       
      
      private var §'!;§:Vector.<XML>;
      
      private var §1Z§:Boolean = false;
      
      private var §2-§:int;
      
      private var §0n§:int;
      
      private var §=-§:Function;
      
      private var §1=§:Function;
      
      private var §false§:Loader;
      
      private var §&d§:URLLoader;
      
      private var § try§:XML;
      
      private var §7c§:int = 0;
      
      private var §[!"§:Vector.<String>;
      
      private var §7"§:String = "external_assets/LoadTest.swf";
      
      private var §1!7§:Boolean = false;
      
      private var §",§:Array;
      
      private var §<!,§:String;
      
      private var §`z§:String;
      
      private var §1d§:Dictionary;
      
      private var §,!J§:String = "";
      
      private var §?$§:Number = 0;
      
      private var §5p§:String = "";
      
      private var §4Z§:String = "";
      
      private var §?!I§:§2!&§;
      
      private var §+o§:Object;
      
      public function §!S§()
      {
         this.§",§ = [];
         this.§1d§ = new Dictionary();
         super();
      }
      
      public static function get §5+§() : §!S§
      {
         if(!§1w§)
         {
            §1w§ = new §!S§();
         }
         return §1w§;
      }
      
      public static function §2'§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §3]§() : void
      {
         this.§",§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§2!&§, param5:Function = null, param6:String = "", param7:String = "") : void
      {
         this.§<!,§ = param2;
         this.§`z§ = param3;
         this.§1!7§ = true;
         this.§1Z§ = false;
         this.§?!I§ = param4;
         this.§=-§ = param5;
         if(this.§4Z§ == "")
         {
            this.§4Z§ = param7;
         }
         if(param6 != null && param6 != "")
         {
            this.§+o§ = JSON.parse(param6);
         }
      }
      
      private function §=!<§() : void
      {
         this.§1!7§ = true;
         this.§1Z§ = false;
      }
      
      public function §8!C§() : Boolean
      {
         return this.§1!7§;
      }
      
      public function §1!N§() : Boolean
      {
         if(this.§1Z§ || !this.§8!C§())
         {
            return false;
         }
         this.§'!;§ = new Vector.<XML>();
         this.§2-§ = 0;
         return true;
      }
      
      public function §5!1§(param1:XML) : void
      {
         if(this.§1Z§ && this.§8!C§())
         {
            return;
         }
         this.§'!;§.push(param1);
         ++this.§2-§;
      }
      
      public function §'+§(param1:Function = null) : void
      {
         if(this.§1Z§ && this.§8!C§())
         {
            return;
         }
         this.§1=§ = param1;
         this.§2-§ = this.§'!;§.length;
         this.§1Z§ = true;
         this.§%H§();
      }
      
      private function §2m§() : Boolean
      {
         if(this.§?!I§ && !this.§?!I§.§9a§)
         {
            this.§?!I§.removeEventListener(Event.COMPLETE,this.§&!7§);
            this.§?!I§.addEventListener(Event.COMPLETE,this.§&!7§);
            return true;
         }
         return false;
      }
      
      private function §&!7§(param1:Event) : void
      {
         this.§?!I§.removeEventListener(Event.COMPLETE,this.§&!7§);
         this.§%H§();
      }
      
      private function §%H§() : void
      {
         if(this.§'!;§.length > 0)
         {
            this.§6!G§();
         }
         else if(this.§#K§() >= 1)
         {
            this.§>P§();
         }
      }
      
      private function §6!G§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§1Z§ && this.§8!C§())
         {
            if(this.§2m§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§`z§ != null && this.§`z§.length > 0)
            {
               _loc1_ = "?version=" + this.§`z§;
            }
            this.§?$§ = 0;
            if(this.§<!,§ == "/flash/")
            {
               this.§<!,§ = "";
            }
            this.§ try§ = this.§'!;§.shift();
            if(this.§ try§.localName() == "pack")
            {
               _loc2_ = this.§4Z§ + this.§ try§.@url.toString();
               if(this.§+o§)
               {
                  _loc2_ = this.§+o§[_loc2_];
               }
               this.§&d§ = new URLLoader();
               this.§&d§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§&d§.addEventListener(Event.COMPLETE,this.§9!9§);
               this.§&d§.addEventListener(IOErrorEvent.IO_ERROR,this.§1^§);
               this.§&d§.addEventListener(ProgressEvent.PROGRESS,this.§7G§);
               this.§5p§ = this.§<!,§ + _loc2_ + _loc1_;
               this.§&d§.load(new URLRequest(this.§5p§));
            }
            else if(this.§ try§.localName() == "xml")
            {
               this.§,!J§ = this.§ try§.@name;
               this.§&d§ = new URLLoader();
               this.§&d§.addEventListener(Event.COMPLETE,this.§]v§);
               this.§&d§.addEventListener(IOErrorEvent.IO_ERROR,this.§1^§);
               this.§&d§.addEventListener(ProgressEvent.PROGRESS,this.§7G§);
               this.§5p§ = this.§<!,§ + this.§ try§.@url.toString() + _loc1_;
               this.§&d§.load(new URLRequest(this.§5p§));
            }
            else
            {
               _loc3_ = this.§4Z§ + this.§ try§.@swf.toString();
               if(this.§+o§)
               {
                  _loc3_ = this.§+o§[_loc3_];
               }
               this.§false§ = new Loader();
               this.§false§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§+M§);
               this.§false§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§1^§);
               this.§false§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§7G§);
               this.§5p§ = this.§<!,§ + _loc3_ + _loc1_;
               this.§false§.load(new URLRequest(this.§5p§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §1^§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§5p§;
         this.§7s§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§5p§,§2M§.§%!#§);
      }
      
      private function §]v§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§&d§.data);
         this.§1d§[this.§,!J§] = _loc2_;
         this.§7s§();
         ++this.§0n§;
         this.§%H§();
      }
      
      public function §-'§(param1:String) : XML
      {
         return this.§1d§[param1];
      }
      
      private function §9!9§(param1:Event) : void
      {
         this.§",§.push(this.§&d§.data);
         if(this.§=-§ != null)
         {
            this.§=-§(this.§&d§.data);
         }
         if(this.§?!I§)
         {
            this.§?!I§.§-!'§(this.§&d§.data);
         }
         this.§7s§();
         ++this.§0n§;
         this.§%H§();
      }
      
      private function §7G§(param1:ProgressEvent) : void
      {
         this.§?$§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §+M§(param1:Event) : void
      {
         this.§7s§();
         ++this.§0n§;
         this.§%H§();
      }
      
      private function §7s§() : void
      {
         if(this.§false§)
         {
            this.§false§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+M§);
            this.§false§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§1^§);
            this.§false§.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.§7G§);
            this.§false§ = null;
         }
         if(this.§&d§)
         {
            this.§&d§.removeEventListener(Event.COMPLETE,this.§9!9§);
            this.§&d§.removeEventListener(Event.COMPLETE,this.§]v§);
            this.§&d§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1^§);
            this.§&d§.removeEventListener(ProgressEvent.PROGRESS,this.§7G§);
            this.§&d§ = null;
         }
         this.§ try§ = null;
      }
      
      private function §>P§() : void
      {
         this.§?$§ = 0;
         if(this.§1=§ != null)
         {
            this.§1=§.call();
            this.§1=§ = null;
         }
      }
      
      public function §?#§() : void
      {
         this.§?$§ = 0;
         this.§1Z§ = false;
         this.§2-§ = 0;
         if(this.§'!;§)
         {
            this.§'!;§ = null;
         }
         this.§1=§ = null;
         this.§7s§();
      }
      
      public function §#K§() : Number
      {
         if(!this.§8!C§())
         {
            §!!=§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§1Z§ || !this.§'!;§ || !this.§8!C§())
         {
            §!!=§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§0n§ == this.§2-§)
         {
            if(this.§?!I§ && this.§2-§ > 0)
            {
               if(this.§?!I§.§9a§)
               {
                  return 1;
               }
               return (this.§0n§ + this.§?$§ - 0.5) / this.§2-§;
            }
            return 1;
         }
         return this.§0n§ / this.§2-§;
      }
   }
}
