package §7!5§
{
   import §1!K§.§>!<§;
   import §=!S§.§ !&§;
   import §@u§.§]!-§;
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
   
   public class §=!2§
   {
      
      private static var §,!@§:§=!2§;
       
      
      private var §8H§:Vector.<XML>;
      
      private var §-R§:Boolean = false;
      
      private var §3r§:int;
      
      private var §8v§:int;
      
      private var §#!E§:Function;
      
      private var §%H§:Function;
      
      private var §8!c§:Loader;
      
      private var §,!H§:URLLoader;
      
      private var §<!>§:XML;
      
      private var §-!U§:String = "";
      
      private var §5&§:int = 0;
      
      private var §#!@§:Vector.<String>;
      
      private var §9a§:String = "external_assets/LoadTest.swf";
      
      private var §3!8§:Boolean = false;
      
      private var §>k§:Array;
      
      private var §9!%§:String;
      
      private var §8!E§:String;
      
      private var §;!P§:Number = 0;
      
      private var §^g§:String = "";
      
      private var §#J§:§&%§;
      
      public function §=!2§()
      {
         this.§>k§ = [];
         super();
      }
      
      public static function get §;!F§() : §=!2§
      {
         if(!§,!@§)
         {
            §,!@§ = new §=!2§();
         }
         return §,!@§;
      }
      
      public static function §?!§(param1:Loader, param2:XML) : void
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
            §]!-§.§>&§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §4P§() : void
      {
         this.§>k§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§&%§, param5:Function = null) : void
      {
         this.§9!%§ = param2;
         this.§8!E§ = param3;
         this.§3!8§ = true;
         this.§-R§ = false;
         this.§#J§ = param4;
         this.§#!E§ = param5;
      }
      
      private function §+y§() : void
      {
         this.§3!8§ = true;
         this.§-R§ = false;
      }
      
      public function §%!=§() : Boolean
      {
         return this.§3!8§;
      }
      
      public function §5W§() : Boolean
      {
         if(this.§-R§ || !this.§%!=§())
         {
            return false;
         }
         this.§8H§ = new Vector.<XML>();
         this.§3r§ = 0;
         return true;
      }
      
      public function §9§(param1:XML) : void
      {
         if(this.§-R§ && this.§%!=§())
         {
            return;
         }
         this.§8H§.push(param1);
         ++this.§3r§;
      }
      
      public function §9!`§(param1:Function = null) : void
      {
         if(this.§-R§ && this.§%!=§())
         {
            return;
         }
         this.§%H§ = param1;
         this.§3r§ = this.§8H§.length;
         this.§-R§ = true;
         this.§;!+§();
      }
      
      private function §6!^§() : Boolean
      {
         if(this.§#J§ && !this.§#J§.§2F§)
         {
            this.§#J§.removeEventListener(Event.COMPLETE,this.§ g§);
            this.§#J§.addEventListener(Event.COMPLETE,this.§ g§);
            return true;
         }
         return false;
      }
      
      private function § g§(param1:Event) : void
      {
         this.§#J§.removeEventListener(Event.COMPLETE,this.§ g§);
         this.§;!+§();
      }
      
      private function §;!+§() : void
      {
         if(this.§8H§.length > 0)
         {
            this.§@i§();
         }
         else if(this.§!K§() >= 1)
         {
            this.§2r§();
         }
      }
      
      private function §@i§() : void
      {
         var _loc1_:String = null;
         if(this.§-R§ && this.§%!=§())
         {
            if(this.§6!^§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§8!E§ != null && this.§8!E§.length > 0)
            {
               _loc1_ = "?version=" + this.§8!E§;
            }
            this.§;!P§ = 0;
            this.§<!>§ = this.§8H§.shift();
            if(this.§<!>§.localName() == "pack")
            {
               this.§,!H§ = new URLLoader();
               this.§,!H§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§,!H§.addEventListener(Event.COMPLETE,this.§'t§);
               this.§,!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§3E§);
               this.§,!H§.addEventListener(ProgressEvent.PROGRESS,this.§@!^§);
               this.§^g§ = this.§9!%§ + this.§<!>§.@url.toString() + _loc1_;
               this.§,!H§.load(new URLRequest(this.§^g§));
            }
            else
            {
               this.§8!c§ = new Loader();
               this.§8!c§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2g§);
               this.§8!c§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§3E§);
               this.§8!c§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§@!^§);
               this.§^g§ = this.§9!%§ + this.§-!U§ + this.§<!>§.@swf.toString() + _loc1_;
               this.§8!c§.load(new URLRequest(this.§^g§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §3E§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§^g§;
         this.§`d§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§^g§,§ !&§.§var§);
      }
      
      private function §'t§(param1:Event) : void
      {
         this.§>k§.push(this.§,!H§.data);
         if(this.§#!E§ != null)
         {
            this.§#!E§(this.§,!H§.data);
         }
         if(this.§#J§)
         {
            this.§#J§.§`!2§(this.§,!H§.data);
         }
         this.§`d§();
         ++this.§8v§;
         this.§;!+§();
      }
      
      private function §@!^§(param1:ProgressEvent) : void
      {
         this.§;!P§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §2g§(param1:Event) : void
      {
         §?!§(this.§8!c§,this.§<!>§);
         this.§`d§();
         ++this.§8v§;
         this.§;!+§();
      }
      
      private function §`d§() : void
      {
         if(this.§8!c§)
         {
            this.§8!c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2g§);
            this.§8!c§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§3E§);
            this.§8!c§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2g§);
            this.§8!c§ = null;
         }
         if(this.§,!H§)
         {
            this.§,!H§.removeEventListener(Event.COMPLETE,this.§'t§);
            this.§,!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3E§);
            this.§,!H§.removeEventListener(ProgressEvent.PROGRESS,this.§@!^§);
            this.§,!H§ = null;
         }
         this.§<!>§ = null;
      }
      
      private function §2r§() : void
      {
         this.§;!P§ = 0;
         if(this.§%H§ != null)
         {
            this.§%H§.call();
            this.§%H§ = null;
         }
      }
      
      public function §4Q§() : void
      {
         this.§;!P§ = 0;
         this.§-R§ = false;
         this.§3r§ = 0;
         if(this.§8H§)
         {
            this.§8H§ = null;
         }
         this.§%H§ = null;
         this.§`d§();
      }
      
      public function §!K§() : Number
      {
         if(!this.§%!=§())
         {
            §>!<§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§-R§ || !this.§8H§ || !this.§%!=§())
         {
            §>!<§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§8v§ == this.§3r§)
         {
            if(this.§#J§ && this.§3r§ > 0)
            {
               if(this.§#J§.§2F§)
               {
                  return 1;
               }
               return (this.§8v§ + this.§;!P§ - 0.5) / this.§3r§;
            }
            return 1;
         }
         return this.§8v§ / this.§3r§;
      }
   }
}
