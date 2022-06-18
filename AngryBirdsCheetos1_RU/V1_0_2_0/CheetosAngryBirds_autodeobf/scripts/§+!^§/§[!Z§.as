package §+!^§
{
   import §#[§.§2F§;
   import §6&§.§9e§;
   import §=g§.§@!L§;
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
   
   public class §[!Z§
   {
      
      private static var §>'§:§[!Z§;
       
      
      private var §@O§:Vector.<XML>;
      
      private var §%@§:Boolean = false;
      
      private var §@7§:int;
      
      private var set:int;
      
      private var §3!2§:Function;
      
      private var §>!S§:Function;
      
      private var §[I§:Loader;
      
      private var §'O§:URLLoader;
      
      private var §7!Y§:XML;
      
      private var §=?§:String = "";
      
      private var §6t§:int = 0;
      
      private var §@!,§:Vector.<String>;
      
      private var §,!M§:String = "external_assets/LoadTest.swf";
      
      private var §83§:Boolean = false;
      
      private var §%!O§:Array;
      
      private var § I§:String;
      
      private var §&!?§:String;
      
      private var § !_§:Number = 0;
      
      private var §;Z§:String = "";
      
      private var §6u§:§4Q§;
      
      public function §[!Z§()
      {
         this.§%!O§ = [];
         super();
      }
      
      public static function get §0!S§() : §[!Z§
      {
         if(!§>'§)
         {
            §>'§ = new §[!Z§();
         }
         return §>'§;
      }
      
      public static function §6§(param1:Loader, param2:XML) : void
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
            §9e§.§]]§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §9O§() : void
      {
         this.§%!O§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§4Q§, param5:Function = null) : void
      {
         this.§ I§ = param2;
         this.§&!?§ = param3;
         this.§83§ = true;
         this.§%@§ = false;
         this.§6u§ = param4;
         this.§3!2§ = param5;
      }
      
      private function §?V§() : void
      {
         this.§83§ = true;
         this.§%@§ = false;
      }
      
      public function §7K§() : Boolean
      {
         return this.§83§;
      }
      
      public function § !V§() : Boolean
      {
         if(this.§%@§ || !this.§7K§())
         {
            return false;
         }
         this.§@O§ = new Vector.<XML>();
         this.§@7§ = 0;
         return true;
      }
      
      public function §2]§(param1:XML) : void
      {
         if(this.§%@§ && this.§7K§())
         {
            return;
         }
         this.§@O§.push(param1);
         ++this.§@7§;
      }
      
      public function §2w§(param1:Function = null) : void
      {
         if(this.§%@§ && this.§7K§())
         {
            return;
         }
         this.§>!S§ = param1;
         this.§@7§ = this.§@O§.length;
         this.§%@§ = true;
         this.§'J§();
      }
      
      private function §+!1§() : Boolean
      {
         if(this.§6u§ && !this.§6u§.§=Z§)
         {
            this.§6u§.removeEventListener(Event.COMPLETE,this.§5h§);
            this.§6u§.addEventListener(Event.COMPLETE,this.§5h§);
            return true;
         }
         return false;
      }
      
      private function §5h§(param1:Event) : void
      {
         this.§6u§.removeEventListener(Event.COMPLETE,this.§5h§);
         this.§'J§();
      }
      
      private function §'J§() : void
      {
         if(this.§@O§.length > 0)
         {
            this.§2L§();
         }
         else if(this.§?S§() >= 1)
         {
            this.§'3§();
         }
      }
      
      private function §2L§() : void
      {
         var _loc1_:String = null;
         if(this.§%@§ && this.§7K§())
         {
            if(this.§+!1§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§&!?§ != null && this.§&!?§.length > 0)
            {
               _loc1_ = "?version=" + this.§&!?§;
            }
            this.§ !_§ = 0;
            this.§7!Y§ = this.§@O§.shift();
            if(this.§7!Y§.localName() == "pack")
            {
               this.§'O§ = new URLLoader();
               this.§'O§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§'O§.addEventListener(Event.COMPLETE,this.§`I§);
               this.§'O§.addEventListener(IOErrorEvent.IO_ERROR,this.§5v§);
               this.§'O§.addEventListener(ProgressEvent.PROGRESS,this.§<;§);
               this.§;Z§ = this.§ I§ + this.§7!Y§.@url.toString() + _loc1_;
               this.§'O§.load(new URLRequest(this.§;Z§));
            }
            else
            {
               this.§[I§ = new Loader();
               this.§[I§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ j§);
               this.§[I§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5v§);
               this.§[I§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§<;§);
               this.§;Z§ = this.§ I§ + this.§=?§ + this.§7!Y§.@swf.toString() + _loc1_;
               this.§[I§.load(new URLRequest(this.§;Z§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §5v§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§;Z§;
         this.§?! §();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§;Z§,§2F§.§!s§);
      }
      
      private function §`I§(param1:Event) : void
      {
         this.§%!O§.push(this.§'O§.data);
         if(this.§3!2§ != null)
         {
            this.§3!2§(this.§'O§.data);
         }
         if(this.§6u§)
         {
            this.§6u§.§>!@§(this.§'O§.data);
         }
         this.§?! §();
         ++this.set;
         this.§'J§();
      }
      
      private function §<;§(param1:ProgressEvent) : void
      {
         this.§ !_§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function § j§(param1:Event) : void
      {
         §6§(this.§[I§,this.§7!Y§);
         this.§?! §();
         ++this.set;
         this.§'J§();
      }
      
      private function §?! §() : void
      {
         if(this.§[I§)
         {
            this.§[I§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ j§);
            this.§[I§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5v§);
            this.§[I§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ j§);
            this.§[I§ = null;
         }
         if(this.§'O§)
         {
            this.§'O§.removeEventListener(Event.COMPLETE,this.§`I§);
            this.§'O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5v§);
            this.§'O§.removeEventListener(ProgressEvent.PROGRESS,this.§<;§);
            this.§'O§ = null;
         }
         this.§7!Y§ = null;
      }
      
      private function §'3§() : void
      {
         this.§ !_§ = 0;
         if(this.§>!S§ != null)
         {
            this.§>!S§.call();
            this.§>!S§ = null;
         }
      }
      
      public function §6!M§() : void
      {
         this.§ !_§ = 0;
         this.§%@§ = false;
         this.§@7§ = 0;
         if(this.§@O§)
         {
            this.§@O§ = null;
         }
         this.§>!S§ = null;
         this.§?! §();
      }
      
      public function §?S§() : Number
      {
         if(!this.§7K§())
         {
            §@!L§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§%@§ || !this.§@O§ || !this.§7K§())
         {
            §@!L§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.set == this.§@7§)
         {
            if(this.§6u§ && this.§@7§ > 0)
            {
               if(this.§6u§.§=Z§)
               {
                  return 1;
               }
               return (this.set + this.§ !_§ - 0.5) / this.§@7§;
            }
            return 1;
         }
         return this.set / this.§@7§;
      }
   }
}
