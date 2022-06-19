package §return§
{
   import §&! §.§7L§;
   import §0v§.§-'§;
   import §@,§.§4h§;
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
   
   public class §#!D§
   {
      
      private static var §-!U§:§#!D§;
       
      
      private var §'!A§:Vector.<XML>;
      
      private var §14§:Boolean = false;
      
      private var §6!<§:int;
      
      private var §@V§:int;
      
      private var §+Y§:Function;
      
      private var §4!0§:Function;
      
      private var §&H§:Loader;
      
      private var §6!B§:URLLoader;
      
      private var §]!O§:XML;
      
      private var §#!V§:String = "";
      
      private var §=!?§:int = 0;
      
      private var §3y§:Vector.<String>;
      
      private var §0a§:String = "external_assets/LoadTest.swf";
      
      private var §>W§:Boolean = false;
      
      private var § each§:Array;
      
      private var §!k§:String;
      
      private var §<,§:String;
      
      private var §5n§:Number = 0;
      
      private var § !6§:String = "";
      
      private var §@`§:§![§;
      
      public function §#!D§()
      {
         this.§ each§ = [];
         super();
      }
      
      public static function get §!!L§() : §#!D§
      {
         if(!§-!U§)
         {
            §-!U§ = new §#!D§();
         }
         return §-!U§;
      }
      
      public static function §%!N§(param1:Loader, param2:XML) : void
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
            §-'§.§'b§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §5!W§() : void
      {
         this.§ each§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§![§, param5:Function = null) : void
      {
         this.§!k§ = param2;
         this.§<,§ = param3;
         this.§>W§ = true;
         this.§14§ = false;
         this.§@`§ = param4;
         this.§+Y§ = param5;
      }
      
      private function §?%§() : void
      {
         this.§>W§ = true;
         this.§14§ = false;
      }
      
      public function §8C§() : Boolean
      {
         return this.§>W§;
      }
      
      public function §]6§() : Boolean
      {
         if(this.§14§ || !this.§8C§())
         {
            return false;
         }
         this.§'!A§ = new Vector.<XML>();
         this.§6!<§ = 0;
         return true;
      }
      
      public function §0!F§(param1:XML) : void
      {
         if(this.§14§ && this.§8C§())
         {
            return;
         }
         this.§'!A§.push(param1);
         ++this.§6!<§;
      }
      
      public function §#!6§(param1:Function = null) : void
      {
         if(this.§14§ && this.§8C§())
         {
            return;
         }
         this.§4!0§ = param1;
         this.§6!<§ = this.§'!A§.length;
         this.§14§ = true;
         this.§6o§();
      }
      
      private function §[!S§() : Boolean
      {
         if(this.§@`§ && !this.§@`§.§!!J§)
         {
            this.§@`§.removeEventListener(Event.COMPLETE,this.§[8§);
            this.§@`§.addEventListener(Event.COMPLETE,this.§[8§);
            return true;
         }
         return false;
      }
      
      private function §[8§(param1:Event) : void
      {
         this.§@`§.removeEventListener(Event.COMPLETE,this.§[8§);
         this.§6o§();
      }
      
      private function §6o§() : void
      {
         if(this.§'!A§.length > 0)
         {
            this.§"!5§();
         }
         else if(this.§;_§() >= 1)
         {
            this.§5U§();
         }
      }
      
      private function §"!5§() : void
      {
         var _loc1_:String = null;
         if(this.§14§ && this.§8C§())
         {
            if(this.§[!S§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§<,§ != null && this.§<,§.length > 0)
            {
               _loc1_ = "?version=" + this.§<,§;
            }
            this.§5n§ = 0;
            this.§]!O§ = this.§'!A§.shift();
            if(this.§]!O§.localName() == "pack")
            {
               this.§6!B§ = new URLLoader();
               this.§6!B§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§6!B§.addEventListener(Event.COMPLETE,this.§7F§);
               this.§6!B§.addEventListener(IOErrorEvent.IO_ERROR,this.§2!F§);
               this.§6!B§.addEventListener(ProgressEvent.PROGRESS,this.§5!H§);
               this.§ !6§ = this.§!k§ + this.§]!O§.@url.toString() + _loc1_;
               this.§6!B§.load(new URLRequest(this.§ !6§));
            }
            else
            {
               this.§&H§ = new Loader();
               this.§&H§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3!"§);
               this.§&H§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§2!F§);
               this.§&H§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§5!H§);
               this.§ !6§ = this.§!k§ + this.§#!V§ + this.§]!O§.@swf.toString() + _loc1_;
               this.§&H§.load(new URLRequest(this.§ !6§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §2!F§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§ !6§;
         this.§1R§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§ !6§,§7L§.§,!'§);
      }
      
      private function §7F§(param1:Event) : void
      {
         this.§ each§.push(this.§6!B§.data);
         if(this.§+Y§ != null)
         {
            this.§+Y§(this.§6!B§.data);
         }
         if(this.§@`§)
         {
            this.§@`§.§ !=§(this.§6!B§.data);
         }
         this.§1R§();
         ++this.§@V§;
         this.§6o§();
      }
      
      private function §5!H§(param1:ProgressEvent) : void
      {
         this.§5n§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §3!"§(param1:Event) : void
      {
         §%!N§(this.§&H§,this.§]!O§);
         this.§1R§();
         ++this.§@V§;
         this.§6o§();
      }
      
      private function §1R§() : void
      {
         if(this.§&H§)
         {
            this.§&H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3!"§);
            this.§&H§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!F§);
            this.§&H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3!"§);
            this.§&H§ = null;
         }
         if(this.§6!B§)
         {
            this.§6!B§.removeEventListener(Event.COMPLETE,this.§7F§);
            this.§6!B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!F§);
            this.§6!B§.removeEventListener(ProgressEvent.PROGRESS,this.§5!H§);
            this.§6!B§ = null;
         }
         this.§]!O§ = null;
      }
      
      private function §5U§() : void
      {
         this.§5n§ = 0;
         if(this.§4!0§ != null)
         {
            this.§4!0§.call();
            this.§4!0§ = null;
         }
      }
      
      public function §7A§() : void
      {
         this.§5n§ = 0;
         this.§14§ = false;
         this.§6!<§ = 0;
         if(this.§'!A§)
         {
            this.§'!A§ = null;
         }
         this.§4!0§ = null;
         this.§1R§();
      }
      
      public function §;_§() : Number
      {
         if(!this.§8C§())
         {
            §4h§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§14§ || !this.§'!A§ || !this.§8C§())
         {
            §4h§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§@V§ == this.§6!<§)
         {
            if(this.§@`§ && this.§6!<§ > 0)
            {
               if(this.§@`§.§!!J§)
               {
                  return 1;
               }
               return (this.§@V§ + this.§5n§ - 0.5) / this.§6!<§;
            }
            return 1;
         }
         return this.§@V§ / this.§6!<§;
      }
   }
}
