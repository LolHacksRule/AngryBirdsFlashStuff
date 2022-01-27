package §7!%§
{
   import § !Y§.§4!1§;
   import §0N§.§2!@§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §[K§
   {
      
      private static var §1'§:§[K§;
       
      
      private var §4!f§:Vector.<XML>;
      
      private var §1!§:Boolean = false;
      
      private var §?!O§:int;
      
      private var §9!]§:int;
      
      private var §[!r§:Function;
      
      private var §;!x§:Function;
      
      private var §6!u§:Loader;
      
      private var §6!Y§:URLLoader;
      
      private var § !2§:XML;
      
      private var §3F§:String = "";
      
      private var §&!3§:int = 0;
      
      private var §4D§:Vector.<String>;
      
      private var §5!a§:String = "external_assets/LoadTest.swf";
      
      private var §0s§:Boolean = false;
      
      private var §8@§:Array;
      
      private var §+" §:String;
      
      private var §6"7§:String;
      
      private var §4!Y§:Number = 0;
      
      private var §^!Y§:String = "";
      
      private var §;J§:§%e§;
      
      public function §[K§()
      {
         this.§8@§ = [];
         super();
      }
      
      public static function get §[!1§() : §[K§
      {
         if(!§1'§)
         {
            §1'§ = new §[K§();
         }
         return §1'§;
      }
      
      public static function §<!u§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §-"D§() : void
      {
         this.§8@§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§%e§, param5:Function = null) : void
      {
         this.§+" § = param2;
         this.§6"7§ = param3;
         this.§0s§ = true;
         this.§1!§ = false;
         this.§;J§ = param4;
         this.§[!r§ = param5;
      }
      
      private function §>i§() : void
      {
         this.§0s§ = true;
         this.§1!§ = false;
      }
      
      public function §;c§() : Boolean
      {
         return this.§0s§;
      }
      
      public function §>!#§() : Boolean
      {
         if(this.§1!§ || !this.§;c§())
         {
            return false;
         }
         this.§4!f§ = new Vector.<XML>();
         this.§?!O§ = 0;
         return true;
      }
      
      public function §4!=§(param1:XML) : void
      {
         if(this.§1!§ && this.§;c§())
         {
            return;
         }
         this.§4!f§.push(param1);
         ++this.§?!O§;
      }
      
      public function §#y§(param1:Function = null) : void
      {
         if(this.§1!§ && this.§;c§())
         {
            return;
         }
         this.§;!x§ = param1;
         this.§?!O§ = this.§4!f§.length;
         this.§9!]§ = 0;
         this.§1!§ = true;
         this.§&"1§();
      }
      
      private function §1!5§() : Boolean
      {
         if(this.§;J§ && !this.§;J§.§<!9§)
         {
            this.§;J§.removeEventListener(Event.COMPLETE,this.§;V§);
            this.§;J§.addEventListener(Event.COMPLETE,this.§;V§);
            return true;
         }
         return false;
      }
      
      private function §;V§(param1:Event) : void
      {
         this.§;J§.removeEventListener(Event.COMPLETE,this.§;V§);
         this.§&"1§();
      }
      
      private function §&"1§() : void
      {
         if(!this.§4!f§)
         {
            return;
         }
         if(this.§4!f§.length > 0)
         {
            this.§@"=§();
         }
         else if(this.§'"A§() >= 1)
         {
            this.§@d§();
         }
         else
         {
            this.§1!5§();
         }
      }
      
      private function §@"=§() : void
      {
         var _loc1_:String = null;
         if(this.§1!§ && this.§;c§())
         {
            if(this.§1!5§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6"7§ != null && this.§6"7§.length > 0)
            {
               _loc1_ = "?version=" + this.§6"7§;
            }
            this.§4!Y§ = 0;
            this.§ !2§ = this.§4!f§.shift();
            if(this.§ !2§.localName() == "pack")
            {
               this.§6!Y§ = new URLLoader();
               this.§6!Y§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§6!Y§.addEventListener(Event.COMPLETE,this.§-!9§);
               this.§6!Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§"H§);
               this.§6!Y§.addEventListener(ProgressEvent.PROGRESS,this.§5H§);
               this.§^!Y§ = this.§+" § + this.§ !2§.@url.toString() + _loc1_;
               this.§6!Y§.load(new URLRequest(this.§^!Y§));
            }
            else
            {
               this.§6!u§ = new Loader();
               this.§6!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§8"%§);
               this.§6!u§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"H§);
               this.§6!u§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§5H§);
               this.§^!Y§ = this.§+" § + this.§3F§ + this.§ !2§.@swf.toString() + _loc1_;
               this.§6!u§.load(new URLRequest(this.§^!Y§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §"H§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§^!Y§;
         this.§2z§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§^!Y§,§4!1§.§?V§);
      }
      
      private function §-!9§(param1:Event) : void
      {
         this.§8@§.push(this.§6!Y§.data);
         if(this.§[!r§ != null)
         {
            this.§[!r§(this.§6!Y§.data);
         }
         if(this.§;J§)
         {
            this.§;J§.§?C§(this.§6!Y§.data,this.§-w§(this.§ !2§.@url));
         }
         this.§2z§();
         ++this.§9!]§;
         this.§&"1§();
      }
      
      private function §-w§(param1:String) : String
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
      
      private function §5H§(param1:ProgressEvent) : void
      {
         this.§4!Y§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §8"%§(param1:Event) : void
      {
         this.§2z§();
         ++this.§9!]§;
         this.§&"1§();
      }
      
      private function §2z§() : void
      {
         if(this.§6!u§)
         {
            this.§6!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8"%§);
            this.§6!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"H§);
            this.§6!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8"%§);
            this.§6!u§ = null;
         }
         if(this.§6!Y§)
         {
            this.§6!Y§.removeEventListener(Event.COMPLETE,this.§-!9§);
            this.§6!Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"H§);
            this.§6!Y§.removeEventListener(ProgressEvent.PROGRESS,this.§5H§);
            this.§6!Y§ = null;
         }
         this.§ !2§ = null;
      }
      
      private function §@d§() : void
      {
         this.§4!Y§ = 0;
         if(this.§;!x§ != null)
         {
            this.§;!x§.call();
            this.§;!x§ = null;
         }
      }
      
      public function §`t§() : void
      {
         this.§4!Y§ = 0;
         this.§1!§ = false;
         this.§?!O§ = 0;
         if(this.§4!f§)
         {
            this.§4!f§ = null;
         }
         this.§;!x§ = null;
         this.§2z§();
         if(this.§;J§)
         {
            this.§;J§.§`t§();
         }
      }
      
      public function §'"A§() : Number
      {
         if(!this.§;c§())
         {
            §2!@§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§1!§ || !this.§4!f§ || !this.§;c§())
         {
            §2!@§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§9!]§ == this.§?!O§)
         {
            if(this.§;J§ && this.§?!O§ > 0)
            {
               if(this.§;J§.§<!9§)
               {
                  return 1;
               }
               return (this.§9!]§ - 0.1) / this.§?!O§;
            }
            return 1;
         }
         return this.§9!]§ / this.§?!O§;
      }
   }
}
