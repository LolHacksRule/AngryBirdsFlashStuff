package §#!+§
{
   import §2i§.§6,§;
   import §;X§.§ do§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §[E§
   {
      
      private static var §;A§:§[E§;
       
      
      private var §%y§:Vector.<XML>;
      
      private var §5+§:Boolean = false;
      
      private var §+!;§:int;
      
      private var §>!x§:int;
      
      private var §4K§:Function;
      
      private var §,Z§:Function;
      
      private var §[!b§:Loader;
      
      private var §]!;§:URLLoader;
      
      private var §^w§:XML;
      
      private var §0O§:String = "";
      
      private var §9!4§:int = 0;
      
      private var §[!r§:Vector.<String>;
      
      private var §+!W§:String = "external_assets/LoadTest.swf";
      
      private var §7&§:Boolean = false;
      
      private var §>"+§:Array;
      
      private var §4!z§:String;
      
      private var §"F§:String;
      
      private var §>w§:Number = 0;
      
      private var §-!q§:String = "";
      
      private var §0B§:§^!§;
      
      public function §[E§()
      {
         this.§>"+§ = [];
         super();
      }
      
      public static function get §if §() : §[E§
      {
         if(!§;A§)
         {
            §;A§ = new §[E§();
         }
         return §;A§;
      }
      
      public static function § u§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §;!h§() : void
      {
         this.§>"+§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§^!§, param5:Function = null) : void
      {
         this.§4!z§ = param2;
         this.§"F§ = param3;
         this.§7&§ = true;
         this.§5+§ = false;
         this.§0B§ = param4;
         this.§4K§ = param5;
      }
      
      private function §=[§() : void
      {
         this.§7&§ = true;
         this.§5+§ = false;
      }
      
      public function §8x§() : Boolean
      {
         return this.§7&§;
      }
      
      public function §0!L§() : Boolean
      {
         if(this.§5+§ || !this.§8x§())
         {
            return false;
         }
         this.§%y§ = new Vector.<XML>();
         this.§+!;§ = 0;
         return true;
      }
      
      public function §%!!§(param1:XML) : void
      {
         if(this.§5+§ && this.§8x§())
         {
            return;
         }
         this.§%y§.push(param1);
         ++this.§+!;§;
      }
      
      public function §<=§(param1:Function = null) : void
      {
         if(this.§5+§ && this.§8x§())
         {
            return;
         }
         this.§,Z§ = param1;
         this.§+!;§ = this.§%y§.length;
         this.§5+§ = true;
         this.§]!E§();
      }
      
      private function §%g§() : Boolean
      {
         if(this.§0B§ && !this.§0B§.§`$§)
         {
            this.§0B§.removeEventListener(Event.COMPLETE,this.§?L§);
            this.§0B§.addEventListener(Event.COMPLETE,this.§?L§);
            return true;
         }
         return false;
      }
      
      private function §?L§(param1:Event) : void
      {
         this.§0B§.removeEventListener(Event.COMPLETE,this.§?L§);
         this.§]!E§();
      }
      
      private function §]!E§() : void
      {
         if(this.§%y§.length > 0)
         {
            this.§?""§();
         }
         else if(this.§1D§() >= 1)
         {
            this.§6"-§();
         }
      }
      
      private function §?""§() : void
      {
         var _loc1_:String = null;
         if(this.§5+§ && this.§8x§())
         {
            if(this.§%g§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§"F§ != null && this.§"F§.length > 0)
            {
               _loc1_ = "?version=" + this.§"F§;
            }
            this.§>w§ = 0;
            this.§^w§ = this.§%y§.shift();
            if(this.§^w§.localName() == "pack")
            {
               this.§]!;§ = new URLLoader();
               this.§]!;§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§]!;§.addEventListener(Event.COMPLETE,this.§>a§);
               this.§]!;§.addEventListener(IOErrorEvent.IO_ERROR,this.§!t§);
               this.§]!;§.addEventListener(ProgressEvent.PROGRESS,this.§"v§);
               this.§-!q§ = this.§4!z§ + this.§^w§.@url.toString() + _loc1_;
               this.§]!;§.load(new URLRequest(this.§-!q§));
            }
            else
            {
               this.§[!b§ = new Loader();
               this.§[!b§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;"'§);
               this.§[!b§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§!t§);
               this.§[!b§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§"v§);
               this.§-!q§ = this.§4!z§ + this.§0O§ + this.§^w§.@swf.toString() + _loc1_;
               this.§[!b§.load(new URLRequest(this.§-!q§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §!t§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§-!q§;
         this.§&!j§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§-!q§,§6,§.§8![§);
      }
      
      private function §>a§(param1:Event) : void
      {
         this.§>"+§.push(this.§]!;§.data);
         if(this.§4K§ != null)
         {
            this.§4K§(this.§]!;§.data);
         }
         if(this.§0B§)
         {
            this.§0B§.§"i§(this.§]!;§.data);
         }
         this.§&!j§();
         ++this.§>!x§;
         this.§]!E§();
      }
      
      private function §"v§(param1:ProgressEvent) : void
      {
         this.§>w§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §;"'§(param1:Event) : void
      {
         this.§&!j§();
         ++this.§>!x§;
         this.§]!E§();
      }
      
      private function §&!j§() : void
      {
         if(this.§[!b§)
         {
            this.§[!b§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;"'§);
            this.§[!b§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§!t§);
            this.§[!b§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;"'§);
            this.§[!b§ = null;
         }
         if(this.§]!;§)
         {
            this.§]!;§.removeEventListener(Event.COMPLETE,this.§>a§);
            this.§]!;§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!t§);
            this.§]!;§.removeEventListener(ProgressEvent.PROGRESS,this.§"v§);
            this.§]!;§ = null;
         }
         this.§^w§ = null;
      }
      
      private function §6"-§() : void
      {
         this.§>w§ = 0;
         if(this.§,Z§ != null)
         {
            this.§,Z§.call();
            this.§,Z§ = null;
         }
      }
      
      public function §%E§() : void
      {
         this.§>w§ = 0;
         this.§5+§ = false;
         this.§+!;§ = 0;
         if(this.§%y§)
         {
            this.§%y§ = null;
         }
         this.§,Z§ = null;
         this.§&!j§();
      }
      
      public function §1D§() : Number
      {
         if(!this.§8x§())
         {
            § do§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§5+§ || !this.§%y§ || !this.§8x§())
         {
            § do§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§>!x§ == this.§+!;§)
         {
            if(this.§0B§ && this.§+!;§ > 0)
            {
               if(this.§0B§.§`$§)
               {
                  return 1;
               }
               return (this.§>!x§ + this.§>w§ - 0.5) / this.§+!;§;
            }
            return 1;
         }
         return this.§>!x§ / this.§+!;§;
      }
   }
}
