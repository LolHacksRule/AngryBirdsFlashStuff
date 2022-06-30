package §3!N§
{
   import §0i§.§]_§;
   import §3r§.§2!<§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §9!X§
   {
      
      private static var §4h§:§9!X§;
       
      
      private var §8!L§:Vector.<XML>;
      
      private var §'g§:Boolean = false;
      
      private var §-G§:int;
      
      private var §`+§:int;
      
      private var §[X§:Function;
      
      private var §9;§:Function;
      
      private var §;!T§:Loader;
      
      private var §7!K§:URLLoader;
      
      private var §4!,§:XML;
      
      private var §,!C§:String = "";
      
      private var §=3§:int = 0;
      
      private var §9!M§:Vector.<String>;
      
      private var §[%§:String = "external_assets/LoadTest.swf";
      
      private var §!!O§:Boolean = false;
      
      private var §3!`§:Array;
      
      private var §-!R§:String;
      
      private var §42§:String;
      
      private var §9!B§:Number = 0;
      
      private var §@U§:String = "";
      
      private var §>f§:§?6§;
      
      public function §9!X§()
      {
         this.§3!`§ = [];
         super();
      }
      
      public static function get §,!U§() : §9!X§
      {
         if(!§4h§)
         {
            §4h§ = new §9!X§();
         }
         return §4h§;
      }
      
      public static function §'T§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §`K§() : void
      {
         this.§3!`§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§?6§, param5:Function = null) : void
      {
         this.§-!R§ = param2;
         this.§42§ = param3;
         this.§!!O§ = true;
         this.§'g§ = false;
         this.§>f§ = param4;
         this.§[X§ = param5;
      }
      
      private function § !'§() : void
      {
         this.§!!O§ = true;
         this.§'g§ = false;
      }
      
      public function §-!O§() : Boolean
      {
         return this.§!!O§;
      }
      
      public function §%o§() : Boolean
      {
         if(this.§'g§ || !this.§-!O§())
         {
            return false;
         }
         this.§8!L§ = new Vector.<XML>();
         this.§-G§ = 0;
         return true;
      }
      
      public function §;a§(param1:XML) : void
      {
         if(this.§'g§ && this.§-!O§())
         {
            return;
         }
         this.§8!L§.push(param1);
         ++this.§-G§;
      }
      
      public function §0!L§(param1:Function = null) : void
      {
         if(this.§'g§ && this.§-!O§())
         {
            return;
         }
         this.§9;§ = param1;
         this.§-G§ = this.§8!L§.length;
         this.§'g§ = true;
         this.§"J§();
      }
      
      private function §5!^§() : Boolean
      {
         if(this.§>f§ && !this.§>f§.§#!Z§)
         {
            this.§>f§.removeEventListener(Event.COMPLETE,this.§^1§);
            this.§>f§.addEventListener(Event.COMPLETE,this.§^1§);
            return true;
         }
         return false;
      }
      
      private function §^1§(param1:Event) : void
      {
         this.§>f§.removeEventListener(Event.COMPLETE,this.§^1§);
         this.§"J§();
      }
      
      private function §"J§() : void
      {
         if(this.§8!L§.length > 0)
         {
            this.§=!M§();
         }
         else if(this.§ !6§() >= 1)
         {
            this.§6E§();
         }
      }
      
      private function §=!M§() : void
      {
         var _loc1_:String = null;
         if(this.§'g§ && this.§-!O§())
         {
            if(this.§5!^§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§42§ != null && this.§42§.length > 0)
            {
               _loc1_ = "?version=" + this.§42§;
            }
            this.§9!B§ = 0;
            this.§4!,§ = this.§8!L§.shift();
            if(this.§4!,§.localName() == "pack")
            {
               this.§7!K§ = new URLLoader();
               this.§7!K§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§7!K§.addEventListener(Event.COMPLETE,this.§7l§);
               this.§7!K§.addEventListener(IOErrorEvent.IO_ERROR,this.§?A§);
               this.§7!K§.addEventListener(ProgressEvent.PROGRESS,this.§#D§);
               this.§@U§ = this.§-!R§ + this.§4!,§.@url.toString() + _loc1_;
               this.§7!K§.load(new URLRequest(this.§@U§));
            }
            else
            {
               this.§;!T§ = new Loader();
               this.§;!T§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§13§);
               this.§;!T§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§?A§);
               this.§;!T§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§#D§);
               this.§@U§ = this.§-!R§ + this.§,!C§ + this.§4!,§.@swf.toString() + _loc1_;
               this.§;!T§.load(new URLRequest(this.§@U§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §?A§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§@U§;
         this.§="§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§@U§,§2!<§.§0!Z§);
      }
      
      private function §7l§(param1:Event) : void
      {
         this.§3!`§.push(this.§7!K§.data);
         if(this.§[X§ != null)
         {
            this.§[X§(this.§7!K§.data);
         }
         if(this.§>f§)
         {
            this.§>f§.§+!E§(this.§7!K§.data);
         }
         this.§="§();
         ++this.§`+§;
         this.§"J§();
      }
      
      private function §#D§(param1:ProgressEvent) : void
      {
         this.§9!B§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §13§(param1:Event) : void
      {
         this.§="§();
         ++this.§`+§;
         this.§"J§();
      }
      
      private function §="§() : void
      {
         if(this.§;!T§)
         {
            this.§;!T§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§13§);
            this.§;!T§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§?A§);
            this.§;!T§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§13§);
            this.§;!T§ = null;
         }
         if(this.§7!K§)
         {
            this.§7!K§.removeEventListener(Event.COMPLETE,this.§7l§);
            this.§7!K§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?A§);
            this.§7!K§.removeEventListener(ProgressEvent.PROGRESS,this.§#D§);
            this.§7!K§ = null;
         }
         this.§4!,§ = null;
      }
      
      private function §6E§() : void
      {
         this.§9!B§ = 0;
         if(this.§9;§ != null)
         {
            this.§9;§.call();
            this.§9;§ = null;
         }
      }
      
      public function §#P§() : void
      {
         this.§9!B§ = 0;
         this.§'g§ = false;
         this.§-G§ = 0;
         if(this.§8!L§)
         {
            this.§8!L§ = null;
         }
         this.§9;§ = null;
         this.§="§();
      }
      
      public function § !6§() : Number
      {
         if(!this.§-!O§())
         {
            §]_§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§'g§ || !this.§8!L§ || !this.§-!O§())
         {
            §]_§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§`+§ == this.§-G§)
         {
            if(this.§>f§ && this.§-G§ > 0)
            {
               if(this.§>f§.§#!Z§)
               {
                  return 1;
               }
               return (this.§`+§ + this.§9!B§ - 0.5) / this.§-G§;
            }
            return 1;
         }
         return this.§`+§ / this.§-G§;
      }
   }
}
