package §3&§
{
   import §,E§.§+!g§;
   import §4u§.§<!L§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §7G§
   {
      
      private static var §'!t§:§7G§;
       
      
      private var §"&§:Vector.<XML>;
      
      private var §!" §:Boolean = false;
      
      private var §if§:int;
      
      private var §<1§:int;
      
      private var §3+§:Function;
      
      private var §6%§:Function;
      
      private var §5L§:Loader;
      
      private var §&",§:URLLoader;
      
      private var §]!s§:XML;
      
      private var §#L§:String = "";
      
      private var §6!Y§:int = 0;
      
      private var §]n§:Vector.<String>;
      
      private var §^"%§:String = "external_assets/LoadTest.swf";
      
      private var §@!r§:Boolean = false;
      
      private var §8!c§:Array;
      
      private var §0A§:String;
      
      private var §6Q§:String;
      
      private var §#!^§:Number = 0;
      
      private var §]2§:String = "";
      
      private var §^!E§:§+;§;
      
      public function §7G§()
      {
         this.§8!c§ = [];
         super();
      }
      
      public static function get §9j§() : §7G§
      {
         if(!§'!t§)
         {
            §'!t§ = new §7G§();
         }
         return §'!t§;
      }
      
      public static function §6!C§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §0!j§() : void
      {
         this.§8!c§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§+;§, param5:Function = null) : void
      {
         this.§0A§ = param2;
         this.§6Q§ = param3;
         this.§@!r§ = true;
         this.§!" § = false;
         this.§^!E§ = param4;
         this.§3+§ = param5;
      }
      
      private function §80§() : void
      {
         this.§@!r§ = true;
         this.§!" § = false;
      }
      
      public function §&+§() : Boolean
      {
         return this.§@!r§;
      }
      
      public function §1R§() : Boolean
      {
         if(this.§!" § || !this.§&+§())
         {
            return false;
         }
         this.§"&§ = new Vector.<XML>();
         this.§if§ = 0;
         return true;
      }
      
      public function §]o§(param1:XML) : void
      {
         if(this.§!" § && this.§&+§())
         {
            return;
         }
         this.§"&§.push(param1);
         ++this.§if§;
      }
      
      public function §-"5§(param1:Function = null) : void
      {
         if(this.§!" § && this.§&+§())
         {
            return;
         }
         this.§6%§ = param1;
         this.§if§ = this.§"&§.length;
         this.§!" § = true;
         this.§&2§();
      }
      
      private function §]!O§() : Boolean
      {
         if(this.§^!E§ && !this.§^!E§.§<!7§)
         {
            this.§^!E§.removeEventListener(Event.COMPLETE,this.§=!'§);
            this.§^!E§.addEventListener(Event.COMPLETE,this.§=!'§);
            return true;
         }
         return false;
      }
      
      private function §=!'§(param1:Event) : void
      {
         this.§^!E§.removeEventListener(Event.COMPLETE,this.§=!'§);
         this.§&2§();
      }
      
      private function §&2§() : void
      {
         if(this.§"&§.length > 0)
         {
            this.§%!e§();
         }
         else if(this.§>g§() >= 1)
         {
            this.§;7§();
         }
      }
      
      private function §%!e§() : void
      {
         var _loc1_:String = null;
         if(this.§!" § && this.§&+§())
         {
            if(this.§]!O§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6Q§ != null && this.§6Q§.length > 0)
            {
               _loc1_ = "?version=" + this.§6Q§;
            }
            this.§#!^§ = 0;
            this.§]!s§ = this.§"&§.shift();
            if(this.§]!s§.localName() == "pack")
            {
               this.§&",§ = new URLLoader();
               this.§&",§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§&",§.addEventListener(Event.COMPLETE,this.§[z§);
               this.§&",§.addEventListener(IOErrorEvent.IO_ERROR,this.§"z§);
               this.§&",§.addEventListener(ProgressEvent.PROGRESS,this.§>!+§);
               this.§]2§ = this.§0A§ + this.§]!s§.@url.toString() + _loc1_;
               this.§&",§.load(new URLRequest(this.§]2§));
            }
            else
            {
               this.§5L§ = new Loader();
               this.§5L§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§&!C§);
               this.§5L§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"z§);
               this.§5L§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§>!+§);
               this.§]2§ = this.§0A§ + this.§#L§ + this.§]!s§.@swf.toString() + _loc1_;
               this.§5L§.load(new URLRequest(this.§]2§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §"z§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§]2§;
         this.§"h§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§]2§,§+!g§.§-!_§);
      }
      
      private function §[z§(param1:Event) : void
      {
         this.§8!c§.push(this.§&",§.data);
         if(this.§3+§ != null)
         {
            this.§3+§(this.§&",§.data);
         }
         if(this.§^!E§)
         {
            this.§^!E§.§'"$§(this.§&",§.data);
         }
         this.§"h§();
         ++this.§<1§;
         this.§&2§();
      }
      
      private function §>!+§(param1:ProgressEvent) : void
      {
         this.§#!^§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §&!C§(param1:Event) : void
      {
         this.§"h§();
         ++this.§<1§;
         this.§&2§();
      }
      
      private function §"h§() : void
      {
         if(this.§5L§)
         {
            this.§5L§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&!C§);
            this.§5L§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"z§);
            this.§5L§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§&!C§);
            this.§5L§ = null;
         }
         if(this.§&",§)
         {
            this.§&",§.removeEventListener(Event.COMPLETE,this.§[z§);
            this.§&",§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"z§);
            this.§&",§.removeEventListener(ProgressEvent.PROGRESS,this.§>!+§);
            this.§&",§ = null;
         }
         this.§]!s§ = null;
      }
      
      private function §;7§() : void
      {
         this.§#!^§ = 0;
         if(this.§6%§ != null)
         {
            this.§6%§.call();
            this.§6%§ = null;
         }
      }
      
      public function §^!4§() : void
      {
         this.§#!^§ = 0;
         this.§!" § = false;
         this.§if§ = 0;
         if(this.§"&§)
         {
            this.§"&§ = null;
         }
         this.§6%§ = null;
         this.§"h§();
      }
      
      public function §>g§() : Number
      {
         if(!this.§&+§())
         {
            §<!L§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§!" § || !this.§"&§ || !this.§&+§())
         {
            §<!L§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§<1§ == this.§if§)
         {
            if(this.§^!E§ && this.§if§ > 0)
            {
               if(this.§^!E§.§<!7§)
               {
                  return 1;
               }
               return (this.§<1§ + this.§#!^§ - 0.5) / this.§if§;
            }
            return 1;
         }
         return this.§<1§ / this.§if§;
      }
   }
}
