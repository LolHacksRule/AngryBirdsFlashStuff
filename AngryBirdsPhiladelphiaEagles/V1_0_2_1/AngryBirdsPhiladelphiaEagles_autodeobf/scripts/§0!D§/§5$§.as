package §0!D§
{
   import §9!0§.§85§;
   import §@V§.§`!5§;
   import com.rovio.assets.§<x§;
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
   
   public class §5$§
   {
      
      private static var §]-§:§5$§;
       
      
      private var §17§:Vector.<XML>;
      
      private var §+U§:Boolean = false;
      
      private var §1!-§:int;
      
      private var §8X§:int;
      
      private var §6!P§:Function;
      
      private var §;'§:Function;
      
      private var §'f§:Loader;
      
      private var §`Q§:URLLoader;
      
      private var §`Y§:XML;
      
      private var §!s§:String = "";
      
      private var §-!,§:int = 0;
      
      private var § !5§:Vector.<String>;
      
      private var §'!7§:String = "external_assets/LoadTest.swf";
      
      private var §"!M§:Boolean = false;
      
      private var §16§:Array;
      
      private var §[!>§:String;
      
      private var §8!,§:String;
      
      private var §^!9§:Number = 0;
      
      private var §&p§:String = "";
      
      private var §]6§:§'!5§;
      
      public function §5$§()
      {
         this.§16§ = [];
         super();
      }
      
      public static function get §&y§() : §5$§
      {
         if(!§]-§)
         {
            §]-§ = new §5$§();
         }
         return §]-§;
      }
      
      public static function §[!E§(param1:Loader, param2:XML) : void
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
            §<x§.§ !N§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §+F§() : void
      {
         this.§16§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§'!5§, param5:Function = null) : void
      {
         this.§[!>§ = param2;
         this.§8!,§ = param3;
         this.§"!M§ = true;
         this.§+U§ = false;
         this.§]6§ = param4;
         this.§6!P§ = param5;
      }
      
      private function §'u§() : void
      {
         this.§"!M§ = true;
         this.§+U§ = false;
      }
      
      public function §;Z§() : Boolean
      {
         return this.§"!M§;
      }
      
      public function §?!"§() : Boolean
      {
         if(this.§+U§ || !this.§;Z§())
         {
            return false;
         }
         this.§17§ = new Vector.<XML>();
         this.§1!-§ = 0;
         return true;
      }
      
      public function §%T§(param1:XML) : void
      {
         if(this.§+U§ && this.§;Z§())
         {
            return;
         }
         this.§17§.push(param1);
         ++this.§1!-§;
      }
      
      public function §,!>§(param1:Function = null) : void
      {
         if(this.§+U§ && this.§;Z§())
         {
            return;
         }
         this.§;'§ = param1;
         this.§1!-§ = this.§17§.length;
         this.§+U§ = true;
         this.§0!N§();
      }
      
      private function §@!5§() : Boolean
      {
         if(this.§]6§ && !this.§]6§.§4P§)
         {
            this.§]6§.removeEventListener(Event.COMPLETE,this.§'M§);
            this.§]6§.addEventListener(Event.COMPLETE,this.§'M§);
            return true;
         }
         return false;
      }
      
      private function §'M§(param1:Event) : void
      {
         this.§]6§.removeEventListener(Event.COMPLETE,this.§'M§);
         this.§0!N§();
      }
      
      private function §0!N§() : void
      {
         if(this.§17§.length > 0)
         {
            this.§ l§();
         }
         else if(this.§;X§() >= 1)
         {
            this.§9C§();
         }
      }
      
      private function § l§() : void
      {
         var _loc1_:String = null;
         if(this.§+U§ && this.§;Z§())
         {
            if(this.§@!5§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§8!,§ != null && this.§8!,§.length > 0)
            {
               _loc1_ = "?version=" + this.§8!,§;
            }
            this.§^!9§ = 0;
            this.§`Y§ = this.§17§.shift();
            if(this.§`Y§.localName() == "pack")
            {
               this.§`Q§ = new URLLoader();
               this.§`Q§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§`Q§.addEventListener(Event.COMPLETE,this.§@?§);
               this.§`Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§;q§);
               this.§`Q§.addEventListener(ProgressEvent.PROGRESS,this.§09§);
               this.§&p§ = this.§[!>§ + this.§`Y§.@url.toString() + _loc1_;
               this.§`Q§.load(new URLRequest(this.§&p§));
            }
            else
            {
               this.§'f§ = new Loader();
               this.§'f§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§[!?§);
               this.§'f§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§;q§);
               this.§'f§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§09§);
               this.§&p§ = this.§[!>§ + this.§!s§ + this.§`Y§.@swf.toString() + _loc1_;
               this.§'f§.load(new URLRequest(this.§&p§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §;q§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§&p§;
         this.§8E§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§&p§,§85§.§`! §);
      }
      
      private function §@?§(param1:Event) : void
      {
         this.§16§.push(this.§`Q§.data);
         if(this.§6!P§ != null)
         {
            this.§6!P§(this.§`Q§.data);
         }
         if(this.§]6§)
         {
            this.§]6§.§"!6§(this.§`Q§.data);
         }
         this.§8E§();
         ++this.§8X§;
         this.§0!N§();
      }
      
      private function §09§(param1:ProgressEvent) : void
      {
         this.§^!9§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §[!?§(param1:Event) : void
      {
         §[!E§(this.§'f§,this.§`Y§);
         this.§8E§();
         ++this.§8X§;
         this.§0!N§();
      }
      
      private function §8E§() : void
      {
         if(this.§'f§)
         {
            this.§'f§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§[!?§);
            this.§'f§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§;q§);
            this.§'f§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§[!?§);
            this.§'f§ = null;
         }
         if(this.§`Q§)
         {
            this.§`Q§.removeEventListener(Event.COMPLETE,this.§@?§);
            this.§`Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;q§);
            this.§`Q§.removeEventListener(ProgressEvent.PROGRESS,this.§09§);
            this.§`Q§ = null;
         }
         this.§`Y§ = null;
      }
      
      private function §9C§() : void
      {
         this.§^!9§ = 0;
         if(this.§;'§ != null)
         {
            this.§;'§.call();
            this.§;'§ = null;
         }
      }
      
      public function §45§() : void
      {
         this.§^!9§ = 0;
         this.§+U§ = false;
         this.§1!-§ = 0;
         if(this.§17§)
         {
            this.§17§ = null;
         }
         this.§;'§ = null;
         this.§8E§();
      }
      
      public function §;X§() : Number
      {
         if(!this.§;Z§())
         {
            §`!5§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§+U§ || !this.§17§ || !this.§;Z§())
         {
            §`!5§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§8X§ == this.§1!-§)
         {
            if(this.§]6§ && this.§1!-§ > 0)
            {
               if(this.§]6§.§4P§)
               {
                  return 1;
               }
               return (this.§8X§ + this.§^!9§ - 0.5) / this.§1!-§;
            }
            return 1;
         }
         return this.§8X§ / this.§1!-§;
      }
   }
}
