package §+!@§
{
   import §%!6§.§!'§;
   import §>K§.§9X§;
   import com.rovio.assets.§!Q§;
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
   
   public class §!T§
   {
      
      private static var §6[§:§!T§;
       
      
      private var §0!'§:Vector.<XML>;
      
      private var §5X§:Boolean = false;
      
      private var §;g§:int;
      
      private var §?0§:int;
      
      private var §`2§:Function;
      
      private var §9q§:Function;
      
      private var § l§:Loader;
      
      private var §4!H§:URLLoader;
      
      private var §7A§:XML;
      
      private var §!!+§:String = "";
      
      private var §,!#§:int = 0;
      
      private var §3§:Vector.<String>;
      
      private var §>!2§:String = "external_assets/LoadTest.swf";
      
      private var §7i§:Boolean = false;
      
      private var §'!?§:Array;
      
      private var §7H§:String;
      
      private var §]X§:String;
      
      private var §2!+§:Number = 0;
      
      private var §const§:String = "";
      
      private var §0!1§:§#!G§;
      
      public function §!T§()
      {
         this.§'!?§ = [];
         super();
      }
      
      public static function get §@j§() : §!T§
      {
         if(!§6[§)
         {
            §6[§ = new §!T§();
         }
         return §6[§;
      }
      
      public static function §`+§(param1:Loader, param2:XML) : void
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
            §!Q§.dynamic(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §5@§() : void
      {
         this.§'!?§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§#!G§, param5:Function = null) : void
      {
         this.§7H§ = param2;
         this.§]X§ = param3;
         this.§7i§ = true;
         this.§5X§ = false;
         this.§0!1§ = param4;
         this.§`2§ = param5;
      }
      
      private function §`!E§() : void
      {
         this.§7i§ = true;
         this.§5X§ = false;
      }
      
      public function §=P§() : Boolean
      {
         return this.§7i§;
      }
      
      public function §8!%§() : Boolean
      {
         if(this.§5X§ || !this.§=P§())
         {
            return false;
         }
         this.§0!'§ = new Vector.<XML>();
         this.§;g§ = 0;
         return true;
      }
      
      public function §0+§(param1:XML) : void
      {
         if(this.§5X§ && this.§=P§())
         {
            return;
         }
         this.§0!'§.push(param1);
         ++this.§;g§;
      }
      
      public function §>c§(param1:Function = null) : void
      {
         if(this.§5X§ && this.§=P§())
         {
            return;
         }
         this.§9q§ = param1;
         this.§;g§ = this.§0!'§.length;
         this.§5X§ = true;
         this.§=!;§();
      }
      
      private function §^!&§() : Boolean
      {
         if(this.§0!1§ && !this.§0!1§.§ E§)
         {
            this.§0!1§.removeEventListener(Event.COMPLETE,this.§2X§);
            this.§0!1§.addEventListener(Event.COMPLETE,this.§2X§);
            return true;
         }
         return false;
      }
      
      private function §2X§(param1:Event) : void
      {
         this.§0!1§.removeEventListener(Event.COMPLETE,this.§2X§);
         this.§=!;§();
      }
      
      private function §=!;§() : void
      {
         if(this.§0!'§.length > 0)
         {
            this.§7q§();
         }
         else if(this.§6k§() >= 1)
         {
            this.§,<§();
         }
      }
      
      private function §7q§() : void
      {
         var _loc1_:String = null;
         if(this.§5X§ && this.§=P§())
         {
            if(this.§^!&§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§]X§ != null && this.§]X§.length > 0)
            {
               _loc1_ = "?version=" + this.§]X§;
            }
            this.§2!+§ = 0;
            this.§7A§ = this.§0!'§.shift();
            if(this.§7A§.localName() == "pack")
            {
               this.§4!H§ = new URLLoader();
               this.§4!H§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§4!H§.addEventListener(Event.COMPLETE,this.§+!&§);
               this.§4!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!=§);
               this.§4!H§.addEventListener(ProgressEvent.PROGRESS,this.§ e§);
               this.§const§ = this.§7H§ + this.§7A§.@url.toString() + _loc1_;
               this.§4!H§.load(new URLRequest(this.§const§));
            }
            else
            {
               this.§ l§ = new Loader();
               this.§ l§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§45§);
               this.§ l§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9!=§);
               this.§ l§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§ e§);
               this.§const§ = this.§7H§ + this.§!!+§ + this.§7A§.@swf.toString() + _loc1_;
               this.§ l§.load(new URLRequest(this.§const§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §9!=§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§const§;
         this.§#?§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§const§,§!'§.§^3§);
      }
      
      private function §+!&§(param1:Event) : void
      {
         this.§'!?§.push(this.§4!H§.data);
         if(this.§`2§ != null)
         {
            this.§`2§(this.§4!H§.data);
         }
         if(this.§0!1§)
         {
            this.§0!1§.§6!'§(this.§4!H§.data);
         }
         this.§#?§();
         ++this.§?0§;
         this.§=!;§();
      }
      
      private function § e§(param1:ProgressEvent) : void
      {
         this.§2!+§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §45§(param1:Event) : void
      {
         §`+§(this.§ l§,this.§7A§);
         this.§#?§();
         ++this.§?0§;
         this.§=!;§();
      }
      
      private function §#?§() : void
      {
         if(this.§ l§)
         {
            this.§ l§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§45§);
            this.§ l§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!=§);
            this.§ l§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§45§);
            this.§ l§ = null;
         }
         if(this.§4!H§)
         {
            this.§4!H§.removeEventListener(Event.COMPLETE,this.§+!&§);
            this.§4!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!=§);
            this.§4!H§.removeEventListener(ProgressEvent.PROGRESS,this.§ e§);
            this.§4!H§ = null;
         }
         this.§7A§ = null;
      }
      
      private function §,<§() : void
      {
         this.§2!+§ = 0;
         if(this.§9q§ != null)
         {
            this.§9q§.call();
            this.§9q§ = null;
         }
      }
      
      public function §,w§() : void
      {
         this.§2!+§ = 0;
         this.§5X§ = false;
         this.§;g§ = 0;
         if(this.§0!'§)
         {
            this.§0!'§ = null;
         }
         this.§9q§ = null;
         this.§#?§();
      }
      
      public function §6k§() : Number
      {
         if(!this.§=P§())
         {
            §9X§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§5X§ || !this.§0!'§ || !this.§=P§())
         {
            §9X§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§?0§ == this.§;g§)
         {
            if(this.§0!1§ && this.§;g§ > 0)
            {
               if(this.§0!1§.§ E§)
               {
                  return 1;
               }
               return (this.§?0§ + this.§2!+§ - 0.5) / this.§;g§;
            }
            return 1;
         }
         return this.§?0§ / this.§;g§;
      }
   }
}
