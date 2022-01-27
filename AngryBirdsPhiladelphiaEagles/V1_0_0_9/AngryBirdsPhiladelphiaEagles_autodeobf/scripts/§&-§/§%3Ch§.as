package §&-§
{
   import §"1§.§3'§;
   import §`!8§.§[q§;
   import com.rovio.assets.§[G§;
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
   
   public class §<h§
   {
      
      private static var §+x§:§<h§;
       
      
      private var §>!B§:Vector.<XML>;
      
      private var §!@§:Boolean = false;
      
      private var §?T§:int;
      
      private var §!M§:int;
      
      private var §>!>§:Function;
      
      private var §%0§:Function;
      
      private var §;U§:Loader;
      
      private var §^!E§:URLLoader;
      
      private var §5!F§:XML;
      
      private var §!!E§:String = "";
      
      private var §2r§:int = 0;
      
      private var §%'§:Vector.<String>;
      
      private var §6!B§:String = "external_assets/LoadTest.swf";
      
      private var §?M§:Boolean = false;
      
      private var §^V§:Array;
      
      private var §3@§:String;
      
      private var §6a§:String;
      
      private var §3C§:Number = 0;
      
      private var §=S§:String = "";
      
      private var §;r§:§0A§;
      
      public function §<h§()
      {
         this.§^V§ = [];
         super();
      }
      
      public static function get §@!&§() : §<h§
      {
         if(!§+x§)
         {
            §+x§ = new §<h§();
         }
         return §+x§;
      }
      
      public static function §78§(param1:Loader, param2:XML) : void
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
            §[G§.§&%§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §@>§() : void
      {
         this.§^V§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§0A§, param5:Function = null) : void
      {
         this.§3@§ = param2;
         this.§6a§ = param3;
         this.§?M§ = true;
         this.§!@§ = false;
         this.§;r§ = param4;
         this.§>!>§ = param5;
      }
      
      private function §`b§() : void
      {
         this.§?M§ = true;
         this.§!@§ = false;
      }
      
      public function §=!I§() : Boolean
      {
         return this.§?M§;
      }
      
      public function §&!P§() : Boolean
      {
         if(this.§!@§ || !this.§=!I§())
         {
            return false;
         }
         this.§>!B§ = new Vector.<XML>();
         this.§?T§ = 0;
         return true;
      }
      
      public function §6%§(param1:XML) : void
      {
         if(this.§!@§ && this.§=!I§())
         {
            return;
         }
         this.§>!B§.push(param1);
         ++this.§?T§;
      }
      
      public function §1!§(param1:Function = null) : void
      {
         if(this.§!@§ && this.§=!I§())
         {
            return;
         }
         this.§%0§ = param1;
         this.§?T§ = this.§>!B§.length;
         this.§!@§ = true;
         this.§,x§();
      }
      
      private function §-!9§() : Boolean
      {
         if(this.§;r§ && !this.§;r§.§>!M§)
         {
            this.§;r§.removeEventListener(Event.COMPLETE,this.§,X§);
            this.§;r§.addEventListener(Event.COMPLETE,this.§,X§);
            return true;
         }
         return false;
      }
      
      private function §,X§(param1:Event) : void
      {
         this.§;r§.removeEventListener(Event.COMPLETE,this.§,X§);
         this.§,x§();
      }
      
      private function §,x§() : void
      {
         if(this.§>!B§.length > 0)
         {
            this.§1@§();
         }
         else if(this.§6c§() >= 1)
         {
            this.§2!F§();
         }
      }
      
      private function §1@§() : void
      {
         var _loc1_:String = null;
         if(this.§!@§ && this.§=!I§())
         {
            if(this.§-!9§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6a§ != null && this.§6a§.length > 0)
            {
               _loc1_ = "?version=" + this.§6a§;
            }
            this.§3C§ = 0;
            this.§5!F§ = this.§>!B§.shift();
            if(this.§5!F§.localName() == "pack")
            {
               this.§^!E§ = new URLLoader();
               this.§^!E§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§^!E§.addEventListener(Event.COMPLETE,this.§2!>§);
               this.§^!E§.addEventListener(IOErrorEvent.IO_ERROR,this.§#P§);
               this.§^!E§.addEventListener(ProgressEvent.PROGRESS,this.§[9§);
               this.§=S§ = this.§3@§ + this.§5!F§.@url.toString() + _loc1_;
               this.§^!E§.load(new URLRequest(this.§=S§));
            }
            else
            {
               this.§;U§ = new Loader();
               this.§;U§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§4>§);
               this.§;U§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§#P§);
               this.§;U§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§[9§);
               this.§=S§ = this.§3@§ + this.§!!E§ + this.§5!F§.@swf.toString() + _loc1_;
               this.§;U§.load(new URLRequest(this.§=S§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §#P§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§=S§;
         this.§;!%§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§=S§,§[q§.§ !9§);
      }
      
      private function §2!>§(param1:Event) : void
      {
         this.§^V§.push(this.§^!E§.data);
         if(this.§>!>§ != null)
         {
            this.§>!>§(this.§^!E§.data);
         }
         if(this.§;r§)
         {
            this.§;r§.§[^§(this.§^!E§.data);
         }
         this.§;!%§();
         ++this.§!M§;
         this.§,x§();
      }
      
      private function §[9§(param1:ProgressEvent) : void
      {
         this.§3C§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §4>§(param1:Event) : void
      {
         §78§(this.§;U§,this.§5!F§);
         this.§;!%§();
         ++this.§!M§;
         this.§,x§();
      }
      
      private function §;!%§() : void
      {
         if(this.§;U§)
         {
            this.§;U§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§4>§);
            this.§;U§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§#P§);
            this.§;U§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§4>§);
            this.§;U§ = null;
         }
         if(this.§^!E§)
         {
            this.§^!E§.removeEventListener(Event.COMPLETE,this.§2!>§);
            this.§^!E§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#P§);
            this.§^!E§.removeEventListener(ProgressEvent.PROGRESS,this.§[9§);
            this.§^!E§ = null;
         }
         this.§5!F§ = null;
      }
      
      private function §2!F§() : void
      {
         this.§3C§ = 0;
         if(this.§%0§ != null)
         {
            this.§%0§.call();
            this.§%0§ = null;
         }
      }
      
      public function §&M§() : void
      {
         this.§3C§ = 0;
         this.§!@§ = false;
         this.§?T§ = 0;
         if(this.§>!B§)
         {
            this.§>!B§ = null;
         }
         this.§%0§ = null;
         this.§;!%§();
      }
      
      public function §6c§() : Number
      {
         if(!this.§=!I§())
         {
            §3'§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§!@§ || !this.§>!B§ || !this.§=!I§())
         {
            §3'§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§!M§ == this.§?T§)
         {
            if(this.§;r§ && this.§?T§ > 0)
            {
               if(this.§;r§.§>!M§)
               {
                  return 1;
               }
               return (this.§!M§ + this.§3C§ - 0.5) / this.§?T§;
            }
            return 1;
         }
         return this.§!M§ / this.§?T§;
      }
   }
}
