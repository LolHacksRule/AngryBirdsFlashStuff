package § !§
{
   import §5=§.§8O§;
   import §<u§.Log;
   import com.rovio.assets.AssetCache;
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
   
   public class LoadManager
   {
      
      private static var sInstance:LoadManager;
       
      
      private var §@d§:Vector.<XML>;
      
      private var §>!i§:Boolean = false;
      
      private var §@,§:int;
      
      private var §+Z§:int;
      
      private var §?!M§:Function;
      
      private var §"!N§:Function;
      
      private var §2M§:Loader;
      
      private var §%@§:URLLoader;
      
      private var §]?§:XML;
      
      private var §+j§:String = "";
      
      private var §"!V§:int = 0;
      
      private var §=x§:Vector.<String>;
      
      private var §"!E§:String = "external_assets/LoadTest.swf";
      
      private var §%7§:Boolean = false;
      
      private var §4&§:Array;
      
      private var §,!'§:String;
      
      private var §#!B§:String;
      
      private var §-t§:Number = 0;
      
      private var §2! §:String = "";
      
      private var §0r§:§7!C§;
      
      public function LoadManager()
      {
         this.§4&§ = [];
         super();
      }
      
      public static function get §7!E§() : LoadManager
      {
         if(!sInstance)
         {
            sInstance = new LoadManager();
         }
         return sInstance;
      }
      
      public static function §"!f§(param1:Loader, param2:XML) : void
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
            AssetCache.§@§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §%!'§() : void
      {
         this.§4&§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§7!C§, param5:Function = null) : void
      {
         this.§,!'§ = param2;
         this.§#!B§ = param3;
         this.§%7§ = true;
         this.§>!i§ = false;
         this.§0r§ = param4;
         this.§?!M§ = param5;
      }
      
      private function §?2§() : void
      {
         this.§%7§ = true;
         this.§>!i§ = false;
      }
      
      public function §]L§() : Boolean
      {
         return this.§%7§;
      }
      
      public function § n§() : Boolean
      {
         if(this.§>!i§ || !this.§]L§())
         {
            return false;
         }
         this.§@d§ = new Vector.<XML>();
         this.§@,§ = 0;
         return true;
      }
      
      public function §1!=§(param1:XML) : void
      {
         if(this.§>!i§ && this.§]L§())
         {
            return;
         }
         this.§@d§.push(param1);
         ++this.§@,§;
      }
      
      public function §,!H§(param1:Function = null) : void
      {
         if(this.§>!i§ && this.§]L§())
         {
            return;
         }
         this.§"!N§ = param1;
         this.§@,§ = this.§@d§.length;
         this.§>!i§ = true;
         this.§`]§();
      }
      
      private function §+!A§() : Boolean
      {
         if(this.§0r§ && !this.§0r§.§use§)
         {
            this.§0r§.removeEventListener(Event.COMPLETE,this.§0!P§);
            this.§0r§.addEventListener(Event.COMPLETE,this.§0!P§);
            return true;
         }
         return false;
      }
      
      private function §0!P§(param1:Event) : void
      {
         this.§0r§.removeEventListener(Event.COMPLETE,this.§0!P§);
         this.§`]§();
      }
      
      private function §`]§() : void
      {
         if(this.§@d§.length > 0)
         {
            this.§%-§();
         }
         else if(this.§"U§() >= 1)
         {
            this.§!!%§();
         }
      }
      
      private function §%-§() : void
      {
         var _loc1_:String = null;
         if(this.§>!i§ && this.§]L§())
         {
            if(this.§+!A§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§#!B§ != null && this.§#!B§.length > 0)
            {
               _loc1_ = "?version=" + this.§#!B§;
            }
            this.§-t§ = 0;
            this.§]?§ = this.§@d§.shift();
            if(this.§]?§.localName() == "pack")
            {
               this.§%@§ = new URLLoader();
               this.§%@§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§%@§.addEventListener(Event.COMPLETE,this.§4E§);
               this.§%@§.addEventListener(IOErrorEvent.IO_ERROR,this.§?!Z§);
               this.§%@§.addEventListener(ProgressEvent.PROGRESS,this.§[E§);
               this.§2! § = this.§,!'§ + this.§]?§.@url.toString() + _loc1_;
               this.§%@§.load(new URLRequest(this.§2! §));
            }
            else
            {
               this.§2M§ = new Loader();
               this.§2M§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3!^§);
               this.§2M§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§?!Z§);
               this.§2M§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§[E§);
               this.§2! § = this.§,!'§ + this.§+j§ + this.§]?§.@swf.toString() + _loc1_;
               this.§2M§.load(new URLRequest(this.§2! §),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §?!Z§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§2! §;
         this.§`t§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§2! §,§8O§.§@;§);
      }
      
      private function §4E§(param1:Event) : void
      {
         this.§4&§.push(this.§%@§.data);
         if(this.§?!M§ != null)
         {
            this.§?!M§(this.§%@§.data);
         }
         if(this.§0r§)
         {
            this.§0r§.§"Z§(this.§%@§.data);
         }
         this.§`t§();
         ++this.§+Z§;
         this.§`]§();
      }
      
      private function §[E§(param1:ProgressEvent) : void
      {
         this.§-t§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §3!^§(param1:Event) : void
      {
         §"!f§(this.§2M§,this.§]?§);
         this.§`t§();
         ++this.§+Z§;
         this.§`]§();
      }
      
      private function §`t§() : void
      {
         if(this.§2M§)
         {
            this.§2M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3!^§);
            this.§2M§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!Z§);
            this.§2M§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3!^§);
            this.§2M§ = null;
         }
         if(this.§%@§)
         {
            this.§%@§.removeEventListener(Event.COMPLETE,this.§4E§);
            this.§%@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!Z§);
            this.§%@§.removeEventListener(ProgressEvent.PROGRESS,this.§[E§);
            this.§%@§ = null;
         }
         this.§]?§ = null;
      }
      
      private function §!!%§() : void
      {
         this.§-t§ = 0;
         if(this.§"!N§ != null)
         {
            this.§"!N§.call();
            this.§"!N§ = null;
         }
      }
      
      public function §<L§() : void
      {
         this.§-t§ = 0;
         this.§>!i§ = false;
         this.§@,§ = 0;
         if(this.§@d§)
         {
            this.§@d§ = null;
         }
         this.§"!N§ = null;
         this.§`t§();
      }
      
      public function §"U§() : Number
      {
         if(!this.§]L§())
         {
            Log.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§>!i§ || !this.§@d§ || !this.§]L§())
         {
            Log.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§+Z§ == this.§@,§)
         {
            if(this.§0r§ && this.§@,§ > 0)
            {
               if(this.§0r§.§use§)
               {
                  return 1;
               }
               return (this.§+Z§ + this.§-t§ - 0.5) / this.§@,§;
            }
            return 1;
         }
         return this.§+Z§ / this.§@,§;
      }
   }
}
