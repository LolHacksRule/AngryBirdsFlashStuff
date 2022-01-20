package §5!&§
{
   import §#!1§.§>D§;
   import §'+§.§1u§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §=!,§
   {
      
      private static var §5y§:§=!,§;
       
      
      private var §=!6§:Vector.<XML>;
      
      private var §,n§:Boolean = false;
      
      private var §#!8§:int;
      
      private var §=!M§:int;
      
      private var §>!1§:Function;
      
      private var §9<§:Function;
      
      private var §6$§:Loader;
      
      private var §]!c§:URLLoader;
      
      private var §'z§:XML;
      
      private var §'!q§:String = "";
      
      private var §?n§:int = 0;
      
      private var §1!W§:Vector.<String>;
      
      private var §?!!§:String = "external_assets/LoadTest.swf";
      
      private var §%!W§:Boolean = false;
      
      private var §7&§:Array;
      
      private var §`I§:String;
      
      private var §3y§:String;
      
      private var §7!h§:Number = 0;
      
      private var §,i§:String = "";
      
      private var §var §:§`!1§;
      
      public function §=!,§()
      {
         this.§7&§ = [];
         super();
      }
      
      public static function get §5!!§() : §=!,§
      {
         if(!§5y§)
         {
            §5y§ = new §=!,§();
         }
         return §5y§;
      }
      
      public static function §]!H§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §>!%§() : void
      {
         this.§7&§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§`!1§, param5:Function = null) : void
      {
         this.§`I§ = param2;
         this.§3y§ = param3;
         this.§%!W§ = true;
         this.§,n§ = false;
         this.§var § = param4;
         this.§>!1§ = param5;
      }
      
      private function § E§() : void
      {
         this.§%!W§ = true;
         this.§,n§ = false;
      }
      
      public function §=!e§() : Boolean
      {
         return this.§%!W§;
      }
      
      public function §8!N§() : Boolean
      {
         if(this.§,n§ || !this.§=!e§())
         {
            return false;
         }
         this.§=!6§ = new Vector.<XML>();
         this.§#!8§ = 0;
         return true;
      }
      
      public function §@W§(param1:XML) : void
      {
         if(this.§,n§ && this.§=!e§())
         {
            return;
         }
         this.§=!6§.push(param1);
         ++this.§#!8§;
      }
      
      public function §';§(param1:Function = null) : void
      {
         if(this.§,n§ && this.§=!e§())
         {
            return;
         }
         this.§9<§ = param1;
         this.§#!8§ = this.§=!6§.length;
         this.§,n§ = true;
         this.§%F§();
      }
      
      private function §=!l§() : Boolean
      {
         if(this.§var § && !this.§var §.§#f§)
         {
            this.§var §.removeEventListener(Event.COMPLETE,this.§6?§);
            this.§var §.addEventListener(Event.COMPLETE,this.§6?§);
            return true;
         }
         return false;
      }
      
      private function §6?§(param1:Event) : void
      {
         this.§var §.removeEventListener(Event.COMPLETE,this.§6?§);
         this.§%F§();
      }
      
      private function §%F§() : void
      {
         if(this.§=!6§.length > 0)
         {
            this.§=!$§();
         }
         else if(this.§]f§() >= 1)
         {
            this.§8!n§();
         }
      }
      
      private function §=!$§() : void
      {
         var _loc1_:String = null;
         if(this.§,n§ && this.§=!e§())
         {
            if(this.§=!l§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§3y§ != null && this.§3y§.length > 0)
            {
               _loc1_ = "?version=" + this.§3y§;
            }
            this.§7!h§ = 0;
            this.§'z§ = this.§=!6§.shift();
            if(this.§'z§.localName() == "pack")
            {
               this.§]!c§ = new URLLoader();
               this.§]!c§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§]!c§.addEventListener(Event.COMPLETE,this.§^!$§);
               this.§]!c§.addEventListener(IOErrorEvent.IO_ERROR,this.§?I§);
               this.§]!c§.addEventListener(ProgressEvent.PROGRESS,this.§7@§);
               this.§,i§ = this.§`I§ + this.§'z§.@url.toString() + _loc1_;
               this.§]!c§.load(new URLRequest(this.§,i§));
            }
            else
            {
               this.§6$§ = new Loader();
               this.§6$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2!N§);
               this.§6$§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§?I§);
               this.§6$§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§7@§);
               this.§,i§ = this.§`I§ + this.§'!q§ + this.§'z§.@swf.toString() + _loc1_;
               this.§6$§.load(new URLRequest(this.§,i§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §?I§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§,i§;
         this.§9!o§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§,i§,§>D§.§"!8§);
      }
      
      private function §^!$§(param1:Event) : void
      {
         this.§7&§.push(this.§]!c§.data);
         if(this.§>!1§ != null)
         {
            this.§>!1§(this.§]!c§.data);
         }
         if(this.§var §)
         {
            this.§var §.§#!0§(this.§]!c§.data);
         }
         this.§9!o§();
         ++this.§=!M§;
         this.§%F§();
      }
      
      private function §7@§(param1:ProgressEvent) : void
      {
         this.§7!h§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §2!N§(param1:Event) : void
      {
         this.§9!o§();
         ++this.§=!M§;
         this.§%F§();
      }
      
      private function §9!o§() : void
      {
         if(this.§6$§)
         {
            this.§6$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2!N§);
            this.§6$§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§?I§);
            this.§6$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2!N§);
            this.§6$§ = null;
         }
         if(this.§]!c§)
         {
            this.§]!c§.removeEventListener(Event.COMPLETE,this.§^!$§);
            this.§]!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?I§);
            this.§]!c§.removeEventListener(ProgressEvent.PROGRESS,this.§7@§);
            this.§]!c§ = null;
         }
         this.§'z§ = null;
      }
      
      private function §8!n§() : void
      {
         this.§7!h§ = 0;
         if(this.§9<§ != null)
         {
            this.§9<§.call();
            this.§9<§ = null;
         }
      }
      
      public function §;B§() : void
      {
         this.§7!h§ = 0;
         this.§,n§ = false;
         this.§#!8§ = 0;
         if(this.§=!6§)
         {
            this.§=!6§ = null;
         }
         this.§9<§ = null;
         this.§9!o§();
      }
      
      public function §]f§() : Number
      {
         if(!this.§=!e§())
         {
            §1u§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§,n§ || !this.§=!6§ || !this.§=!e§())
         {
            §1u§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§=!M§ == this.§#!8§)
         {
            if(this.§var § && this.§#!8§ > 0)
            {
               if(this.§var §.§#f§)
               {
                  return 1;
               }
               return (this.§=!M§ + this.§7!h§ - 0.5) / this.§#!8§;
            }
            return 1;
         }
         return this.§=!M§ / this.§#!8§;
      }
   }
}
