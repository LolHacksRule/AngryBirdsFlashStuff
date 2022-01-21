package §]L§
{
   import §1!D§.§'p§;
   import §`!W§.§2v§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §9%§
   {
      
      private static var §;!T§:§9%§;
       
      
      private var §`S§:Vector.<XML>;
      
      private var §1!U§:Boolean = false;
      
      private var §<6§:int;
      
      private var § h§:int;
      
      private var §%o§:Function;
      
      private var §6c§:Function;
      
      private var §%!c§:Loader;
      
      private var §;!O§:URLLoader;
      
      private var §11§:XML;
      
      private var §&!T§:String = "";
      
      private var §5!F§:int = 0;
      
      private var §^]§:Vector.<String>;
      
      private var §9!'§:String = "external_assets/LoadTest.swf";
      
      private var §package§:Boolean = false;
      
      private var §&<§:Array;
      
      private var §<!h§:String;
      
      private var §%!@§:String;
      
      private var §=H§:Number = 0;
      
      private var §!!8§:String = "";
      
      private var §8x§:§@!O§;
      
      public function §9%§()
      {
         this.§&<§ = [];
         super();
      }
      
      public static function get §>E§() : §9%§
      {
         if(!§;!T§)
         {
            §;!T§ = new §9%§();
         }
         return §;!T§;
      }
      
      public static function §0<§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §!!W§() : void
      {
         this.§&<§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§@!O§, param5:Function = null) : void
      {
         this.§<!h§ = param2;
         this.§%!@§ = param3;
         this.§package§ = true;
         this.§1!U§ = false;
         this.§8x§ = param4;
         this.§%o§ = param5;
      }
      
      private function § !+§() : void
      {
         this.§package§ = true;
         this.§1!U§ = false;
      }
      
      public function §<O§() : Boolean
      {
         return this.§package§;
      }
      
      public function §7!O§() : Boolean
      {
         if(this.§1!U§ || !this.§<O§())
         {
            return false;
         }
         this.§`S§ = new Vector.<XML>();
         this.§<6§ = 0;
         return true;
      }
      
      public function §"_§(param1:XML) : void
      {
         if(this.§1!U§ && this.§<O§())
         {
            return;
         }
         this.§`S§.push(param1);
         ++this.§<6§;
      }
      
      public function §9!0§(param1:Function = null) : void
      {
         if(this.§1!U§ && this.§<O§())
         {
            return;
         }
         this.§6c§ = param1;
         this.§<6§ = this.§`S§.length;
         this.§1!U§ = true;
         this.§8!g§();
      }
      
      private function §>u§() : Boolean
      {
         if(this.§8x§ && !this.§8x§.§0H§)
         {
            this.§8x§.removeEventListener(Event.COMPLETE,this.§-!$§);
            this.§8x§.addEventListener(Event.COMPLETE,this.§-!$§);
            return true;
         }
         return false;
      }
      
      private function §-!$§(param1:Event) : void
      {
         this.§8x§.removeEventListener(Event.COMPLETE,this.§-!$§);
         this.§8!g§();
      }
      
      private function §8!g§() : void
      {
         if(this.§`S§.length > 0)
         {
            this.§0!E§();
         }
         else if(this.§^m§() >= 1)
         {
            this.§4O§();
         }
      }
      
      private function §0!E§() : void
      {
         var _loc1_:String = null;
         if(this.§1!U§ && this.§<O§())
         {
            if(this.§>u§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§%!@§ != null && this.§%!@§.length > 0)
            {
               _loc1_ = "?version=" + this.§%!@§;
            }
            this.§=H§ = 0;
            this.§11§ = this.§`S§.shift();
            if(this.§11§.localName() == "pack")
            {
               this.§;!O§ = new URLLoader();
               this.§;!O§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§;!O§.addEventListener(Event.COMPLETE,this.§"G§);
               this.§;!O§.addEventListener(IOErrorEvent.IO_ERROR,this.§6!2§);
               this.§;!O§.addEventListener(ProgressEvent.PROGRESS,this.§3O§);
               this.§!!8§ = this.§<!h§ + this.§11§.@url.toString() + _loc1_;
               this.§;!O§.load(new URLRequest(this.§!!8§));
            }
            else
            {
               this.§%!c§ = new Loader();
               this.§%!c§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#d§);
               this.§%!c§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§6!2§);
               this.§%!c§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§3O§);
               this.§!!8§ = this.§<!h§ + this.§&!T§ + this.§11§.@swf.toString() + _loc1_;
               this.§%!c§.load(new URLRequest(this.§!!8§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §6!2§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§!!8§;
         this.§>!n§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§!!8§,§'p§.§2!n§);
      }
      
      private function §"G§(param1:Event) : void
      {
         this.§&<§.push(this.§;!O§.data);
         if(this.§%o§ != null)
         {
            this.§%o§(this.§;!O§.data);
         }
         if(this.§8x§)
         {
            this.§8x§.§#r§(this.§;!O§.data);
         }
         this.§>!n§();
         ++this.§ h§;
         this.§8!g§();
      }
      
      private function §3O§(param1:ProgressEvent) : void
      {
         this.§=H§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §#d§(param1:Event) : void
      {
         this.§>!n§();
         ++this.§ h§;
         this.§8!g§();
      }
      
      private function §>!n§() : void
      {
         if(this.§%!c§)
         {
            this.§%!c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#d§);
            this.§%!c§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6!2§);
            this.§%!c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#d§);
            this.§%!c§ = null;
         }
         if(this.§;!O§)
         {
            this.§;!O§.removeEventListener(Event.COMPLETE,this.§"G§);
            this.§;!O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6!2§);
            this.§;!O§.removeEventListener(ProgressEvent.PROGRESS,this.§3O§);
            this.§;!O§ = null;
         }
         this.§11§ = null;
      }
      
      private function §4O§() : void
      {
         this.§=H§ = 0;
         if(this.§6c§ != null)
         {
            this.§6c§.call();
            this.§6c§ = null;
         }
      }
      
      public function §;]§() : void
      {
         this.§=H§ = 0;
         this.§1!U§ = false;
         this.§<6§ = 0;
         if(this.§`S§)
         {
            this.§`S§ = null;
         }
         this.§6c§ = null;
         this.§>!n§();
      }
      
      public function §^m§() : Number
      {
         if(!this.§<O§())
         {
            §2v§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§1!U§ || !this.§`S§ || !this.§<O§())
         {
            §2v§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§ h§ == this.§<6§)
         {
            if(this.§8x§ && this.§<6§ > 0)
            {
               if(this.§8x§.§0H§)
               {
                  return 1;
               }
               return (this.§ h§ + this.§=H§ - 0.5) / this.§<6§;
            }
            return 1;
         }
         return this.§ h§ / this.§<6§;
      }
   }
}
