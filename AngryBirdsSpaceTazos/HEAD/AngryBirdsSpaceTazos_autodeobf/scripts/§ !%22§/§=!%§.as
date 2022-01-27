package § !"§
{
   import §4u§.§]!c§;
   import §`!w§.§^!$§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §=!%§
   {
      
      private static var §?!?§:§=!%§;
       
      
      private var § !R§:Vector.<XML>;
      
      private var §4U§:Boolean = false;
      
      private var §3C§:int;
      
      private var §9!7§:int;
      
      private var § J§:Function;
      
      private var §1c§:Function;
      
      private var §,!6§:Loader;
      
      private var §[@§:URLLoader;
      
      private var §>!5§:XML;
      
      private var §]!4§:String = "";
      
      private var §#t§:int = 0;
      
      private var §!",§:Vector.<String>;
      
      private var §7i§:String = "external_assets/LoadTest.swf";
      
      private var §5s§:Boolean = false;
      
      private var §+d§:Array;
      
      private var §6!]§:String;
      
      private var §4F§:String;
      
      private var §9q§:Number = 0;
      
      private var §%!z§:String = "";
      
      private var §"!>§:§^p§;
      
      public function §=!%§()
      {
         this.§+d§ = [];
         super();
      }
      
      public static function get §3R§() : §=!%§
      {
         if(!§?!?§)
         {
            §?!?§ = new §=!%§();
         }
         return §?!?§;
      }
      
      public static function §'!n§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §1X§() : void
      {
         this.§+d§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§^p§, param5:Function = null) : void
      {
         this.§6!]§ = param2;
         this.§4F§ = param3;
         this.§5s§ = true;
         this.§4U§ = false;
         this.§"!>§ = param4;
         this.§ J§ = param5;
      }
      
      private function §6=§() : void
      {
         this.§5s§ = true;
         this.§4U§ = false;
      }
      
      public function §&!h§() : Boolean
      {
         return this.§5s§;
      }
      
      public function §9"8§() : Boolean
      {
         if(this.§4U§ || !this.§&!h§())
         {
            return false;
         }
         this.§ !R§ = new Vector.<XML>();
         this.§3C§ = 0;
         return true;
      }
      
      public function §>]§(param1:XML) : void
      {
         if(this.§4U§ && this.§&!h§())
         {
            return;
         }
         this.§ !R§.push(param1);
         ++this.§3C§;
      }
      
      public function §]"E§(param1:Function = null) : void
      {
         if(this.§4U§ && this.§&!h§())
         {
            return;
         }
         this.§1c§ = param1;
         this.§3C§ = this.§ !R§.length;
         this.§9!7§ = 0;
         this.§4U§ = true;
         this.§`" §();
      }
      
      private function § !%§() : Boolean
      {
         if(this.§"!>§ && !this.§"!>§.§+J§)
         {
            this.§"!>§.removeEventListener(Event.COMPLETE,this.§%?§);
            this.§"!>§.addEventListener(Event.COMPLETE,this.§%?§);
            return true;
         }
         return false;
      }
      
      private function §%?§(param1:Event) : void
      {
         this.§"!>§.removeEventListener(Event.COMPLETE,this.§%?§);
         this.§`" §();
      }
      
      private function §`" §() : void
      {
         if(!this.§ !R§)
         {
            return;
         }
         if(this.§ !R§.length > 0)
         {
            this.§;h§();
         }
         else if(this.§0!#§() >= 1)
         {
            this.§5![§();
         }
         else
         {
            this.§ !%§();
         }
      }
      
      private function §;h§() : void
      {
         var _loc1_:String = null;
         if(this.§4U§ && this.§&!h§())
         {
            if(this.§ !%§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§4F§ != null && this.§4F§.length > 0)
            {
               _loc1_ = "?version=" + this.§4F§;
            }
            this.§9q§ = 0;
            this.§>!5§ = this.§ !R§.shift();
            if(this.§>!5§.localName() == "pack")
            {
               this.§[@§ = new URLLoader();
               this.§[@§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§[@§.addEventListener(Event.COMPLETE,this.§2r§);
               this.§[@§.addEventListener(IOErrorEvent.IO_ERROR,this.§!!A§);
               this.§[@§.addEventListener(ProgressEvent.PROGRESS,this.§[!#§);
               this.§%!z§ = this.§6!]§ + this.§>!5§.@url.toString() + _loc1_;
               this.§[@§.load(new URLRequest(this.§%!z§));
            }
            else
            {
               this.§,!6§ = new Loader();
               this.§,!6§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%i§);
               this.§,!6§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§!!A§);
               this.§,!6§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§[!#§);
               this.§%!z§ = this.§6!]§ + this.§]!4§ + this.§>!5§.@swf.toString() + _loc1_;
               this.§,!6§.load(new URLRequest(this.§%!z§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §!!A§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§%!z§;
         this.§^"#§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§%!z§,§]!c§.§1"<§);
      }
      
      private function §2r§(param1:Event) : void
      {
         this.§+d§.push(this.§[@§.data);
         if(this.§ J§ != null)
         {
            this.§ J§(this.§[@§.data);
         }
         if(this.§"!>§)
         {
            this.§"!>§.§'l§(this.§[@§.data,this.§ "$§(this.§>!5§.@url));
         }
         this.§^"#§();
         ++this.§9!7§;
         this.§`" §();
      }
      
      private function § "$§(param1:String) : String
      {
         var _loc2_:String = param1;
         var _loc3_:int = _loc2_.indexOf(".pak");
         if(_loc3_ >= 0)
         {
            _loc2_ = _loc2_.substr(0,_loc3_);
         }
         _loc3_ = _loc2_.lastIndexOf("/");
         if(_loc3_ >= 0)
         {
            _loc2_ = _loc2_.substr(_loc3_ + 1);
         }
         return _loc2_;
      }
      
      private function §[!#§(param1:ProgressEvent) : void
      {
         this.§9q§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §%i§(param1:Event) : void
      {
         this.§^"#§();
         ++this.§9!7§;
         this.§`" §();
      }
      
      private function §^"#§() : void
      {
         if(this.§,!6§)
         {
            this.§,!6§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%i§);
            this.§,!6§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§!!A§);
            this.§,!6§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%i§);
            this.§,!6§ = null;
         }
         if(this.§[@§)
         {
            this.§[@§.removeEventListener(Event.COMPLETE,this.§2r§);
            this.§[@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!!A§);
            this.§[@§.removeEventListener(ProgressEvent.PROGRESS,this.§[!#§);
            this.§[@§ = null;
         }
         this.§>!5§ = null;
      }
      
      private function §5![§() : void
      {
         this.§9q§ = 0;
         if(this.§1c§ != null)
         {
            this.§1c§.call();
            this.§1c§ = null;
         }
      }
      
      public function §%M§() : void
      {
         this.§9q§ = 0;
         this.§4U§ = false;
         this.§3C§ = 0;
         if(this.§ !R§)
         {
            this.§ !R§ = null;
         }
         this.§1c§ = null;
         this.§^"#§();
         if(this.§"!>§)
         {
            this.§"!>§.§%M§();
         }
      }
      
      public function §0!#§() : Number
      {
         if(!this.§&!h§())
         {
            §^!$§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§4U§ || !this.§ !R§ || !this.§&!h§())
         {
            §^!$§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§9!7§ == this.§3C§)
         {
            if(this.§"!>§ && this.§3C§ > 0)
            {
               if(this.§"!>§.§+J§)
               {
                  return 1;
               }
               return (this.§9!7§ - 0.1) / this.§3C§;
            }
            return 1;
         }
         return this.§9!7§ / this.§3C§;
      }
   }
}
