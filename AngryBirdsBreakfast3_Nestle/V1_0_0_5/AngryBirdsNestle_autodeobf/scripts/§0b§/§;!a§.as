package §0b§
{
   import §0!$§.§#!-§;
   import §2W§.§`J§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §;!a§
   {
      
      private static var §=%§:§;!a§;
       
      
      private var § "2§:Vector.<XML>;
      
      private var §[!S§:Boolean = false;
      
      private var §+!w§:int;
      
      private var §2!$§:int;
      
      private var §6X§:Function;
      
      private var §9h§:Function;
      
      private var §+S§:Loader;
      
      private var §0^§:URLLoader;
      
      private var §@!2§:XML;
      
      private var §;Y§:String = "";
      
      private var §5!r§:int = 0;
      
      private var §9!!§:Vector.<String>;
      
      private var §?!j§:String = "external_assets/LoadTest.swf";
      
      private var §+!U§:Boolean = false;
      
      private var §&"'§:Array;
      
      private var §4u§:String;
      
      private var §get §:String;
      
      private var §>!>§:Number = 0;
      
      private var §8!d§:String = "";
      
      private var §6!a§:§=!n§;
      
      public function §;!a§()
      {
         this.§&"'§ = [];
         super();
      }
      
      public static function get §<"5§() : §;!a§
      {
         if(!§=%§)
         {
            §=%§ = new §;!a§();
         }
         return §=%§;
      }
      
      public static function §7"+§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §;!T§() : void
      {
         this.§&"'§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§=!n§, param5:Function = null) : void
      {
         this.§4u§ = param2;
         this.§get § = param3;
         this.§+!U§ = true;
         this.§[!S§ = false;
         this.§6!a§ = param4;
         this.§6X§ = param5;
      }
      
      private function §%2§() : void
      {
         this.§+!U§ = true;
         this.§[!S§ = false;
      }
      
      public function §1!<§() : Boolean
      {
         return this.§+!U§;
      }
      
      public function §&!1§() : Boolean
      {
         if(this.§[!S§ || !this.§1!<§())
         {
            return false;
         }
         this.§ "2§ = new Vector.<XML>();
         this.§+!w§ = 0;
         return true;
      }
      
      public function §>?§(param1:XML) : void
      {
         if(this.§[!S§ && this.§1!<§())
         {
            return;
         }
         this.§ "2§.push(param1);
         ++this.§+!w§;
      }
      
      public function §72§(param1:Function = null) : void
      {
         if(this.§[!S§ && this.§1!<§())
         {
            return;
         }
         this.§9h§ = param1;
         this.§+!w§ = this.§ "2§.length;
         this.§2!$§ = 0;
         this.§[!S§ = true;
         this.§7!e§();
      }
      
      private function §1X§() : Boolean
      {
         if(this.§6!a§ && !this.§6!a§.§@O§)
         {
            this.§6!a§.removeEventListener(Event.COMPLETE,this.§,!Y§);
            this.§6!a§.addEventListener(Event.COMPLETE,this.§,!Y§);
            return true;
         }
         return false;
      }
      
      private function §,!Y§(param1:Event) : void
      {
         this.§6!a§.removeEventListener(Event.COMPLETE,this.§,!Y§);
         this.§7!e§();
      }
      
      private function §7!e§() : void
      {
         if(!this.§ "2§)
         {
            return;
         }
         if(this.§ "2§.length > 0)
         {
            this.§ K§();
         }
         else if(this.§8Q§() >= 1)
         {
            this.§3!h§();
         }
         else
         {
            this.§1X§();
         }
      }
      
      private function § K§() : void
      {
         var _loc1_:String = null;
         if(this.§[!S§ && this.§1!<§())
         {
            if(this.§1X§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§get § != null && this.§get §.length > 0)
            {
               _loc1_ = "?version=" + this.§get §;
            }
            this.§>!>§ = 0;
            this.§@!2§ = this.§ "2§.shift();
            if(this.§@!2§.localName() == "pack")
            {
               this.§0^§ = new URLLoader();
               this.§0^§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§0^§.addEventListener(Event.COMPLETE,this.§3J§);
               this.§0^§.addEventListener(IOErrorEvent.IO_ERROR,this.§;!"§);
               this.§0^§.addEventListener(ProgressEvent.PROGRESS,this.§=a§);
               this.§8!d§ = this.§4u§ + this.§@!2§.@url.toString() + _loc1_;
               this.§0^§.load(new URLRequest(this.§8!d§));
            }
            else
            {
               this.§+S§ = new Loader();
               this.§+S§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;"+§);
               this.§+S§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§;!"§);
               this.§+S§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§=a§);
               this.§8!d§ = this.§4u§ + this.§;Y§ + this.§@!2§.@swf.toString() + _loc1_;
               this.§+S§.load(new URLRequest(this.§8!d§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §;!"§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§8!d§;
         this.§<Y§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§8!d§,§`J§.§&l§);
      }
      
      private function §3J§(param1:Event) : void
      {
         this.§&"'§.push(this.§0^§.data);
         if(this.§6X§ != null)
         {
            this.§6X§(this.§0^§.data);
         }
         if(this.§6!a§)
         {
            this.§6!a§.§5!s§(this.§0^§.data,this.§;!5§(this.§@!2§.@url));
         }
         this.§<Y§();
         ++this.§2!$§;
         this.§7!e§();
      }
      
      private function §;!5§(param1:String) : String
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
      
      private function §=a§(param1:ProgressEvent) : void
      {
         this.§>!>§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §;"+§(param1:Event) : void
      {
         this.§<Y§();
         ++this.§2!$§;
         this.§7!e§();
      }
      
      private function §<Y§() : void
      {
         if(this.§+S§)
         {
            this.§+S§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;"+§);
            this.§+S§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§;!"§);
            this.§+S§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;"+§);
            this.§+S§ = null;
         }
         if(this.§0^§)
         {
            this.§0^§.removeEventListener(Event.COMPLETE,this.§3J§);
            this.§0^§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;!"§);
            this.§0^§.removeEventListener(ProgressEvent.PROGRESS,this.§=a§);
            this.§0^§ = null;
         }
         this.§@!2§ = null;
      }
      
      private function §3!h§() : void
      {
         this.§>!>§ = 0;
         if(this.§9h§ != null)
         {
            this.§9h§.call();
            this.§9h§ = null;
         }
      }
      
      public function §2x§() : void
      {
         this.§>!>§ = 0;
         this.§[!S§ = false;
         this.§+!w§ = 0;
         if(this.§ "2§)
         {
            this.§ "2§ = null;
         }
         this.§9h§ = null;
         this.§<Y§();
         if(this.§6!a§)
         {
            this.§6!a§.§2x§();
         }
      }
      
      public function §8Q§() : Number
      {
         if(!this.§1!<§())
         {
            §#!-§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§[!S§ || !this.§ "2§ || !this.§1!<§())
         {
            §#!-§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§2!$§ == this.§+!w§)
         {
            if(this.§6!a§ && this.§+!w§ > 0)
            {
               if(this.§6!a§.§@O§)
               {
                  return 1;
               }
               return (this.§2!$§ - 0.1) / this.§+!w§;
            }
            return 1;
         }
         return this.§2!$§ / this.§+!w§;
      }
   }
}
