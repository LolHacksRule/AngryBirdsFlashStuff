package §6%§
{
   import §-!F§.§<s§;
   import §=!7§.§1!7§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §8A§
   {
      
      private static var §19§:§8A§;
       
      
      private var §<T§:Vector.<XML>;
      
      private var §2!y§:Boolean = false;
      
      private var §=!v§:int;
      
      private var §2",§:int;
      
      private var §5Z§:Function;
      
      private var §'?§:Function;
      
      private var §+;§:Loader;
      
      private var §]!e§:URLLoader;
      
      private var §0"&§:XML;
      
      private var §'!m§:String = "";
      
      private var §2v§:int = 0;
      
      private var §="§:Vector.<String>;
      
      private var §5N§:String = "external_assets/LoadTest.swf";
      
      private var §;"3§:Boolean = false;
      
      private var §?4§:Array;
      
      private var §0!T§:String;
      
      private var §2g§:String;
      
      private var §&!l§:Number = 0;
      
      private var §6!P§:String = "";
      
      private var §2!p§:§?!m§;
      
      public function §8A§()
      {
         this.§?4§ = [];
         super();
      }
      
      public static function get §=J§() : §8A§
      {
         if(!§19§)
         {
            §19§ = new §8A§();
         }
         return §19§;
      }
      
      public static function §-e§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §#!L§() : void
      {
         this.§?4§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§?!m§, param5:Function = null) : void
      {
         this.§0!T§ = param2;
         this.§2g§ = param3;
         this.§;"3§ = true;
         this.§2!y§ = false;
         this.§2!p§ = param4;
         this.§5Z§ = param5;
      }
      
      private function §5!%§() : void
      {
         this.§;"3§ = true;
         this.§2!y§ = false;
      }
      
      public function §if§() : Boolean
      {
         return this.§;"3§;
      }
      
      public function §-!p§() : Boolean
      {
         if(this.§2!y§ || !this.§if§())
         {
            return false;
         }
         this.§<T§ = new Vector.<XML>();
         this.§=!v§ = 0;
         return true;
      }
      
      public function §,!K§(param1:XML) : void
      {
         if(this.§2!y§ && this.§if§())
         {
            return;
         }
         this.§<T§.push(param1);
         ++this.§=!v§;
      }
      
      public function §;`§(param1:Function = null) : void
      {
         if(this.§2!y§ && this.§if§())
         {
            return;
         }
         this.§'?§ = param1;
         this.§=!v§ = this.§<T§.length;
         this.§2",§ = 0;
         this.§2!y§ = true;
         this.§&1§();
      }
      
      private function §8!?§() : Boolean
      {
         if(this.§2!p§ && !this.§2!p§.§3&§)
         {
            this.§2!p§.removeEventListener(Event.COMPLETE,this.§34§);
            this.§2!p§.addEventListener(Event.COMPLETE,this.§34§);
            return true;
         }
         return false;
      }
      
      private function §34§(param1:Event) : void
      {
         this.§2!p§.removeEventListener(Event.COMPLETE,this.§34§);
         this.§&1§();
      }
      
      private function §&1§() : void
      {
         if(!this.§<T§)
         {
            return;
         }
         if(this.§<T§.length > 0)
         {
            this.§+p§();
         }
         else if(this.§+E§() >= 1)
         {
            this.§;" §();
         }
         else
         {
            this.§8!?§();
         }
      }
      
      private function §+p§() : void
      {
         var _loc1_:String = null;
         if(this.§2!y§ && this.§if§())
         {
            if(this.§8!?§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§2g§ != null && this.§2g§.length > 0)
            {
               _loc1_ = "?version=" + this.§2g§;
            }
            this.§&!l§ = 0;
            this.§0"&§ = this.§<T§.shift();
            if(this.§0"&§.localName() == "pack")
            {
               this.§]!e§ = new URLLoader();
               this.§]!e§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§]!e§.addEventListener(Event.COMPLETE,this.§-y§);
               this.§]!e§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!j§);
               this.§]!e§.addEventListener(ProgressEvent.PROGRESS,this.§4!@§);
               this.§6!P§ = this.§0!T§ + this.§0"&§.@url.toString() + _loc1_;
               this.§]!e§.load(new URLRequest(this.§6!P§));
            }
            else
            {
               this.§+;§ = new Loader();
               this.§+;§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§!!n§);
               this.§+;§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§=!j§);
               this.§+;§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§4!@§);
               this.§6!P§ = this.§0!T§ + this.§'!m§ + this.§0"&§.@swf.toString() + _loc1_;
               this.§+;§.load(new URLRequest(this.§6!P§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §=!j§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§6!P§;
         this.§>"-§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§6!P§,§<s§.§%k§);
      }
      
      private function §-y§(param1:Event) : void
      {
         this.§?4§.push(this.§]!e§.data);
         if(this.§5Z§ != null)
         {
            this.§5Z§(this.§]!e§.data);
         }
         if(this.§2!p§)
         {
            this.§2!p§.§]R§(this.§]!e§.data,this.§^!3§(this.§0"&§.@url));
         }
         this.§>"-§();
         ++this.§2",§;
         this.§&1§();
      }
      
      private function §^!3§(param1:String) : String
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
      
      private function §4!@§(param1:ProgressEvent) : void
      {
         this.§&!l§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §!!n§(param1:Event) : void
      {
         this.§>"-§();
         ++this.§2",§;
         this.§&1§();
      }
      
      private function §>"-§() : void
      {
         if(this.§+;§)
         {
            this.§+;§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!!n§);
            this.§+;§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!j§);
            this.§+;§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!!n§);
            this.§+;§ = null;
         }
         if(this.§]!e§)
         {
            this.§]!e§.removeEventListener(Event.COMPLETE,this.§-y§);
            this.§]!e§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!j§);
            this.§]!e§.removeEventListener(ProgressEvent.PROGRESS,this.§4!@§);
            this.§]!e§ = null;
         }
         this.§0"&§ = null;
      }
      
      private function §;" §() : void
      {
         this.§&!l§ = 0;
         if(this.§'?§ != null)
         {
            this.§'?§.call();
            this.§'?§ = null;
         }
      }
      
      public function §=S§() : void
      {
         this.§&!l§ = 0;
         this.§2!y§ = false;
         this.§=!v§ = 0;
         if(this.§<T§)
         {
            this.§<T§ = null;
         }
         this.§'?§ = null;
         this.§>"-§();
         if(this.§2!p§)
         {
            this.§2!p§.§=S§();
         }
      }
      
      public function §+E§() : Number
      {
         if(!this.§if§())
         {
            §1!7§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§2!y§ || !this.§<T§ || !this.§if§())
         {
            §1!7§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§2",§ == this.§=!v§)
         {
            if(this.§2!p§ && this.§=!v§ > 0)
            {
               if(this.§2!p§.§3&§)
               {
                  return 1;
               }
               return (this.§2",§ - 0.1) / this.§=!v§;
            }
            return 1;
         }
         return this.§2",§ / this.§=!v§;
      }
   }
}
