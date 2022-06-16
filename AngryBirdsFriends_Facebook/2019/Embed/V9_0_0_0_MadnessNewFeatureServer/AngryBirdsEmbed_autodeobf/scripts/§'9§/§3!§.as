package §'9§
{
   import §'6§.§?!L§;
   import §3y§.§5!E§;
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
   
   public class §3!§
   {
      
      private static var §-K§:§3!§;
       
      
      private var §8!;§:Vector.<XML>;
      
      private var §[!!§:Boolean = false;
      
      private var §>N§:int;
      
      private var §@f§:int;
      
      private var §&O§:Function;
      
      private var §!q§:Function;
      
      private var §>!8§:Loader;
      
      private var §>V§:URLLoader;
      
      private var §60§:XML;
      
      private var §?;§:int = 0;
      
      private var §[G§:Vector.<String>;
      
      private var § O§:String = "external_assets/LoadTest.swf";
      
      private var §-z§:Boolean = false;
      
      private var §"L§:Array;
      
      private var §06§:String;
      
      private var §8-§:String;
      
      private var §;!0§:Dictionary;
      
      private var §!J§:String = "";
      
      private var §#b§:Number = 0;
      
      private var §9T§:String = "";
      
      private var §!C§:String = "";
      
      private var §8!B§:§,J§;
      
      private var §?J§:Object;
      
      public function §3!§()
      {
         this.§"L§ = [];
         this.§;!0§ = new Dictionary();
         super();
      }
      
      public static function get §;R§() : §3!§
      {
         if(!§-K§)
         {
            §-K§ = new §3!§();
         }
         return §-K§;
      }
      
      public static function §6!O§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §07§() : void
      {
         this.§"L§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§,J§, param5:Function = null, param6:String = "", param7:String = "") : void
      {
         this.§06§ = param2;
         this.§8-§ = param3;
         this.§-z§ = true;
         this.§[!!§ = false;
         this.§8!B§ = param4;
         this.§&O§ = param5;
         if(this.§!C§ == "")
         {
            this.§!C§ = param7;
         }
         if(param6 != null && param6 != "")
         {
            this.§?J§ = JSON.parse(param6);
         }
      }
      
      private function §8#§() : void
      {
         this.§-z§ = true;
         this.§[!!§ = false;
      }
      
      public function final() : Boolean
      {
         return this.§-z§;
      }
      
      public function §%T§() : Boolean
      {
         if(this.§[!!§ || !this.final())
         {
            return false;
         }
         this.§8!;§ = new Vector.<XML>();
         this.§>N§ = 0;
         return true;
      }
      
      public function §1b§(param1:XML) : void
      {
         if(this.§[!!§ && this.final())
         {
            return;
         }
         this.§8!;§.push(param1);
         ++this.§>N§;
      }
      
      public function §^!K§(param1:Function = null) : void
      {
         if(this.§[!!§ && this.final())
         {
            return;
         }
         this.§!q§ = param1;
         this.§>N§ = this.§8!;§.length;
         this.§[!!§ = true;
         this.§&!>§();
      }
      
      private function §%,§() : Boolean
      {
         if(this.§8!B§ && !this.§8!B§.§?'§)
         {
            this.§8!B§.removeEventListener(Event.COMPLETE,this.§&!O§);
            this.§8!B§.addEventListener(Event.COMPLETE,this.§&!O§);
            return true;
         }
         return false;
      }
      
      private function §&!O§(param1:Event) : void
      {
         this.§8!B§.removeEventListener(Event.COMPLETE,this.§&!O§);
         this.§&!>§();
      }
      
      private function §&!>§() : void
      {
         if(this.§8!;§.length > 0)
         {
            this.§^7§();
         }
         else if(this.§8w§() >= 1)
         {
            this.§]J§();
         }
      }
      
      private function §^7§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§[!!§ && this.final())
         {
            if(this.§%,§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§8-§ != null && this.§8-§.length > 0)
            {
               _loc1_ = "?version=" + this.§8-§;
            }
            this.§#b§ = 0;
            if(this.§06§ == "/flash/")
            {
               this.§06§ = "";
            }
            this.§60§ = this.§8!;§.shift();
            if(this.§60§.localName() == "pack")
            {
               _loc2_ = this.§!C§ + this.§60§.@url.toString();
               if(this.§?J§)
               {
                  _loc2_ = this.§?J§[_loc2_];
               }
               this.§>V§ = new URLLoader();
               this.§>V§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§>V§.addEventListener(Event.COMPLETE,this.§&A§);
               this.§>V§.addEventListener(IOErrorEvent.IO_ERROR,this.§1?§);
               this.§>V§.addEventListener(ProgressEvent.PROGRESS,this.§6!L§);
               this.§9T§ = this.§06§ + _loc2_ + _loc1_;
               this.§>V§.load(new URLRequest(this.§9T§));
            }
            else if(this.§60§.localName() == "xml")
            {
               this.§!J§ = this.§60§.@name;
               this.§>V§ = new URLLoader();
               this.§>V§.addEventListener(Event.COMPLETE,this.§1q§);
               this.§>V§.addEventListener(IOErrorEvent.IO_ERROR,this.§1?§);
               this.§>V§.addEventListener(ProgressEvent.PROGRESS,this.§6!L§);
               this.§9T§ = this.§06§ + this.§60§.@url.toString() + _loc1_;
               this.§>V§.load(new URLRequest(this.§9T§));
            }
            else
            {
               _loc3_ = this.§!C§ + this.§60§.@swf.toString();
               if(this.§?J§)
               {
                  _loc3_ = this.§?J§[_loc3_];
               }
               this.§>!8§ = new Loader();
               this.§>!8§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§"!'§);
               this.§>!8§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§1?§);
               this.§>!8§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§6!L§);
               this.§9T§ = this.§06§ + _loc3_ + _loc1_;
               this.§>!8§.load(new URLRequest(this.§9T§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §1?§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§9T§;
         this.§4!D§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§9T§,§5!E§.§8g§);
      }
      
      private function §1q§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§>V§.data);
         this.§;!0§[this.§!J§] = _loc2_;
         this.§4!D§();
         ++this.§@f§;
         this.§&!>§();
      }
      
      public function §3!"§(param1:String) : XML
      {
         return this.§;!0§[param1];
      }
      
      private function §&A§(param1:Event) : void
      {
         this.§"L§.push(this.§>V§.data);
         if(this.§&O§ != null)
         {
            this.§&O§(this.§>V§.data);
         }
         if(this.§8!B§)
         {
            this.§8!B§.§null §(this.§>V§.data);
         }
         this.§4!D§();
         ++this.§@f§;
         this.§&!>§();
      }
      
      private function §6!L§(param1:ProgressEvent) : void
      {
         this.§#b§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §"!'§(param1:Event) : void
      {
         this.§4!D§();
         ++this.§@f§;
         this.§&!>§();
      }
      
      private function §4!D§() : void
      {
         if(this.§>!8§)
         {
            this.§>!8§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§"!'§);
            this.§>!8§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§1?§);
            this.§>!8§.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.§6!L§);
            this.§>!8§ = null;
         }
         if(this.§>V§)
         {
            this.§>V§.removeEventListener(Event.COMPLETE,this.§&A§);
            this.§>V§.removeEventListener(Event.COMPLETE,this.§1q§);
            this.§>V§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1?§);
            this.§>V§.removeEventListener(ProgressEvent.PROGRESS,this.§6!L§);
            this.§>V§ = null;
         }
         this.§60§ = null;
      }
      
      private function §]J§() : void
      {
         this.§#b§ = 0;
         if(this.§!q§ != null)
         {
            this.§!q§.call();
            this.§!q§ = null;
         }
      }
      
      public function §,E§() : void
      {
         this.§#b§ = 0;
         this.§[!!§ = false;
         this.§>N§ = 0;
         if(this.§8!;§)
         {
            this.§8!;§ = null;
         }
         this.§!q§ = null;
         this.§4!D§();
      }
      
      public function §8w§() : Number
      {
         if(!this.final())
         {
            §?!L§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§[!!§ || !this.§8!;§ || !this.final())
         {
            §?!L§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§@f§ == this.§>N§)
         {
            if(this.§8!B§ && this.§>N§ > 0)
            {
               if(this.§8!B§.§?'§)
               {
                  return 1;
               }
               return (this.§@f§ + this.§#b§ - 0.5) / this.§>N§;
            }
            return 1;
         }
         return this.§@f§ / this.§>N§;
      }
   }
}
