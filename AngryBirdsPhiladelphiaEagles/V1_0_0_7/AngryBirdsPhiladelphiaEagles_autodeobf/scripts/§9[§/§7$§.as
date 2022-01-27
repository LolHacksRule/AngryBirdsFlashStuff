package §9[§
{
   import §!6§.§3!5§;
   import §4!6§.§3!$§;
   import com.rovio.assets.§@h§;
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
   
   public class §7$§
   {
      
      private static var §4#§:§7$§;
       
      
      private var §>!7§:Vector.<XML>;
      
      private var §88§:Boolean = false;
      
      private var §8e§:int;
      
      private var § ?§:int;
      
      private var §#K§:Function;
      
      private var §<$§:Function;
      
      private var §[b§:Loader;
      
      private var §"+§:URLLoader;
      
      private var §#!I§:XML;
      
      private var §<4§:String = "";
      
      private var §`!8§:int = 0;
      
      private var §8!E§:Vector.<String>;
      
      private var §]r§:String = "external_assets/LoadTest.swf";
      
      private var §`!@§:Boolean = false;
      
      private var §;!$§:Array;
      
      private var §'!>§:String;
      
      private var §>!§:String;
      
      private var §"!7§:Number = 0;
      
      private var §!!A§:String = "";
      
      private var §=!>§:§#b§;
      
      public function §7$§()
      {
         this.§;!$§ = [];
         super();
      }
      
      public static function get § set§() : §7$§
      {
         if(!§4#§)
         {
            §4#§ = new §7$§();
         }
         return §4#§;
      }
      
      public static function §<8§(param1:Loader, param2:XML) : void
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
            §@h§.§-!#§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §,!A§() : void
      {
         this.§;!$§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§#b§, param5:Function = null) : void
      {
         this.§'!>§ = param2;
         this.§>!§ = param3;
         this.§`!@§ = true;
         this.§88§ = false;
         this.§=!>§ = param4;
         this.§#K§ = param5;
      }
      
      private function §4!0§() : void
      {
         this.§`!@§ = true;
         this.§88§ = false;
      }
      
      public function §8!L§() : Boolean
      {
         return this.§`!@§;
      }
      
      public function §;!0§() : Boolean
      {
         if(this.§88§ || !this.§8!L§())
         {
            return false;
         }
         this.§>!7§ = new Vector.<XML>();
         this.§8e§ = 0;
         return true;
      }
      
      public function §<!N§(param1:XML) : void
      {
         if(this.§88§ && this.§8!L§())
         {
            return;
         }
         this.§>!7§.push(param1);
         ++this.§8e§;
      }
      
      public function §^W§(param1:Function = null) : void
      {
         if(this.§88§ && this.§8!L§())
         {
            return;
         }
         this.§<$§ = param1;
         this.§8e§ = this.§>!7§.length;
         this.§88§ = true;
         this.§60§();
      }
      
      private function §%K§() : Boolean
      {
         if(this.§=!>§ && !this.§=!>§.§1!§)
         {
            this.§=!>§.removeEventListener(Event.COMPLETE,this.§4!O§);
            this.§=!>§.addEventListener(Event.COMPLETE,this.§4!O§);
            return true;
         }
         return false;
      }
      
      private function §4!O§(param1:Event) : void
      {
         this.§=!>§.removeEventListener(Event.COMPLETE,this.§4!O§);
         this.§60§();
      }
      
      private function §60§() : void
      {
         if(this.§>!7§.length > 0)
         {
            this.§ !N§();
         }
         else if(this.§4d§() >= 1)
         {
            this.§'Z§();
         }
      }
      
      private function § !N§() : void
      {
         var _loc1_:String = null;
         if(this.§88§ && this.§8!L§())
         {
            if(this.§%K§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§>!§ != null && this.§>!§.length > 0)
            {
               _loc1_ = "?version=" + this.§>!§;
            }
            this.§"!7§ = 0;
            this.§#!I§ = this.§>!7§.shift();
            if(this.§#!I§.localName() == "pack")
            {
               this.§"+§ = new URLLoader();
               this.§"+§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§"+§.addEventListener(Event.COMPLETE,this.§1k§);
               this.§"+§.addEventListener(IOErrorEvent.IO_ERROR,this.§^!5§);
               this.§"+§.addEventListener(ProgressEvent.PROGRESS,this.§6W§);
               this.§!!A§ = this.§'!>§ + this.§#!I§.@url.toString() + _loc1_;
               this.§"+§.load(new URLRequest(this.§!!A§));
            }
            else
            {
               this.§[b§ = new Loader();
               this.§[b§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§^K§);
               this.§[b§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§^!5§);
               this.§[b§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§6W§);
               this.§!!A§ = this.§'!>§ + this.§<4§ + this.§#!I§.@swf.toString() + _loc1_;
               this.§[b§.load(new URLRequest(this.§!!A§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §^!5§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§!!A§;
         this.§6V§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§!!A§,§3!$§.§<!G§);
      }
      
      private function §1k§(param1:Event) : void
      {
         this.§;!$§.push(this.§"+§.data);
         if(this.§#K§ != null)
         {
            this.§#K§(this.§"+§.data);
         }
         if(this.§=!>§)
         {
            this.§=!>§.§5m§(this.§"+§.data);
         }
         this.§6V§();
         ++this.§ ?§;
         this.§60§();
      }
      
      private function §6W§(param1:ProgressEvent) : void
      {
         this.§"!7§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §^K§(param1:Event) : void
      {
         §<8§(this.§[b§,this.§#!I§);
         this.§6V§();
         ++this.§ ?§;
         this.§60§();
      }
      
      private function §6V§() : void
      {
         if(this.§[b§)
         {
            this.§[b§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^K§);
            this.§[b§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§^!5§);
            this.§[b§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§^K§);
            this.§[b§ = null;
         }
         if(this.§"+§)
         {
            this.§"+§.removeEventListener(Event.COMPLETE,this.§1k§);
            this.§"+§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^!5§);
            this.§"+§.removeEventListener(ProgressEvent.PROGRESS,this.§6W§);
            this.§"+§ = null;
         }
         this.§#!I§ = null;
      }
      
      private function §'Z§() : void
      {
         this.§"!7§ = 0;
         if(this.§<$§ != null)
         {
            this.§<$§.call();
            this.§<$§ = null;
         }
      }
      
      public function §%5§() : void
      {
         this.§"!7§ = 0;
         this.§88§ = false;
         this.§8e§ = 0;
         if(this.§>!7§)
         {
            this.§>!7§ = null;
         }
         this.§<$§ = null;
         this.§6V§();
      }
      
      public function §4d§() : Number
      {
         if(!this.§8!L§())
         {
            §3!5§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§88§ || !this.§>!7§ || !this.§8!L§())
         {
            §3!5§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§ ?§ == this.§8e§)
         {
            if(this.§=!>§ && this.§8e§ > 0)
            {
               if(this.§=!>§.§1!§)
               {
                  return 1;
               }
               return (this.§ ?§ + this.§"!7§ - 0.5) / this.§8e§;
            }
            return 1;
         }
         return this.§ ?§ / this.§8e§;
      }
   }
}
