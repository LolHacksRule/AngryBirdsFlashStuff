package §?[§
{
   import §'m§.§^S§;
   import com.rovio.assets.§-!1§;
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
   import §try§.§^!2§;
   
   public class §7f§
   {
      
      private static var §<J§:§7f§;
       
      
      private var §%@§:Vector.<XML>;
      
      private var §]!&§:Boolean = false;
      
      private var §,D§:int;
      
      private var §]Y§:int;
      
      private var §>!F§:Function;
      
      private var §<3§:Function;
      
      private var §,p§:Loader;
      
      private var §<6§:URLLoader;
      
      private var §]q§:XML;
      
      private var §=v§:String = "";
      
      private var §-!,§:int = 0;
      
      private var §[p§:Vector.<String>;
      
      private var §;!%§:String = "external_assets/LoadTest.swf";
      
      private var §#"§:Boolean = false;
      
      private var §>!=§:Array;
      
      private var §%1§:String;
      
      private var § $§:String;
      
      private var §>!"§:Number = 0;
      
      private var §9-§:String = "";
      
      private var §`]§:§#!'§;
      
      public function §7f§()
      {
         this.§>!=§ = [];
         super();
      }
      
      public static function get §5!B§() : §7f§
      {
         if(!§<J§)
         {
            §<J§ = new §7f§();
         }
         return §<J§;
      }
      
      public static function §04§(param1:Loader, param2:XML) : void
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
            §-!1§.§6!1§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §?4§() : void
      {
         this.§>!=§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§#!'§, param5:Function = null) : void
      {
         this.§%1§ = param2;
         this.§ $§ = param3;
         this.§#"§ = true;
         this.§]!&§ = false;
         this.§`]§ = param4;
         this.§>!F§ = param5;
      }
      
      private function §%!#§() : void
      {
         this.§#"§ = true;
         this.§]!&§ = false;
      }
      
      public function §5!#§() : Boolean
      {
         return this.§#"§;
      }
      
      public function §&o§() : Boolean
      {
         if(this.§]!&§ || !this.§5!#§())
         {
            return false;
         }
         this.§%@§ = new Vector.<XML>();
         this.§,D§ = 0;
         return true;
      }
      
      public function §!E§(param1:XML) : void
      {
         if(this.§]!&§ && this.§5!#§())
         {
            return;
         }
         this.§%@§.push(param1);
         ++this.§,D§;
      }
      
      public function §[V§(param1:Function = null) : void
      {
         if(this.§]!&§ && this.§5!#§())
         {
            return;
         }
         this.§<3§ = param1;
         this.§,D§ = this.§%@§.length;
         this.§]!&§ = true;
         this.§&!'§();
      }
      
      private function §+!=§() : Boolean
      {
         if(this.§`]§ && !this.§`]§.§2!$§)
         {
            this.§`]§.removeEventListener(Event.COMPLETE,this.§<F§);
            this.§`]§.addEventListener(Event.COMPLETE,this.§<F§);
            return true;
         }
         return false;
      }
      
      private function §<F§(param1:Event) : void
      {
         this.§`]§.removeEventListener(Event.COMPLETE,this.§<F§);
         this.§&!'§();
      }
      
      private function §&!'§() : void
      {
         if(this.§%@§.length > 0)
         {
            this.§+E§();
         }
         else if(this.§;O§() >= 1)
         {
            this.§!S§();
         }
      }
      
      private function §+E§() : void
      {
         var _loc1_:String = null;
         if(this.§]!&§ && this.§5!#§())
         {
            if(this.§+!=§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§ $§ != null && this.§ $§.length > 0)
            {
               _loc1_ = "?version=" + this.§ $§;
            }
            this.§>!"§ = 0;
            this.§]q§ = this.§%@§.shift();
            if(this.§]q§.localName() == "pack")
            {
               this.§<6§ = new URLLoader();
               this.§<6§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§<6§.addEventListener(Event.COMPLETE,this.§%d§);
               this.§<6§.addEventListener(IOErrorEvent.IO_ERROR,this.§="§);
               this.§<6§.addEventListener(ProgressEvent.PROGRESS,this.§;5§);
               this.§9-§ = this.§%1§ + this.§]q§.@url.toString() + _loc1_;
               this.§<6§.load(new URLRequest(this.§9-§));
            }
            else
            {
               this.§,p§ = new Loader();
               this.§,p§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§-?§);
               this.§,p§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§="§);
               this.§,p§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§;5§);
               this.§9-§ = this.§%1§ + this.§=v§ + this.§]q§.@swf.toString() + _loc1_;
               this.§,p§.load(new URLRequest(this.§9-§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §="§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§9-§;
         this.§"W§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§9-§,§^!2§.§super§);
      }
      
      private function §%d§(param1:Event) : void
      {
         this.§>!=§.push(this.§<6§.data);
         if(this.§>!F§ != null)
         {
            this.§>!F§(this.§<6§.data);
         }
         if(this.§`]§)
         {
            this.§`]§.§[D§(this.§<6§.data);
         }
         this.§"W§();
         ++this.§]Y§;
         this.§&!'§();
      }
      
      private function §;5§(param1:ProgressEvent) : void
      {
         this.§>!"§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §-?§(param1:Event) : void
      {
         §04§(this.§,p§,this.§]q§);
         this.§"W§();
         ++this.§]Y§;
         this.§&!'§();
      }
      
      private function §"W§() : void
      {
         if(this.§,p§)
         {
            this.§,p§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-?§);
            this.§,p§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§="§);
            this.§,p§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-?§);
            this.§,p§ = null;
         }
         if(this.§<6§)
         {
            this.§<6§.removeEventListener(Event.COMPLETE,this.§%d§);
            this.§<6§.removeEventListener(IOErrorEvent.IO_ERROR,this.§="§);
            this.§<6§.removeEventListener(ProgressEvent.PROGRESS,this.§;5§);
            this.§<6§ = null;
         }
         this.§]q§ = null;
      }
      
      private function §!S§() : void
      {
         this.§>!"§ = 0;
         if(this.§<3§ != null)
         {
            this.§<3§.call();
            this.§<3§ = null;
         }
      }
      
      public function §`7§() : void
      {
         this.§>!"§ = 0;
         this.§]!&§ = false;
         this.§,D§ = 0;
         if(this.§%@§)
         {
            this.§%@§ = null;
         }
         this.§<3§ = null;
         this.§"W§();
      }
      
      public function §;O§() : Number
      {
         if(!this.§5!#§())
         {
            §^S§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§]!&§ || !this.§%@§ || !this.§5!#§())
         {
            §^S§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§]Y§ == this.§,D§)
         {
            if(this.§`]§ && this.§,D§ > 0)
            {
               if(this.§`]§.§2!$§)
               {
                  return 1;
               }
               return (this.§]Y§ + this.§>!"§ - 0.5) / this.§,D§;
            }
            return 1;
         }
         return this.§]Y§ / this.§,D§;
      }
   }
}
