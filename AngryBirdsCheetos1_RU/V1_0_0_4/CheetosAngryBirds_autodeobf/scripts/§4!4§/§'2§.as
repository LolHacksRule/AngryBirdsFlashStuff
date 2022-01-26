package §4!4§
{
   import §@y§.§"!X§;
   import §^!&§.§;C§;
   import §^3§.§9!G§;
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
   
   public class §'2§
   {
      
      private static var §2P§:§'2§;
       
      
      private var §<-§:Vector.<XML>;
      
      private var §<!`§:Boolean = false;
      
      private var §4!1§:int;
      
      private var §>!_§:int;
      
      private var §=U§:Function;
      
      private var §-c§:Function;
      
      private var §[3§:Loader;
      
      private var §<!W§:URLLoader;
      
      private var §<4§:XML;
      
      private var §7!<§:String = "";
      
      private var §0C§:int = 0;
      
      private var §3J§:Vector.<String>;
      
      private var §^v§:String = "external_assets/LoadTest.swf";
      
      private var §9e§:Boolean = false;
      
      private var §06§:Array;
      
      private var §%H§:String;
      
      private var §6!R§:String;
      
      private var §`#§:Number = 0;
      
      private var §5c§:String = "";
      
      private var § 4§:§+§;
      
      public function §'2§()
      {
         this.§06§ = [];
         super();
      }
      
      public static function get §[P§() : §'2§
      {
         if(!§2P§)
         {
            §2P§ = new §'2§();
         }
         return §2P§;
      }
      
      public static function §!d§(param1:Loader, param2:XML) : void
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
            §"!X§.§%I§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §?B§() : void
      {
         this.§06§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§+§, param5:Function = null) : void
      {
         this.§%H§ = param2;
         this.§6!R§ = param3;
         this.§9e§ = true;
         this.§<!`§ = false;
         this.§ 4§ = param4;
         this.§=U§ = param5;
      }
      
      private function §=!2§() : void
      {
         this.§9e§ = true;
         this.§<!`§ = false;
      }
      
      public function §4@§() : Boolean
      {
         return this.§9e§;
      }
      
      public function §8Q§() : Boolean
      {
         if(this.§<!`§ || !this.§4@§())
         {
            return false;
         }
         this.§<-§ = new Vector.<XML>();
         this.§4!1§ = 0;
         return true;
      }
      
      public function §[!T§(param1:XML) : void
      {
         if(this.§<!`§ && this.§4@§())
         {
            return;
         }
         this.§<-§.push(param1);
         ++this.§4!1§;
      }
      
      public function §;o§(param1:Function = null) : void
      {
         if(this.§<!`§ && this.§4@§())
         {
            return;
         }
         this.§-c§ = param1;
         this.§4!1§ = this.§<-§.length;
         this.§<!`§ = true;
         this.§`!J§();
      }
      
      private function §"A§() : Boolean
      {
         if(this.§ 4§ && !this.§ 4§.§1@§)
         {
            this.§ 4§.removeEventListener(Event.COMPLETE,this.§0!+§);
            this.§ 4§.addEventListener(Event.COMPLETE,this.§0!+§);
            return true;
         }
         return false;
      }
      
      private function §0!+§(param1:Event) : void
      {
         this.§ 4§.removeEventListener(Event.COMPLETE,this.§0!+§);
         this.§`!J§();
      }
      
      private function §`!J§() : void
      {
         if(this.§<-§.length > 0)
         {
            this.§var §();
         }
         else if(this.§"!H§() >= 1)
         {
            this.§7!3§();
         }
      }
      
      private function §var §() : void
      {
         var _loc1_:String = null;
         if(this.§<!`§ && this.§4@§())
         {
            if(this.§"A§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6!R§ != null && this.§6!R§.length > 0)
            {
               _loc1_ = "?version=" + this.§6!R§;
            }
            this.§`#§ = 0;
            this.§<4§ = this.§<-§.shift();
            if(this.§<4§.localName() == "pack")
            {
               this.§<!W§ = new URLLoader();
               this.§<!W§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§<!W§.addEventListener(Event.COMPLETE,this.§2x§);
               this.§<!W§.addEventListener(IOErrorEvent.IO_ERROR,this.dynamic);
               this.§<!W§.addEventListener(ProgressEvent.PROGRESS,this.§!E§);
               this.§5c§ = this.§%H§ + this.§<4§.@url.toString() + _loc1_;
               this.§<!W§.load(new URLRequest(this.§5c§));
            }
            else
            {
               this.§[3§ = new Loader();
               this.§[3§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§[[§);
               this.§[3§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.dynamic);
               this.§[3§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§!E§);
               this.§5c§ = this.§%H§ + this.§7!<§ + this.§<4§.@swf.toString() + _loc1_;
               this.§[3§.load(new URLRequest(this.§5c§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function dynamic(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§5c§;
         this.§"j§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§5c§,§9!G§.§1!!§);
      }
      
      private function §2x§(param1:Event) : void
      {
         this.§06§.push(this.§<!W§.data);
         if(this.§=U§ != null)
         {
            this.§=U§(this.§<!W§.data);
         }
         if(this.§ 4§)
         {
            this.§ 4§.§>_§(this.§<!W§.data);
         }
         this.§"j§();
         ++this.§>!_§;
         this.§`!J§();
      }
      
      private function §!E§(param1:ProgressEvent) : void
      {
         this.§`#§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §[[§(param1:Event) : void
      {
         §!d§(this.§[3§,this.§<4§);
         this.§"j§();
         ++this.§>!_§;
         this.§`!J§();
      }
      
      private function §"j§() : void
      {
         if(this.§[3§)
         {
            this.§[3§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§[[§);
            this.§[3§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.dynamic);
            this.§[3§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§[[§);
            this.§[3§ = null;
         }
         if(this.§<!W§)
         {
            this.§<!W§.removeEventListener(Event.COMPLETE,this.§2x§);
            this.§<!W§.removeEventListener(IOErrorEvent.IO_ERROR,this.dynamic);
            this.§<!W§.removeEventListener(ProgressEvent.PROGRESS,this.§!E§);
            this.§<!W§ = null;
         }
         this.§<4§ = null;
      }
      
      private function §7!3§() : void
      {
         this.§`#§ = 0;
         if(this.§-c§ != null)
         {
            this.§-c§.call();
            this.§-c§ = null;
         }
      }
      
      public function §6!C§() : void
      {
         this.§`#§ = 0;
         this.§<!`§ = false;
         this.§4!1§ = 0;
         if(this.§<-§)
         {
            this.§<-§ = null;
         }
         this.§-c§ = null;
         this.§"j§();
      }
      
      public function §"!H§() : Number
      {
         if(!this.§4@§())
         {
            §;C§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§<!`§ || !this.§<-§ || !this.§4@§())
         {
            §;C§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§>!_§ == this.§4!1§)
         {
            if(this.§ 4§ && this.§4!1§ > 0)
            {
               if(this.§ 4§.§1@§)
               {
                  return 1;
               }
               return (this.§>!_§ + this.§`#§ - 0.5) / this.§4!1§;
            }
            return 1;
         }
         return this.§>!_§ / this.§4!1§;
      }
   }
}
