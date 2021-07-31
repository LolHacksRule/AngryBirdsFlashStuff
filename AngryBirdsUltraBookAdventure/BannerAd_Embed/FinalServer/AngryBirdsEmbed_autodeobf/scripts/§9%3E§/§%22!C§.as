package §9>§
{
   import §+!"§.§5!<§;
   import §4!H§.§1Q§;
   import com.rovio.assets.§'!H§;
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
   
   public class §"!C§
   {
      
      private static var §;R§:§"!C§;
       
      
      private var §>y§:Vector.<XML>;
      
      private var §#!B§:Boolean = false;
      
      private var §2!9§:int;
      
      private var §+!>§:int;
      
      private var §<%§:Function;
      
      private var §>U§:Function;
      
      private var §1@§:Loader;
      
      private var §!!A§:URLLoader;
      
      private var §]J§:XML;
      
      private var §`#§:String = "";
      
      private var §,!F§:int = 0;
      
      private var §8L§:Vector.<String>;
      
      private var §4m§:String = "external_assets/LoadTest.swf";
      
      private var §+O§:Boolean = false;
      
      private var §8e§:Array;
      
      private var §@m§:String;
      
      private var §4! §:String;
      
      private var §@4§:Number = 0;
      
      private var §6Y§:String = "";
      
      private var §9K§:§,!§;
      
      public function §"!C§()
      {
         this.§8e§ = [];
         super();
      }
      
      public static function get §^n§() : §"!C§
      {
         if(!§;R§)
         {
            §;R§ = new §"!C§();
         }
         return §;R§;
      }
      
      public static function §-!B§(param1:Loader, param2:XML) : void
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
            §'!H§.§4w§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §#e§() : void
      {
         this.§8e§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§,!§, param5:Function = null) : void
      {
         this.§@m§ = param2;
         this.§4! § = param3;
         this.§+O§ = true;
         this.§#!B§ = false;
         this.§9K§ = param4;
         this.§<%§ = param5;
      }
      
      private function §#!§() : void
      {
         this.§+O§ = true;
         this.§#!B§ = false;
      }
      
      public function §-6§() : Boolean
      {
         return this.§+O§;
      }
      
      public function §^E§() : Boolean
      {
         if(this.§#!B§ || !this.§-6§())
         {
            return false;
         }
         this.§>y§ = new Vector.<XML>();
         this.§2!9§ = 0;
         return true;
      }
      
      public function §>!3§(param1:XML) : void
      {
         if(this.§#!B§ && this.§-6§())
         {
            return;
         }
         this.§>y§.push(param1);
         ++this.§2!9§;
      }
      
      public function §7p§(param1:Function = null) : void
      {
         if(this.§#!B§ && this.§-6§())
         {
            return;
         }
         this.§>U§ = param1;
         this.§2!9§ = this.§>y§.length;
         this.§#!B§ = true;
         this.§#F§();
      }
      
      private function §%^§() : Boolean
      {
         if(this.§9K§ && !this.§9K§.§4!+§)
         {
            this.§9K§.removeEventListener(Event.COMPLETE,this.§!!,§);
            this.§9K§.addEventListener(Event.COMPLETE,this.§!!,§);
            return true;
         }
         return false;
      }
      
      private function §!!,§(param1:Event) : void
      {
         this.§9K§.removeEventListener(Event.COMPLETE,this.§!!,§);
         this.§#F§();
      }
      
      private function §#F§() : void
      {
         if(this.§>y§.length > 0)
         {
            this.§2J§();
         }
         else if(this.§4"§() >= 1)
         {
            this.§8,§();
         }
      }
      
      private function §2J§() : void
      {
         var _loc1_:String = null;
         if(this.§#!B§ && this.§-6§())
         {
            if(this.§%^§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§4! § != null && this.§4! §.length > 0)
            {
               _loc1_ = "?version=" + this.§4! §;
            }
            this.§@4§ = 0;
            this.§]J§ = this.§>y§.shift();
            if(this.§]J§.localName() == "pack")
            {
               this.§!!A§ = new URLLoader();
               this.§!!A§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§!!A§.addEventListener(Event.COMPLETE,this.§8E§);
               this.§!!A§.addEventListener(IOErrorEvent.IO_ERROR,this.§01§);
               this.§!!A§.addEventListener(ProgressEvent.PROGRESS,this.§1=§);
               this.§6Y§ = this.§@m§ + this.§]J§.@url.toString() + _loc1_;
               this.§!!A§.load(new URLRequest(this.§6Y§));
            }
            else
            {
               this.§1@§ = new Loader();
               this.§1@§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%!9§);
               this.§1@§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§01§);
               this.§1@§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§1=§);
               this.§6Y§ = this.§@m§ + this.§`#§ + this.§]J§.@swf.toString() + _loc1_;
               this.§1@§.load(new URLRequest(this.§6Y§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §01§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§6Y§;
         this.§6N§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§6Y§,§1Q§.§9!7§);
      }
      
      private function §8E§(param1:Event) : void
      {
         this.§8e§.push(this.§!!A§.data);
         if(this.§<%§ != null)
         {
            this.§<%§(this.§!!A§.data);
         }
         if(this.§9K§)
         {
            this.§9K§.§#!6§(this.§!!A§.data);
         }
         this.§6N§();
         ++this.§+!>§;
         this.§#F§();
      }
      
      private function §1=§(param1:ProgressEvent) : void
      {
         this.§@4§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §%!9§(param1:Event) : void
      {
         §-!B§(this.§1@§,this.§]J§);
         this.§6N§();
         ++this.§+!>§;
         this.§#F§();
      }
      
      private function §6N§() : void
      {
         if(this.§1@§)
         {
            this.§1@§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%!9§);
            this.§1@§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§01§);
            this.§1@§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%!9§);
            this.§1@§ = null;
         }
         if(this.§!!A§)
         {
            this.§!!A§.removeEventListener(Event.COMPLETE,this.§8E§);
            this.§!!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§01§);
            this.§!!A§.removeEventListener(ProgressEvent.PROGRESS,this.§1=§);
            this.§!!A§ = null;
         }
         this.§]J§ = null;
      }
      
      private function §8,§() : void
      {
         this.§@4§ = 0;
         if(this.§>U§ != null)
         {
            this.§>U§.call();
            this.§>U§ = null;
         }
      }
      
      public function §`5§() : void
      {
         this.§@4§ = 0;
         this.§#!B§ = false;
         this.§2!9§ = 0;
         if(this.§>y§)
         {
            this.§>y§ = null;
         }
         this.§>U§ = null;
         this.§6N§();
      }
      
      public function §4"§() : Number
      {
         if(!this.§-6§())
         {
            §5!<§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§#!B§ || !this.§>y§ || !this.§-6§())
         {
            §5!<§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§+!>§ == this.§2!9§)
         {
            if(this.§9K§ && this.§2!9§ > 0)
            {
               if(this.§9K§.§4!+§)
               {
                  return 1;
               }
               return (this.§+!>§ + this.§@4§ - 0.5) / this.§2!9§;
            }
            return 1;
         }
         return this.§+!>§ / this.§2!9§;
      }
   }
}
