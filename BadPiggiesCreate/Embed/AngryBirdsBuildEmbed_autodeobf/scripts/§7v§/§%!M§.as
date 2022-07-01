package §7v§
{
   import § !r§.§`![§;
   import §8!Q§.§?>§;
   import com.rovio.assets.§1F§;
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
   
   public class §%!M§
   {
      
      private static var §3C§:§%!M§;
       
      
      private var §0N§:Vector.<XML>;
      
      private var §;!3§:Boolean = false;
      
      private var §4W§:int;
      
      private var §9$§:int;
      
      private var §3U§:Function;
      
      private var §5C§:Function;
      
      private var §&3§:Loader;
      
      private var §2O§:URLLoader;
      
      private var §]L§:XML;
      
      private var §<Z§:String = "";
      
      private var §^y§:int = 0;
      
      private var §^Z§:Vector.<String>;
      
      private var §^o§:String = "external_assets/LoadTest.swf";
      
      private var §<X§:Boolean = false;
      
      private var §"!-§:Array;
      
      private var §5D§:String;
      
      private var §&V§:String;
      
      private var §0]§:Number = 0;
      
      private var §?!e§:String = "";
      
      private var §&8§:§2M§;
      
      public function §%!M§()
      {
         this.§"!-§ = [];
         super();
      }
      
      public static function get §`!t§() : §%!M§
      {
         if(!§3C§)
         {
            §3C§ = new §%!M§();
         }
         return §3C§;
      }
      
      public static function §8N§(param1:Loader, param2:XML) : void
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
            §1F§.§1v§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §3n§() : void
      {
         this.§"!-§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§2M§, param5:Function = null) : void
      {
         this.§5D§ = param2;
         this.§&V§ = param3;
         this.§<X§ = true;
         this.§;!3§ = false;
         this.§&8§ = param4;
         this.§3U§ = param5;
      }
      
      private function §`!V§() : void
      {
         this.§<X§ = true;
         this.§;!3§ = false;
      }
      
      public function §7! §() : Boolean
      {
         return this.§<X§;
      }
      
      public function §<C§() : Boolean
      {
         if(this.§;!3§ || !this.§7! §())
         {
            return false;
         }
         this.§0N§ = new Vector.<XML>();
         this.§4W§ = 0;
         return true;
      }
      
      public function §^!K§(param1:XML) : void
      {
         if(this.§;!3§ && this.§7! §())
         {
            return;
         }
         this.§0N§.push(param1);
         ++this.§4W§;
      }
      
      public function §7S§(param1:Function = null) : void
      {
         if(this.§;!3§ && this.§7! §())
         {
            return;
         }
         this.§5C§ = param1;
         this.§4W§ = this.§0N§.length;
         this.§;!3§ = true;
         this.§5J§();
      }
      
      private function §,C§() : Boolean
      {
         if(this.§&8§ && !this.§&8§.§>!J§)
         {
            this.§&8§.removeEventListener(Event.COMPLETE,this.§>!6§);
            this.§&8§.addEventListener(Event.COMPLETE,this.§>!6§);
            return true;
         }
         return false;
      }
      
      private function §>!6§(param1:Event) : void
      {
         this.§&8§.removeEventListener(Event.COMPLETE,this.§>!6§);
         this.§5J§();
      }
      
      private function §5J§() : void
      {
         if(this.§0N§.length > 0)
         {
            this.§!p§();
         }
         else if(this.§ %§() >= 1)
         {
            this.§[X§();
         }
      }
      
      private function §!p§() : void
      {
         var _loc1_:String = null;
         if(this.§;!3§ && this.§7! §())
         {
            if(this.§,C§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§&V§ != null && this.§&V§.length > 0)
            {
               _loc1_ = "?version=" + this.§&V§;
            }
            this.§0]§ = 0;
            this.§]L§ = this.§0N§.shift();
            if(this.§]L§.localName() == "pack")
            {
               this.§2O§ = new URLLoader();
               this.§2O§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§2O§.addEventListener(Event.COMPLETE,this.§2@§);
               this.§2O§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!R§);
               this.§2O§.addEventListener(ProgressEvent.PROGRESS,this.§4+§);
               this.§?!e§ = this.§5D§ + this.§]L§.@url.toString() + _loc1_;
               this.§2O§.load(new URLRequest(this.§?!e§));
            }
            else
            {
               this.§&3§ = new Loader();
               this.§&3§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§>!O§);
               this.§&3§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9!R§);
               this.§&3§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§4+§);
               this.§?!e§ = this.§5D§ + this.§<Z§ + this.§]L§.@swf.toString() + _loc1_;
               this.§&3§.load(new URLRequest(this.§?!e§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §9!R§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§?!e§;
         this.§<!4§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§?!e§,§?>§.§0!Q§);
      }
      
      private function §2@§(param1:Event) : void
      {
         this.§"!-§.push(this.§2O§.data);
         if(this.§3U§ != null)
         {
            this.§3U§(this.§2O§.data);
         }
         if(this.§&8§)
         {
            this.§&8§.§83§(this.§2O§.data);
         }
         this.§<!4§();
         ++this.§9$§;
         this.§5J§();
      }
      
      private function §4+§(param1:ProgressEvent) : void
      {
         this.§0]§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §>!O§(param1:Event) : void
      {
         §8N§(this.§&3§,this.§]L§);
         this.§<!4§();
         ++this.§9$§;
         this.§5J§();
      }
      
      private function §<!4§() : void
      {
         if(this.§&3§)
         {
            this.§&3§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>!O§);
            this.§&3§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!R§);
            this.§&3§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>!O§);
            this.§&3§ = null;
         }
         if(this.§2O§)
         {
            this.§2O§.removeEventListener(Event.COMPLETE,this.§2@§);
            this.§2O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!R§);
            this.§2O§.removeEventListener(ProgressEvent.PROGRESS,this.§4+§);
            this.§2O§ = null;
         }
         this.§]L§ = null;
      }
      
      private function §[X§() : void
      {
         this.§0]§ = 0;
         if(this.§5C§ != null)
         {
            this.§5C§.call();
            this.§5C§ = null;
         }
      }
      
      public function §`g§() : void
      {
         this.§0]§ = 0;
         this.§;!3§ = false;
         this.§4W§ = 0;
         if(this.§0N§)
         {
            this.§0N§ = null;
         }
         this.§5C§ = null;
         this.§<!4§();
      }
      
      public function § %§() : Number
      {
         if(!this.§7! §())
         {
            §`![§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§;!3§ || !this.§0N§ || !this.§7! §())
         {
            §`![§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§9$§ == this.§4W§)
         {
            if(this.§&8§ && this.§4W§ > 0)
            {
               if(this.§&8§.§>!J§)
               {
                  return 1;
               }
               return (this.§9$§ + this.§0]§ - 0.5) / this.§4W§;
            }
            return 1;
         }
         return this.§9$§ / this.§4W§;
      }
   }
}
