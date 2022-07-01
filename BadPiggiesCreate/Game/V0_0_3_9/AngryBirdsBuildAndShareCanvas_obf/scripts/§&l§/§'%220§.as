package §&l§
{
   import §!!A§.§2m§;
   import §@!;§.§&F§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §'"0§
   {
      
      private static var §,!X§:§'"0§;
       
      
      private var §+!<§:Vector.<XML>;
      
      private var §%!m§:Boolean = false;
      
      private var §?!c§:int;
      
      private var §"!!§:int;
      
      private var §+"5§:Function;
      
      private var §@!F§:Function;
      
      private var §"!§:Loader;
      
      private var §>!L§:URLLoader;
      
      private var §<!K§:XML;
      
      private var §'V§:String = "";
      
      private var §%!P§:int = 0;
      
      private var §#;§:Vector.<String>;
      
      private var §=!C§:String = "external_assets/LoadTest.swf";
      
      private var §4"$§:Boolean = false;
      
      private var §^,§:Array;
      
      private var §2U§:String;
      
      private var §=6§:String;
      
      private var §7!q§:Number = 0;
      
      private var §<j§:String = "";
      
      private var §+!q§:§@!i§;
      
      public function §'"0§()
      {
         this.§^,§ = [];
         super();
      }
      
      public static function get §'!o§() : §'"0§
      {
         if(!§,!X§)
         {
            §,!X§ = new §'"0§();
         }
         return §,!X§;
      }
      
      public static function §7!U§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §!!M§() : void
      {
         this.§^,§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§@!i§, param5:Function = null) : void
      {
         this.§2U§ = param2;
         this.§=6§ = param3;
         this.§4"$§ = true;
         this.§%!m§ = false;
         this.§+!q§ = param4;
         this.§+"5§ = param5;
      }
      
      private function §;@§() : void
      {
         this.§4"$§ = true;
         this.§%!m§ = false;
      }
      
      public function §-!C§() : Boolean
      {
         return this.§4"$§;
      }
      
      public function §4s§() : Boolean
      {
         if(this.§%!m§ || !this.§-!C§())
         {
            return false;
         }
         this.§+!<§ = new Vector.<XML>();
         this.§?!c§ = 0;
         return true;
      }
      
      public function § F§(param1:XML) : void
      {
         if(this.§%!m§ && this.§-!C§())
         {
            return;
         }
         this.§+!<§.push(param1);
         ++this.§?!c§;
      }
      
      public function §-"3§(param1:Function = null) : void
      {
         if(this.§%!m§ && this.§-!C§())
         {
            return;
         }
         this.§@!F§ = param1;
         this.§?!c§ = this.§+!<§.length;
         this.§%!m§ = true;
         this.§4=§();
      }
      
      private function §^&§() : Boolean
      {
         if(this.§+!q§ && !this.§+!q§.§8!d§)
         {
            this.§+!q§.removeEventListener(Event.COMPLETE,this.§6!J§);
            this.§+!q§.addEventListener(Event.COMPLETE,this.§6!J§);
            return true;
         }
         return false;
      }
      
      private function §6!J§(param1:Event) : void
      {
         this.§+!q§.removeEventListener(Event.COMPLETE,this.§6!J§);
         this.§4=§();
      }
      
      private function §4=§() : void
      {
         if(this.§+!<§.length > 0)
         {
            this.§-!R§();
         }
         else if(this.§#!-§() >= 1)
         {
            this.§?!l§();
         }
      }
      
      private function §-!R§() : void
      {
         var _loc1_:String = null;
         if(this.§%!m§ && this.§-!C§())
         {
            if(this.§^&§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§=6§ != null && this.§=6§.length > 0)
            {
               _loc1_ = "?version=" + this.§=6§;
            }
            this.§7!q§ = 0;
            this.§<!K§ = this.§+!<§.shift();
            if(this.§<!K§.localName() == "pack")
            {
               this.§>!L§ = new URLLoader();
               this.§>!L§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§>!L§.addEventListener(Event.COMPLETE,this.§`!C§);
               this.§>!L§.addEventListener(IOErrorEvent.IO_ERROR,this.§%6§);
               this.§>!L§.addEventListener(ProgressEvent.PROGRESS,this.§0!A§);
               this.§<j§ = this.§2U§ + this.§<!K§.@url.toString() + _loc1_;
               this.§>!L§.load(new URLRequest(this.§<j§));
            }
            else
            {
               this.§"!§ = new Loader();
               this.§"!§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§,1§);
               this.§"!§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%6§);
               this.§"!§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§0!A§);
               this.§<j§ = this.§2U§ + this.§'V§ + this.§<!K§.@swf.toString() + _loc1_;
               this.§"!§.load(new URLRequest(this.§<j§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §%6§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§<j§;
         this.§5>§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§<j§,§2m§.§4!]§);
      }
      
      private function §`!C§(param1:Event) : void
      {
         this.§^,§.push(this.§>!L§.data);
         if(this.§+"5§ != null)
         {
            this.§+"5§(this.§>!L§.data);
         }
         if(this.§+!q§)
         {
            this.§+!q§.§"!s§(this.§>!L§.data);
         }
         this.§5>§();
         ++this.§"!!§;
         this.§4=§();
      }
      
      private function §0!A§(param1:ProgressEvent) : void
      {
         this.§7!q§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §,1§(param1:Event) : void
      {
         this.§5>§();
         ++this.§"!!§;
         this.§4=§();
      }
      
      private function §5>§() : void
      {
         if(this.§"!§)
         {
            this.§"!§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§,1§);
            this.§"!§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%6§);
            this.§"!§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§,1§);
            this.§"!§ = null;
         }
         if(this.§>!L§)
         {
            this.§>!L§.removeEventListener(Event.COMPLETE,this.§`!C§);
            this.§>!L§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%6§);
            this.§>!L§.removeEventListener(ProgressEvent.PROGRESS,this.§0!A§);
            this.§>!L§ = null;
         }
         this.§<!K§ = null;
      }
      
      private function §?!l§() : void
      {
         this.§7!q§ = 0;
         if(this.§@!F§ != null)
         {
            this.§@!F§.call();
            this.§@!F§ = null;
         }
      }
      
      public function § !M§() : void
      {
         this.§7!q§ = 0;
         this.§%!m§ = false;
         this.§?!c§ = 0;
         if(this.§+!<§)
         {
            this.§+!<§ = null;
         }
         this.§@!F§ = null;
         this.§5>§();
      }
      
      public function §#!-§() : Number
      {
         if(!this.§-!C§())
         {
            §&F§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§%!m§ || !this.§+!<§ || !this.§-!C§())
         {
            §&F§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§"!!§ == this.§?!c§)
         {
            if(this.§+!q§ && this.§?!c§ > 0)
            {
               if(this.§+!q§.§8!d§)
               {
                  return 1;
               }
               return (this.§"!!§ + this.§7!q§ - 0.5) / this.§?!c§;
            }
            return 1;
         }
         return this.§"!!§ / this.§?!c§;
      }
   }
}
