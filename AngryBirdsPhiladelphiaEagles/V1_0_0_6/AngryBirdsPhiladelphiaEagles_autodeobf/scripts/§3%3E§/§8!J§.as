package §3>§
{
   import §3!O§.§5q§;
   import §;!B§.§"!&§;
   import com.rovio.assets.§^3§;
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
   
   public class §8!J§
   {
      
      private static var §3D§:§8!J§;
       
      
      private var §<!9§:Vector.<XML>;
      
      private var §?!>§:Boolean = false;
      
      private var §6!;§:int;
      
      private var §>!;§:int;
      
      private var §-E§:Function;
      
      private var §71§:Function;
      
      private var §?!2§:Loader;
      
      private var §5s§:URLLoader;
      
      private var §&!E§:XML;
      
      private var §@!J§:String = "";
      
      private var §>r§:int = 0;
      
      private var §%! §:Vector.<String>;
      
      private var §'!M§:String = "external_assets/LoadTest.swf";
      
      private var §?#§:Boolean = false;
      
      private var §?%§:Array;
      
      private var §62§:String;
      
      private var §6D§:String;
      
      private var §1b§:Number = 0;
      
      private var §#6§:String = "";
      
      private var §!8§:§`z§;
      
      public function §8!J§()
      {
         this.§?%§ = [];
         super();
      }
      
      public static function get §<"§() : §8!J§
      {
         if(!§3D§)
         {
            §3D§ = new §8!J§();
         }
         return §3D§;
      }
      
      public static function §`U§(param1:Loader, param2:XML) : void
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
            §^3§.§!!A§(asset.@name.toString(),assetCls);
            if(asset.@registerFont.toString().toUpperCase() == "TRUE")
            {
               Font.registerFont(assetCls);
            }
         }
      }
      
      public function §7'§() : void
      {
         this.§?%§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§`z§, param5:Function = null) : void
      {
         this.§62§ = param2;
         this.§6D§ = param3;
         this.§?#§ = true;
         this.§?!>§ = false;
         this.§!8§ = param4;
         this.§-E§ = param5;
      }
      
      private function §[Y§() : void
      {
         this.§?#§ = true;
         this.§?!>§ = false;
      }
      
      public function §,!D§() : Boolean
      {
         return this.§?#§;
      }
      
      public function §4!5§() : Boolean
      {
         if(this.§?!>§ || !this.§,!D§())
         {
            return false;
         }
         this.§<!9§ = new Vector.<XML>();
         this.§6!;§ = 0;
         return true;
      }
      
      public function §80§(param1:XML) : void
      {
         if(this.§?!>§ && this.§,!D§())
         {
            return;
         }
         this.§<!9§.push(param1);
         ++this.§6!;§;
      }
      
      public function §@@§(param1:Function = null) : void
      {
         if(this.§?!>§ && this.§,!D§())
         {
            return;
         }
         this.§71§ = param1;
         this.§6!;§ = this.§<!9§.length;
         this.§?!>§ = true;
         this.§`!H§();
      }
      
      private function §?!"§() : Boolean
      {
         if(this.§!8§ && !this.§!8§.§;_§)
         {
            this.§!8§.removeEventListener(Event.COMPLETE,this.§<,§);
            this.§!8§.addEventListener(Event.COMPLETE,this.§<,§);
            return true;
         }
         return false;
      }
      
      private function §<,§(param1:Event) : void
      {
         this.§!8§.removeEventListener(Event.COMPLETE,this.§<,§);
         this.§`!H§();
      }
      
      private function §`!H§() : void
      {
         if(this.§<!9§.length > 0)
         {
            this.§3K§();
         }
         else if(this.§#!8§() >= 1)
         {
            this.§#<§();
         }
      }
      
      private function §3K§() : void
      {
         var _loc1_:String = null;
         if(this.§?!>§ && this.§,!D§())
         {
            if(this.§?!"§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6D§ != null && this.§6D§.length > 0)
            {
               _loc1_ = "?version=" + this.§6D§;
            }
            this.§1b§ = 0;
            this.§&!E§ = this.§<!9§.shift();
            if(this.§&!E§.localName() == "pack")
            {
               this.§5s§ = new URLLoader();
               this.§5s§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§5s§.addEventListener(Event.COMPLETE,this.§`V§);
               this.§5s§.addEventListener(IOErrorEvent.IO_ERROR,this.§`D§);
               this.§5s§.addEventListener(ProgressEvent.PROGRESS,this.§8i§);
               this.§#6§ = this.§62§ + this.§&!E§.@url.toString() + _loc1_;
               this.§5s§.load(new URLRequest(this.§#6§));
            }
            else
            {
               this.§?!2§ = new Loader();
               this.§?!2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§+-§);
               this.§?!2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§`D§);
               this.§?!2§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§8i§);
               this.§#6§ = this.§62§ + this.§@!J§ + this.§&!E§.@swf.toString() + _loc1_;
               this.§?!2§.load(new URLRequest(this.§#6§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §`D§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§#6§;
         this.§@!!§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§#6§,§"!&§.§9!A§);
      }
      
      private function §`V§(param1:Event) : void
      {
         this.§?%§.push(this.§5s§.data);
         if(this.§-E§ != null)
         {
            this.§-E§(this.§5s§.data);
         }
         if(this.§!8§)
         {
            this.§!8§.§try§(this.§5s§.data);
         }
         this.§@!!§();
         ++this.§>!;§;
         this.§`!H§();
      }
      
      private function §8i§(param1:ProgressEvent) : void
      {
         this.§1b§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §+-§(param1:Event) : void
      {
         §`U§(this.§?!2§,this.§&!E§);
         this.§@!!§();
         ++this.§>!;§;
         this.§`!H§();
      }
      
      private function §@!!§() : void
      {
         if(this.§?!2§)
         {
            this.§?!2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+-§);
            this.§?!2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`D§);
            this.§?!2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+-§);
            this.§?!2§ = null;
         }
         if(this.§5s§)
         {
            this.§5s§.removeEventListener(Event.COMPLETE,this.§`V§);
            this.§5s§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`D§);
            this.§5s§.removeEventListener(ProgressEvent.PROGRESS,this.§8i§);
            this.§5s§ = null;
         }
         this.§&!E§ = null;
      }
      
      private function §#<§() : void
      {
         this.§1b§ = 0;
         if(this.§71§ != null)
         {
            this.§71§.call();
            this.§71§ = null;
         }
      }
      
      public function §,!3§() : void
      {
         this.§1b§ = 0;
         this.§?!>§ = false;
         this.§6!;§ = 0;
         if(this.§<!9§)
         {
            this.§<!9§ = null;
         }
         this.§71§ = null;
         this.§@!!§();
      }
      
      public function §#!8§() : Number
      {
         if(!this.§,!D§())
         {
            §5q§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§?!>§ || !this.§<!9§ || !this.§,!D§())
         {
            §5q§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§>!;§ == this.§6!;§)
         {
            if(this.§!8§ && this.§6!;§ > 0)
            {
               if(this.§!8§.§;_§)
               {
                  return 1;
               }
               return (this.§>!;§ + this.§1b§ - 0.5) / this.§6!;§;
            }
            return 1;
         }
         return this.§>!;§ / this.§6!;§;
      }
   }
}
