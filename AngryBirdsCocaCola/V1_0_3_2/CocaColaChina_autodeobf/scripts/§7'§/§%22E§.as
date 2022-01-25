package §7'§
{
   import §-!9§.§3!5§;
   import §6!Q§.§7!7§;
   import §>P§.§!]§;
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
   
   public class §"E§
   {
      
      private static var §4!$§:§"E§;
       
      
      private var §5!E§:Vector.<XML>;
      
      private var §'f§:Boolean = false;
      
      private var §;2§:int;
      
      private var §2!P§:int;
      
      private var §!g§:Function;
      
      private var §6!!§:Function;
      
      private var §[K§:Loader;
      
      private var §5!Z§:URLLoader;
      
      private var §8!6§:XML;
      
      private var §3R§:String = "";
      
      private var § d§:int = 0;
      
      private var §^,§:Vector.<String>;
      
      private var § 1§:String = "external_assets/LoadTest.swf";
      
      private var §&!?§:Boolean = false;
      
      private var §;!b§:Array;
      
      private var §2!"§:String;
      
      private var §<_§:String;
      
      private var §<^§:Number = 0;
      
      private var §4p§:String = "";
      
      private var § Q§:§,!'§;
      
      public function §"E§()
      {
         this.§;!b§ = [];
         super();
      }
      
      public static function get §`G§() : §"E§
      {
         if(!§4!$§)
         {
            §4!$§ = new §"E§();
         }
         return §4!$§;
      }
      
      public static function §7!N§(param1:Loader, param2:XML) : void
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
            §3!5§.§`6§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §@!8§() : void
      {
         this.§;!b§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§,!'§, param5:Function = null) : void
      {
         this.§2!"§ = param2;
         this.§<_§ = param3;
         this.§&!?§ = true;
         this.§'f§ = false;
         this.§ Q§ = param4;
         this.§!g§ = param5;
      }
      
      private function §=c§() : void
      {
         this.§&!?§ = true;
         this.§'f§ = false;
      }
      
      public function §0!1§() : Boolean
      {
         return this.§&!?§;
      }
      
      public function §"!K§() : Boolean
      {
         if(this.§'f§ || !this.§0!1§())
         {
            return false;
         }
         this.§5!E§ = new Vector.<XML>();
         this.§;2§ = 0;
         return true;
      }
      
      public function §>Q§(param1:XML) : void
      {
         if(this.§'f§ && this.§0!1§())
         {
            return;
         }
         this.§5!E§.push(param1);
         ++this.§;2§;
      }
      
      public function §!`§(param1:Function = null) : void
      {
         if(this.§'f§ && this.§0!1§())
         {
            return;
         }
         this.§6!!§ = param1;
         this.§;2§ = this.§5!E§.length;
         this.§'f§ = true;
         this.§ !P§();
      }
      
      private function § R§() : Boolean
      {
         if(this.§ Q§ && !this.§ Q§.§<V§)
         {
            this.§ Q§.removeEventListener(Event.COMPLETE,this.§@5§);
            this.§ Q§.addEventListener(Event.COMPLETE,this.§@5§);
            return true;
         }
         return false;
      }
      
      private function §@5§(param1:Event) : void
      {
         this.§ Q§.removeEventListener(Event.COMPLETE,this.§@5§);
         this.§ !P§();
      }
      
      private function § !P§() : void
      {
         if(this.§5!E§.length > 0)
         {
            this.§4M§();
         }
         else if(this.§,!D§() >= 1)
         {
            this.§5!c§();
         }
      }
      
      private function §4M§() : void
      {
         var _loc1_:String = null;
         if(this.§'f§ && this.§0!1§())
         {
            if(this.§ R§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§<_§ != null && this.§<_§.length > 0)
            {
               _loc1_ = "?version=" + this.§<_§;
            }
            this.§<^§ = 0;
            this.§8!6§ = this.§5!E§.shift();
            if(this.§8!6§.localName() == "pack")
            {
               this.§5!Z§ = new URLLoader();
               this.§5!Z§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§5!Z§.addEventListener(Event.COMPLETE,this.§!!+§);
               this.§5!Z§.addEventListener(IOErrorEvent.IO_ERROR,this.§`H§);
               this.§5!Z§.addEventListener(ProgressEvent.PROGRESS,this.§]l§);
               this.§4p§ = this.§2!"§ + this.§8!6§.@url.toString() + _loc1_;
               this.§5!Z§.load(new URLRequest(this.§4p§));
            }
            else
            {
               this.§[K§ = new Loader();
               this.§[K§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?![§);
               this.§[K§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§`H§);
               this.§[K§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§]l§);
               this.§4p§ = this.§2!"§ + this.§3R§ + this.§8!6§.@swf.toString() + _loc1_;
               this.§[K§.load(new URLRequest(this.§4p§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §`H§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§4p§;
         this.§=!Y§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§4p§,§!]§.§0;§);
      }
      
      private function §!!+§(param1:Event) : void
      {
         this.§;!b§.push(this.§5!Z§.data);
         if(this.§!g§ != null)
         {
            this.§!g§(this.§5!Z§.data);
         }
         if(this.§ Q§)
         {
            this.§ Q§.§[_§(this.§5!Z§.data);
         }
         this.§=!Y§();
         ++this.§2!P§;
         this.§ !P§();
      }
      
      private function §]l§(param1:ProgressEvent) : void
      {
         this.§<^§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §?![§(param1:Event) : void
      {
         §7!N§(this.§[K§,this.§8!6§);
         this.§=!Y§();
         ++this.§2!P§;
         this.§ !P§();
      }
      
      private function §=!Y§() : void
      {
         if(this.§[K§)
         {
            this.§[K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?![§);
            this.§[K§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`H§);
            this.§[K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?![§);
            this.§[K§ = null;
         }
         if(this.§5!Z§)
         {
            this.§5!Z§.removeEventListener(Event.COMPLETE,this.§!!+§);
            this.§5!Z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`H§);
            this.§5!Z§.removeEventListener(ProgressEvent.PROGRESS,this.§]l§);
            this.§5!Z§ = null;
         }
         this.§8!6§ = null;
      }
      
      private function §5!c§() : void
      {
         this.§<^§ = 0;
         if(this.§6!!§ != null)
         {
            this.§6!!§.call();
            this.§6!!§ = null;
         }
      }
      
      public function §>5§() : void
      {
         this.§<^§ = 0;
         this.§'f§ = false;
         this.§;2§ = 0;
         if(this.§5!E§)
         {
            this.§5!E§ = null;
         }
         this.§6!!§ = null;
         this.§=!Y§();
      }
      
      public function §,!D§() : Number
      {
         if(!this.§0!1§())
         {
            §7!7§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§'f§ || !this.§5!E§ || !this.§0!1§())
         {
            §7!7§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§2!P§ == this.§;2§)
         {
            if(this.§ Q§ && this.§;2§ > 0)
            {
               if(this.§ Q§.§<V§)
               {
                  return 1;
               }
               return (this.§2!P§ + this.§<^§ - 0.5) / this.§;2§;
            }
            return 1;
         }
         return this.§2!P§ / this.§;2§;
      }
   }
}
