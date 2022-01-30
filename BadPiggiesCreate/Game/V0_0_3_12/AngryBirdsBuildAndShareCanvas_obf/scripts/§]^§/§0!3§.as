package §]^§
{
   import §"p§.§@8§;
   import §-!^§.§<R§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §0!3§
   {
      
      private static var §%!Y§:§0!3§;
       
      
      private var §!!h§:Vector.<XML>;
      
      private var §"!@§:Boolean = false;
      
      private var §5!!§:int;
      
      private var §10§:int;
      
      private var §!!%§:Function;
      
      private var §`?§:Function;
      
      private var §>!+§:Loader;
      
      private var § !"§:URLLoader;
      
      private var §5r§:XML;
      
      private var §!N§:String = "";
      
      private var §=<§:int = 0;
      
      private var §>!D§:Vector.<String>;
      
      private var §'!0§:String = "external_assets/LoadTest.swf";
      
      private var §,!G§:Boolean = false;
      
      private var §%""§:Array;
      
      private var §8C§:String;
      
      private var §1!>§:String;
      
      private var §=S§:Number = 0;
      
      private var §1r§:String = "";
      
      private var §1!0§:§0!1§;
      
      public function §0!3§()
      {
         this.§%""§ = [];
         super();
      }
      
      public static function get § "!§() : §0!3§
      {
         if(!§%!Y§)
         {
            §%!Y§ = new §0!3§();
         }
         return §%!Y§;
      }
      
      public static function §@u§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §-j§() : void
      {
         this.§%""§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§0!1§, param5:Function = null) : void
      {
         this.§8C§ = param2;
         this.§1!>§ = param3;
         this.§,!G§ = true;
         this.§"!@§ = false;
         this.§1!0§ = param4;
         this.§!!%§ = param5;
      }
      
      private function §1O§() : void
      {
         this.§,!G§ = true;
         this.§"!@§ = false;
      }
      
      public function §"0§() : Boolean
      {
         return this.§,!G§;
      }
      
      public function §4" §() : Boolean
      {
         if(this.§"!@§ || !this.§"0§())
         {
            return false;
         }
         this.§!!h§ = new Vector.<XML>();
         this.§5!!§ = 0;
         return true;
      }
      
      public function §?!z§(param1:XML) : void
      {
         if(this.§"!@§ && this.§"0§())
         {
            return;
         }
         this.§!!h§.push(param1);
         ++this.§5!!§;
      }
      
      public function §0!k§(param1:Function = null) : void
      {
         if(this.§"!@§ && this.§"0§())
         {
            return;
         }
         this.§`?§ = param1;
         this.§5!!§ = this.§!!h§.length;
         this.§"!@§ = true;
         this.§==§();
      }
      
      private function §1m§() : Boolean
      {
         if(this.§1!0§ && !this.§1!0§.§1!Z§)
         {
            this.§1!0§.removeEventListener(Event.COMPLETE,this.§"!>§);
            this.§1!0§.addEventListener(Event.COMPLETE,this.§"!>§);
            return true;
         }
         return false;
      }
      
      private function §"!>§(param1:Event) : void
      {
         this.§1!0§.removeEventListener(Event.COMPLETE,this.§"!>§);
         this.§==§();
      }
      
      private function §==§() : void
      {
         if(this.§!!h§.length > 0)
         {
            this.§'-§();
         }
         else if(this.§2!D§() >= 1)
         {
            this.§=!;§();
         }
      }
      
      private function §'-§() : void
      {
         var _loc1_:String = null;
         if(this.§"!@§ && this.§"0§())
         {
            if(this.§1m§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§1!>§ != null && this.§1!>§.length > 0)
            {
               _loc1_ = "?version=" + this.§1!>§;
            }
            this.§=S§ = 0;
            this.§5r§ = this.§!!h§.shift();
            if(this.§5r§.localName() == "pack")
            {
               this.§ !"§ = new URLLoader();
               this.§ !"§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§ !"§.addEventListener(Event.COMPLETE,this.§`!1§);
               this.§ !"§.addEventListener(IOErrorEvent.IO_ERROR,this.§9h§);
               this.§ !"§.addEventListener(ProgressEvent.PROGRESS,this.§9!9§);
               this.§1r§ = this.§8C§ + this.§5r§.@url.toString() + _loc1_;
               this.§ !"§.load(new URLRequest(this.§1r§));
            }
            else
            {
               this.§>!+§ = new Loader();
               this.§>!+§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?3§);
               this.§>!+§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9h§);
               this.§>!+§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§9!9§);
               this.§1r§ = this.§8C§ + this.§!N§ + this.§5r§.@swf.toString() + _loc1_;
               this.§>!+§.load(new URLRequest(this.§1r§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §9h§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§1r§;
         this.§#"?§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§1r§,§<R§.§"!7§);
      }
      
      private function §`!1§(param1:Event) : void
      {
         this.§%""§.push(this.§ !"§.data);
         if(this.§!!%§ != null)
         {
            this.§!!%§(this.§ !"§.data);
         }
         if(this.§1!0§)
         {
            this.§1!0§.§0z§(this.§ !"§.data);
         }
         this.§#"?§();
         ++this.§10§;
         this.§==§();
      }
      
      private function §9!9§(param1:ProgressEvent) : void
      {
         this.§=S§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §?3§(param1:Event) : void
      {
         this.§#"?§();
         ++this.§10§;
         this.§==§();
      }
      
      private function §#"?§() : void
      {
         if(this.§>!+§)
         {
            this.§>!+§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?3§);
            this.§>!+§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9h§);
            this.§>!+§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?3§);
            this.§>!+§ = null;
         }
         if(this.§ !"§)
         {
            this.§ !"§.removeEventListener(Event.COMPLETE,this.§`!1§);
            this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9h§);
            this.§ !"§.removeEventListener(ProgressEvent.PROGRESS,this.§9!9§);
            this.§ !"§ = null;
         }
         this.§5r§ = null;
      }
      
      private function §=!;§() : void
      {
         this.§=S§ = 0;
         if(this.§`?§ != null)
         {
            this.§`?§.call();
            this.§`?§ = null;
         }
      }
      
      public function §,!]§() : void
      {
         this.§=S§ = 0;
         this.§"!@§ = false;
         this.§5!!§ = 0;
         if(this.§!!h§)
         {
            this.§!!h§ = null;
         }
         this.§`?§ = null;
         this.§#"?§();
      }
      
      public function §2!D§() : Number
      {
         if(!this.§"0§())
         {
            §@8§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§"!@§ || !this.§!!h§ || !this.§"0§())
         {
            §@8§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§10§ == this.§5!!§)
         {
            if(this.§1!0§ && this.§5!!§ > 0)
            {
               if(this.§1!0§.§1!Z§)
               {
                  return 1;
               }
               return (this.§10§ + this.§=S§ - 0.5) / this.§5!!§;
            }
            return 1;
         }
         return this.§10§ / this.§5!!§;
      }
   }
}
