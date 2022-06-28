package §[!]§
{
   import §"x§.§-8§;
   import §]+§.§&!$§;
   import com.rovio.assets.§`!t§;
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
   
   public class § !#§
   {
      
      private static var §6@§:§ !#§;
       
      
      private var §1!q§:Vector.<XML>;
      
      private var §<!j§:Boolean = false;
      
      private var §1v§:int;
      
      private var §;!B§:int;
      
      private var §=!l§:Function;
      
      private var §<!D§:Function;
      
      private var §`!a§:Loader;
      
      private var §[K§:URLLoader;
      
      private var §2e§:XML;
      
      private var §5!<§:String = "";
      
      private var §^R§:int = 0;
      
      private var §<p§:Vector.<String>;
      
      private var §`r§:String = "external_assets/LoadTest.swf";
      
      private var §%i§:Boolean = false;
      
      private var §1>§:Array;
      
      private var §<!0§:String;
      
      private var §1q§:String;
      
      private var §`U§:Number = 0;
      
      private var §9`§:String = "";
      
      private var §4!8§:§ i§;
      
      public function § !#§()
      {
         this.§1>§ = [];
         super();
      }
      
      public static function get §7!j§() : § !#§
      {
         if(!§6@§)
         {
            §6@§ = new § !#§();
         }
         return §6@§;
      }
      
      public static function §>>§(param1:Loader, param2:XML) : void
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
            §`!t§.§2!O§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §5!p§() : void
      {
         this.§1>§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§ i§, param5:Function = null) : void
      {
         this.§<!0§ = param2;
         this.§1q§ = param3;
         this.§%i§ = true;
         this.§<!j§ = false;
         this.§4!8§ = param4;
         this.§=!l§ = param5;
      }
      
      private function §><§() : void
      {
         this.§%i§ = true;
         this.§<!j§ = false;
      }
      
      public function § L§() : Boolean
      {
         return this.§%i§;
      }
      
      public function §'!P§() : Boolean
      {
         if(this.§<!j§ || !this.§ L§())
         {
            return false;
         }
         this.§1!q§ = new Vector.<XML>();
         this.§1v§ = 0;
         return true;
      }
      
      public function §]!4§(param1:XML) : void
      {
         if(this.§<!j§ && this.§ L§())
         {
            return;
         }
         this.§1!q§.push(param1);
         ++this.§1v§;
      }
      
      public function §=g§(param1:Function = null) : void
      {
         if(this.§<!j§ && this.§ L§())
         {
            return;
         }
         this.§<!D§ = param1;
         this.§1v§ = this.§1!q§.length;
         this.§<!j§ = true;
         this.§2k§();
      }
      
      private function §3!x§() : Boolean
      {
         if(this.§4!8§ && !this.§4!8§.§<!l§)
         {
            this.§4!8§.removeEventListener(Event.COMPLETE,this.§91§);
            this.§4!8§.addEventListener(Event.COMPLETE,this.§91§);
            return true;
         }
         return false;
      }
      
      private function §91§(param1:Event) : void
      {
         this.§4!8§.removeEventListener(Event.COMPLETE,this.§91§);
         this.§2k§();
      }
      
      private function §2k§() : void
      {
         if(this.§1!q§.length > 0)
         {
            this.§,g§();
         }
         else if(this.§7G§() >= 1)
         {
            this.§2!&§();
         }
      }
      
      private function §,g§() : void
      {
         var _loc1_:String = null;
         if(this.§<!j§ && this.§ L§())
         {
            if(this.§3!x§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§1q§ != null && this.§1q§.length > 0)
            {
               _loc1_ = "?version=" + this.§1q§;
            }
            this.§`U§ = 0;
            this.§2e§ = this.§1!q§.shift();
            if(this.§2e§.localName() == "pack")
            {
               this.§[K§ = new URLLoader();
               this.§[K§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§[K§.addEventListener(Event.COMPLETE,this.§3!W§);
               this.§[K§.addEventListener(IOErrorEvent.IO_ERROR,this.§-!E§);
               this.§[K§.addEventListener(ProgressEvent.PROGRESS,this.§4!i§);
               this.§9`§ = this.§<!0§ + this.§2e§.@url.toString() + _loc1_;
               this.§[K§.load(new URLRequest(this.§9`§));
            }
            else
            {
               this.§`!a§ = new Loader();
               this.§`!a§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§'I§);
               this.§`!a§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§-!E§);
               this.§`!a§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§4!i§);
               this.§9`§ = this.§<!0§ + this.§5!<§ + this.§2e§.@swf.toString() + _loc1_;
               this.§`!a§.load(new URLRequest(this.§9`§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §-!E§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§9`§;
         this.§8!p§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§9`§,§&!$§.§"V§);
      }
      
      private function §3!W§(param1:Event) : void
      {
         this.§1>§.push(this.§[K§.data);
         if(this.§=!l§ != null)
         {
            this.§=!l§(this.§[K§.data);
         }
         if(this.§4!8§)
         {
            this.§4!8§.§3O§(this.§[K§.data);
         }
         this.§8!p§();
         ++this.§;!B§;
         this.§2k§();
      }
      
      private function §4!i§(param1:ProgressEvent) : void
      {
         this.§`U§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §'I§(param1:Event) : void
      {
         §>>§(this.§`!a§,this.§2e§);
         this.§8!p§();
         ++this.§;!B§;
         this.§2k§();
      }
      
      private function §8!p§() : void
      {
         if(this.§`!a§)
         {
            this.§`!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§'I§);
            this.§`!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!E§);
            this.§`!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§'I§);
            this.§`!a§ = null;
         }
         if(this.§[K§)
         {
            this.§[K§.removeEventListener(Event.COMPLETE,this.§3!W§);
            this.§[K§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-!E§);
            this.§[K§.removeEventListener(ProgressEvent.PROGRESS,this.§4!i§);
            this.§[K§ = null;
         }
         this.§2e§ = null;
      }
      
      private function §2!&§() : void
      {
         this.§`U§ = 0;
         if(this.§<!D§ != null)
         {
            this.§<!D§.call();
            this.§<!D§ = null;
         }
      }
      
      public function §=p§() : void
      {
         this.§`U§ = 0;
         this.§<!j§ = false;
         this.§1v§ = 0;
         if(this.§1!q§)
         {
            this.§1!q§ = null;
         }
         this.§<!D§ = null;
         this.§8!p§();
      }
      
      public function §7G§() : Number
      {
         if(!this.§ L§())
         {
            §-8§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§<!j§ || !this.§1!q§ || !this.§ L§())
         {
            §-8§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§;!B§ == this.§1v§)
         {
            if(this.§4!8§ && this.§1v§ > 0)
            {
               if(this.§4!8§.§<!l§)
               {
                  return 1;
               }
               return (this.§;!B§ + this.§`U§ - 0.5) / this.§1v§;
            }
            return 1;
         }
         return this.§;!B§ / this.§1v§;
      }
   }
}
