package §%!K§
{
   import §6]§.§,"0§;
   import §<!1§.§@"4§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class § i§
   {
      
      private static var §+!u§:§ i§;
       
      
      private var §&"5§:Vector.<XML>;
      
      private var §!J§:Boolean = false;
      
      private var §;!9§:int;
      
      private var §;!B§:int;
      
      private var §>!G§:Function;
      
      private var §?!v§:Function;
      
      private var §5$§:Loader;
      
      private var §29§:URLLoader;
      
      private var §^!2§:XML;
      
      private var §-! §:String = "";
      
      private var §"w§:int = 0;
      
      private var §-[§:Vector.<String>;
      
      private var § !x§:String = "external_assets/LoadTest.swf";
      
      private var §4"-§:Boolean = false;
      
      private var §4d§:Array;
      
      private var §1!J§:String;
      
      private var §5K§:String;
      
      private var §9j§:Number = 0;
      
      private var §]!Y§:String = "";
      
      private var §"!^§:§7J§;
      
      public function § i§()
      {
         this.§4d§ = [];
         super();
      }
      
      public static function get §[E§() : § i§
      {
         if(!§+!u§)
         {
            §+!u§ = new § i§();
         }
         return §+!u§;
      }
      
      public static function §@5§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §?M§() : void
      {
         this.§4d§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§7J§, param5:Function = null) : void
      {
         this.§1!J§ = param2;
         this.§5K§ = param3;
         this.§4"-§ = true;
         this.§!J§ = false;
         this.§"!^§ = param4;
         this.§>!G§ = param5;
      }
      
      private function §`=§() : void
      {
         this.§4"-§ = true;
         this.§!J§ = false;
      }
      
      public function §2!;§() : Boolean
      {
         return this.§4"-§;
      }
      
      public function §+!H§() : Boolean
      {
         if(this.§!J§ || !this.§2!;§())
         {
            return false;
         }
         this.§&"5§ = new Vector.<XML>();
         this.§;!9§ = 0;
         return true;
      }
      
      public function §98§(param1:XML) : void
      {
         if(this.§!J§ && this.§2!;§())
         {
            return;
         }
         this.§&"5§.push(param1);
         ++this.§;!9§;
      }
      
      public function §&!@§(param1:Function = null) : void
      {
         if(this.§!J§ && this.§2!;§())
         {
            return;
         }
         this.§?!v§ = param1;
         this.§;!9§ = this.§&"5§.length;
         this.§!J§ = true;
         this.§>!"§();
      }
      
      private function §0"7§() : Boolean
      {
         if(this.§"!^§ && !this.§"!^§.§?!M§)
         {
            this.§"!^§.removeEventListener(Event.COMPLETE,this.§'!w§);
            this.§"!^§.addEventListener(Event.COMPLETE,this.§'!w§);
            return true;
         }
         return false;
      }
      
      private function §'!w§(param1:Event) : void
      {
         this.§"!^§.removeEventListener(Event.COMPLETE,this.§'!w§);
         this.§>!"§();
      }
      
      private function §>!"§() : void
      {
         if(this.§&"5§.length > 0)
         {
            this.§<F§();
         }
         else if(this.§,b§() >= 1)
         {
            this.§-!0§();
         }
      }
      
      private function §<F§() : void
      {
         var _loc1_:String = null;
         if(this.§!J§ && this.§2!;§())
         {
            if(this.§0"7§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§5K§ != null && this.§5K§.length > 0)
            {
               _loc1_ = "?version=" + this.§5K§;
            }
            this.§9j§ = 0;
            this.§^!2§ = this.§&"5§.shift();
            if(this.§^!2§.localName() == "pack")
            {
               this.§29§ = new URLLoader();
               this.§29§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§29§.addEventListener(Event.COMPLETE,this.§^S§);
               this.§29§.addEventListener(IOErrorEvent.IO_ERROR,this.§`!8§);
               this.§29§.addEventListener(ProgressEvent.PROGRESS,this.§>t§);
               this.§]!Y§ = this.§1!J§ + this.§^!2§.@url.toString() + _loc1_;
               this.§29§.load(new URLRequest(this.§]!Y§));
            }
            else
            {
               this.§5$§ = new Loader();
               this.§5$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2!e§);
               this.§5$§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§`!8§);
               this.§5$§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§>t§);
               this.§]!Y§ = this.§1!J§ + this.§-! § + this.§^!2§.@swf.toString() + _loc1_;
               this.§5$§.load(new URLRequest(this.§]!Y§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §`!8§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§]!Y§;
         this.§^!c§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§]!Y§,§@"4§.§2!D§);
      }
      
      private function §^S§(param1:Event) : void
      {
         this.§4d§.push(this.§29§.data);
         if(this.§>!G§ != null)
         {
            this.§>!G§(this.§29§.data);
         }
         if(this.§"!^§)
         {
            this.§"!^§.§+"0§(this.§29§.data);
         }
         this.§^!c§();
         ++this.§;!B§;
         this.§>!"§();
      }
      
      private function §>t§(param1:ProgressEvent) : void
      {
         this.§9j§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §2!e§(param1:Event) : void
      {
         this.§^!c§();
         ++this.§;!B§;
         this.§>!"§();
      }
      
      private function §^!c§() : void
      {
         if(this.§5$§)
         {
            this.§5$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2!e§);
            this.§5$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!8§);
            this.§5$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2!e§);
            this.§5$§ = null;
         }
         if(this.§29§)
         {
            this.§29§.removeEventListener(Event.COMPLETE,this.§^S§);
            this.§29§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`!8§);
            this.§29§.removeEventListener(ProgressEvent.PROGRESS,this.§>t§);
            this.§29§ = null;
         }
         this.§^!2§ = null;
      }
      
      private function §-!0§() : void
      {
         this.§9j§ = 0;
         if(this.§?!v§ != null)
         {
            this.§?!v§.call();
            this.§?!v§ = null;
         }
      }
      
      public function § E§() : void
      {
         this.§9j§ = 0;
         this.§!J§ = false;
         this.§;!9§ = 0;
         if(this.§&"5§)
         {
            this.§&"5§ = null;
         }
         this.§?!v§ = null;
         this.§^!c§();
      }
      
      public function §,b§() : Number
      {
         if(!this.§2!;§())
         {
            §,"0§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§!J§ || !this.§&"5§ || !this.§2!;§())
         {
            §,"0§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§;!B§ == this.§;!9§)
         {
            if(this.§"!^§ && this.§;!9§ > 0)
            {
               if(this.§"!^§.§?!M§)
               {
                  return 1;
               }
               return (this.§;!B§ + this.§9j§ - 0.5) / this.§;!9§;
            }
            return 1;
         }
         return this.§;!B§ / this.§;!9§;
      }
   }
}
