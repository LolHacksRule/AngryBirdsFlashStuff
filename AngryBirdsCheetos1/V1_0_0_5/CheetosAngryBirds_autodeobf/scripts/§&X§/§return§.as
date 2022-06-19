package §&X§
{
   import §&! §.§7L§;
   import §&N§.§@,§;
   import §-0§.§^a§;
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
   
   public class §return§
   {
      
      private static var §;_§:§return§;
       
      
      private var §#!D§:Vector.<XML>;
      
      private var §'!A§:Boolean = false;
      
      private var §14§:int;
      
      private var §6!<§:int;
      
      private var §@V§:Function;
      
      private var §+Y§:Function;
      
      private var §=c§:Loader;
      
      private var §4!0§:URLLoader;
      
      private var §6!B§:XML;
      
      private var §]!O§:String = "";
      
      private var §#!V§:int = 0;
      
      private var §=!?§:Vector.<String>;
      
      private var §3y§:String = "external_assets/LoadTest.swf";
      
      private var §0a§:Boolean = false;
      
      private var §>W§:Array;
      
      private var § each§:String;
      
      private var §!k§:String;
      
      private var §<,§:Number = 0;
      
      private var §5n§:String = "";
      
      private var § !6§:§%!N§;
      
      public function §return§()
      {
         this.§>W§ = [];
         super();
      }
      
      public static function get §-!U§() : §return§
      {
         if(!§;_§)
         {
            §;_§ = new §return§();
         }
         return §;_§;
      }
      
      public static function §!!L§(param1:Loader, param2:XML) : void
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
            §^a§.§&0§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §@`§() : void
      {
         this.§>W§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§%!N§, param5:Function = null) : void
      {
         this.§ each§ = param2;
         this.§!k§ = param3;
         this.§0a§ = true;
         this.§'!A§ = false;
         this.§ !6§ = param4;
         this.§@V§ = param5;
      }
      
      private function §5!W§() : void
      {
         this.§0a§ = true;
         this.§'!A§ = false;
      }
      
      public function §?%§() : Boolean
      {
         return this.§0a§;
      }
      
      public function §8C§() : Boolean
      {
         if(this.§'!A§ || !this.§?%§())
         {
            return false;
         }
         this.§#!D§ = new Vector.<XML>();
         this.§14§ = 0;
         return true;
      }
      
      public function §]6§(param1:XML) : void
      {
         if(this.§'!A§ && this.§?%§())
         {
            return;
         }
         this.§#!D§.push(param1);
         ++this.§14§;
      }
      
      public function §0!F§(param1:Function = null) : void
      {
         if(this.§'!A§ && this.§?%§())
         {
            return;
         }
         this.§+Y§ = param1;
         this.§14§ = this.§#!D§.length;
         this.§'!A§ = true;
         this.§[8§();
      }
      
      private function §#!6§() : Boolean
      {
         if(this.§ !6§ && !this.§ !6§.§#!J§)
         {
            this.§ !6§.removeEventListener(Event.COMPLETE,this.§[!S§);
            this.§ !6§.addEventListener(Event.COMPLETE,this.§[!S§);
            return true;
         }
         return false;
      }
      
      private function §[!S§(param1:Event) : void
      {
         this.§ !6§.removeEventListener(Event.COMPLETE,this.§[!S§);
         this.§[8§();
      }
      
      private function §[8§() : void
      {
         if(this.§#!D§.length > 0)
         {
            this.§6o§();
         }
         else if(this.§7A§() >= 1)
         {
            this.§1R§();
         }
      }
      
      private function §6o§() : void
      {
         var _loc1_:String = null;
         if(this.§'!A§ && this.§?%§())
         {
            if(this.§#!6§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§!k§ != null && this.§!k§.length > 0)
            {
               _loc1_ = "?version=" + this.§!k§;
            }
            this.§<,§ = 0;
            this.§6!B§ = this.§#!D§.shift();
            if(this.§6!B§.localName() == "pack")
            {
               this.§4!0§ = new URLLoader();
               this.§4!0§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§4!0§.addEventListener(Event.COMPLETE,this.§2!F§);
               this.§4!0§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!5§);
               this.§4!0§.addEventListener(ProgressEvent.PROGRESS,this.§7F§);
               this.§5n§ = this.§ each§ + this.§6!B§.@url.toString() + _loc1_;
               this.§4!0§.load(new URLRequest(this.§5n§));
            }
            else
            {
               this.§=c§ = new Loader();
               this.§=c§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5!H§);
               this.§=c§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"!5§);
               this.§=c§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§7F§);
               this.§5n§ = this.§ each§ + this.§]!O§ + this.§6!B§.@swf.toString() + _loc1_;
               this.§=c§.load(new URLRequest(this.§5n§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §"!5§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§5n§;
         this.§3!"§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§5n§,§7L§.§,!'§);
      }
      
      private function §2!F§(param1:Event) : void
      {
         this.§>W§.push(this.§4!0§.data);
         if(this.§@V§ != null)
         {
            this.§@V§(this.§4!0§.data);
         }
         if(this.§ !6§)
         {
            this.§ !6§.§6G§(this.§4!0§.data);
         }
         this.§3!"§();
         ++this.§6!<§;
         this.§[8§();
      }
      
      private function §7F§(param1:ProgressEvent) : void
      {
         this.§<,§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §5!H§(param1:Event) : void
      {
         §!!L§(this.§=c§,this.§6!B§);
         this.§3!"§();
         ++this.§6!<§;
         this.§[8§();
      }
      
      private function §3!"§() : void
      {
         if(this.§=c§)
         {
            this.§=c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5!H§);
            this.§=c§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!5§);
            this.§=c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5!H§);
            this.§=c§ = null;
         }
         if(this.§4!0§)
         {
            this.§4!0§.removeEventListener(Event.COMPLETE,this.§2!F§);
            this.§4!0§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!5§);
            this.§4!0§.removeEventListener(ProgressEvent.PROGRESS,this.§7F§);
            this.§4!0§ = null;
         }
         this.§6!B§ = null;
      }
      
      private function §1R§() : void
      {
         this.§<,§ = 0;
         if(this.§+Y§ != null)
         {
            this.§+Y§.call();
            this.§+Y§ = null;
         }
      }
      
      public function §5U§() : void
      {
         this.§<,§ = 0;
         this.§'!A§ = false;
         this.§14§ = 0;
         if(this.§#!D§)
         {
            this.§#!D§ = null;
         }
         this.§+Y§ = null;
         this.§3!"§();
      }
      
      public function §7A§() : Number
      {
         if(!this.§?%§())
         {
            §@,§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§'!A§ || !this.§#!D§ || !this.§?%§())
         {
            §@,§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§6!<§ == this.§14§)
         {
            if(this.§ !6§ && this.§14§ > 0)
            {
               if(this.§ !6§.§#!J§)
               {
                  return 1;
               }
               return (this.§6!<§ + this.§<,§ - 0.5) / this.§14§;
            }
            return 1;
         }
         return this.§6!<§ / this.§14§;
      }
   }
}
