package §`M§
{
   import §'N§.Log;
   import §9!!§.§1!E§;
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
       
      
      private var §3!-§:Vector.<XML>;
      
      private var §?!T§:Boolean = false;
      
      private var §>=§:int;
      
      private var §2s§:int;
      
      private var §`!%§:Function;
      
      private var §+_§:Function;
      
      private var §4$§:Loader;
      
      private var §]]§:URLLoader;
      
      private var §5!8§:XML;
      
      private var §@D§:String = "";
      
      private var §&!8§:int = 0;
      
      private var §?!I§:Vector.<String>;
      
      private var §0!$§:String = "external_assets/LoadTest.swf";
      
      private var §with§:Boolean = false;
      
      private var §^v§:Array;
      
      private var §4!H§:String;
      
      private var §#S§:String;
      
      private var §4f§:Number = 0;
      
      private var §@z§:String = "";
      
      private var §2!j§:§ p§;
      
      public function LoadManager()
      {
         this.§^v§ = [];
         super();
      }
      
      public static function get §&!'§() : LoadManager
      {
         if(!sInstance)
         {
            sInstance = new LoadManager();
         }
         return sInstance;
      }
      
      public static function §2W§(param1:Loader, param2:XML) : void
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
            AssetCache.§&!g§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §-!h§() : void
      {
         this.§^v§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§ p§, param5:Function = null) : void
      {
         this.§4!H§ = param2;
         this.§#S§ = param3;
         this.§with§ = true;
         this.§?!T§ = false;
         this.§2!j§ = param4;
         this.§`!%§ = param5;
      }
      
      private function §+e§() : void
      {
         this.§with§ = true;
         this.§?!T§ = false;
      }
      
      public function §-B§() : Boolean
      {
         return this.§with§;
      }
      
      public function §?>§() : Boolean
      {
         if(this.§?!T§ || !this.§-B§())
         {
            return false;
         }
         this.§3!-§ = new Vector.<XML>();
         this.§>=§ = 0;
         return true;
      }
      
      public function §#!T§(param1:XML) : void
      {
         if(this.§?!T§ && this.§-B§())
         {
            return;
         }
         this.§3!-§.push(param1);
         ++this.§>=§;
      }
      
      public function §[!L§(param1:Function = null) : void
      {
         if(this.§?!T§ && this.§-B§())
         {
            return;
         }
         this.§+_§ = param1;
         this.§>=§ = this.§3!-§.length;
         this.§?!T§ = true;
         this.§[A§();
      }
      
      private function §^! §() : Boolean
      {
         if(this.§2!j§ && !this.§2!j§.§;C§)
         {
            this.§2!j§.removeEventListener(Event.COMPLETE,this.§!!4§);
            this.§2!j§.addEventListener(Event.COMPLETE,this.§!!4§);
            return true;
         }
         return false;
      }
      
      private function §!!4§(param1:Event) : void
      {
         this.§2!j§.removeEventListener(Event.COMPLETE,this.§!!4§);
         this.§[A§();
      }
      
      private function §[A§() : void
      {
         if(this.§3!-§.length > 0)
         {
            this.§=4§();
         }
         else if(this.§?!H§() >= 1)
         {
            this.§"!^§();
         }
      }
      
      private function §=4§() : void
      {
         var _loc1_:String = null;
         if(this.§?!T§ && this.§-B§())
         {
            if(this.§^! §())
            {
               return;
            }
            _loc1_ = "";
            if(this.§#S§ != null && this.§#S§.length > 0)
            {
               _loc1_ = "?version=" + this.§#S§;
            }
            this.§4f§ = 0;
            this.§5!8§ = this.§3!-§.shift();
            if(this.§5!8§.localName() == "pack")
            {
               this.§]]§ = new URLLoader();
               this.§]]§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§]]§.addEventListener(Event.COMPLETE,this.§=!T§);
               this.§]]§.addEventListener(IOErrorEvent.IO_ERROR,this.§%o§);
               this.§]]§.addEventListener(ProgressEvent.PROGRESS,this.§1!B§);
               this.§@z§ = this.§4!H§ + this.§5!8§.@url.toString() + _loc1_;
               this.§]]§.load(new URLRequest(this.§@z§));
            }
            else
            {
               this.§4$§ = new Loader();
               this.§4$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3;§);
               this.§4$§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%o§);
               this.§4$§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§1!B§);
               this.§@z§ = this.§4!H§ + this.§@D§ + this.§5!8§.@swf.toString() + _loc1_;
               this.§4$§.load(new URLRequest(this.§@z§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §%o§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§@z§;
         this.§9T§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§@z§,§1!E§.§^g§);
      }
      
      private function §=!T§(param1:Event) : void
      {
         this.§^v§.push(this.§]]§.data);
         if(this.§`!%§ != null)
         {
            this.§`!%§(this.§]]§.data);
         }
         if(this.§2!j§)
         {
            this.§2!j§.§4S§(this.§]]§.data);
         }
         this.§9T§();
         ++this.§2s§;
         this.§[A§();
      }
      
      private function §1!B§(param1:ProgressEvent) : void
      {
         this.§4f§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §3;§(param1:Event) : void
      {
         §2W§(this.§4$§,this.§5!8§);
         this.§9T§();
         ++this.§2s§;
         this.§[A§();
      }
      
      private function §9T§() : void
      {
         if(this.§4$§)
         {
            this.§4$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3;§);
            this.§4$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%o§);
            this.§4$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3;§);
            this.§4$§ = null;
         }
         if(this.§]]§)
         {
            this.§]]§.removeEventListener(Event.COMPLETE,this.§=!T§);
            this.§]]§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%o§);
            this.§]]§.removeEventListener(ProgressEvent.PROGRESS,this.§1!B§);
            this.§]]§ = null;
         }
         this.§5!8§ = null;
      }
      
      private function §"!^§() : void
      {
         this.§4f§ = 0;
         if(this.§+_§ != null)
         {
            this.§+_§.call();
            this.§+_§ = null;
         }
      }
      
      public function §[y§() : void
      {
         this.§4f§ = 0;
         this.§?!T§ = false;
         this.§>=§ = 0;
         if(this.§3!-§)
         {
            this.§3!-§ = null;
         }
         this.§+_§ = null;
         this.§9T§();
      }
      
      public function §?!H§() : Number
      {
         if(!this.§-B§())
         {
            Log.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§?!T§ || !this.§3!-§ || !this.§-B§())
         {
            Log.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§2s§ == this.§>=§)
         {
            if(this.§2!j§ && this.§>=§ > 0)
            {
               if(this.§2!j§.§;C§)
               {
                  return 1;
               }
               return (this.§2s§ + this.§4f§ - 0.5) / this.§>=§;
            }
            return 1;
         }
         return this.§2s§ / this.§>=§;
      }
   }
}
