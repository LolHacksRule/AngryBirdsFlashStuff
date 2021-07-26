package §&?§
{
   import §#"4§.§&r§;
   import §6"p§.§^"t§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §5"f§
   {
      
      private static var §+#!§:§5"f§;
       
      
      private var §9!h§:Vector.<XML>;
      
      private var §&#a§:Boolean = false;
      
      private var §;!]§:int;
      
      private var §=N§:int;
      
      private var §0"-§:Function;
      
      private var §%!@§:Function;
      
      private var §'d§:Function;
      
      private var §%"S§:Function;
      
      private var §@$2§:Loader;
      
      private var §&!$§:URLLoader;
      
      private var §'?§:XML;
      
      private var §6"k§:Vector.<String>;
      
      private var §!V§:String = "external_assets/LoadTest.swf";
      
      private var §^#`§:Boolean = false;
      
      private var §6$B§:Array;
      
      private var §4"N§:String;
      
      private var §@"_§:String;
      
      private var §'$7§:§&r§;
      
      private var §;"Z§:String = "";
      
      private var §7G§:Number = 0;
      
      private var §@"Q§:String = "";
      
      private var §6!]§:§`'§;
      
      private var §6X§:Boolean;
      
      private var §2$-§:§]#N§;
      
      public function §5"f§(param1:Boolean = false)
      {
         this.§6$B§ = [];
         this.§'$7§ = new §&r§();
         super();
         this.§6X§ = param1;
      }
      
      public static function get §+!,§() : §5"f§
      {
         if(!§+#!§)
         {
            §+#!§ = new §5"f§();
         }
         return §+#!§;
      }
      
      public static function §'!k§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §+"m§() : void
      {
         this.§6$B§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§`'§, param5:Function = null, param6:§]#N§ = null) : void
      {
         this.§4"N§ = param2;
         this.§@"_§ = param3;
         this.§^#`§ = true;
         this.§&#a§ = false;
         this.§6!]§ = param4;
         this.§0"-§ = param5;
         this.§2$-§ = param6;
      }
      
      private function §]y§() : void
      {
         this.§^#`§ = true;
         this.§&#a§ = false;
      }
      
      public function §"!7§() : Boolean
      {
         return this.§^#`§;
      }
      
      public function §?p§() : Boolean
      {
         if(this.§&#a§ || !this.§"!7§())
         {
            return false;
         }
         this.§9!h§ = new Vector.<XML>();
         this.§;!]§ = 0;
         return true;
      }
      
      public function §,b§(param1:XML) : void
      {
         if(this.§&#a§ && this.§"!7§())
         {
            return;
         }
         this.§9!h§.push(param1);
         ++this.§;!]§;
      }
      
      public function §4H§(param1:Function = null, param2:Function = null, param3:Function = null) : void
      {
         if(this.§&#a§ && this.§"!7§())
         {
            return;
         }
         this.§%!@§ = param1;
         this.§'d§ = param2;
         this.§%"S§ = param3;
         this.§;!]§ = this.§9!h§.length;
         this.§=N§ = 0;
         this.§&#a§ = true;
         this.§5B§();
      }
      
      private function §%!I§() : Boolean
      {
         if(this.§6!]§ && !this.§6!]§.§8J§)
         {
            this.§6!]§.removeEventListener(Event.COMPLETE,this.§'$;§);
            this.§6!]§.addEventListener(Event.COMPLETE,this.§'$;§);
            return true;
         }
         return false;
      }
      
      private function §'$;§(param1:Event) : void
      {
         this.§6!]§.removeEventListener(Event.COMPLETE,this.§'$;§);
         this.§5B§();
      }
      
      private function §5B§() : void
      {
         if(!this.§9!h§)
         {
            return;
         }
         if(this.§9!h§.length > 0)
         {
            this.§1$,§();
         }
         else if(this.§5W§() >= 1)
         {
            this.§+X§();
         }
         else
         {
            this.§%!I§();
         }
      }
      
      private function §1$,§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(this.§&#a§ && this.§"!7§())
         {
            if(this.§%!I§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§@"_§ != null && this.§@"_§.length > 0)
            {
               _loc1_ = "?version=" + this.§@"_§;
            }
            this.§7G§ = 0;
            this.§'?§ = this.§9!h§.shift();
            if(this.§'?§.localName() == "level")
            {
               _loc2_ = this.§'?§.@url.toString();
               _loc2_ = §4#M§.§+!,§.§]!8§(_loc2_);
               this.§&!$§ = new URLLoader();
               this.§&!$§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§&!$§.addEventListener(Event.COMPLETE,this.onLevelLoaded);
               this.§&!$§.addEventListener(IOErrorEvent.IO_ERROR,this.§9"9§);
               this.§&!$§.addEventListener(ProgressEvent.PROGRESS,this.§8"L§);
               this.§@"Q§ = _loc2_;
               this.§&!$§.load(new URLRequest(_loc2_));
            }
            else if(this.§'?§.localName() == "pack")
            {
               _loc3_ = this.§'?§.@url.toString();
               _loc3_ = §4#M§.§+!,§.§]!8§(_loc3_);
               this.§&!$§ = new URLLoader();
               this.§&!$§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§&!$§.addEventListener(Event.COMPLETE,this.§"!H§);
               this.§&!$§.addEventListener(IOErrorEvent.IO_ERROR,this.§9"9§);
               this.§&!$§.addEventListener(ProgressEvent.PROGRESS,this.§8"L§);
               this.§@"Q§ = this.§4"N§ + _loc3_ + _loc1_;
               this.§&!$§.load(new URLRequest(this.§@"Q§));
            }
            else if(this.§'?§.localName() == "xml")
            {
               _loc4_ = this.§'?§.@url.toString();
               _loc4_ = §4#M§.§+!,§.§]!8§(_loc4_);
               this.§;"Z§ = this.§'?§.@name;
               this.§&!$§ = new URLLoader();
               this.§&!$§.addEventListener(Event.COMPLETE,this.§8!d§);
               this.§&!$§.addEventListener(IOErrorEvent.IO_ERROR,this.§9"9§);
               this.§&!$§.addEventListener(ProgressEvent.PROGRESS,this.§8"L§);
               this.§@"Q§ = this.§4"N§ + _loc4_ + _loc1_;
               this.§&!$§.load(new URLRequest(this.§@"Q§));
            }
            else
            {
               _loc5_ = this.§'?§.@swf.toString();
               _loc5_ = §4#M§.§+!,§.§]!8§(_loc5_);
               this.§@$2§ = new Loader();
               this.§@$2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§6#T§);
               this.§@$2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9"9§);
               this.§@$2§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§8"L§);
               this.§@"Q§ = this.§4"N§ + _loc5_ + _loc1_;
               this.§@$2§.load(new URLRequest(this.§@"Q§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §9"9§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§@"Q§;
         this.§#!9§();
         if(this.§6X§)
         {
            ++this.§=N§;
            this.§5B§();
            if(this.§'d§ != null)
            {
               this.§'d§(_loc2_);
            }
            return;
         }
         throw new Error("[LoadManager] IO Error while loading \'" + _loc2_ + "\'.\nError: " + param1.toString(),param1.errorID);
      }
      
      private function §8!d§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§&!$§.data);
         this.§'$7§[this.§;"Z§] = _loc2_;
         if(this.§%"S§ != null)
         {
            this.§%"S§(this.§@"Q§);
         }
         this.§#!9§();
         ++this.§=N§;
         this.§5B§();
      }
      
      public function §8![§(param1:String) : XML
      {
         return this.§'$7§[param1];
      }
      
      private function onLevelLoaded(param1:Event) : void
      {
         if(this.§2$-§)
         {
            this.§2$-§.get(this.§&!$§.data,this.§'?§.@id);
         }
         if(this.§%"S§ != null)
         {
            this.§%"S§(this.§@"Q§);
         }
         this.§#!9§();
         ++this.§=N§;
         this.§5B§();
      }
      
      private function §"!H§(param1:Event) : void
      {
         this.§6$B§.push(this.§&!$§.data);
         if(this.§0"-§ != null)
         {
            this.§0"-§(this.§&!$§.data);
         }
         if(this.§6!]§)
         {
            this.§6!]§.§5t§(this.§&!$§.data,this.§6!y§(this.§'?§.@url),true,this.§'?§);
         }
         if(this.§%"S§ != null)
         {
            this.§%"S§(this.§@"Q§);
         }
         this.§#!9§();
         ++this.§=N§;
         this.§5B§();
      }
      
      private function §6!y§(param1:String) : String
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
      
      private function §8"L§(param1:ProgressEvent) : void
      {
         this.§7G§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §6#T§(param1:Event) : void
      {
         if(this.§%"S§ != null)
         {
            this.§%"S§(this.§@"Q§);
         }
         this.§#!9§();
         ++this.§=N§;
         this.§5B§();
      }
      
      private function §#!9§() : void
      {
         if(this.§@$2§)
         {
            this.§@$2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6#T§);
            this.§@$2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9"9§);
            this.§@$2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6#T§);
            this.§@$2§ = null;
         }
         if(this.§&!$§)
         {
            this.§&!$§.removeEventListener(Event.COMPLETE,this.§"!H§);
            this.§&!$§.removeEventListener(Event.COMPLETE,this.onLevelLoaded);
            this.§&!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9"9§);
            this.§&!$§.removeEventListener(ProgressEvent.PROGRESS,this.§8"L§);
            this.§&!$§ = null;
         }
         this.§'?§ = null;
      }
      
      private function §+X§() : void
      {
         this.§7G§ = 0;
         if(this.§%!@§ != null)
         {
            this.§%!@§.call();
            this.§%!@§ = null;
         }
      }
      
      public function §=#F§() : void
      {
         this.§7G§ = 0;
         this.§&#a§ = false;
         this.§;!]§ = 0;
         if(this.§9!h§)
         {
            this.§9!h§ = null;
         }
         this.§%!@§ = null;
         this.§#!9§();
         if(this.§6!]§)
         {
            this.§6!]§.§=#F§();
         }
      }
      
      public function §5W§() : Number
      {
         if(!this.§"!7§())
         {
            §^"t§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§&#a§ || !this.§9!h§ || !this.§"!7§())
         {
            §^"t§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§=N§ == this.§;!]§)
         {
            if(this.§6!]§ && this.§;!]§ > 0)
            {
               if(this.§6!]§.§8J§)
               {
                  return 1;
               }
               return (this.§=N§ - 0.1) / this.§;!]§;
            }
            return 1;
         }
         return this.§=N§ / this.§;!]§;
      }
   }
}
