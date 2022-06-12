package §-u§
{
   import §&!_§.§[!j§;
   import §1#v§.§;!Y§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §&#+§
   {
      
      private static var §1$8§:§&#+§;
       
      
      private var §""M§:Vector.<XML>;
      
      private var §7#e§:Boolean = false;
      
      private var §[$#§:int;
      
      private var §'!4§:int;
      
      private var §[!%§:Function;
      
      private var §"5§:Function;
      
      private var §]! §:Function;
      
      private var §"4§:Function;
      
      private var §2!N§:Loader;
      
      private var §9#I§:URLLoader;
      
      private var §=#t§:XML;
      
      private var §!#b§:Vector.<String>;
      
      private var §5!w§:String = "external_assets/LoadTest.swf";
      
      private var §?!4§:Boolean = false;
      
      private var §^^§:Array;
      
      private var §6"U§:String;
      
      private var §1#F§:String;
      
      private var §]#<§:§[!j§;
      
      private var §'"k§:String = "";
      
      private var §'#§:Number = 0;
      
      private var § !&§:String = "";
      
      private var §9!o§:§1#w§;
      
      private var §=B§:Boolean;
      
      private var §`"§:§+'§;
      
      public function §&#+§(param1:Boolean = false)
      {
         this.§^^§ = [];
         this.§]#<§ = new §[!j§();
         super();
         this.§=B§ = param1;
      }
      
      public static function get §`"H§() : §&#+§
      {
         if(!§1$8§)
         {
            §1$8§ = new §&#+§();
         }
         return §1$8§;
      }
      
      public static function §,$>§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §?r§() : void
      {
         this.§^^§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§1#w§, param5:Function = null, param6:§+'§ = null) : void
      {
         this.§6"U§ = param2;
         this.§1#F§ = param3;
         this.§?!4§ = true;
         this.§7#e§ = false;
         this.§9!o§ = param4;
         this.§[!%§ = param5;
         this.§`"§ = param6;
      }
      
      private function §["5§() : void
      {
         this.§?!4§ = true;
         this.§7#e§ = false;
      }
      
      public function §0#^§() : Boolean
      {
         return this.§?!4§;
      }
      
      public function §[$6§() : Boolean
      {
         if(this.§7#e§ || !this.§0#^§())
         {
            return false;
         }
         this.§""M§ = new Vector.<XML>();
         this.§[$#§ = 0;
         return true;
      }
      
      public function §?"'§(param1:XML) : void
      {
         if(this.§7#e§ && this.§0#^§())
         {
            return;
         }
         this.§""M§.push(param1);
         ++this.§[$#§;
      }
      
      public function § #!§(param1:Function = null, param2:Function = null, param3:Function = null) : void
      {
         if(this.§7#e§ && this.§0#^§())
         {
            return;
         }
         this.§"5§ = param1;
         this.§]! § = param2;
         this.§"4§ = param3;
         this.§[$#§ = this.§""M§.length;
         this.§'!4§ = 0;
         this.§7#e§ = true;
         this.§""0§();
      }
      
      private function §+#2§() : Boolean
      {
         if(this.§9!o§ && !this.§9!o§.§8"§)
         {
            this.§9!o§.removeEventListener(Event.COMPLETE,this.§[Z§);
            this.§9!o§.addEventListener(Event.COMPLETE,this.§[Z§);
            return true;
         }
         return false;
      }
      
      private function §[Z§(param1:Event) : void
      {
         this.§9!o§.removeEventListener(Event.COMPLETE,this.§[Z§);
         this.§""0§();
      }
      
      private function §""0§() : void
      {
         if(!this.§""M§)
         {
            return;
         }
         if(this.§""M§.length > 0)
         {
            this.§8`§();
         }
         else if(this.§]"c§() >= 1)
         {
            this.§7#2§();
         }
         else
         {
            this.§+#2§();
         }
      }
      
      private function §8`§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(this.§7#e§ && this.§0#^§())
         {
            if(this.§+#2§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§1#F§ != null && this.§1#F§.length > 0)
            {
               _loc1_ = "?version=" + this.§1#F§;
            }
            this.§'#§ = 0;
            this.§=#t§ = this.§""M§.shift();
            if(this.§=#t§.localName() == "level")
            {
               _loc2_ = this.§=#t§.@url.toString();
               _loc2_ = §"I§.§`"H§.§2$3§(_loc2_);
               this.§9#I§ = new URLLoader();
               this.§9#I§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§9#I§.addEventListener(Event.COMPLETE,this.onLevelLoaded);
               this.§9#I§.addEventListener(IOErrorEvent.IO_ERROR,this.§5">§);
               this.§9#I§.addEventListener(ProgressEvent.PROGRESS,this.§6"I§);
               this.§ !&§ = _loc2_;
               this.§9#I§.load(new URLRequest(_loc2_));
            }
            else if(this.§=#t§.localName() == "pack")
            {
               _loc3_ = this.§=#t§.@url.toString();
               _loc3_ = §"I§.§`"H§.§2$3§(_loc3_);
               this.§9#I§ = new URLLoader();
               this.§9#I§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§9#I§.addEventListener(Event.COMPLETE,this.§9#y§);
               this.§9#I§.addEventListener(IOErrorEvent.IO_ERROR,this.§5">§);
               this.§9#I§.addEventListener(ProgressEvent.PROGRESS,this.§6"I§);
               this.§ !&§ = this.§6"U§ + _loc3_ + _loc1_;
               this.§9#I§.load(new URLRequest(this.§ !&§));
            }
            else if(this.§=#t§.localName() == "xml")
            {
               _loc4_ = this.§=#t§.@url.toString();
               _loc4_ = §"I§.§`"H§.§2$3§(_loc4_);
               this.§'"k§ = this.§=#t§.@name;
               this.§9#I§ = new URLLoader();
               this.§9#I§.addEventListener(Event.COMPLETE,this.§!"C§);
               this.§9#I§.addEventListener(IOErrorEvent.IO_ERROR,this.§5">§);
               this.§9#I§.addEventListener(ProgressEvent.PROGRESS,this.§6"I§);
               this.§ !&§ = this.§6"U§ + _loc4_ + _loc1_;
               this.§9#I§.load(new URLRequest(this.§ !&§));
            }
            else
            {
               _loc5_ = this.§=#t§.@swf.toString();
               _loc5_ = §"I§.§`"H§.§2$3§(_loc5_);
               this.§2!N§ = new Loader();
               this.§2!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3!o§);
               this.§2!N§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5">§);
               this.§2!N§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§6"I§);
               this.§ !&§ = this.§6"U§ + _loc5_ + _loc1_;
               this.§2!N§.load(new URLRequest(this.§ !&§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §5">§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§ !&§;
         this.§&#>§();
         if(this.§=B§)
         {
            ++this.§'!4§;
            this.§""0§();
            if(this.§]! § != null)
            {
               this.§]! §(_loc2_);
            }
            return;
         }
         throw new Error("[LoadManager] IO Error while loading \'" + _loc2_ + "\'.\nError: " + param1.toString(),param1.errorID);
      }
      
      private function §!"C§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§9#I§.data);
         this.§]#<§[this.§'"k§] = _loc2_;
         if(this.§"4§ != null)
         {
            this.§"4§(this.§ !&§);
         }
         this.§&#>§();
         ++this.§'!4§;
         this.§""0§();
      }
      
      public function §7S§(param1:String) : XML
      {
         return this.§]#<§[param1];
      }
      
      private function onLevelLoaded(param1:Event) : void
      {
         if(this.§`"§)
         {
            this.§`"§.§&#B§(this.§9#I§.data,this.§=#t§.@id);
         }
         if(this.§"4§ != null)
         {
            this.§"4§(this.§ !&§);
         }
         this.§&#>§();
         ++this.§'!4§;
         this.§""0§();
      }
      
      private function §9#y§(param1:Event) : void
      {
         this.§^^§.push(this.§9#I§.data);
         if(this.§[!%§ != null)
         {
            this.§[!%§(this.§9#I§.data);
         }
         if(this.§9!o§)
         {
            this.§9!o§.§6"m§(this.§9#I§.data,this.§#!E§(this.§=#t§.@url),true,this.§=#t§);
         }
         if(this.§"4§ != null)
         {
            this.§"4§(this.§ !&§);
         }
         this.§&#>§();
         ++this.§'!4§;
         this.§""0§();
      }
      
      private function §#!E§(param1:String) : String
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
      
      private function §6"I§(param1:ProgressEvent) : void
      {
         this.§'#§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §3!o§(param1:Event) : void
      {
         if(this.§"4§ != null)
         {
            this.§"4§(this.§ !&§);
         }
         this.§&#>§();
         ++this.§'!4§;
         this.§""0§();
      }
      
      private function §&#>§() : void
      {
         if(this.§2!N§)
         {
            this.§2!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3!o§);
            this.§2!N§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5">§);
            this.§2!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3!o§);
            this.§2!N§ = null;
         }
         if(this.§9#I§)
         {
            this.§9#I§.removeEventListener(Event.COMPLETE,this.§9#y§);
            this.§9#I§.removeEventListener(Event.COMPLETE,this.onLevelLoaded);
            this.§9#I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5">§);
            this.§9#I§.removeEventListener(ProgressEvent.PROGRESS,this.§6"I§);
            this.§9#I§ = null;
         }
         this.§=#t§ = null;
      }
      
      private function §7#2§() : void
      {
         this.§'#§ = 0;
         if(this.§"5§ != null)
         {
            this.§"5§.call();
            this.§"5§ = null;
         }
      }
      
      public function §5!y§() : void
      {
         this.§'#§ = 0;
         this.§7#e§ = false;
         this.§[$#§ = 0;
         if(this.§""M§)
         {
            this.§""M§ = null;
         }
         this.§"5§ = null;
         this.§&#>§();
         if(this.§9!o§)
         {
            this.§9!o§.§5!y§();
         }
      }
      
      public function §]"c§() : Number
      {
         if(!this.§0#^§())
         {
            §;!Y§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§7#e§ || !this.§""M§ || !this.§0#^§())
         {
            §;!Y§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§'!4§ == this.§[$#§)
         {
            if(this.§9!o§ && this.§[$#§ > 0)
            {
               if(this.§9!o§.§8"§)
               {
                  return 1;
               }
               return (this.§'!4§ - 0.1) / this.§[$#§;
            }
            return 1;
         }
         return this.§'!4§ / this.§[$#§;
      }
   }
}
