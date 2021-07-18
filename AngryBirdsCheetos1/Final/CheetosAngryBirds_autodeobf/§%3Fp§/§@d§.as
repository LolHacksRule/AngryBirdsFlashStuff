package §?p§
{
   import § !G§.§ #§;
   import §#!F§.§^L§;
   import §1!K§.§<!I§;
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
   
   public class §@d§
   {
      
      private static var §#!'§:§@d§;
       
      
      private var §%!N§:Vector.<XML>;
      
      private var §9s§:Boolean = false;
      
      private var § !B§:int;
      
      private var §7!Q§:int;
      
      private var §+<§:Function;
      
      private var §<W§:Function;
      
      private var §1!!§:Loader;
      
      private var §&j§:URLLoader;
      
      private var §-T§:XML;
      
      private var §8!T§:String = "";
      
      private var §^!'§:int = 0;
      
      private var §0X§:Vector.<String>;
      
      private var §@!R§:String = "external_assets/LoadTest.swf";
      
      private var §&B§:Boolean = false;
      
      private var §[&§:Array;
      
      private var §9U§:String;
      
      private var §",§:String;
      
      private var §@!>§:Number = 0;
      
      private var §^!J§:String = "";
      
      private var §<8§:§`w§;
      
      public function §@d§()
      {
         this.§[&§ = [];
         super();
      }
      
      public static function get §%!O§() : §@d§
      {
         if(!§#!'§)
         {
            §#!'§ = new §@d§();
         }
         return §#!'§;
      }
      
      public static function §<!N§(param1:Loader, param2:XML) : void
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
            §<!I§.§3! §(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §;3§() : void
      {
         this.§[&§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§`w§, param5:Function = null) : void
      {
         this.§9U§ = param2;
         this.§",§ = param3;
         this.§&B§ = true;
         this.§9s§ = false;
         this.§<8§ = param4;
         this.§+<§ = param5;
      }
      
      private function §=p§() : void
      {
         this.§&B§ = true;
         this.§9s§ = false;
      }
      
      public function §&"§() : Boolean
      {
         return this.§&B§;
      }
      
      public function §@K§() : Boolean
      {
         if(this.§9s§ || !this.§&"§())
         {
            return false;
         }
         this.§%!N§ = new Vector.<XML>();
         this.§ !B§ = 0;
         return true;
      }
      
      public function §%!9§(param1:XML) : void
      {
         if(this.§9s§ && this.§&"§())
         {
            return;
         }
         this.§%!N§.push(param1);
         ++this.§ !B§;
      }
      
      public function §;z§(param1:Function = null) : void
      {
         if(this.§9s§ && this.§&"§())
         {
            return;
         }
         this.§<W§ = param1;
         this.§ !B§ = this.§%!N§.length;
         this.§9s§ = true;
         this.§2=§();
      }
      
      private function §2!P§() : Boolean
      {
         if(this.§<8§ && !this.§<8§.§+!8§)
         {
            this.§<8§.removeEventListener(Event.COMPLETE,this.§'b§);
            this.§<8§.addEventListener(Event.COMPLETE,this.§'b§);
            return true;
         }
         return false;
      }
      
      private function §'b§(param1:Event) : void
      {
         this.§<8§.removeEventListener(Event.COMPLETE,this.§'b§);
         this.§2=§();
      }
      
      private function §2=§() : void
      {
         if(this.§%!N§.length > 0)
         {
            this.§?f§();
         }
         else if(this.§ O§() >= 1)
         {
            this.§!!9§();
         }
      }
      
      private function §?f§() : void
      {
         var _loc1_:String = null;
         if(this.§9s§ && this.§&"§())
         {
            if(this.§2!P§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§",§ != null && this.§",§.length > 0)
            {
               _loc1_ = "?version=" + this.§",§;
            }
            this.§@!>§ = 0;
            this.§-T§ = this.§%!N§.shift();
            if(this.§-T§.localName() == "pack")
            {
               this.§&j§ = new URLLoader();
               this.§&j§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§&j§.addEventListener(Event.COMPLETE,this.§<g§);
               this.§&j§.addEventListener(IOErrorEvent.IO_ERROR,this.§+K§);
               this.§&j§.addEventListener(ProgressEvent.PROGRESS,this.§-!E§);
               this.§^!J§ = this.§9U§ + this.§-T§.@url.toString() + _loc1_;
               this.§&j§.load(new URLRequest(this.§^!J§));
            }
            else
            {
               this.§1!!§ = new Loader();
               this.§1!!§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ for§);
               this.§1!!§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§+K§);
               this.§1!!§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§-!E§);
               this.§^!J§ = this.§9U§ + this.§8!T§ + this.§-T§.@swf.toString() + _loc1_;
               this.§1!!§.load(new URLRequest(this.§^!J§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §+K§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§^!J§;
         this.§2!8§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§^!J§,§^L§.§2! §);
      }
      
      private function §<g§(param1:Event) : void
      {
         this.§[&§.push(this.§&j§.data);
         if(this.§+<§ != null)
         {
            this.§+<§(this.§&j§.data);
         }
         if(this.§<8§)
         {
            this.§<8§.§;!X§(this.§&j§.data);
         }
         this.§2!8§();
         ++this.§7!Q§;
         this.§2=§();
      }
      
      private function §-!E§(param1:ProgressEvent) : void
      {
         this.§@!>§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function § for§(param1:Event) : void
      {
         §<!N§(this.§1!!§,this.§-T§);
         this.§2!8§();
         ++this.§7!Q§;
         this.§2=§();
      }
      
      private function §2!8§() : void
      {
         if(this.§1!!§)
         {
            this.§1!!§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ for§);
            this.§1!!§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§+K§);
            this.§1!!§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ for§);
            this.§1!!§ = null;
         }
         if(this.§&j§)
         {
            this.§&j§.removeEventListener(Event.COMPLETE,this.§<g§);
            this.§&j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+K§);
            this.§&j§.removeEventListener(ProgressEvent.PROGRESS,this.§-!E§);
            this.§&j§ = null;
         }
         this.§-T§ = null;
      }
      
      private function §!!9§() : void
      {
         this.§@!>§ = 0;
         if(this.§<W§ != null)
         {
            this.§<W§.call();
            this.§<W§ = null;
         }
      }
      
      public function §3T§() : void
      {
         this.§@!>§ = 0;
         this.§9s§ = false;
         this.§ !B§ = 0;
         if(this.§%!N§)
         {
            this.§%!N§ = null;
         }
         this.§<W§ = null;
         this.§2!8§();
      }
      
      public function § O§() : Number
      {
         if(!this.§&"§())
         {
            § #§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§9s§ || !this.§%!N§ || !this.§&"§())
         {
            § #§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§7!Q§ == this.§ !B§)
         {
            if(this.§<8§ && this.§ !B§ > 0)
            {
               if(this.§<8§.§+!8§)
               {
                  return 1;
               }
               return (this.§7!Q§ + this.§@!>§ - 0.5) / this.§ !B§;
            }
            return 1;
         }
         return this.§7!Q§ / this.§ !B§;
      }
   }
}
