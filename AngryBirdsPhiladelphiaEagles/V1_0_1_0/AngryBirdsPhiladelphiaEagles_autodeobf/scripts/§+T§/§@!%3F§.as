package §+T§
{
   import §"I§.§+5§;
   import §-!5§.§5s§;
   import com.rovio.assets.§4D§;
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
   
   public class §@!?§
   {
      
      private static var §2x§:§@!?§;
       
      
      private var §<s§:Vector.<XML>;
      
      private var §,y§:Boolean = false;
      
      private var §9B§:int;
      
      private var §4!G§:int;
      
      private var §<X§:Function;
      
      private var §28§:Function;
      
      private var §?Y§:Loader;
      
      private var §9>§:URLLoader;
      
      private var §#,§:XML;
      
      private var §&t§:String = "";
      
      private var §2!F§:int = 0;
      
      private var § _§:Vector.<String>;
      
      private var §`F§:String = "external_assets/LoadTest.swf";
      
      private var § !7§:Boolean = false;
      
      private var §=!!§:Array;
      
      private var §6i§:String;
      
      private var §^!J§:String;
      
      private var §[§:Number = 0;
      
      private var §+!Q§:String = "";
      
      private var §'!O§:§7e§;
      
      public function §@!?§()
      {
         this.§=!!§ = [];
         super();
      }
      
      public static function get §4J§() : §@!?§
      {
         if(!§2x§)
         {
            §2x§ = new §@!?§();
         }
         return §2x§;
      }
      
      public static function §5A§(param1:Loader, param2:XML) : void
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
            §4D§.§-n§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §0k§() : void
      {
         this.§=!!§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§7e§, param5:Function = null) : void
      {
         this.§6i§ = param2;
         this.§^!J§ = param3;
         this.§ !7§ = true;
         this.§,y§ = false;
         this.§'!O§ = param4;
         this.§<X§ = param5;
      }
      
      private function §2l§() : void
      {
         this.§ !7§ = true;
         this.§,y§ = false;
      }
      
      public function §[!%§() : Boolean
      {
         return this.§ !7§;
      }
      
      public function §6!5§() : Boolean
      {
         if(this.§,y§ || !this.§[!%§())
         {
            return false;
         }
         this.§<s§ = new Vector.<XML>();
         this.§9B§ = 0;
         return true;
      }
      
      public function §>3§(param1:XML) : void
      {
         if(this.§,y§ && this.§[!%§())
         {
            return;
         }
         this.§<s§.push(param1);
         ++this.§9B§;
      }
      
      public function §>`§(param1:Function = null) : void
      {
         if(this.§,y§ && this.§[!%§())
         {
            return;
         }
         this.§28§ = param1;
         this.§9B§ = this.§<s§.length;
         this.§,y§ = true;
         this.§?D§();
      }
      
      private function §;!;§() : Boolean
      {
         if(this.§'!O§ && !this.§'!O§.§!L§)
         {
            this.§'!O§.removeEventListener(Event.COMPLETE,this.§"v§);
            this.§'!O§.addEventListener(Event.COMPLETE,this.§"v§);
            return true;
         }
         return false;
      }
      
      private function §"v§(param1:Event) : void
      {
         this.§'!O§.removeEventListener(Event.COMPLETE,this.§"v§);
         this.§?D§();
      }
      
      private function §?D§() : void
      {
         if(this.§<s§.length > 0)
         {
            this.§8!6§();
         }
         else if(this.§&!%§() >= 1)
         {
            this.§!!O§();
         }
      }
      
      private function §8!6§() : void
      {
         var _loc1_:String = null;
         if(this.§,y§ && this.§[!%§())
         {
            if(this.§;!;§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§^!J§ != null && this.§^!J§.length > 0)
            {
               _loc1_ = "?version=" + this.§^!J§;
            }
            this.§[§ = 0;
            this.§#,§ = this.§<s§.shift();
            if(this.§#,§.localName() == "pack")
            {
               this.§9>§ = new URLLoader();
               this.§9>§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§9>§.addEventListener(Event.COMPLETE,this.§"!I§);
               this.§9>§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!@§);
               this.§9>§.addEventListener(ProgressEvent.PROGRESS,this.§?!C§);
               this.§+!Q§ = this.§6i§ + this.§#,§.@url.toString() + _loc1_;
               this.§9>§.load(new URLRequest(this.§+!Q§));
            }
            else
            {
               this.§?Y§ = new Loader();
               this.§?Y§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§1_§);
               this.§?Y§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"!@§);
               this.§?Y§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§?!C§);
               this.§+!Q§ = this.§6i§ + this.§&t§ + this.§#,§.@swf.toString() + _loc1_;
               this.§?Y§.load(new URLRequest(this.§+!Q§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §"!@§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§+!Q§;
         this.§@! §();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§+!Q§,§+5§.§<B§);
      }
      
      private function §"!I§(param1:Event) : void
      {
         this.§=!!§.push(this.§9>§.data);
         if(this.§<X§ != null)
         {
            this.§<X§(this.§9>§.data);
         }
         if(this.§'!O§)
         {
            this.§'!O§.§"!N§(this.§9>§.data);
         }
         this.§@! §();
         ++this.§4!G§;
         this.§?D§();
      }
      
      private function §?!C§(param1:ProgressEvent) : void
      {
         this.§[§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §1_§(param1:Event) : void
      {
         §5A§(this.§?Y§,this.§#,§);
         this.§@! §();
         ++this.§4!G§;
         this.§?D§();
      }
      
      private function §@! §() : void
      {
         if(this.§?Y§)
         {
            this.§?Y§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1_§);
            this.§?Y§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!@§);
            this.§?Y§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1_§);
            this.§?Y§ = null;
         }
         if(this.§9>§)
         {
            this.§9>§.removeEventListener(Event.COMPLETE,this.§"!I§);
            this.§9>§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!@§);
            this.§9>§.removeEventListener(ProgressEvent.PROGRESS,this.§?!C§);
            this.§9>§ = null;
         }
         this.§#,§ = null;
      }
      
      private function §!!O§() : void
      {
         this.§[§ = 0;
         if(this.§28§ != null)
         {
            this.§28§.call();
            this.§28§ = null;
         }
      }
      
      public function §7!G§() : void
      {
         this.§[§ = 0;
         this.§,y§ = false;
         this.§9B§ = 0;
         if(this.§<s§)
         {
            this.§<s§ = null;
         }
         this.§28§ = null;
         this.§@! §();
      }
      
      public function §&!%§() : Number
      {
         if(!this.§[!%§())
         {
            §5s§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§,y§ || !this.§<s§ || !this.§[!%§())
         {
            §5s§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§4!G§ == this.§9B§)
         {
            if(this.§'!O§ && this.§9B§ > 0)
            {
               if(this.§'!O§.§!L§)
               {
                  return 1;
               }
               return (this.§4!G§ + this.§[§ - 0.5) / this.§9B§;
            }
            return 1;
         }
         return this.§4!G§ / this.§9B§;
      }
   }
}
