package §&L§
{
   import §9I§.§=!8§;
   import §?@§.§"]§;
   import §^!L§.§@x§;
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
   
   public class §5!&§
   {
      
      private static var §4R§:§5!&§;
       
      
      private var §?^§:Vector.<XML>;
      
      private var §8^§:Boolean = false;
      
      private var §#Q§:int;
      
      private var §&,§:int;
      
      private var §-?§:Function;
      
      private var §3F§:Function;
      
      private var §3!]§:Loader;
      
      private var §;!A§:URLLoader;
      
      private var §;V§:XML;
      
      private var §-"§:String = "";
      
      private var §+d§:int = 0;
      
      private var §#!§:Vector.<String>;
      
      private var §#2§:String = "external_assets/LoadTest.swf";
      
      private var §6!I§:Boolean = false;
      
      private var §9!_§:Array;
      
      private var §9J§:String;
      
      private var §^q§:String;
      
      private var §1!W§:Number = 0;
      
      private var §#x§:String = "";
      
      private var §8!M§:§%v§;
      
      public function §5!&§()
      {
         this.§9!_§ = [];
         super();
      }
      
      public static function get §'!C§() : §5!&§
      {
         if(!§4R§)
         {
            §4R§ = new §5!&§();
         }
         return §4R§;
      }
      
      public static function §<x§(param1:Loader, param2:XML) : void
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
            §@x§.§#!a§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §>O§() : void
      {
         this.§9!_§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§%v§, param5:Function = null) : void
      {
         this.§9J§ = param2;
         this.§^q§ = param3;
         this.§6!I§ = true;
         this.§8^§ = false;
         this.§8!M§ = param4;
         this.§-?§ = param5;
      }
      
      private function §>!4§() : void
      {
         this.§6!I§ = true;
         this.§8^§ = false;
      }
      
      public function §;#§() : Boolean
      {
         return this.§6!I§;
      }
      
      public function §&!H§() : Boolean
      {
         if(this.§8^§ || !this.§;#§())
         {
            return false;
         }
         this.§?^§ = new Vector.<XML>();
         this.§#Q§ = 0;
         return true;
      }
      
      public function §6j§(param1:XML) : void
      {
         if(this.§8^§ && this.§;#§())
         {
            return;
         }
         this.§?^§.push(param1);
         ++this.§#Q§;
      }
      
      public function §<!J§(param1:Function = null) : void
      {
         if(this.§8^§ && this.§;#§())
         {
            return;
         }
         this.§3F§ = param1;
         this.§#Q§ = this.§?^§.length;
         this.§8^§ = true;
         this.§@y§();
      }
      
      private function §2!7§() : Boolean
      {
         if(this.§8!M§ && !this.§8!M§.§8B§)
         {
            this.§8!M§.removeEventListener(Event.COMPLETE,this.§'H§);
            this.§8!M§.addEventListener(Event.COMPLETE,this.§'H§);
            return true;
         }
         return false;
      }
      
      private function §'H§(param1:Event) : void
      {
         this.§8!M§.removeEventListener(Event.COMPLETE,this.§'H§);
         this.§@y§();
      }
      
      private function §@y§() : void
      {
         if(this.§?^§.length > 0)
         {
            this.§'1§();
         }
         else if(this.§<y§() >= 1)
         {
            this.§4!d§();
         }
      }
      
      private function §'1§() : void
      {
         var _loc1_:String = null;
         if(this.§8^§ && this.§;#§())
         {
            if(this.§2!7§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§^q§ != null && this.§^q§.length > 0)
            {
               _loc1_ = "?version=" + this.§^q§;
            }
            this.§1!W§ = 0;
            this.§;V§ = this.§?^§.shift();
            if(this.§;V§.localName() == "pack")
            {
               this.§;!A§ = new URLLoader();
               this.§;!A§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§;!A§.addEventListener(Event.COMPLETE,this.§^'§);
               this.§;!A§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!?§);
               this.§;!A§.addEventListener(ProgressEvent.PROGRESS,this.§,=§);
               this.§#x§ = this.§9J§ + this.§;V§.@url.toString() + _loc1_;
               this.§;!A§.load(new URLRequest(this.§#x§));
            }
            else
            {
               this.§3!]§ = new Loader();
               this.§3!]§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3`§);
               this.§3!]§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§=!?§);
               this.§3!]§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§,=§);
               this.§#x§ = this.§9J§ + this.§-"§ + this.§;V§.@swf.toString() + _loc1_;
               this.§3!]§.load(new URLRequest(this.§#x§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §=!?§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§#x§;
         this.§6#§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§#x§,§=!8§.§=#§);
      }
      
      private function §^'§(param1:Event) : void
      {
         this.§9!_§.push(this.§;!A§.data);
         if(this.§-?§ != null)
         {
            this.§-?§(this.§;!A§.data);
         }
         if(this.§8!M§)
         {
            this.§8!M§.§5!X§(this.§;!A§.data);
         }
         this.§6#§();
         ++this.§&,§;
         this.§@y§();
      }
      
      private function §,=§(param1:ProgressEvent) : void
      {
         this.§1!W§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §3`§(param1:Event) : void
      {
         §<x§(this.§3!]§,this.§;V§);
         this.§6#§();
         ++this.§&,§;
         this.§@y§();
      }
      
      private function §6#§() : void
      {
         if(this.§3!]§)
         {
            this.§3!]§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3`§);
            this.§3!]§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!?§);
            this.§3!]§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3`§);
            this.§3!]§ = null;
         }
         if(this.§;!A§)
         {
            this.§;!A§.removeEventListener(Event.COMPLETE,this.§^'§);
            this.§;!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!?§);
            this.§;!A§.removeEventListener(ProgressEvent.PROGRESS,this.§,=§);
            this.§;!A§ = null;
         }
         this.§;V§ = null;
      }
      
      private function §4!d§() : void
      {
         this.§1!W§ = 0;
         if(this.§3F§ != null)
         {
            this.§3F§.call();
            this.§3F§ = null;
         }
      }
      
      public function §>z§() : void
      {
         this.§1!W§ = 0;
         this.§8^§ = false;
         this.§#Q§ = 0;
         if(this.§?^§)
         {
            this.§?^§ = null;
         }
         this.§3F§ = null;
         this.§6#§();
      }
      
      public function §<y§() : Number
      {
         if(!this.§;#§())
         {
            §"]§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§8^§ || !this.§?^§ || !this.§;#§())
         {
            §"]§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§&,§ == this.§#Q§)
         {
            if(this.§8!M§ && this.§#Q§ > 0)
            {
               if(this.§8!M§.§8B§)
               {
                  return 1;
               }
               return (this.§&,§ + this.§1!W§ - 0.5) / this.§#Q§;
            }
            return 1;
         }
         return this.§&,§ / this.§#Q§;
      }
   }
}
