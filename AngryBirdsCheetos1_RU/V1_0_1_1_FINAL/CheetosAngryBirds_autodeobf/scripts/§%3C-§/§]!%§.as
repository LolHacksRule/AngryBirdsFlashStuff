package §<-§
{
   import § N§.§]M§;
   import §,+§.§%§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §]!%§
   {
      
      private static var §]7§:§]!%§;
       
      
      private var §<§:Vector.<XML>;
      
      private var §-c§:Boolean = false;
      
      private var §!v§:int;
      
      private var §%!,§:int;
      
      private var §!!U§:Function;
      
      private var §'Z§:Function;
      
      private var §!!E§:Loader;
      
      private var §=x§:URLLoader;
      
      private var §%A§:XML;
      
      private var §"X§:String = "";
      
      private var §3F§:int = 0;
      
      private var § `§:Vector.<String>;
      
      private var §4t§:String = "external_assets/LoadTest.swf";
      
      private var §7f§:Boolean = false;
      
      private var §5!%§:Array;
      
      private var §;!a§:String;
      
      private var §0!L§:String;
      
      private var §@;§:Number = 0;
      
      private var §=§:String = "";
      
      private var §8u§:§1!W§;
      
      public function §]!%§()
      {
         this.§5!%§ = [];
         super();
      }
      
      public static function get §%b§() : §]!%§
      {
         if(!§]7§)
         {
            §]7§ = new §]!%§();
         }
         return §]7§;
      }
      
      public static function §]!#§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §[!O§() : void
      {
         this.§5!%§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§1!W§, param5:Function = null) : void
      {
         this.§;!a§ = param2;
         this.§0!L§ = param3;
         this.§7f§ = true;
         this.§-c§ = false;
         this.§8u§ = param4;
         this.§!!U§ = param5;
      }
      
      private function §+G§() : void
      {
         this.§7f§ = true;
         this.§-c§ = false;
      }
      
      public function §]!$§() : Boolean
      {
         return this.§7f§;
      }
      
      public function §+Q§() : Boolean
      {
         if(this.§-c§ || !this.§]!$§())
         {
            return false;
         }
         this.§<§ = new Vector.<XML>();
         this.§!v§ = 0;
         return true;
      }
      
      public function §#!7§(param1:XML) : void
      {
         if(this.§-c§ && this.§]!$§())
         {
            return;
         }
         this.§<§.push(param1);
         ++this.§!v§;
      }
      
      public function §-!"§(param1:Function = null) : void
      {
         if(this.§-c§ && this.§]!$§())
         {
            return;
         }
         this.§'Z§ = param1;
         this.§!v§ = this.§<§.length;
         this.§-c§ = true;
         this.§="§();
      }
      
      private function §>!?§() : Boolean
      {
         if(this.§8u§ && !this.§8u§.§,=§)
         {
            this.§8u§.removeEventListener(Event.COMPLETE,this.§,'§);
            this.§8u§.addEventListener(Event.COMPLETE,this.§,'§);
            return true;
         }
         return false;
      }
      
      private function §,'§(param1:Event) : void
      {
         this.§8u§.removeEventListener(Event.COMPLETE,this.§,'§);
         this.§="§();
      }
      
      private function §="§() : void
      {
         if(this.§<§.length > 0)
         {
            this.§@!T§();
         }
         else if(this.§0!Q§() >= 1)
         {
            this.§8h§();
         }
      }
      
      private function §@!T§() : void
      {
         var _loc1_:String = null;
         if(this.§-c§ && this.§]!$§())
         {
            if(this.§>!?§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§0!L§ != null && this.§0!L§.length > 0)
            {
               _loc1_ = "?version=" + this.§0!L§;
            }
            this.§@;§ = 0;
            this.§%A§ = this.§<§.shift();
            if(this.§%A§.localName() == "pack")
            {
               this.§=x§ = new URLLoader();
               this.§=x§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§=x§.addEventListener(Event.COMPLETE,this.§!%§);
               this.§=x§.addEventListener(IOErrorEvent.IO_ERROR,this.§'>§);
               this.§=x§.addEventListener(ProgressEvent.PROGRESS,this.§,q§);
               this.§=§ = this.§;!a§ + this.§%A§.@url.toString() + _loc1_;
               this.§=x§.load(new URLRequest(this.§=§));
            }
            else
            {
               this.§!!E§ = new Loader();
               this.§!!E§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§"5§);
               this.§!!E§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§'>§);
               this.§!!E§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§,q§);
               this.§=§ = this.§;!a§ + this.§"X§ + this.§%A§.@swf.toString() + _loc1_;
               this.§!!E§.load(new URLRequest(this.§=§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §'>§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§=§;
         this.§[m§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§=§,§%§.§^s§);
      }
      
      private function §!%§(param1:Event) : void
      {
         this.§5!%§.push(this.§=x§.data);
         if(this.§!!U§ != null)
         {
            this.§!!U§(this.§=x§.data);
         }
         if(this.§8u§)
         {
            this.§8u§.§8!P§(this.§=x§.data);
         }
         this.§[m§();
         ++this.§%!,§;
         this.§="§();
      }
      
      private function §,q§(param1:ProgressEvent) : void
      {
         this.§@;§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §"5§(param1:Event) : void
      {
         this.§[m§();
         ++this.§%!,§;
         this.§="§();
      }
      
      private function §[m§() : void
      {
         if(this.§!!E§)
         {
            this.§!!E§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§"5§);
            this.§!!E§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§'>§);
            this.§!!E§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§"5§);
            this.§!!E§ = null;
         }
         if(this.§=x§)
         {
            this.§=x§.removeEventListener(Event.COMPLETE,this.§!%§);
            this.§=x§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'>§);
            this.§=x§.removeEventListener(ProgressEvent.PROGRESS,this.§,q§);
            this.§=x§ = null;
         }
         this.§%A§ = null;
      }
      
      private function §8h§() : void
      {
         this.§@;§ = 0;
         if(this.§'Z§ != null)
         {
            this.§'Z§.call();
            this.§'Z§ = null;
         }
      }
      
      public function §-n§() : void
      {
         this.§@;§ = 0;
         this.§-c§ = false;
         this.§!v§ = 0;
         if(this.§<§)
         {
            this.§<§ = null;
         }
         this.§'Z§ = null;
         this.§[m§();
      }
      
      public function §0!Q§() : Number
      {
         if(!this.§]!$§())
         {
            §]M§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§-c§ || !this.§<§ || !this.§]!$§())
         {
            §]M§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§%!,§ == this.§!v§)
         {
            if(this.§8u§ && this.§!v§ > 0)
            {
               if(this.§8u§.§,=§)
               {
                  return 1;
               }
               return (this.§%!,§ + this.§@;§ - 0.5) / this.§!v§;
            }
            return 1;
         }
         return this.§%!,§ / this.§!v§;
      }
   }
}
