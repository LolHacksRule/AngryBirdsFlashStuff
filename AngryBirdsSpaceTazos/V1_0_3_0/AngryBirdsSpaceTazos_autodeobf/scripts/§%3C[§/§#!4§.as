package §<[§
{
   import §'!n§.§4!=§;
   import §6!C§.§6E§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §#!4§
   {
      
      private static var §<!S§:§#!4§;
       
      
      private var §]!c§:Vector.<XML>;
      
      private var §1"F§:Boolean = false;
      
      private var § a§:int;
      
      private var §1! §:int;
      
      private var §=!c§:Function;
      
      private var §="1§:Function;
      
      private var §"!m§:Loader;
      
      private var §?n§:URLLoader;
      
      private var § H§:XML;
      
      private var §&!p§:String = "";
      
      private var §="#§:int = 0;
      
      private var §9!O§:Vector.<String>;
      
      private var §'+§:String = "external_assets/LoadTest.swf";
      
      private var §6!9§:Boolean = false;
      
      private var §]!;§:Array;
      
      private var §&w§:String;
      
      private var §<1§:String;
      
      private var §%x§:Number = 0;
      
      private var §@+§:String = "";
      
      private var §2!f§:§8!a§;
      
      public function §#!4§()
      {
         this.§]!;§ = [];
         super();
      }
      
      public static function get §8!J§() : §#!4§
      {
         if(!§<!S§)
         {
            §<!S§ = new §#!4§();
         }
         return §<!S§;
      }
      
      public static function §;!r§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §7l§() : void
      {
         this.§]!;§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§8!a§, param5:Function = null) : void
      {
         this.§&w§ = param2;
         this.§<1§ = param3;
         this.§6!9§ = true;
         this.§1"F§ = false;
         this.§2!f§ = param4;
         this.§=!c§ = param5;
      }
      
      private function §"!<§() : void
      {
         this.§6!9§ = true;
         this.§1"F§ = false;
      }
      
      public function §]" §() : Boolean
      {
         return this.§6!9§;
      }
      
      public function §0!o§() : Boolean
      {
         if(this.§1"F§ || !this.§]" §())
         {
            return false;
         }
         this.§]!c§ = new Vector.<XML>();
         this.§ a§ = 0;
         return true;
      }
      
      public function §"Q§(param1:XML) : void
      {
         if(this.§1"F§ && this.§]" §())
         {
            return;
         }
         this.§]!c§.push(param1);
         ++this.§ a§;
      }
      
      public function §%L§(param1:Function = null) : void
      {
         if(this.§1"F§ && this.§]" §())
         {
            return;
         }
         this.§="1§ = param1;
         this.§ a§ = this.§]!c§.length;
         this.§1! § = 0;
         this.§1"F§ = true;
         this.§`d§();
      }
      
      private function §="@§() : Boolean
      {
         if(this.§2!f§ && !this.§2!f§.§#H§)
         {
            this.§2!f§.removeEventListener(Event.COMPLETE,this.§ &§);
            this.§2!f§.addEventListener(Event.COMPLETE,this.§ &§);
            return true;
         }
         return false;
      }
      
      private function § &§(param1:Event) : void
      {
         this.§2!f§.removeEventListener(Event.COMPLETE,this.§ &§);
         this.§`d§();
      }
      
      private function §`d§() : void
      {
         if(!this.§]!c§)
         {
            return;
         }
         if(this.§]!c§.length > 0)
         {
            this.§1d§();
         }
         else if(this.§1]§() >= 1)
         {
            this.§>" §();
         }
         else
         {
            this.§="@§();
         }
      }
      
      private function §1d§() : void
      {
         var _loc1_:String = null;
         if(this.§1"F§ && this.§]" §())
         {
            if(this.§="@§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§<1§ != null && this.§<1§.length > 0)
            {
               _loc1_ = "?version=" + this.§<1§;
            }
            this.§%x§ = 0;
            this.§ H§ = this.§]!c§.shift();
            if(this.§ H§.localName() == "pack")
            {
               this.§?n§ = new URLLoader();
               this.§?n§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§?n§.addEventListener(Event.COMPLETE,this.§5N§);
               this.§?n§.addEventListener(IOErrorEvent.IO_ERROR,this.§;",§);
               this.§?n§.addEventListener(ProgressEvent.PROGRESS,this.§;D§);
               this.§@+§ = this.§&w§ + this.§ H§.@url.toString() + _loc1_;
               this.§?n§.load(new URLRequest(this.§@+§));
            }
            else
            {
               this.§"!m§ = new Loader();
               this.§"!m§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?" §);
               this.§"!m§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§;",§);
               this.§"!m§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§;D§);
               this.§@+§ = this.§&w§ + this.§&!p§ + this.§ H§.@swf.toString() + _loc1_;
               this.§"!m§.load(new URLRequest(this.§@+§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §;",§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§@+§;
         this.§1M§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§@+§,§4!=§.§0"7§);
      }
      
      private function §5N§(param1:Event) : void
      {
         this.§]!;§.push(this.§?n§.data);
         if(this.§=!c§ != null)
         {
            this.§=!c§(this.§?n§.data);
         }
         if(this.§2!f§)
         {
            this.§2!f§.§"[§(this.§?n§.data,this.§+"6§(this.§ H§.@url));
         }
         this.§1M§();
         ++this.§1! §;
         this.§`d§();
      }
      
      private function §+"6§(param1:String) : String
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
      
      private function §;D§(param1:ProgressEvent) : void
      {
         this.§%x§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §?" §(param1:Event) : void
      {
         this.§1M§();
         ++this.§1! §;
         this.§`d§();
      }
      
      private function §1M§() : void
      {
         if(this.§"!m§)
         {
            this.§"!m§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?" §);
            this.§"!m§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§;",§);
            this.§"!m§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?" §);
            this.§"!m§ = null;
         }
         if(this.§?n§)
         {
            this.§?n§.removeEventListener(Event.COMPLETE,this.§5N§);
            this.§?n§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;",§);
            this.§?n§.removeEventListener(ProgressEvent.PROGRESS,this.§;D§);
            this.§?n§ = null;
         }
         this.§ H§ = null;
      }
      
      private function §>" §() : void
      {
         this.§%x§ = 0;
         if(this.§="1§ != null)
         {
            this.§="1§.call();
            this.§="1§ = null;
         }
      }
      
      public function §[!4§() : void
      {
         this.§%x§ = 0;
         this.§1"F§ = false;
         this.§ a§ = 0;
         if(this.§]!c§)
         {
            this.§]!c§ = null;
         }
         this.§="1§ = null;
         this.§1M§();
         if(this.§2!f§)
         {
            this.§2!f§.§[!4§();
         }
      }
      
      public function §1]§() : Number
      {
         if(!this.§]" §())
         {
            §6E§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§1"F§ || !this.§]!c§ || !this.§]" §())
         {
            §6E§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§1! § == this.§ a§)
         {
            if(this.§2!f§ && this.§ a§ > 0)
            {
               if(this.§2!f§.§#H§)
               {
                  return 1;
               }
               return (this.§1! § - 0.1) / this.§ a§;
            }
            return 1;
         }
         return this.§1! § / this.§ a§;
      }
   }
}
