package §'V§
{
   import §0!!§.§%!"§;
   import §;8§.§3f§;
   import com.rovio.assets.§>D§;
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
   
   public class §>!8§
   {
      
      private static var §2!D§:§>!8§;
       
      
      private var §4_§:Vector.<XML>;
      
      private var §%8§:Boolean = false;
      
      private var §#@§:int;
      
      private var §]!B§:int;
      
      private var §`!3§:Function;
      
      private var §+!§:Function;
      
      private var §-?§:Loader;
      
      private var §3!!§:URLLoader;
      
      private var §3j§:XML;
      
      private var §=!"§:String = "";
      
      private var §+K§:int = 0;
      
      private var §4R§:Vector.<String>;
      
      private var §[I§:String = "external_assets/LoadTest.swf";
      
      private var §`2§:Boolean = false;
      
      private var §6!-§:Array;
      
      private var §5!C§:String;
      
      private var §!!1§:String;
      
      private var §6'§:Number = 0;
      
      private var §%=§:String = "";
      
      private var §]R§:§@!"§;
      
      public function §>!8§()
      {
         this.§6!-§ = [];
         super();
      }
      
      public static function get §[8§() : §>!8§
      {
         if(!§2!D§)
         {
            §2!D§ = new §>!8§();
         }
         return §2!D§;
      }
      
      public static function §3!§(param1:Loader, param2:XML) : void
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
            §>D§.§try§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §=#§() : void
      {
         this.§6!-§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§@!"§, param5:Function = null) : void
      {
         this.§5!C§ = param2;
         this.§!!1§ = param3;
         this.§`2§ = true;
         this.§%8§ = false;
         this.§]R§ = param4;
         this.§`!3§ = param5;
      }
      
      private function §[Y§() : void
      {
         this.§`2§ = true;
         this.§%8§ = false;
      }
      
      public function §73§() : Boolean
      {
         return this.§`2§;
      }
      
      public function §9R§() : Boolean
      {
         if(this.§%8§ || !this.§73§())
         {
            return false;
         }
         this.§4_§ = new Vector.<XML>();
         this.§#@§ = 0;
         return true;
      }
      
      public function §34§(param1:XML) : void
      {
         if(this.§%8§ && this.§73§())
         {
            return;
         }
         this.§4_§.push(param1);
         ++this.§#@§;
      }
      
      public function §&q§(param1:Function = null) : void
      {
         if(this.§%8§ && this.§73§())
         {
            return;
         }
         this.§+!§ = param1;
         this.§#@§ = this.§4_§.length;
         this.§%8§ = true;
         this.§-T§();
      }
      
      private function §`>§() : Boolean
      {
         if(this.§]R§ && !this.§]R§.§>!0§)
         {
            this.§]R§.removeEventListener(Event.COMPLETE,this.§#!F§);
            this.§]R§.addEventListener(Event.COMPLETE,this.§#!F§);
            return true;
         }
         return false;
      }
      
      private function §#!F§(param1:Event) : void
      {
         this.§]R§.removeEventListener(Event.COMPLETE,this.§#!F§);
         this.§-T§();
      }
      
      private function §-T§() : void
      {
         if(this.§4_§.length > 0)
         {
            this.§2E§();
         }
         else if(this.§^1§() >= 1)
         {
            this.§^J§();
         }
      }
      
      private function §2E§() : void
      {
         var _loc1_:String = null;
         if(this.§%8§ && this.§73§())
         {
            if(this.§`>§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§!!1§ != null && this.§!!1§.length > 0)
            {
               _loc1_ = "?version=" + this.§!!1§;
            }
            this.§6'§ = 0;
            this.§3j§ = this.§4_§.shift();
            if(this.§3j§.localName() == "pack")
            {
               this.§3!!§ = new URLLoader();
               this.§3!!§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§3!!§.addEventListener(Event.COMPLETE,this.§&G§);
               this.§3!!§.addEventListener(IOErrorEvent.IO_ERROR,this.§&h§);
               this.§3!!§.addEventListener(ProgressEvent.PROGRESS,this.§!x§);
               this.§%=§ = this.§5!C§ + this.§3j§.@url.toString() + _loc1_;
               this.§3!!§.load(new URLRequest(this.§%=§));
            }
            else
            {
               this.§-?§ = new Loader();
               this.§-?§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§=8§);
               this.§-?§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§&h§);
               this.§-?§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§!x§);
               this.§%=§ = this.§5!C§ + this.§=!"§ + this.§3j§.@swf.toString() + _loc1_;
               this.§-?§.load(new URLRequest(this.§%=§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §&h§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§%=§;
         this.§48§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§%=§,§%!"§.§[!G§);
      }
      
      private function §&G§(param1:Event) : void
      {
         this.§6!-§.push(this.§3!!§.data);
         if(this.§`!3§ != null)
         {
            this.§`!3§(this.§3!!§.data);
         }
         if(this.§]R§)
         {
            this.§]R§.§6=§(this.§3!!§.data);
         }
         this.§48§();
         ++this.§]!B§;
         this.§-T§();
      }
      
      private function §!x§(param1:ProgressEvent) : void
      {
         this.§6'§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §=8§(param1:Event) : void
      {
         §3!§(this.§-?§,this.§3j§);
         this.§48§();
         ++this.§]!B§;
         this.§-T§();
      }
      
      private function §48§() : void
      {
         if(this.§-?§)
         {
            this.§-?§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=8§);
            this.§-?§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§&h§);
            this.§-?§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=8§);
            this.§-?§ = null;
         }
         if(this.§3!!§)
         {
            this.§3!!§.removeEventListener(Event.COMPLETE,this.§&G§);
            this.§3!!§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&h§);
            this.§3!!§.removeEventListener(ProgressEvent.PROGRESS,this.§!x§);
            this.§3!!§ = null;
         }
         this.§3j§ = null;
      }
      
      private function §^J§() : void
      {
         this.§6'§ = 0;
         if(this.§+!§ != null)
         {
            this.§+!§.call();
            this.§+!§ = null;
         }
      }
      
      public function §2O§() : void
      {
         this.§6'§ = 0;
         this.§%8§ = false;
         this.§#@§ = 0;
         if(this.§4_§)
         {
            this.§4_§ = null;
         }
         this.§+!§ = null;
         this.§48§();
      }
      
      public function §^1§() : Number
      {
         if(!this.§73§())
         {
            §3f§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§%8§ || !this.§4_§ || !this.§73§())
         {
            §3f§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§]!B§ == this.§#@§)
         {
            if(this.§]R§ && this.§#@§ > 0)
            {
               if(this.§]R§.§>!0§)
               {
                  return 1;
               }
               return (this.§]!B§ + this.§6'§ - 0.5) / this.§#@§;
            }
            return 1;
         }
         return this.§]!B§ / this.§#@§;
      }
   }
}
