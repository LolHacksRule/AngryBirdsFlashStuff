package §@g§
{
   import §"n§.§?!=§;
   import each.§!!'§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §;!5§
   {
      
      private static var §-!D§:§;!5§;
       
      
      private var §4W§:Vector.<XML>;
      
      private var §#!l§:Boolean = false;
      
      private var §>",§:int;
      
      private var §3",§:int;
      
      private var §7J§:Function;
      
      private var §-"#§:Function;
      
      private var §7!r§:Loader;
      
      private var §=B§:URLLoader;
      
      private var §+u§:XML;
      
      private var §7>§:Vector.<String>;
      
      private var § G§:String = "external_assets/LoadTest.swf";
      
      private var §3!y§:Boolean = false;
      
      private var §5!l§:Array;
      
      private var §`!!§:String;
      
      private var §]!V§:String;
      
      private var §9!F§:Number = 0;
      
      private var §0!z§:String = "";
      
      private var §="$§:§%! §;
      
      private var §6A§:Object;
      
      public function §;!5§()
      {
         this.§5!l§ = [];
         super();
      }
      
      public static function get §2Z§() : §;!5§
      {
         if(!§-!D§)
         {
            §-!D§ = new §;!5§();
         }
         return §-!D§;
      }
      
      public static function §'a§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §%l§() : void
      {
         this.§5!l§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§%! §, param5:Function = null, param6:String = "") : void
      {
         this.§`!!§ = param2;
         this.§]!V§ = param3;
         this.§3!y§ = true;
         this.§#!l§ = false;
         this.§="$§ = param4;
         this.§7J§ = param5;
         if(param6 != null && param6 != "")
         {
            this.§6A§ = JSON.parse(param6);
         }
      }
      
      private function §`!6§() : void
      {
         this.§3!y§ = true;
         this.§#!l§ = false;
      }
      
      public function §8q§() : Boolean
      {
         return this.§3!y§;
      }
      
      public function §6S§() : Boolean
      {
         if(this.§#!l§ || !this.§8q§())
         {
            return false;
         }
         this.§4W§ = new Vector.<XML>();
         this.§>",§ = 0;
         return true;
      }
      
      public function §>!&§(param1:XML) : void
      {
         if(this.§#!l§ && this.§8q§())
         {
            return;
         }
         this.§4W§.push(param1);
         ++this.§>",§;
      }
      
      public function §>!]§(param1:Function = null) : void
      {
         if(this.§#!l§ && this.§8q§())
         {
            return;
         }
         this.§-"#§ = param1;
         this.§>",§ = this.§4W§.length;
         this.§3",§ = 0;
         this.§#!l§ = true;
         this.§;!k§();
      }
      
      private function §+!'§() : Boolean
      {
         if(this.§="$§ && !this.§="$§.§4!d§)
         {
            this.§="$§.removeEventListener(Event.COMPLETE,this.§,!$§);
            this.§="$§.addEventListener(Event.COMPLETE,this.§,!$§);
            return true;
         }
         return false;
      }
      
      private function §,!$§(param1:Event) : void
      {
         this.§="$§.removeEventListener(Event.COMPLETE,this.§,!$§);
         this.§;!k§();
      }
      
      private function §;!k§() : void
      {
         if(!this.§4W§)
         {
            return;
         }
         if(this.§4W§.length > 0)
         {
            this.§5m§();
         }
         else if(this.§=!H§() >= 1)
         {
            this.§[E§();
         }
         else
         {
            this.§+!'§();
         }
      }
      
      private function §5m§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§#!l§ && this.§8q§())
         {
            if(this.§+!'§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§]!V§ != null && this.§]!V§.length > 0)
            {
               _loc1_ = "?version=" + this.§]!V§;
            }
            this.§9!F§ = 0;
            this.§+u§ = this.§4W§.shift();
            if(this.§+u§.localName() == "pack")
            {
               _loc2_ = this.§`!!§ + this.§+u§.@url.toString();
               if(this.§6A§ && this.§6A§[_loc2_])
               {
                  _loc2_ = this.§6A§[_loc2_];
               }
               this.§=B§ = new URLLoader();
               this.§=B§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§=B§.addEventListener(Event.COMPLETE,this.§#§);
               this.§=B§.addEventListener(IOErrorEvent.IO_ERROR,this.§7!N§);
               this.§=B§.addEventListener(ProgressEvent.PROGRESS,this.§@O§);
               this.§0!z§ = _loc2_ + _loc1_;
               this.§=B§.load(new URLRequest(this.§0!z§));
            }
            else
            {
               _loc3_ = this.§`!!§ + this.§+u§.@swf.toString();
               if(this.§6A§ && this.§6A§[_loc3_])
               {
                  _loc3_ = this.§6A§[_loc3_];
               }
               this.§7!r§ = new Loader();
               this.§7!r§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§8r§);
               this.§7!r§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§7!N§);
               this.§7!r§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§@O§);
               this.§0!z§ = _loc3_ + _loc1_;
               this.§7!r§.load(new URLRequest(this.§0!z§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §7!N§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§0!z§;
         this.§1<§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§0!z§,§?!=§.§8!3§);
      }
      
      private function §#§(param1:Event) : void
      {
         this.§5!l§.push(this.§=B§.data);
         if(this.§7J§ != null)
         {
            this.§7J§(this.§=B§.data);
         }
         if(this.§="$§)
         {
            this.§="$§.§;!h§(this.§=B§.data,this.§'!%§(this.§+u§.@url));
         }
         this.§1<§();
         ++this.§3",§;
         this.§;!k§();
      }
      
      private function §'!%§(param1:String) : String
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
      
      private function §@O§(param1:ProgressEvent) : void
      {
         this.§9!F§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §8r§(param1:Event) : void
      {
         this.§1<§();
         ++this.§3",§;
         this.§;!k§();
      }
      
      private function §1<§() : void
      {
         if(this.§7!r§)
         {
            this.§7!r§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8r§);
            this.§7!r§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!N§);
            this.§7!r§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§8r§);
            this.§7!r§ = null;
         }
         if(this.§=B§)
         {
            this.§=B§.removeEventListener(Event.COMPLETE,this.§#§);
            this.§=B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!N§);
            this.§=B§.removeEventListener(ProgressEvent.PROGRESS,this.§@O§);
            this.§=B§ = null;
         }
         this.§+u§ = null;
      }
      
      private function §[E§() : void
      {
         this.§9!F§ = 0;
         if(this.§-"#§ != null)
         {
            this.§-"#§.call();
            this.§-"#§ = null;
         }
      }
      
      public function §""0§() : void
      {
         this.§9!F§ = 0;
         this.§#!l§ = false;
         this.§>",§ = 0;
         if(this.§4W§)
         {
            this.§4W§ = null;
         }
         this.§-"#§ = null;
         this.§1<§();
         if(this.§="$§)
         {
            this.§="$§.§""0§();
         }
      }
      
      public function §=!H§() : Number
      {
         if(!this.§8q§())
         {
            §!!'§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§#!l§ || !this.§4W§ || !this.§8q§())
         {
            §!!'§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§3",§ == this.§>",§)
         {
            if(this.§="$§ && this.§>",§ > 0)
            {
               if(this.§="$§.§4!d§)
               {
                  return 1;
               }
               return (this.§3",§ - 0.1) / this.§>",§;
            }
            return 1;
         }
         return this.§3",§ / this.§>",§;
      }
   }
}
