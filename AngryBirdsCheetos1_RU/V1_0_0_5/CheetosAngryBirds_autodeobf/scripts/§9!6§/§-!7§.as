package §9!6§
{
   import §!%§.§;!2§;
   import §!4§.§=!Z§;
   import §[-§.§#!,§;
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
   
   public class §-!7§
   {
      
      private static var §%P§:§-!7§;
       
      
      private var §-]§:Vector.<XML>;
      
      private var §9H§:Boolean = false;
      
      private var §9!>§:int;
      
      private var §,!C§:int;
      
      private var §&o§:Function;
      
      private var §88§:Function;
      
      private var §7!+§:Loader;
      
      private var § !A§:URLLoader;
      
      private var §continue§:XML;
      
      private var §<M§:String = "";
      
      private var §[!-§:int = 0;
      
      private var §+N§:Vector.<String>;
      
      private var §%D§:String = "external_assets/LoadTest.swf";
      
      private var §1=§:Boolean = false;
      
      private var §'W§:Array;
      
      private var §65§:String;
      
      private var §?]§:String;
      
      private var §'n§:Number = 0;
      
      private var §@R§:String = "";
      
      private var §0!K§:§]t§;
      
      public function §-!7§()
      {
         this.§'W§ = [];
         super();
      }
      
      public static function get §,§() : §-!7§
      {
         if(!§%P§)
         {
            §%P§ = new §-!7§();
         }
         return §%P§;
      }
      
      public static function §9!A§(param1:Loader, param2:XML) : void
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
            §#!,§.§2!=§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §=!5§() : void
      {
         this.§'W§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§]t§, param5:Function = null) : void
      {
         this.§65§ = param2;
         this.§?]§ = param3;
         this.§1=§ = true;
         this.§9H§ = false;
         this.§0!K§ = param4;
         this.§&o§ = param5;
      }
      
      private function §'!-§() : void
      {
         this.§1=§ = true;
         this.§9H§ = false;
      }
      
      public function §%!^§() : Boolean
      {
         return this.§1=§;
      }
      
      public function §@!T§() : Boolean
      {
         if(this.§9H§ || !this.§%!^§())
         {
            return false;
         }
         this.§-]§ = new Vector.<XML>();
         this.§9!>§ = 0;
         return true;
      }
      
      public function §,F§(param1:XML) : void
      {
         if(this.§9H§ && this.§%!^§())
         {
            return;
         }
         this.§-]§.push(param1);
         ++this.§9!>§;
      }
      
      public function §3L§(param1:Function = null) : void
      {
         if(this.§9H§ && this.§%!^§())
         {
            return;
         }
         this.§88§ = param1;
         this.§9!>§ = this.§-]§.length;
         this.§9H§ = true;
         this.§#J§();
      }
      
      private function §@!G§() : Boolean
      {
         if(this.§0!K§ && !this.§0!K§.§&+§)
         {
            this.§0!K§.removeEventListener(Event.COMPLETE,this.§&X§);
            this.§0!K§.addEventListener(Event.COMPLETE,this.§&X§);
            return true;
         }
         return false;
      }
      
      private function §&X§(param1:Event) : void
      {
         this.§0!K§.removeEventListener(Event.COMPLETE,this.§&X§);
         this.§#J§();
      }
      
      private function §#J§() : void
      {
         if(this.§-]§.length > 0)
         {
            this.§1f§();
         }
         else if(this.§ !F§() >= 1)
         {
            this.§2P§();
         }
      }
      
      private function §1f§() : void
      {
         var _loc1_:String = null;
         if(this.§9H§ && this.§%!^§())
         {
            if(this.§@!G§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§?]§ != null && this.§?]§.length > 0)
            {
               _loc1_ = "?version=" + this.§?]§;
            }
            this.§'n§ = 0;
            this.§continue§ = this.§-]§.shift();
            if(this.§continue§.localName() == "pack")
            {
               this.§ !A§ = new URLLoader();
               this.§ !A§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§ !A§.addEventListener(Event.COMPLETE,this.§`R§);
               this.§ !A§.addEventListener(IOErrorEvent.IO_ERROR,this.§`!A§);
               this.§ !A§.addEventListener(ProgressEvent.PROGRESS,this.§=L§);
               this.§@R§ = this.§65§ + this.§continue§.@url.toString() + _loc1_;
               this.§ !A§.load(new URLRequest(this.§@R§));
            }
            else
            {
               this.§7!+§ = new Loader();
               this.§7!+§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5v§);
               this.§7!+§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§`!A§);
               this.§7!+§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§=L§);
               this.§@R§ = this.§65§ + this.§<M§ + this.§continue§.@swf.toString() + _loc1_;
               this.§7!+§.load(new URLRequest(this.§@R§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §`!A§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§@R§;
         this.§-p§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§@R§,§;!2§.§'!1§);
      }
      
      private function §`R§(param1:Event) : void
      {
         this.§'W§.push(this.§ !A§.data);
         if(this.§&o§ != null)
         {
            this.§&o§(this.§ !A§.data);
         }
         if(this.§0!K§)
         {
            this.§0!K§.§@! §(this.§ !A§.data);
         }
         this.§-p§();
         ++this.§,!C§;
         this.§#J§();
      }
      
      private function §=L§(param1:ProgressEvent) : void
      {
         this.§'n§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §5v§(param1:Event) : void
      {
         §9!A§(this.§7!+§,this.§continue§);
         this.§-p§();
         ++this.§,!C§;
         this.§#J§();
      }
      
      private function §-p§() : void
      {
         if(this.§7!+§)
         {
            this.§7!+§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5v§);
            this.§7!+§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!A§);
            this.§7!+§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5v§);
            this.§7!+§ = null;
         }
         if(this.§ !A§)
         {
            this.§ !A§.removeEventListener(Event.COMPLETE,this.§`R§);
            this.§ !A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!A§);
            this.§ !A§.removeEventListener(ProgressEvent.PROGRESS,this.§=L§);
            this.§ !A§ = null;
         }
         this.§continue§ = null;
      }
      
      private function §2P§() : void
      {
         this.§'n§ = 0;
         if(this.§88§ != null)
         {
            this.§88§.call();
            this.§88§ = null;
         }
      }
      
      public function §7!O§() : void
      {
         this.§'n§ = 0;
         this.§9H§ = false;
         this.§9!>§ = 0;
         if(this.§-]§)
         {
            this.§-]§ = null;
         }
         this.§88§ = null;
         this.§-p§();
      }
      
      public function § !F§() : Number
      {
         if(!this.§%!^§())
         {
            §=!Z§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§9H§ || !this.§-]§ || !this.§%!^§())
         {
            §=!Z§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§,!C§ == this.§9!>§)
         {
            if(this.§0!K§ && this.§9!>§ > 0)
            {
               if(this.§0!K§.§&+§)
               {
                  return 1;
               }
               return (this.§,!C§ + this.§'n§ - 0.5) / this.§9!>§;
            }
            return 1;
         }
         return this.§,!C§ / this.§9!>§;
      }
   }
}
