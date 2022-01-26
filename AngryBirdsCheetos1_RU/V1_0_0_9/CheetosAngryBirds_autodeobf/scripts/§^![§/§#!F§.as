package §^![§
{
   import §-!6§.§>I§;
   import §0!F§.§0c§;
   import §1q§.§-!+§;
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
   
   public class §#!F§
   {
      
      private static var §-B§:§#!F§;
       
      
      private var §>!5§:Vector.<XML>;
      
      private var §,f§:Boolean = false;
      
      private var §[!9§:int;
      
      private var §%!D§:int;
      
      private var §&+§:Function;
      
      private var §1=§:Function;
      
      private var §5§:Loader;
      
      private var §3j§:URLLoader;
      
      private var §5X§:XML;
      
      private var §3!8§:String = "";
      
      private var §8![§:int = 0;
      
      private var §#!N§:Vector.<String>;
      
      private var §%W§:String = "external_assets/LoadTest.swf";
      
      private var §;1§:Boolean = false;
      
      private var §[O§:Array;
      
      private var §<R§:String;
      
      private var §9N§:String;
      
      private var §2U§:Number = 0;
      
      private var §<<§:String = "";
      
      private var §#2§:§;8§;
      
      public function §#!F§()
      {
         this.§[O§ = [];
         super();
      }
      
      public static function get §!5§() : §#!F§
      {
         if(!§-B§)
         {
            §-B§ = new §#!F§();
         }
         return §-B§;
      }
      
      public static function §8!+§(param1:Loader, param2:XML) : void
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
            §-!+§.§>!=§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §8I§() : void
      {
         this.§[O§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§;8§, param5:Function = null) : void
      {
         this.§<R§ = param2;
         this.§9N§ = param3;
         this.§;1§ = true;
         this.§,f§ = false;
         this.§#2§ = param4;
         this.§&+§ = param5;
      }
      
      private function §='§() : void
      {
         this.§;1§ = true;
         this.§,f§ = false;
      }
      
      public function § !!§() : Boolean
      {
         return this.§;1§;
      }
      
      public function §&!`§() : Boolean
      {
         if(this.§,f§ || !this.§ !!§())
         {
            return false;
         }
         this.§>!5§ = new Vector.<XML>();
         this.§[!9§ = 0;
         return true;
      }
      
      public function §4f§(param1:XML) : void
      {
         if(this.§,f§ && this.§ !!§())
         {
            return;
         }
         this.§>!5§.push(param1);
         ++this.§[!9§;
      }
      
      public function §<3§(param1:Function = null) : void
      {
         if(this.§,f§ && this.§ !!§())
         {
            return;
         }
         this.§1=§ = param1;
         this.§[!9§ = this.§>!5§.length;
         this.§,f§ = true;
         this.§0!=§();
      }
      
      private function §5O§() : Boolean
      {
         if(this.§#2§ && !this.§#2§.§^;§)
         {
            this.§#2§.removeEventListener(Event.COMPLETE,this.§,z§);
            this.§#2§.addEventListener(Event.COMPLETE,this.§,z§);
            return true;
         }
         return false;
      }
      
      private function §,z§(param1:Event) : void
      {
         this.§#2§.removeEventListener(Event.COMPLETE,this.§,z§);
         this.§0!=§();
      }
      
      private function §0!=§() : void
      {
         if(this.§>!5§.length > 0)
         {
            this.§=0§();
         }
         else if(this.§&b§() >= 1)
         {
            this.§?E§();
         }
      }
      
      private function §=0§() : void
      {
         var _loc1_:String = null;
         if(this.§,f§ && this.§ !!§())
         {
            if(this.§5O§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§9N§ != null && this.§9N§.length > 0)
            {
               _loc1_ = "?version=" + this.§9N§;
            }
            this.§2U§ = 0;
            this.§5X§ = this.§>!5§.shift();
            if(this.§5X§.localName() == "pack")
            {
               this.§3j§ = new URLLoader();
               this.§3j§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§3j§.addEventListener(Event.COMPLETE,this.§!!^§);
               this.§3j§.addEventListener(IOErrorEvent.IO_ERROR,this.§'!=§);
               this.§3j§.addEventListener(ProgressEvent.PROGRESS,this.§87§);
               this.§<<§ = this.§<R§ + this.§5X§.@url.toString() + _loc1_;
               this.§3j§.load(new URLRequest(this.§<<§));
            }
            else
            {
               this.§5§ = new Loader();
               this.§5§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§+!V§);
               this.§5§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§'!=§);
               this.§5§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§87§);
               this.§<<§ = this.§<R§ + this.§3!8§ + this.§5X§.@swf.toString() + _loc1_;
               this.§5§.load(new URLRequest(this.§<<§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §'!=§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§<<§;
         this.§?-§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§<<§,§0c§.§ 9§);
      }
      
      private function §!!^§(param1:Event) : void
      {
         this.§[O§.push(this.§3j§.data);
         if(this.§&+§ != null)
         {
            this.§&+§(this.§3j§.data);
         }
         if(this.§#2§)
         {
            this.§#2§.§+!#§(this.§3j§.data);
         }
         this.§?-§();
         ++this.§%!D§;
         this.§0!=§();
      }
      
      private function §87§(param1:ProgressEvent) : void
      {
         this.§2U§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §+!V§(param1:Event) : void
      {
         §8!+§(this.§5§,this.§5X§);
         this.§?-§();
         ++this.§%!D§;
         this.§0!=§();
      }
      
      private function §?-§() : void
      {
         if(this.§5§)
         {
            this.§5§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+!V§);
            this.§5§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!=§);
            this.§5§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+!V§);
            this.§5§ = null;
         }
         if(this.§3j§)
         {
            this.§3j§.removeEventListener(Event.COMPLETE,this.§!!^§);
            this.§3j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!=§);
            this.§3j§.removeEventListener(ProgressEvent.PROGRESS,this.§87§);
            this.§3j§ = null;
         }
         this.§5X§ = null;
      }
      
      private function §?E§() : void
      {
         this.§2U§ = 0;
         if(this.§1=§ != null)
         {
            this.§1=§.call();
            this.§1=§ = null;
         }
      }
      
      public function §#a§() : void
      {
         this.§2U§ = 0;
         this.§,f§ = false;
         this.§[!9§ = 0;
         if(this.§>!5§)
         {
            this.§>!5§ = null;
         }
         this.§1=§ = null;
         this.§?-§();
      }
      
      public function §&b§() : Number
      {
         if(!this.§ !!§())
         {
            §>I§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§,f§ || !this.§>!5§ || !this.§ !!§())
         {
            §>I§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§%!D§ == this.§[!9§)
         {
            if(this.§#2§ && this.§[!9§ > 0)
            {
               if(this.§#2§.§^;§)
               {
                  return 1;
               }
               return (this.§%!D§ + this.§2U§ - 0.5) / this.§[!9§;
            }
            return 1;
         }
         return this.§%!D§ / this.§[!9§;
      }
   }
}
