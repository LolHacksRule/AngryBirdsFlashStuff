package §"i§
{
   import §&!h§.§4!<§;
   import §6z§.§[g§;
   import com.rovio.assets.§9!N§;
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
   
   public class §5V§
   {
      
      private static var §%!x§:§5V§;
       
      
      private var §&R§:Vector.<XML>;
      
      private var §>!o§:Boolean = false;
      
      private var §=!G§:int;
      
      private var §8U§:int;
      
      private var §,!#§:Function;
      
      private var §^!6§:Function;
      
      private var §2C§:Loader;
      
      private var §+H§:URLLoader;
      
      private var §extends§:XML;
      
      private var §;!E§:String = "";
      
      private var §5!,§:int = 0;
      
      private var §+!E§:Vector.<String>;
      
      private var §"!Q§:String = "external_assets/LoadTest.swf";
      
      private var §2!a§:Boolean = false;
      
      private var §`i§:Array;
      
      private var §-C§:String;
      
      private var §6!u§:String;
      
      private var §`!§:Number = 0;
      
      private var §4!5§:String = "";
      
      private var §`!p§:§?!;§;
      
      public function §5V§()
      {
         this.§`i§ = [];
         super();
      }
      
      public static function get §^Z§() : §5V§
      {
         if(!§%!x§)
         {
            §%!x§ = new §5V§();
         }
         return §%!x§;
      }
      
      public static function §0!h§(param1:Loader, param2:XML) : void
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
            §9!N§.§^!K§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §9[§() : void
      {
         this.§`i§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§?!;§, param5:Function = null) : void
      {
         this.§-C§ = param2;
         this.§6!u§ = param3;
         this.§2!a§ = true;
         this.§>!o§ = false;
         this.§`!p§ = param4;
         this.§,!#§ = param5;
      }
      
      private function §+K§() : void
      {
         this.§2!a§ = true;
         this.§>!o§ = false;
      }
      
      public function §@!h§() : Boolean
      {
         return this.§2!a§;
      }
      
      public function §?r§() : Boolean
      {
         if(this.§>!o§ || !this.§@!h§())
         {
            return false;
         }
         this.§&R§ = new Vector.<XML>();
         this.§=!G§ = 0;
         return true;
      }
      
      public function §@e§(param1:XML) : void
      {
         if(this.§>!o§ && this.§@!h§())
         {
            return;
         }
         this.§&R§.push(param1);
         ++this.§=!G§;
      }
      
      public function §-u§(param1:Function = null) : void
      {
         if(this.§>!o§ && this.§@!h§())
         {
            return;
         }
         this.§^!6§ = param1;
         this.§=!G§ = this.§&R§.length;
         this.§>!o§ = true;
         this.§#3§();
      }
      
      private function §^S§() : Boolean
      {
         if(this.§`!p§ && !this.§`!p§.§><§)
         {
            this.§`!p§.removeEventListener(Event.COMPLETE,this.§0!U§);
            this.§`!p§.addEventListener(Event.COMPLETE,this.§0!U§);
            return true;
         }
         return false;
      }
      
      private function §0!U§(param1:Event) : void
      {
         this.§`!p§.removeEventListener(Event.COMPLETE,this.§0!U§);
         this.§#3§();
      }
      
      private function §#3§() : void
      {
         if(this.§&R§.length > 0)
         {
            this.§-W§();
         }
         else if(this.§#Y§() >= 1)
         {
            this.§4!q§();
         }
      }
      
      private function §-W§() : void
      {
         var _loc1_:String = null;
         if(this.§>!o§ && this.§@!h§())
         {
            if(this.§^S§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6!u§ != null && this.§6!u§.length > 0)
            {
               _loc1_ = "?version=" + this.§6!u§;
            }
            this.§`!§ = 0;
            this.§extends§ = this.§&R§.shift();
            if(this.§extends§.localName() == "pack")
            {
               this.§+H§ = new URLLoader();
               this.§+H§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§+H§.addEventListener(Event.COMPLETE,this.§`!+§);
               this.§+H§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!M§);
               this.§+H§.addEventListener(ProgressEvent.PROGRESS,this.§2!@§);
               this.§4!5§ = this.§-C§ + this.§extends§.@url.toString() + _loc1_;
               this.§+H§.load(new URLRequest(this.§4!5§));
            }
            else
            {
               this.§2C§ = new Loader();
               this.§2C§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§>!#§);
               this.§2C§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§#!M§);
               this.§2C§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§2!@§);
               this.§4!5§ = this.§-C§ + this.§;!E§ + this.§extends§.@swf.toString() + _loc1_;
               this.§2C§.load(new URLRequest(this.§4!5§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §#!M§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§4!5§;
         this.§`!X§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§4!5§,§4!<§.§>!f§);
      }
      
      private function §`!+§(param1:Event) : void
      {
         this.§`i§.push(this.§+H§.data);
         if(this.§,!#§ != null)
         {
            this.§,!#§(this.§+H§.data);
         }
         if(this.§`!p§)
         {
            this.§`!p§.§3!%§(this.§+H§.data);
         }
         this.§`!X§();
         ++this.§8U§;
         this.§#3§();
      }
      
      private function §2!@§(param1:ProgressEvent) : void
      {
         this.§`!§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §>!#§(param1:Event) : void
      {
         §0!h§(this.§2C§,this.§extends§);
         this.§`!X§();
         ++this.§8U§;
         this.§#3§();
      }
      
      private function §`!X§() : void
      {
         if(this.§2C§)
         {
            this.§2C§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>!#§);
            this.§2C§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!M§);
            this.§2C§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>!#§);
            this.§2C§ = null;
         }
         if(this.§+H§)
         {
            this.§+H§.removeEventListener(Event.COMPLETE,this.§`!+§);
            this.§+H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!M§);
            this.§+H§.removeEventListener(ProgressEvent.PROGRESS,this.§2!@§);
            this.§+H§ = null;
         }
         this.§extends§ = null;
      }
      
      private function §4!q§() : void
      {
         this.§`!§ = 0;
         if(this.§^!6§ != null)
         {
            this.§^!6§.call();
            this.§^!6§ = null;
         }
      }
      
      public function §?!^§() : void
      {
         this.§`!§ = 0;
         this.§>!o§ = false;
         this.§=!G§ = 0;
         if(this.§&R§)
         {
            this.§&R§ = null;
         }
         this.§^!6§ = null;
         this.§`!X§();
      }
      
      public function §#Y§() : Number
      {
         if(!this.§@!h§())
         {
            §[g§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§>!o§ || !this.§&R§ || !this.§@!h§())
         {
            §[g§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§8U§ == this.§=!G§)
         {
            if(this.§`!p§ && this.§=!G§ > 0)
            {
               if(this.§`!p§.§><§)
               {
                  return 1;
               }
               return (this.§8U§ + this.§`!§ - 0.5) / this.§=!G§;
            }
            return 1;
         }
         return this.§8U§ / this.§=!G§;
      }
   }
}
