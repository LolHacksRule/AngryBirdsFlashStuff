package §>#G§
{
   import §]!6§.§6Y§;
   import §`7§.§0t§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §-!,§
   {
      
      private static var §!c§:§-!,§;
       
      
      private var §2!$§:Vector.<XML>;
      
      private var §"6§:Boolean = false;
      
      private var §`!d§:int;
      
      private var §8!p§:int;
      
      private var §8"N§:Function;
      
      private var § 4§:Function;
      
      private var § §:Function;
      
      private var §9"-§:Function;
      
      private var §>v§:Loader;
      
      private var §0V§:URLLoader;
      
      private var § in§:XML;
      
      private var §@!S§:Vector.<String>;
      
      private var §!#K§:String = "external_assets/LoadTest.swf";
      
      private var §`!h§:Boolean = false;
      
      private var §&`§:Array;
      
      private var §'!X§:String;
      
      private var §2k§:String;
      
      private var §3!g§:§0t§;
      
      private var §9!v§:String = "";
      
      private var §%!Z§:Number = 0;
      
      private var §+!r§:String = "";
      
      private var §5#y§:§="§;
      
      private var §@!U§:Boolean;
      
      private var §4!L§:§!#R§;
      
      public function §-!,§(param1:Boolean = false)
      {
         this.§&`§ = [];
         this.§3!g§ = new §0t§();
         super();
         this.§@!U§ = param1;
      }
      
      public static function get §6!§() : §-!,§
      {
         if(!§!c§)
         {
            §!c§ = new §-!,§();
         }
         return §!c§;
      }
      
      public static function §#!@§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §,#r§() : void
      {
         this.§&`§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§="§, param5:Function = null, param6:§!#R§ = null) : void
      {
         this.§'!X§ = param2;
         this.§2k§ = param3;
         this.§`!h§ = true;
         this.§"6§ = false;
         this.§5#y§ = param4;
         this.§8"N§ = param5;
         this.§4!L§ = param6;
      }
      
      private function §#"5§() : void
      {
         this.§`!h§ = true;
         this.§"6§ = false;
      }
      
      public function §,y§() : Boolean
      {
         return this.§`!h§;
      }
      
      public function §7"0§() : Boolean
      {
         if(this.§"6§ || !this.§,y§())
         {
            return false;
         }
         this.§2!$§ = new Vector.<XML>();
         this.§`!d§ = 0;
         return true;
      }
      
      public function §?2§(param1:XML) : void
      {
         if(this.§"6§ && this.§,y§())
         {
            return;
         }
         this.§2!$§.push(param1);
         ++this.§`!d§;
      }
      
      public function §&",§(param1:Function = null, param2:Function = null, param3:Function = null) : void
      {
         if(this.§"6§ && this.§,y§())
         {
            return;
         }
         this.§ 4§ = param1;
         this.§ § = param2;
         this.§9"-§ = param3;
         this.§`!d§ = this.§2!$§.length;
         this.§8!p§ = 0;
         this.§"6§ = true;
         this.§0"?§();
      }
      
      private function §@z§() : Boolean
      {
         if(this.§5#y§ && !this.§5#y§.§+"y§)
         {
            this.§5#y§.removeEventListener(Event.COMPLETE,this.§3"^§);
            this.§5#y§.addEventListener(Event.COMPLETE,this.§3"^§);
            return true;
         }
         return false;
      }
      
      private function §3"^§(param1:Event) : void
      {
         this.§5#y§.removeEventListener(Event.COMPLETE,this.§3"^§);
         this.§0"?§();
      }
      
      private function §0"?§() : void
      {
         if(!this.§2!$§)
         {
            return;
         }
         if(this.§2!$§.length > 0)
         {
            this.§7$$§();
         }
         else if(this.§9$ §() >= 1)
         {
            this.§&!Q§();
         }
         else
         {
            this.§@z§();
         }
      }
      
      private function §7$$§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(this.§"6§ && this.§,y§())
         {
            if(this.§@z§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§2k§ != null && this.§2k§.length > 0)
            {
               _loc1_ = "?version=" + this.§2k§;
            }
            this.§%!Z§ = 0;
            this.§ in§ = this.§2!$§.shift();
            if(this.§ in§.localName() == "level")
            {
               _loc2_ = this.§ in§.@url.toString();
               _loc2_ = §#!I§.§6!§.§!"i§(_loc2_);
               this.§0V§ = new URLLoader();
               this.§0V§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§0V§.addEventListener(Event.COMPLETE,this.onLevelLoaded);
               this.§0V§.addEventListener(IOErrorEvent.IO_ERROR,this.§6$;§);
               this.§0V§.addEventListener(ProgressEvent.PROGRESS,this.§'""§);
               this.§+!r§ = _loc2_;
               this.§0V§.load(new URLRequest(_loc2_));
            }
            else if(this.§ in§.localName() == "pack")
            {
               _loc3_ = this.§ in§.@url.toString();
               _loc3_ = §#!I§.§6!§.§!"i§(_loc3_);
               this.§0V§ = new URLLoader();
               this.§0V§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§0V§.addEventListener(Event.COMPLETE,this.§4F§);
               this.§0V§.addEventListener(IOErrorEvent.IO_ERROR,this.§6$;§);
               this.§0V§.addEventListener(ProgressEvent.PROGRESS,this.§'""§);
               this.§+!r§ = this.§'!X§ + _loc3_ + _loc1_;
               this.§0V§.load(new URLRequest(this.§+!r§));
            }
            else if(this.§ in§.localName() == "xml")
            {
               _loc4_ = this.§ in§.@url.toString();
               _loc4_ = §#!I§.§6!§.§!"i§(_loc4_);
               this.§9!v§ = this.§ in§.@name;
               this.§0V§ = new URLLoader();
               this.§0V§.addEventListener(Event.COMPLETE,this.§@$@§);
               this.§0V§.addEventListener(IOErrorEvent.IO_ERROR,this.§6$;§);
               this.§0V§.addEventListener(ProgressEvent.PROGRESS,this.§'""§);
               this.§+!r§ = this.§'!X§ + _loc4_ + _loc1_;
               this.§0V§.load(new URLRequest(this.§+!r§));
            }
            else
            {
               _loc5_ = this.§ in§.@swf.toString();
               _loc5_ = §#!I§.§6!§.§!"i§(_loc5_);
               this.§>v§ = new Loader();
               this.§>v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?!w§);
               this.§>v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§6$;§);
               this.§>v§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§'""§);
               this.§+!r§ = this.§'!X§ + _loc5_ + _loc1_;
               this.§>v§.load(new URLRequest(this.§+!r§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §6$;§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§+!r§;
         this.§#" §();
         if(this.§@!U§)
         {
            ++this.§8!p§;
            this.§0"?§();
            if(this.§ § != null)
            {
               this.§ §(_loc2_);
            }
            return;
         }
         throw new Error("[LoadManager] IO Error while loading \'" + _loc2_ + "\'.\nError: " + param1.toString(),param1.errorID);
      }
      
      private function §@$@§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§0V§.data);
         this.§3!g§[this.§9!v§] = _loc2_;
         if(this.§9"-§ != null)
         {
            this.§9"-§(this.§+!r§);
         }
         this.§#" §();
         ++this.§8!p§;
         this.§0"?§();
      }
      
      public function §6#N§(param1:String) : XML
      {
         return this.§3!g§[param1];
      }
      
      private function onLevelLoaded(param1:Event) : void
      {
         if(this.§4!L§)
         {
            this.§4!L§.§`"s§(this.§0V§.data,this.§ in§.@id);
         }
         if(this.§9"-§ != null)
         {
            this.§9"-§(this.§+!r§);
         }
         this.§#" §();
         ++this.§8!p§;
         this.§0"?§();
      }
      
      private function §4F§(param1:Event) : void
      {
         this.§&`§.push(this.§0V§.data);
         if(this.§8"N§ != null)
         {
            this.§8"N§(this.§0V§.data);
         }
         if(this.§5#y§)
         {
            this.§5#y§.§=!c§(this.§0V§.data,this.§2#u§(this.§ in§.@url),true,this.§ in§);
         }
         if(this.§9"-§ != null)
         {
            this.§9"-§(this.§+!r§);
         }
         this.§#" §();
         ++this.§8!p§;
         this.§0"?§();
      }
      
      private function §2#u§(param1:String) : String
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
      
      private function §'""§(param1:ProgressEvent) : void
      {
         this.§%!Z§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §?!w§(param1:Event) : void
      {
         if(this.§9"-§ != null)
         {
            this.§9"-§(this.§+!r§);
         }
         this.§#" §();
         ++this.§8!p§;
         this.§0"?§();
      }
      
      private function §#" §() : void
      {
         if(this.§>v§)
         {
            this.§>v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?!w§);
            this.§>v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6$;§);
            this.§>v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?!w§);
            this.§>v§ = null;
         }
         if(this.§0V§)
         {
            this.§0V§.removeEventListener(Event.COMPLETE,this.§4F§);
            this.§0V§.removeEventListener(Event.COMPLETE,this.onLevelLoaded);
            this.§0V§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6$;§);
            this.§0V§.removeEventListener(ProgressEvent.PROGRESS,this.§'""§);
            this.§0V§ = null;
         }
         this.§ in§ = null;
      }
      
      private function §&!Q§() : void
      {
         this.§%!Z§ = 0;
         if(this.§ 4§ != null)
         {
            this.§ 4§.call();
            this.§ 4§ = null;
         }
      }
      
      public function §^#2§() : void
      {
         this.§%!Z§ = 0;
         this.§"6§ = false;
         this.§`!d§ = 0;
         if(this.§2!$§)
         {
            this.§2!$§ = null;
         }
         this.§ 4§ = null;
         this.§#" §();
         if(this.§5#y§)
         {
            this.§5#y§.§^#2§();
         }
      }
      
      public function §9$ §() : Number
      {
         if(!this.§,y§())
         {
            §6Y§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§"6§ || !this.§2!$§ || !this.§,y§())
         {
            §6Y§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§8!p§ == this.§`!d§)
         {
            if(this.§5#y§ && this.§`!d§ > 0)
            {
               if(this.§5#y§.§+"y§)
               {
                  return 1;
               }
               return (this.§8!p§ - 0.1) / this.§`!d§;
            }
            return 1;
         }
         return this.§8!p§ / this.§`!d§;
      }
   }
}
