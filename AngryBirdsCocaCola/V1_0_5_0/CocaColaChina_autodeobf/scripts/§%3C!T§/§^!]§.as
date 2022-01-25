package §<!T§
{
   import § !K§.§'h§;
   import §'!^§.§37§;
   import §<!!§.§-"§;
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
   
   public class §^!]§
   {
      
      private static var §8#§:§^!]§;
       
      
      private var §3![§:Vector.<XML>;
      
      private var §'o§:Boolean = false;
      
      private var §+!L§:int;
      
      private var §&=§:int;
      
      private var §>@§:Function;
      
      private var §?! §:Function;
      
      private var §6!?§:Loader;
      
      private var §+<§:URLLoader;
      
      private var §>!c§:XML;
      
      private var §3!H§:String = "";
      
      private var §#!^§:int = 0;
      
      private var §];§:Vector.<String>;
      
      private var § set§:String = "external_assets/LoadTest.swf";
      
      private var §?K§:Boolean = false;
      
      private var §,!#§:Array;
      
      private var §!5§:String;
      
      private var §=]§:String;
      
      private var §%!Q§:Number = 0;
      
      private var §5j§:String = "";
      
      private var §'J§:§ !$§;
      
      public function §^!]§()
      {
         this.§,!#§ = [];
         super();
      }
      
      public static function get §0%§() : §^!]§
      {
         if(!§8#§)
         {
            §8#§ = new §^!]§();
         }
         return §8#§;
      }
      
      public static function §;!'§(param1:Loader, param2:XML) : void
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
            §'h§.§#!8§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §%'§() : void
      {
         this.§,!#§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§ !$§, param5:Function = null) : void
      {
         this.§!5§ = param2;
         this.§=]§ = param3;
         this.§?K§ = true;
         this.§'o§ = false;
         this.§'J§ = param4;
         this.§>@§ = param5;
      }
      
      private function §!!-§() : void
      {
         this.§?K§ = true;
         this.§'o§ = false;
      }
      
      public function §"-§() : Boolean
      {
         return this.§?K§;
      }
      
      public function §%L§() : Boolean
      {
         if(this.§'o§ || !this.§"-§())
         {
            return false;
         }
         this.§3![§ = new Vector.<XML>();
         this.§+!L§ = 0;
         return true;
      }
      
      public function §#!6§(param1:XML) : void
      {
         if(this.§'o§ && this.§"-§())
         {
            return;
         }
         this.§3![§.push(param1);
         ++this.§+!L§;
      }
      
      public function §[!P§(param1:Function = null) : void
      {
         if(this.§'o§ && this.§"-§())
         {
            return;
         }
         this.§?! § = param1;
         this.§+!L§ = this.§3![§.length;
         this.§'o§ = true;
         this.§6<§();
      }
      
      private function §%!L§() : Boolean
      {
         if(this.§'J§ && !this.§'J§.§2J§)
         {
            this.§'J§.removeEventListener(Event.COMPLETE,this.§3N§);
            this.§'J§.addEventListener(Event.COMPLETE,this.§3N§);
            return true;
         }
         return false;
      }
      
      private function §3N§(param1:Event) : void
      {
         this.§'J§.removeEventListener(Event.COMPLETE,this.§3N§);
         this.§6<§();
      }
      
      private function §6<§() : void
      {
         if(this.§3![§.length > 0)
         {
            this.§&m§();
         }
         else if(this.§0!-§() >= 1)
         {
            this.§[!2§();
         }
      }
      
      private function §&m§() : void
      {
         var _loc1_:String = null;
         if(this.§'o§ && this.§"-§())
         {
            if(this.§%!L§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§=]§ != null && this.§=]§.length > 0)
            {
               _loc1_ = "?version=" + this.§=]§;
            }
            this.§%!Q§ = 0;
            this.§>!c§ = this.§3![§.shift();
            if(this.§>!c§.localName() == "pack")
            {
               this.§+<§ = new URLLoader();
               this.§+<§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§+<§.addEventListener(Event.COMPLETE,this.§#!P§);
               this.§+<§.addEventListener(IOErrorEvent.IO_ERROR,this.§8!P§);
               this.§+<§.addEventListener(ProgressEvent.PROGRESS,this.§#W§);
               this.§5j§ = this.§!5§ + this.§>!c§.@url.toString() + _loc1_;
               this.§+<§.load(new URLRequest(this.§5j§));
            }
            else
            {
               this.§6!?§ = new Loader();
               this.§6!?§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3r§);
               this.§6!?§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§8!P§);
               this.§6!?§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§#W§);
               this.§5j§ = this.§!5§ + this.§3!H§ + this.§>!c§.@swf.toString() + _loc1_;
               this.§6!?§.load(new URLRequest(this.§5j§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §8!P§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§5j§;
         this.§=P§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§5j§,§37§.§10§);
      }
      
      private function §#!P§(param1:Event) : void
      {
         this.§,!#§.push(this.§+<§.data);
         if(this.§>@§ != null)
         {
            this.§>@§(this.§+<§.data);
         }
         if(this.§'J§)
         {
            this.§'J§.§!9§(this.§+<§.data);
         }
         this.§=P§();
         ++this.§&=§;
         this.§6<§();
      }
      
      private function §#W§(param1:ProgressEvent) : void
      {
         this.§%!Q§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §3r§(param1:Event) : void
      {
         §;!'§(this.§6!?§,this.§>!c§);
         this.§=P§();
         ++this.§&=§;
         this.§6<§();
      }
      
      private function §=P§() : void
      {
         if(this.§6!?§)
         {
            this.§6!?§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3r§);
            this.§6!?§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!P§);
            this.§6!?§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3r§);
            this.§6!?§ = null;
         }
         if(this.§+<§)
         {
            this.§+<§.removeEventListener(Event.COMPLETE,this.§#!P§);
            this.§+<§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8!P§);
            this.§+<§.removeEventListener(ProgressEvent.PROGRESS,this.§#W§);
            this.§+<§ = null;
         }
         this.§>!c§ = null;
      }
      
      private function §[!2§() : void
      {
         this.§%!Q§ = 0;
         if(this.§?! § != null)
         {
            this.§?! §.call();
            this.§?! § = null;
         }
      }
      
      public function §`!b§() : void
      {
         this.§%!Q§ = 0;
         this.§'o§ = false;
         this.§+!L§ = 0;
         if(this.§3![§)
         {
            this.§3![§ = null;
         }
         this.§?! § = null;
         this.§=P§();
      }
      
      public function §0!-§() : Number
      {
         if(!this.§"-§())
         {
            §-"§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§'o§ || !this.§3![§ || !this.§"-§())
         {
            §-"§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§&=§ == this.§+!L§)
         {
            if(this.§'J§ && this.§+!L§ > 0)
            {
               if(this.§'J§.§2J§)
               {
                  return 1;
               }
               return (this.§&=§ + this.§%!Q§ - 0.5) / this.§+!L§;
            }
            return 1;
         }
         return this.§&=§ / this.§+!L§;
      }
   }
}
