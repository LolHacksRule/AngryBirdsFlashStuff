package §%!T§
{
   import §6b§.Log;
   import §7p§.§]E§;
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
       
      
      private var §<f§:Vector.<XML>;
      
      private var §;;§:Boolean = false;
      
      private var §&!G§:int;
      
      private var §4j§:int;
      
      private var §'!f§:Function;
      
      private var §7!8§:Function;
      
      private var §^v§:Loader;
      
      private var §#!c§:URLLoader;
      
      private var §5i§:XML;
      
      private var §&!V§:String = "";
      
      private var §!!i§:int = 0;
      
      private var §"!T§:Vector.<String>;
      
      private var §>j§:String = "external_assets/LoadTest.swf";
      
      private var §#[§:Boolean = false;
      
      private var §`o§:Array;
      
      private var §+U§:String;
      
      private var §-!C§:String;
      
      private var §+!S§:Number = 0;
      
      private var §+,§:String = "";
      
      private var §#N§:§4k§;
      
      public function LoadManager()
      {
         this.§`o§ = [];
         super();
      }
      
      public static function get §8!X§() : LoadManager
      {
         if(!sInstance)
         {
            sInstance = new LoadManager();
         }
         return sInstance;
      }
      
      public static function §]7§(param1:Loader, param2:XML) : void
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
            AssetCache.§2_§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §`[§() : void
      {
         this.§`o§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§4k§, param5:Function = null) : void
      {
         this.§+U§ = param2;
         this.§-!C§ = param3;
         this.§#[§ = true;
         this.§;;§ = false;
         this.§#N§ = param4;
         this.§'!f§ = param5;
      }
      
      private function §5M§() : void
      {
         this.§#[§ = true;
         this.§;;§ = false;
      }
      
      public function §#3§() : Boolean
      {
         return this.§#[§;
      }
      
      public function §]I§() : Boolean
      {
         if(this.§;;§ || !this.§#3§())
         {
            return false;
         }
         this.§<f§ = new Vector.<XML>();
         this.§&!G§ = 0;
         return true;
      }
      
      public function §`w§(param1:XML) : void
      {
         if(this.§;;§ && this.§#3§())
         {
            return;
         }
         this.§<f§.push(param1);
         ++this.§&!G§;
      }
      
      public function § !L§(param1:Function = null) : void
      {
         if(this.§;;§ && this.§#3§())
         {
            return;
         }
         this.§7!8§ = param1;
         this.§&!G§ = this.§<f§.length;
         this.§;;§ = true;
         this.§^!#§();
      }
      
      private function §>_§() : Boolean
      {
         if(this.§#N§ && !this.§#N§.§<!h§)
         {
            this.§#N§.removeEventListener(Event.COMPLETE,this.§5!7§);
            this.§#N§.addEventListener(Event.COMPLETE,this.§5!7§);
            return true;
         }
         return false;
      }
      
      private function §5!7§(param1:Event) : void
      {
         this.§#N§.removeEventListener(Event.COMPLETE,this.§5!7§);
         this.§^!#§();
      }
      
      private function §^!#§() : void
      {
         if(this.§<f§.length > 0)
         {
            this.§?3§();
         }
         else if(this.§'!F§() >= 1)
         {
            this.§2!Z§();
         }
      }
      
      private function §?3§() : void
      {
         var _loc1_:String = null;
         if(this.§;;§ && this.§#3§())
         {
            if(this.§>_§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§-!C§ != null && this.§-!C§.length > 0)
            {
               _loc1_ = "?version=" + this.§-!C§;
            }
            this.§+!S§ = 0;
            this.§5i§ = this.§<f§.shift();
            if(this.§5i§.localName() == "pack")
            {
               this.§#!c§ = new URLLoader();
               this.§#!c§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§#!c§.addEventListener(Event.COMPLETE,this.§&!3§);
               this.§#!c§.addEventListener(IOErrorEvent.IO_ERROR,this.§>!b§);
               this.§#!c§.addEventListener(ProgressEvent.PROGRESS,this.§-!7§);
               this.§+,§ = this.§+U§ + this.§5i§.@url.toString() + _loc1_;
               this.§#!c§.load(new URLRequest(this.§+,§));
            }
            else
            {
               this.§^v§ = new Loader();
               this.§^v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#a§);
               this.§^v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§>!b§);
               this.§^v§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§-!7§);
               this.§+,§ = this.§+U§ + this.§&!V§ + this.§5i§.@swf.toString() + _loc1_;
               this.§^v§.load(new URLRequest(this.§+,§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §>!b§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§+,§;
         this.§=!0§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§+,§,§]E§.§7!&§);
      }
      
      private function §&!3§(param1:Event) : void
      {
         this.§`o§.push(this.§#!c§.data);
         if(this.§'!f§ != null)
         {
            this.§'!f§(this.§#!c§.data);
         }
         if(this.§#N§)
         {
            this.§#N§.§'#§(this.§#!c§.data);
         }
         this.§=!0§();
         ++this.§4j§;
         this.§^!#§();
      }
      
      private function §-!7§(param1:ProgressEvent) : void
      {
         this.§+!S§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §#a§(param1:Event) : void
      {
         §]7§(this.§^v§,this.§5i§);
         this.§=!0§();
         ++this.§4j§;
         this.§^!#§();
      }
      
      private function §=!0§() : void
      {
         if(this.§^v§)
         {
            this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#a§);
            this.§^v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!b§);
            this.§^v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§#a§);
            this.§^v§ = null;
         }
         if(this.§#!c§)
         {
            this.§#!c§.removeEventListener(Event.COMPLETE,this.§&!3§);
            this.§#!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!b§);
            this.§#!c§.removeEventListener(ProgressEvent.PROGRESS,this.§-!7§);
            this.§#!c§ = null;
         }
         this.§5i§ = null;
      }
      
      private function §2!Z§() : void
      {
         this.§+!S§ = 0;
         if(this.§7!8§ != null)
         {
            this.§7!8§.call();
            this.§7!8§ = null;
         }
      }
      
      public function §%!]§() : void
      {
         this.§+!S§ = 0;
         this.§;;§ = false;
         this.§&!G§ = 0;
         if(this.§<f§)
         {
            this.§<f§ = null;
         }
         this.§7!8§ = null;
         this.§=!0§();
      }
      
      public function §'!F§() : Number
      {
         if(!this.§#3§())
         {
            Log.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§;;§ || !this.§<f§ || !this.§#3§())
         {
            Log.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§4j§ == this.§&!G§)
         {
            if(this.§#N§ && this.§&!G§ > 0)
            {
               if(this.§#N§.§<!h§)
               {
                  return 1;
               }
               return (this.§4j§ + this.§+!S§ - 0.5) / this.§&!G§;
            }
            return 1;
         }
         return this.§4j§ / this.§&!G§;
      }
   }
}
