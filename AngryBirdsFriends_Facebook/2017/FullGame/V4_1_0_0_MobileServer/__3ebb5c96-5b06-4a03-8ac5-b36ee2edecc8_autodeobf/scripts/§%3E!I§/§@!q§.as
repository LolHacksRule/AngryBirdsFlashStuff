package §>!I§
{
   import §6V§.§&"g§;
   import §<"p§.§?!T§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §@!q§
   {
      
      private static var §%#b§:§@!q§;
       
      
      private var §@!I§:Vector.<XML>;
      
      private var §["s§:Boolean = false;
      
      private var §]"&§:int;
      
      private var §"+§:int;
      
      private var § ,§:Function;
      
      private var §+"n§:Function;
      
      private var §^$#§:Function;
      
      private var §+!F§:Function;
      
      private var §+"§:Loader;
      
      private var §]!5§:URLLoader;
      
      private var §9"4§:XML;
      
      private var §7c§:Vector.<String>;
      
      private var §##5§:String = "external_assets/LoadTest.swf";
      
      private var §?=§:Boolean = false;
      
      private var § "J§:Array;
      
      private var §="V§:String;
      
      private var §6#;§:String;
      
      private var §`!2§:§&"g§;
      
      private var §"B§:String = "";
      
      private var §>"K§:Number = 0;
      
      private var §`$7§:String = "";
      
      private var §8#>§:§##s§;
      
      private var §1"?§:Boolean;
      
      private var §;$ §:§ "6§;
      
      public function §@!q§(param1:Boolean = false)
      {
         this.§ "J§ = [];
         this.§`!2§ = new §&"g§();
         super();
         this.§1"?§ = param1;
      }
      
      public static function get § "D§() : §@!q§
      {
         if(!§%#b§)
         {
            §%#b§ = new §@!q§();
         }
         return §%#b§;
      }
      
      public static function §8d§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §3!A§() : void
      {
         this.§ "J§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§##s§, param5:Function = null, param6:§ "6§ = null) : void
      {
         this.§="V§ = param2;
         this.§6#;§ = param3;
         this.§?=§ = true;
         this.§["s§ = false;
         this.§8#>§ = param4;
         this.§ ,§ = param5;
         this.§;$ § = param6;
      }
      
      private function §77§() : void
      {
         this.§?=§ = true;
         this.§["s§ = false;
      }
      
      public function § "x§() : Boolean
      {
         return this.§?=§;
      }
      
      public function §8#N§() : Boolean
      {
         if(this.§["s§ || !this.§ "x§())
         {
            return false;
         }
         this.§@!I§ = new Vector.<XML>();
         this.§]"&§ = 0;
         return true;
      }
      
      public function §'"g§(param1:XML) : void
      {
         if(this.§["s§ && this.§ "x§())
         {
            return;
         }
         this.§@!I§.push(param1);
         ++this.§]"&§;
      }
      
      public function §?!+§(param1:Function = null, param2:Function = null, param3:Function = null) : void
      {
         if(this.§["s§ && this.§ "x§())
         {
            return;
         }
         this.§+"n§ = param1;
         this.§^$#§ = param2;
         this.§+!F§ = param3;
         this.§]"&§ = this.§@!I§.length;
         this.§"+§ = 0;
         this.§["s§ = true;
         this.§,d§();
      }
      
      private function §]#I§() : Boolean
      {
         if(this.§8#>§ && !this.§8#>§.§^>§)
         {
            this.§8#>§.removeEventListener(Event.COMPLETE,this.§+!A§);
            this.§8#>§.addEventListener(Event.COMPLETE,this.§+!A§);
            return true;
         }
         return false;
      }
      
      private function §+!A§(param1:Event) : void
      {
         this.§8#>§.removeEventListener(Event.COMPLETE,this.§+!A§);
         this.§,d§();
      }
      
      private function §,d§() : void
      {
         if(!this.§@!I§)
         {
            return;
         }
         if(this.§@!I§.length > 0)
         {
            this.§'$ §();
         }
         else if(this.§,#_§() >= 1)
         {
            this.§6!4§();
         }
         else
         {
            this.§]#I§();
         }
      }
      
      private function §'$ §() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(this.§["s§ && this.§ "x§())
         {
            if(this.§]#I§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6#;§ != null && this.§6#;§.length > 0)
            {
               _loc1_ = "?version=" + this.§6#;§;
            }
            this.§>"K§ = 0;
            this.§9"4§ = this.§@!I§.shift();
            if(this.§9"4§.localName() == "level")
            {
               _loc2_ = this.§9"4§.@url.toString();
               _loc2_ = §<!&§.§ "D§.§^q§(_loc2_);
               this.§]!5§ = new URLLoader();
               this.§]!5§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§]!5§.addEventListener(Event.COMPLETE,this.onLevelLoaded);
               this.§]!5§.addEventListener(IOErrorEvent.IO_ERROR,this.§&d§);
               this.§]!5§.addEventListener(ProgressEvent.PROGRESS,this.§8"'§);
               this.§`$7§ = _loc2_;
               this.§]!5§.load(new URLRequest(_loc2_));
            }
            else if(this.§9"4§.localName() == "pack")
            {
               _loc3_ = this.§9"4§.@url.toString();
               _loc3_ = §<!&§.§ "D§.§^q§(_loc3_);
               this.§]!5§ = new URLLoader();
               this.§]!5§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§]!5§.addEventListener(Event.COMPLETE,this.§6N§);
               this.§]!5§.addEventListener(IOErrorEvent.IO_ERROR,this.§&d§);
               this.§]!5§.addEventListener(ProgressEvent.PROGRESS,this.§8"'§);
               this.§`$7§ = this.§="V§ + _loc3_ + _loc1_;
               this.§]!5§.load(new URLRequest(this.§`$7§));
            }
            else if(this.§9"4§.localName() == "xml")
            {
               _loc4_ = this.§9"4§.@url.toString();
               _loc4_ = §<!&§.§ "D§.§^q§(_loc4_);
               this.§"B§ = this.§9"4§.@name;
               this.§]!5§ = new URLLoader();
               this.§]!5§.addEventListener(Event.COMPLETE,this.§?y§);
               this.§]!5§.addEventListener(IOErrorEvent.IO_ERROR,this.§&d§);
               this.§]!5§.addEventListener(ProgressEvent.PROGRESS,this.§8"'§);
               this.§`$7§ = this.§="V§ + _loc4_ + _loc1_;
               this.§]!5§.load(new URLRequest(this.§`$7§));
            }
            else
            {
               _loc5_ = this.§9"4§.@swf.toString();
               _loc5_ = §<!&§.§ "D§.§^q§(_loc5_);
               this.§+"§ = new Loader();
               this.§+"§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;$<§);
               this.§+"§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§&d§);
               this.§+"§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§8"'§);
               this.§`$7§ = this.§="V§ + _loc5_ + _loc1_;
               this.§+"§.load(new URLRequest(this.§`$7§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §&d§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§`$7§;
         this.§`#`§();
         if(this.§1"?§)
         {
            ++this.§"+§;
            this.§,d§();
            if(this.§^$#§ != null)
            {
               this.§^$#§(_loc2_);
            }
            return;
         }
         throw new Error("[LoadManager] IO Error while loading \'" + _loc2_ + "\'.\nError: " + param1.toString(),param1.errorID);
      }
      
      private function §?y§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§]!5§.data);
         this.§`!2§[this.§"B§] = _loc2_;
         if(this.§+!F§ != null)
         {
            this.§+!F§(this.§`$7§);
         }
         this.§`#`§();
         ++this.§"+§;
         this.§,d§();
      }
      
      public function §switch§(param1:String) : XML
      {
         return this.§`!2§[param1];
      }
      
      private function onLevelLoaded(param1:Event) : void
      {
         if(this.§;$ §)
         {
            this.§;$ §.§0#o§(this.§]!5§.data,this.§9"4§.@id);
         }
         if(this.§+!F§ != null)
         {
            this.§+!F§(this.§`$7§);
         }
         this.§`#`§();
         ++this.§"+§;
         this.§,d§();
      }
      
      private function §6N§(param1:Event) : void
      {
         this.§ "J§.push(this.§]!5§.data);
         if(this.§ ,§ != null)
         {
            this.§ ,§(this.§]!5§.data);
         }
         if(this.§8#>§)
         {
            this.§8#>§.§7@§(this.§]!5§.data,this.§5e§(this.§9"4§.@url),true,this.§9"4§);
         }
         if(this.§+!F§ != null)
         {
            this.§+!F§(this.§`$7§);
         }
         this.§`#`§();
         ++this.§"+§;
         this.§,d§();
      }
      
      private function §5e§(param1:String) : String
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
      
      private function §8"'§(param1:ProgressEvent) : void
      {
         this.§>"K§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §;$<§(param1:Event) : void
      {
         if(this.§+!F§ != null)
         {
            this.§+!F§(this.§`$7§);
         }
         this.§`#`§();
         ++this.§"+§;
         this.§,d§();
      }
      
      private function §`#`§() : void
      {
         if(this.§+"§)
         {
            this.§+"§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;$<§);
            this.§+"§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§&d§);
            this.§+"§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;$<§);
            this.§+"§ = null;
         }
         if(this.§]!5§)
         {
            this.§]!5§.removeEventListener(Event.COMPLETE,this.§6N§);
            this.§]!5§.removeEventListener(Event.COMPLETE,this.onLevelLoaded);
            this.§]!5§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&d§);
            this.§]!5§.removeEventListener(ProgressEvent.PROGRESS,this.§8"'§);
            this.§]!5§ = null;
         }
         this.§9"4§ = null;
      }
      
      private function §6!4§() : void
      {
         this.§>"K§ = 0;
         if(this.§+"n§ != null)
         {
            this.§+"n§.call();
            this.§+"n§ = null;
         }
      }
      
      public function §<!z§() : void
      {
         this.§>"K§ = 0;
         this.§["s§ = false;
         this.§]"&§ = 0;
         if(this.§@!I§)
         {
            this.§@!I§ = null;
         }
         this.§+"n§ = null;
         this.§`#`§();
         if(this.§8#>§)
         {
            this.§8#>§.§<!z§();
         }
      }
      
      public function §,#_§() : Number
      {
         if(!this.§ "x§())
         {
            §?!T§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§["s§ || !this.§@!I§ || !this.§ "x§())
         {
            §?!T§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§"+§ == this.§]"&§)
         {
            if(this.§8#>§ && this.§]"&§ > 0)
            {
               if(this.§8#>§.§^>§)
               {
                  return 1;
               }
               return (this.§"+§ - 0.1) / this.§]"&§;
            }
            return 1;
         }
         return this.§"+§ / this.§]"&§;
      }
   }
}
