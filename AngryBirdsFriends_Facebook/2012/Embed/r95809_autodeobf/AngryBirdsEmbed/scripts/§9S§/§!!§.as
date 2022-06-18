package §9S§
{
   import §2x§.§'!@§;
   import com.rovio.assets.§0v§;
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
   import §while§.§4!5§;
   
   public class §!!§
   {
      
      private static var §;k§:§!!§;
       
      
      private var §9Y§:Vector.<XML>;
      
      private var §&y§:Boolean = false;
      
      private var §!!%§:int;
      
      private var §!7§:int;
      
      private var §-!!§:Function;
      
      private var §&x§:Function;
      
      private var §>f§:Loader;
      
      private var §^!D§:URLLoader;
      
      private var §-0§:XML;
      
      private var §5<§:String = "";
      
      private var §;=§:int = 0;
      
      private var §^!7§:Vector.<String>;
      
      private var §=!1§:String = "external_assets/LoadTest.swf";
      
      private var §,[§:Boolean = false;
      
      private var §1!C§:Array;
      
      private var §?Y§:String;
      
      private var §6Z§:String;
      
      private var §?>§:Number = 0;
      
      private var §1Q§:String = "";
      
      private var §5!!§:§,x§;
      
      public function §!!§()
      {
         this.§1!C§ = [];
         super();
      }
      
      public static function get §^7§() : §!!§
      {
         if(!§;k§)
         {
            §;k§ = new §!!§();
         }
         return §;k§;
      }
      
      public static function §%!#§(param1:Loader, param2:XML) : void
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
            §0v§.§1F§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §+b§() : void
      {
         this.§1!C§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§,x§, param5:Function = null) : void
      {
         this.§?Y§ = param2;
         this.§6Z§ = param3;
         this.§,[§ = true;
         this.§&y§ = false;
         this.§5!!§ = param4;
         this.§-!!§ = param5;
      }
      
      private function §[<§() : void
      {
         this.§,[§ = true;
         this.§&y§ = false;
      }
      
      public function §>k§() : Boolean
      {
         return this.§,[§;
      }
      
      public function §+H§() : Boolean
      {
         if(this.§&y§ || !this.§>k§())
         {
            return false;
         }
         this.§9Y§ = new Vector.<XML>();
         this.§!!%§ = 0;
         return true;
      }
      
      public function §`G§(param1:XML) : void
      {
         if(this.§&y§ && this.§>k§())
         {
            return;
         }
         this.§9Y§.push(param1);
         ++this.§!!%§;
      }
      
      public function §3S§(param1:Function = null) : void
      {
         if(this.§&y§ && this.§>k§())
         {
            return;
         }
         this.§&x§ = param1;
         this.§!!%§ = this.§9Y§.length;
         this.§&y§ = true;
         this.§ B§();
      }
      
      private function §]!7§() : Boolean
      {
         if(this.§5!!§ && !this.§5!!§.§[#§)
         {
            this.§5!!§.removeEventListener(Event.COMPLETE,this.§6`§);
            this.§5!!§.addEventListener(Event.COMPLETE,this.§6`§);
            return true;
         }
         return false;
      }
      
      private function §6`§(param1:Event) : void
      {
         this.§5!!§.removeEventListener(Event.COMPLETE,this.§6`§);
         this.§ B§();
      }
      
      private function § B§() : void
      {
         if(this.§9Y§.length > 0)
         {
            this.§%!;§();
         }
         else if(this.§"5§() >= 1)
         {
            this.§^,§();
         }
      }
      
      private function §%!;§() : void
      {
         var _loc1_:String = null;
         if(this.§&y§ && this.§>k§())
         {
            if(this.§]!7§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6Z§ != null && this.§6Z§.length > 0)
            {
               _loc1_ = "?version=" + this.§6Z§;
            }
            this.§?>§ = 0;
            this.§-0§ = this.§9Y§.shift();
            if(this.§-0§.localName() == "pack")
            {
               this.§^!D§ = new URLLoader();
               this.§^!D§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§^!D§.addEventListener(Event.COMPLETE,this.§`N§);
               this.§^!D§.addEventListener(IOErrorEvent.IO_ERROR,this.§>K§);
               this.§^!D§.addEventListener(ProgressEvent.PROGRESS,this.§"h§);
               this.§1Q§ = this.§?Y§ + this.§-0§.@url.toString() + _loc1_;
               this.§^!D§.load(new URLRequest(this.§1Q§));
            }
            else
            {
               this.§>f§ = new Loader();
               this.§>f§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%e§);
               this.§>f§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§>K§);
               this.§>f§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§"h§);
               this.§1Q§ = this.§?Y§ + this.§5<§ + this.§-0§.@swf.toString() + _loc1_;
               this.§>f§.load(new URLRequest(this.§1Q§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §>K§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§1Q§;
         this.§0P§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§1Q§,§4!5§.include);
      }
      
      private function §`N§(param1:Event) : void
      {
         this.§1!C§.push(this.§^!D§.data);
         if(this.§-!!§ != null)
         {
            this.§-!!§(this.§^!D§.data);
         }
         if(this.§5!!§)
         {
            this.§5!!§.§ true§(this.§^!D§.data);
         }
         this.§0P§();
         ++this.§!7§;
         this.§ B§();
      }
      
      private function §"h§(param1:ProgressEvent) : void
      {
         this.§?>§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §%e§(param1:Event) : void
      {
         §%!#§(this.§>f§,this.§-0§);
         this.§0P§();
         ++this.§!7§;
         this.§ B§();
      }
      
      private function §0P§() : void
      {
         if(this.§>f§)
         {
            this.§>f§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%e§);
            this.§>f§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§>K§);
            this.§>f§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%e§);
            this.§>f§ = null;
         }
         if(this.§^!D§)
         {
            this.§^!D§.removeEventListener(Event.COMPLETE,this.§`N§);
            this.§^!D§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>K§);
            this.§^!D§.removeEventListener(ProgressEvent.PROGRESS,this.§"h§);
            this.§^!D§ = null;
         }
         this.§-0§ = null;
      }
      
      private function §^,§() : void
      {
         this.§?>§ = 0;
         if(this.§&x§ != null)
         {
            this.§&x§.call();
            this.§&x§ = null;
         }
      }
      
      public function §]!"§() : void
      {
         this.§?>§ = 0;
         this.§&y§ = false;
         this.§!!%§ = 0;
         if(this.§9Y§)
         {
            this.§9Y§ = null;
         }
         this.§&x§ = null;
         this.§0P§();
      }
      
      public function §"5§() : Number
      {
         if(!this.§>k§())
         {
            §'!@§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§&y§ || !this.§9Y§ || !this.§>k§())
         {
            §'!@§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§!7§ == this.§!!%§)
         {
            if(this.§5!!§ && this.§!!%§ > 0)
            {
               if(this.§5!!§.§[#§)
               {
                  return 1;
               }
               return (this.§!7§ + this.§?>§ - 0.5) / this.§!!%§;
            }
            return 1;
         }
         return this.§!7§ / this.§!!%§;
      }
   }
}
