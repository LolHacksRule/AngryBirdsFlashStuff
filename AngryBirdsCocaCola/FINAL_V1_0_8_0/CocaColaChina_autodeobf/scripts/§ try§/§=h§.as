package § try§
{
   import § 9§.§=!a§;
   import §&$§.§1U§;
   import §^=§.§8!6§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.Font;
   
   public class §=h§
   {
      
      private static var §2f§:§=h§;
       
      
      private var §%n§:Vector.<XML>;
      
      private var §'R§:Boolean = false;
      
      private var §9!F§:int;
      
      private var §3R§:int;
      
      private var §,!=§:Function;
      
      private var §=d§:Function;
      
      private var §<!c§:Loader;
      
      private var §-!4§:URLLoader;
      
      private var §+!"§:XML;
      
      private var §7o§:String = "";
      
      private var §'!,§:int = 0;
      
      private var §8f§:Vector.<String>;
      
      private var §"t§:String = "external_assets/LoadTest.swf";
      
      private var §=!5§:Boolean = false;
      
      private var §?!1§:Array;
      
      private var § 2§:String;
      
      private var §#%§:String;
      
      private var §<X§:Number = 0;
      
      private var § ^§:String = "";
      
      private var §7!_§:§9!T§;
      
      public function §=h§()
      {
         this.§?!1§ = [];
         super();
      }
      
      public static function get §]!D§() : §=h§
      {
         if(!§2f§)
         {
            §2f§ = new §=h§();
         }
         return §2f§;
      }
      
      public static function §!]§(param1:Loader, param2:XML) : void
      {
         var asset:XML = null;
         var assetCls:Class = null;
         var loader:Loader = param1;
         var library:XML = param2;
         for each(asset in library.Asset)
         {
            try
            {
               assetCls = loader.contentLoaderInfo.applicationDomain.getDefinition(asset.@name.toString()) as Class;
            }
            catch(e:ReferenceError)
            {
               throw new Error("Could not find asset class \'" + asset.@name + "\' in " + library.@swf);
            }
            §=!a§.§5r§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §7!C§() : void
      {
         this.§?!1§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§9!T§, param5:Function = null) : void
      {
         this.§ 2§ = param2;
         this.§#%§ = param3;
         this.§=!5§ = true;
         this.§'R§ = false;
         this.§7!_§ = param4;
         this.§,!=§ = param5;
      }
      
      private function §>!=§() : void
      {
         this.§=!5§ = true;
         this.§'R§ = false;
      }
      
      public function §6!Y§() : Boolean
      {
         return this.§=!5§;
      }
      
      public function §'!9§() : Boolean
      {
         if(this.§'R§ || !this.§6!Y§())
         {
            return false;
         }
         this.§%n§ = new Vector.<XML>();
         this.§9!F§ = 0;
         return true;
      }
      
      public function §4!V§(param1:XML) : void
      {
         if(this.§'R§ && this.§6!Y§())
         {
            return;
         }
         this.§%n§.push(param1);
         ++this.§9!F§;
      }
      
      public function §=b§(param1:Function = null) : void
      {
         if(this.§'R§ && this.§6!Y§())
         {
            return;
         }
         this.§=d§ = param1;
         this.§9!F§ = this.§%n§.length;
         this.§'R§ = true;
         this.§+<§();
      }
      
      private function §9K§() : Boolean
      {
         if(this.§7!_§ && !this.§7!_§.§&x§)
         {
            this.§7!_§.removeEventListener(Event.COMPLETE,this.§=n§);
            this.§7!_§.addEventListener(Event.COMPLETE,this.§=n§);
            return true;
         }
         return false;
      }
      
      private function §=n§(param1:Event) : void
      {
         this.§7!_§.removeEventListener(Event.COMPLETE,this.§=n§);
         this.§+<§();
      }
      
      private function §+<§() : void
      {
         if(this.§%n§.length > 0)
         {
            this.§,!O§();
         }
         else if(this.§`=§() >= 1)
         {
            this.§;!L§();
         }
      }
      
      private function §,!O§() : void
      {
         var _loc1_:String = null;
         if(this.§'R§ && this.§6!Y§())
         {
            if(this.§9K§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§#%§ != null && this.§#%§.length > 0)
            {
               _loc1_ = "?version=" + this.§#%§;
            }
            this.§<X§ = 0;
            this.§+!"§ = this.§%n§.shift();
            if(this.§+!"§.localName() == "pack")
            {
               this.§-!4§ = new URLLoader();
               this.§-!4§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§-!4§.addEventListener(Event.COMPLETE,this.§=!M§);
               this.§-!4§.addEventListener(IOErrorEvent.IO_ERROR,this.§7!e§);
               this.§-!4§.addEventListener(ProgressEvent.PROGRESS,this.§8<§);
               this.§ ^§ = this.§ 2§ + this.§+!"§.@url.toString() + _loc1_;
               this.§-!4§.load(new URLRequest(this.§ ^§));
            }
            else
            {
               this.§<!c§ = new Loader();
               this.§<!c§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§=j§);
               this.§<!c§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§7!e§);
               this.§<!c§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§8<§);
               this.§ ^§ = this.§ 2§ + this.§7o§ + this.§+!"§.@swf.toString() + _loc1_;
               this.§<!c§.load(new URLRequest(this.§ ^§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §7!e§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§ ^§;
         this.§+!C§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§ ^§,§1U§.§=!R§);
      }
      
      private function §=!M§(param1:Event) : void
      {
         this.§?!1§.push(this.§-!4§.data);
         if(this.§,!=§ != null)
         {
            this.§,!=§(this.§-!4§.data);
         }
         if(this.§7!_§)
         {
            this.§7!_§.§%!1§(this.§-!4§.data);
         }
         this.§+!C§();
         ++this.§3R§;
         this.§+<§();
      }
      
      private function §8<§(param1:ProgressEvent) : void
      {
         this.§<X§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §=j§(param1:Event) : void
      {
         §!]§(this.§<!c§,this.§+!"§);
         this.§+!C§();
         ++this.§3R§;
         this.§+<§();
      }
      
      private function §+!C§() : void
      {
         if(this.§<!c§)
         {
            this.§<!c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=j§);
            this.§<!c§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!e§);
            this.§<!c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=j§);
            this.§<!c§ = null;
         }
         if(this.§-!4§)
         {
            this.§-!4§.removeEventListener(Event.COMPLETE,this.§=!M§);
            this.§-!4§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!e§);
            this.§-!4§.removeEventListener(ProgressEvent.PROGRESS,this.§8<§);
            this.§-!4§ = null;
         }
         this.§+!"§ = null;
      }
      
      private function §;!L§() : void
      {
         this.§<X§ = 0;
         if(this.§=d§ != null)
         {
            this.§=d§.call();
            this.§=d§ = null;
         }
      }
      
      public function §+L§() : void
      {
         this.§<X§ = 0;
         this.§'R§ = false;
         this.§9!F§ = 0;
         if(this.§%n§)
         {
            this.§%n§ = null;
         }
         this.§=d§ = null;
         this.§+!C§();
      }
      
      public function §`=§() : Number
      {
         if(!this.§6!Y§())
         {
            §8!6§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§'R§ || !this.§%n§ || !this.§6!Y§())
         {
            §8!6§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§3R§ == this.§9!F§)
         {
            if(this.§7!_§ && this.§9!F§ > 0)
            {
               if(this.§7!_§.§&x§)
               {
                  return 1;
               }
               return (this.§3R§ + this.§<X§ - 0.5) / this.§9!F§;
            }
            return 1;
         }
         return this.§3R§ / this.§9!F§;
      }
   }
}
