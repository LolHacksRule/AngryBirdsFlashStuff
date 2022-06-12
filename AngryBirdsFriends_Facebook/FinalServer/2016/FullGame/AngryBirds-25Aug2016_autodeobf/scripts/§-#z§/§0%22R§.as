package §-#z§
{
   import §!x§.§4"d§;
   import §>!#§.§'"R§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §0"R§
   {
      
      private static var §,!m§:§0"R§;
       
      
      private var §3#n§:Vector.<XML>;
      
      private var §#!R§:Boolean = false;
      
      private var §#I§:int;
      
      private var §3G§:int;
      
      private var §4!'§:Function;
      
      private var §%#V§:Function;
      
      private var §4#=§:Function;
      
      private var §]"p§:Function;
      
      private var § each§:Loader;
      
      private var §;!G§:URLLoader;
      
      private var §`R§:XML;
      
      private var §&!#§:Vector.<String>;
      
      private var §?"`§:String = "external_assets/LoadTest.swf";
      
      private var §'$<§:Boolean = false;
      
      private var §,p§:Array;
      
      private var §@#z§:String;
      
      private var §%"&§:String;
      
      private var §0#o§:§'"R§;
      
      private var §^!N§:String = "";
      
      private var §`!#§:Number = 0;
      
      private var §0O§:String = "";
      
      private var §?s§:§5#2§;
      
      private var §%!%§:Boolean;
      
      private var §9!x§:§[@§;
      
      public function §0"R§(param1:Boolean = false)
      {
         this.§,p§ = [];
         this.§0#o§ = new §'"R§();
         super();
         this.§%!%§ = param1;
      }
      
      public static function get §3!]§() : §0"R§
      {
         if(!§,!m§)
         {
            §,!m§ = new §0"R§();
         }
         return §,!m§;
      }
      
      public static function §9!9§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §@"K§() : void
      {
         this.§,p§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§5#2§, param5:Function = null, param6:§[@§ = null) : void
      {
         this.§@#z§ = param2;
         this.§%"&§ = param3;
         this.§'$<§ = true;
         this.§#!R§ = false;
         this.§?s§ = param4;
         this.§4!'§ = param5;
         this.§9!x§ = param6;
      }
      
      private function §"""§() : void
      {
         this.§'$<§ = true;
         this.§#!R§ = false;
      }
      
      public function § $;§() : Boolean
      {
         return this.§'$<§;
      }
      
      public function §]"R§() : Boolean
      {
         if(this.§#!R§ || !this.§ $;§())
         {
            return false;
         }
         this.§3#n§ = new Vector.<XML>();
         this.§#I§ = 0;
         return true;
      }
      
      public function §@!6§(param1:XML) : void
      {
         if(this.§#!R§ && this.§ $;§())
         {
            return;
         }
         this.§3#n§.push(param1);
         ++this.§#I§;
      }
      
      public function §,"o§(param1:Function = null, param2:Function = null, param3:Function = null) : void
      {
         if(this.§#!R§ && this.§ $;§())
         {
            return;
         }
         this.§%#V§ = param1;
         this.§4#=§ = param2;
         this.§]"p§ = param3;
         this.§#I§ = this.§3#n§.length;
         this.§3G§ = 0;
         this.§#!R§ = true;
         this.§6L§();
      }
      
      private function §%!l§() : Boolean
      {
         if(this.§?s§ && !this.§?s§.§;!V§)
         {
            this.§?s§.removeEventListener(Event.COMPLETE,this.§,§);
            this.§?s§.addEventListener(Event.COMPLETE,this.§,§);
            return true;
         }
         return false;
      }
      
      private function §,§(param1:Event) : void
      {
         this.§?s§.removeEventListener(Event.COMPLETE,this.§,§);
         this.§6L§();
      }
      
      private function §6L§() : void
      {
         if(!this.§3#n§)
         {
            return;
         }
         if(this.§3#n§.length > 0)
         {
            this.§;#`§();
         }
         else if(this.§%!A§() >= 1)
         {
            this.§?&§();
         }
         else
         {
            this.§%!l§();
         }
      }
      
      private function §;#`§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(this.§#!R§ && this.§ $;§())
         {
            if(this.§%!l§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§%"&§ != null && this.§%"&§.length > 0)
            {
               _loc1_ = "?version=" + this.§%"&§;
            }
            this.§`!#§ = 0;
            this.§`R§ = this.§3#n§.shift();
            if(this.§`R§.localName() == "level")
            {
               _loc2_ = this.§`R§.@url.toString();
               _loc2_ = §&!3§.§3!]§.§ $0§(_loc2_);
               this.§;!G§ = new URLLoader();
               this.§;!G§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§;!G§.addEventListener(Event.COMPLETE,this.onLevelLoaded);
               this.§;!G§.addEventListener(IOErrorEvent.IO_ERROR,this.§,'§);
               this.§;!G§.addEventListener(ProgressEvent.PROGRESS,this.§`$#§);
               this.§0O§ = _loc2_;
               this.§;!G§.load(new URLRequest(_loc2_));
            }
            else if(this.§`R§.localName() == "pack")
            {
               _loc3_ = this.§`R§.@url.toString();
               _loc3_ = §&!3§.§3!]§.§ $0§(_loc3_);
               this.§;!G§ = new URLLoader();
               this.§;!G§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§;!G§.addEventListener(Event.COMPLETE,this.§^$$§);
               this.§;!G§.addEventListener(IOErrorEvent.IO_ERROR,this.§,'§);
               this.§;!G§.addEventListener(ProgressEvent.PROGRESS,this.§`$#§);
               this.§0O§ = this.§@#z§ + _loc3_ + _loc1_;
               this.§;!G§.load(new URLRequest(this.§0O§));
            }
            else if(this.§`R§.localName() == "xml")
            {
               _loc4_ = this.§`R§.@url.toString();
               _loc4_ = §&!3§.§3!]§.§ $0§(_loc4_);
               this.§^!N§ = this.§`R§.@name;
               this.§;!G§ = new URLLoader();
               this.§;!G§.addEventListener(Event.COMPLETE,this.§9-§);
               this.§;!G§.addEventListener(IOErrorEvent.IO_ERROR,this.§,'§);
               this.§;!G§.addEventListener(ProgressEvent.PROGRESS,this.§`$#§);
               this.§0O§ = this.§@#z§ + _loc4_ + _loc1_;
               this.§;!G§.load(new URLRequest(this.§0O§));
            }
            else
            {
               _loc5_ = this.§`R§.@swf.toString();
               _loc5_ = §&!3§.§3!]§.§ $0§(_loc5_);
               this.§ each§ = new Loader();
               this.§ each§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ #D§);
               this.§ each§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§,'§);
               this.§ each§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§`$#§);
               this.§0O§ = this.§@#z§ + _loc5_ + _loc1_;
               this.§ each§.load(new URLRequest(this.§0O§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §,'§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§0O§;
         this.§;#-§();
         if(this.§%!%§)
         {
            ++this.§3G§;
            this.§6L§();
            if(this.§4#=§ != null)
            {
               this.§4#=§(_loc2_);
            }
            return;
         }
         throw new Error("[LoadManager] IO Error while loading \'" + _loc2_ + "\'.\nError: " + param1.toString(),param1.errorID);
      }
      
      private function §9-§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§;!G§.data);
         this.§0#o§[this.§^!N§] = _loc2_;
         if(this.§]"p§ != null)
         {
            this.§]"p§(this.§0O§);
         }
         this.§;#-§();
         ++this.§3G§;
         this.§6L§();
      }
      
      public function §7!0§(param1:String) : XML
      {
         return this.§0#o§[param1];
      }
      
      private function onLevelLoaded(param1:Event) : void
      {
         if(this.§9!x§)
         {
            this.§9!x§.§#b§(this.§;!G§.data,this.§`R§.@id);
         }
         if(this.§]"p§ != null)
         {
            this.§]"p§(this.§0O§);
         }
         this.§;#-§();
         ++this.§3G§;
         this.§6L§();
      }
      
      private function §^$$§(param1:Event) : void
      {
         this.§,p§.push(this.§;!G§.data);
         if(this.§4!'§ != null)
         {
            this.§4!'§(this.§;!G§.data);
         }
         if(this.§?s§)
         {
            this.§?s§.§""=§(this.§;!G§.data,this.§&$"§(this.§`R§.@url),true,this.§`R§);
         }
         if(this.§]"p§ != null)
         {
            this.§]"p§(this.§0O§);
         }
         this.§;#-§();
         ++this.§3G§;
         this.§6L§();
      }
      
      private function §&$"§(param1:String) : String
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
      
      private function §`$#§(param1:ProgressEvent) : void
      {
         this.§`!#§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function § #D§(param1:Event) : void
      {
         if(this.§]"p§ != null)
         {
            this.§]"p§(this.§0O§);
         }
         this.§;#-§();
         ++this.§3G§;
         this.§6L§();
      }
      
      private function §;#-§() : void
      {
         if(this.§ each§)
         {
            this.§ each§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ #D§);
            this.§ each§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§,'§);
            this.§ each§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ #D§);
            this.§ each§ = null;
         }
         if(this.§;!G§)
         {
            this.§;!G§.removeEventListener(Event.COMPLETE,this.§^$$§);
            this.§;!G§.removeEventListener(Event.COMPLETE,this.onLevelLoaded);
            this.§;!G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§,'§);
            this.§;!G§.removeEventListener(ProgressEvent.PROGRESS,this.§`$#§);
            this.§;!G§ = null;
         }
         this.§`R§ = null;
      }
      
      private function §?&§() : void
      {
         this.§`!#§ = 0;
         if(this.§%#V§ != null)
         {
            this.§%#V§.call();
            this.§%#V§ = null;
         }
      }
      
      public function §!#t§() : void
      {
         this.§`!#§ = 0;
         this.§#!R§ = false;
         this.§#I§ = 0;
         if(this.§3#n§)
         {
            this.§3#n§ = null;
         }
         this.§%#V§ = null;
         this.§;#-§();
         if(this.§?s§)
         {
            this.§?s§.§!#t§();
         }
      }
      
      public function §%!A§() : Number
      {
         if(!this.§ $;§())
         {
            §4"d§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§#!R§ || !this.§3#n§ || !this.§ $;§())
         {
            §4"d§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§3G§ == this.§#I§)
         {
            if(this.§?s§ && this.§#I§ > 0)
            {
               if(this.§?s§.§;!V§)
               {
                  return 1;
               }
               return (this.§3G§ - 0.1) / this.§#I§;
            }
            return 1;
         }
         return this.§3G§ / this.§#I§;
      }
   }
}
