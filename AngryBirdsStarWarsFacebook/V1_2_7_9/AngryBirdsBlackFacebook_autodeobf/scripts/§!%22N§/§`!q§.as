package §!"N§
{
   import §0"I§.§5!s§;
   import §7A§.§5"2§;
   import §7A§.§<"M§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §`!q§
   {
      
      private static var §9"r§:§`!q§;
       
      
      private var § if§:Vector.<XML>;
      
      private var §2!7§:Boolean = false;
      
      private var §9!M§:int;
      
      private var §6"J§:int;
      
      private var §+! §:Function;
      
      private var §^"d§:Function;
      
      private var §`!E§:Loader;
      
      private var §3!Q§:URLLoader;
      
      private var §&!J§:XML;
      
      private var §;!r§:Vector.<String>;
      
      private var §5"b§:String = "external_assets/LoadTest.swf";
      
      private var §9w§:Boolean = false;
      
      private var §with§:Array;
      
      private var §!"7§:String;
      
      private var § "i§:String;
      
      private var § "y§:§5"2§;
      
      private var §6Z§:String = "";
      
      private var §`"[§:Number = 0;
      
      private var §"";§:String = "";
      
      private var §!!-§:§6#!§;
      
      public function §`!q§()
      {
         this.§with§ = [];
         this.§ "y§ = new §5"2§();
         super();
      }
      
      public static function get §-G§() : §`!q§
      {
         if(!§9"r§)
         {
            §9"r§ = new §`!q§();
         }
         return §9"r§;
      }
      
      public static function §;"3§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §&!§() : void
      {
         this.§with§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§6#!§, param5:Function = null) : void
      {
         this.§!"7§ = param2;
         this.§ "i§ = param3;
         this.§9w§ = true;
         this.§2!7§ = false;
         this.§!!-§ = param4;
         this.§+! § = param5;
      }
      
      private function §?2§() : void
      {
         this.§9w§ = true;
         this.§2!7§ = false;
      }
      
      public function §]e§() : Boolean
      {
         return this.§9w§;
      }
      
      public function §@"[§() : Boolean
      {
         if(this.§2!7§ || !this.§]e§())
         {
            return false;
         }
         this.§ if§ = new Vector.<XML>();
         this.§9!M§ = 0;
         return true;
      }
      
      public function §!#"§(param1:XML) : void
      {
         if(this.§2!7§ && this.§]e§())
         {
            return;
         }
         this.§ if§.push(param1);
         ++this.§9!M§;
      }
      
      public function §@X§(param1:Function = null) : void
      {
         if(this.§2!7§ && this.§]e§())
         {
            return;
         }
         this.§^"d§ = param1;
         this.§9!M§ = this.§ if§.length;
         this.§6"J§ = 0;
         this.§2!7§ = true;
         this.§9!k§();
      }
      
      private function §%#0§() : Boolean
      {
         if(this.§!!-§ && !this.§!!-§.§6w§)
         {
            this.§!!-§.removeEventListener(Event.COMPLETE,this.§3!<§);
            this.§!!-§.addEventListener(Event.COMPLETE,this.§3!<§);
            return true;
         }
         return false;
      }
      
      private function §3!<§(param1:Event) : void
      {
         this.§!!-§.removeEventListener(Event.COMPLETE,this.§3!<§);
         this.§9!k§();
      }
      
      private function §9!k§() : void
      {
         if(!this.§ if§)
         {
            return;
         }
         if(this.§ if§.length > 0)
         {
            this.§;@§();
         }
         else if(this.§3"V§() >= 1)
         {
            this.§-"!§();
         }
         else
         {
            this.§%#0§();
         }
      }
      
      private function §;@§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(this.§2!7§ && this.§]e§())
         {
            if(this.§%#0§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§ "i§ != null && this.§ "i§.length > 0)
            {
               _loc1_ = "?version=" + this.§ "i§;
            }
            this.§`"[§ = 0;
            this.§&!J§ = this.§ if§.shift();
            if(this.§&!J§.localName() == "pack")
            {
               _loc2_ = this.§&!J§.@url.toString();
               _loc2_ = §4!2§.§-G§.§2"Y§(_loc2_);
               this.§3!Q§ = new URLLoader();
               this.§3!Q§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§3!Q§.addEventListener(Event.COMPLETE,this.§@"8§);
               this.§3!Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!u§);
               this.§3!Q§.addEventListener(ProgressEvent.PROGRESS,this.§3!t§);
               this.§"";§ = this.§!"7§ + _loc2_ + _loc1_;
               this.§3!Q§.load(new URLRequest(this.§"";§));
            }
            else if(this.§&!J§.localName() == "xml")
            {
               _loc3_ = this.§&!J§.@url.toString();
               _loc3_ = §4!2§.§-G§.§2"Y§(_loc3_);
               this.§6Z§ = this.§&!J§.@name;
               this.§3!Q§ = new URLLoader();
               this.§3!Q§.addEventListener(Event.COMPLETE,this.§,"5§);
               this.§3!Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!u§);
               this.§3!Q§.addEventListener(ProgressEvent.PROGRESS,this.§3!t§);
               this.§"";§ = this.§!"7§ + _loc3_ + _loc1_;
               this.§3!Q§.load(new URLRequest(this.§"";§));
            }
            else
            {
               _loc4_ = this.§&!J§.@swf.toString();
               _loc4_ = §4!2§.§-G§.§2"Y§(_loc4_);
               this.§`!E§ = new Loader();
               this.§`!E§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§7;§);
               this.§`!E§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"!u§);
               this.§`!E§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§3!t§);
               this.§"";§ = this.§!"7§ + _loc4_ + _loc1_;
               this.§`!E§.load(new URLRequest(this.§"";§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §"!u§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§"";§;
         this.§`g§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§"";§,§<"M§.§48§);
      }
      
      private function §,"5§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§3!Q§.data);
         this.§ "y§[this.§6Z§] = _loc2_;
         this.§`g§();
         ++this.§6"J§;
         this.§9!k§();
      }
      
      public function §,'§(param1:String) : XML
      {
         return this.§ "y§[param1];
      }
      
      private function §@"8§(param1:Event) : void
      {
         this.§with§.push(this.§3!Q§.data);
         if(this.§+! § != null)
         {
            this.§+! §(this.§3!Q§.data);
         }
         if(this.§!!-§)
         {
            this.§!!-§.§#"a§(this.§3!Q§.data,this.§^]§(this.§&!J§.@url));
         }
         this.§`g§();
         ++this.§6"J§;
         this.§9!k§();
      }
      
      private function §^]§(param1:String) : String
      {
         var _loc2_:String = param1;
         var _loc3_:int = _loc2_.indexOf(".pak");
         if(_loc3_ >= 0)
         {
            _loc2_ = _loc2_.substr(0,_loc3_);
         }
         _loc3_ = _loc2_.lastIndexOf("/");
         if(_loc3_ >= 0)
         {
            _loc2_ = _loc2_.substr(_loc3_ + 1);
         }
         return _loc2_;
      }
      
      private function §3!t§(param1:ProgressEvent) : void
      {
         this.§`"[§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §7;§(param1:Event) : void
      {
         this.§`g§();
         ++this.§6"J§;
         this.§9!k§();
      }
      
      private function §`g§() : void
      {
         if(this.§`!E§)
         {
            this.§`!E§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§7;§);
            this.§`!E§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!u§);
            this.§`!E§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§7;§);
            this.§`!E§ = null;
         }
         if(this.§3!Q§)
         {
            this.§3!Q§.removeEventListener(Event.COMPLETE,this.§@"8§);
            this.§3!Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!u§);
            this.§3!Q§.removeEventListener(ProgressEvent.PROGRESS,this.§3!t§);
            this.§3!Q§ = null;
         }
         this.§&!J§ = null;
      }
      
      private function §-"!§() : void
      {
         this.§`"[§ = 0;
         if(this.§^"d§ != null)
         {
            this.§^"d§.call();
            this.§^"d§ = null;
         }
      }
      
      public function §3%§() : void
      {
         this.§`"[§ = 0;
         this.§2!7§ = false;
         this.§9!M§ = 0;
         if(this.§ if§)
         {
            this.§ if§ = null;
         }
         this.§^"d§ = null;
         this.§`g§();
         if(this.§!!-§)
         {
            this.§!!-§.§3%§();
         }
      }
      
      public function §3"V§() : Number
      {
         if(!this.§]e§())
         {
            §5!s§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§2!7§ || !this.§ if§ || !this.§]e§())
         {
            §5!s§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§6"J§ == this.§9!M§)
         {
            if(this.§!!-§ && this.§9!M§ > 0)
            {
               if(this.§!!-§.§6w§)
               {
                  return 1;
               }
               return (this.§6"J§ - 0.1) / this.§9!M§;
            }
            return 1;
         }
         return this.§6"J§ / this.§9!M§;
      }
   }
}
