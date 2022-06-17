package §%#^§
{
   import §#"3§.§4!h§;
   import §2E§.§&#a§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §;!g§
   {
      
      private static var §!#m§:§;!g§;
       
      
      private var §?#z§:Vector.<XML>;
      
      private var §2m§:Boolean = false;
      
      private var §"!k§:int;
      
      private var §&!]§:int;
      
      private var §`"4§:Function;
      
      private var §&$9§:Function;
      
      private var § $<§:Function;
      
      private var §4u§:Function;
      
      private var §<#G§:Loader;
      
      private var §2"'§:URLLoader;
      
      private var §##k§:XML;
      
      private var §4a§:Vector.<String>;
      
      private var §]q§:String = "external_assets/LoadTest.swf";
      
      private var §[#F§:Boolean = false;
      
      private var §%L§:Array;
      
      private var §,$B§:String;
      
      private var §"!2§:String;
      
      private var §4!Q§:§&#a§;
      
      private var §98§:String = "";
      
      private var §4$0§:Number = 0;
      
      private var § "q§:String = "";
      
      private var §-!_§:§<#o§;
      
      private var §>!O§:Boolean;
      
      private var §!$C§:§%![§;
      
      public function §;!g§(param1:Boolean = false)
      {
         this.§%L§ = [];
         this.§4!Q§ = new §&#a§();
         super();
         this.§>!O§ = param1;
      }
      
      public static function get §3"1§() : §;!g§
      {
         if(!§!#m§)
         {
            §!#m§ = new §;!g§();
         }
         return §!#m§;
      }
      
      public static function §<g§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §+#c§() : void
      {
         this.§%L§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§<#o§, param5:Function = null, param6:§%![§ = null) : void
      {
         this.§,$B§ = param2;
         this.§"!2§ = param3;
         this.§[#F§ = true;
         this.§2m§ = false;
         this.§-!_§ = param4;
         this.§`"4§ = param5;
         this.§!$C§ = param6;
      }
      
      private function §5!V§() : void
      {
         this.§[#F§ = true;
         this.§2m§ = false;
      }
      
      public function §,#Z§() : Boolean
      {
         return this.§[#F§;
      }
      
      public function §'!X§() : Boolean
      {
         if(this.§2m§ || !this.§,#Z§())
         {
            return false;
         }
         this.§?#z§ = new Vector.<XML>();
         this.§"!k§ = 0;
         return true;
      }
      
      public function §?#Q§(param1:XML) : void
      {
         if(this.§2m§ && this.§,#Z§())
         {
            return;
         }
         this.§?#z§.push(param1);
         ++this.§"!k§;
      }
      
      public function §`#y§(param1:Function = null, param2:Function = null, param3:Function = null) : void
      {
         if(this.§2m§ && this.§,#Z§())
         {
            return;
         }
         this.§&$9§ = param1;
         this.§ $<§ = param2;
         this.§4u§ = param3;
         this.§"!k§ = this.§?#z§.length;
         this.§&!]§ = 0;
         this.§2m§ = true;
         this.§-"P§();
      }
      
      private function §;!s§() : Boolean
      {
         if(this.§-!_§ && !this.§-!_§.§4Y§)
         {
            this.§-!_§.removeEventListener(Event.COMPLETE,this.§=B§);
            this.§-!_§.addEventListener(Event.COMPLETE,this.§=B§);
            return true;
         }
         return false;
      }
      
      private function §=B§(param1:Event) : void
      {
         this.§-!_§.removeEventListener(Event.COMPLETE,this.§=B§);
         this.§-"P§();
      }
      
      private function §-"P§() : void
      {
         if(!this.§?#z§)
         {
            return;
         }
         if(this.§?#z§.length > 0)
         {
            this.§;$%§();
         }
         else if(this.§3h§() >= 1)
         {
            this.§<! §();
         }
         else
         {
            this.§;!s§();
         }
      }
      
      private function §;$%§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(this.§2m§ && this.§,#Z§())
         {
            if(this.§;!s§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§"!2§ != null && this.§"!2§.length > 0)
            {
               _loc1_ = "?version=" + this.§"!2§;
            }
            this.§4$0§ = 0;
            this.§##k§ = this.§?#z§.shift();
            if(this.§##k§.localName() == "level")
            {
               _loc2_ = this.§##k§.@url.toString();
               _loc2_ = §2$-§.§3"1§.§4!a§(_loc2_);
               this.§2"'§ = new URLLoader();
               this.§2"'§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§2"'§.addEventListener(Event.COMPLETE,this.onLevelLoaded);
               this.§2"'§.addEventListener(IOErrorEvent.IO_ERROR,this.§#$!§);
               this.§2"'§.addEventListener(ProgressEvent.PROGRESS,this.§+#x§);
               this.§ "q§ = _loc2_;
               this.§2"'§.load(new URLRequest(_loc2_));
            }
            else if(this.§##k§.localName() == "pack")
            {
               _loc3_ = this.§##k§.@url.toString();
               _loc3_ = §2$-§.§3"1§.§4!a§(_loc3_);
               this.§2"'§ = new URLLoader();
               this.§2"'§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§2"'§.addEventListener(Event.COMPLETE,this.§]@§);
               this.§2"'§.addEventListener(IOErrorEvent.IO_ERROR,this.§#$!§);
               this.§2"'§.addEventListener(ProgressEvent.PROGRESS,this.§+#x§);
               this.§ "q§ = this.§,$B§ + _loc3_ + _loc1_;
               this.§2"'§.load(new URLRequest(this.§ "q§));
            }
            else if(this.§##k§.localName() == "xml")
            {
               _loc4_ = this.§##k§.@url.toString();
               _loc4_ = §2$-§.§3"1§.§4!a§(_loc4_);
               this.§98§ = this.§##k§.@name;
               this.§2"'§ = new URLLoader();
               this.§2"'§.addEventListener(Event.COMPLETE,this.§ #]§);
               this.§2"'§.addEventListener(IOErrorEvent.IO_ERROR,this.§#$!§);
               this.§2"'§.addEventListener(ProgressEvent.PROGRESS,this.§+#x§);
               this.§ "q§ = this.§,$B§ + _loc4_ + _loc1_;
               this.§2"'§.load(new URLRequest(this.§ "q§));
            }
            else
            {
               _loc5_ = this.§##k§.@swf.toString();
               _loc5_ = §2$-§.§3"1§.§4!a§(_loc5_);
               this.§<#G§ = new Loader();
               this.§<#G§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§ $;§);
               this.§<#G§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§#$!§);
               this.§<#G§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§+#x§);
               this.§ "q§ = this.§,$B§ + _loc5_ + _loc1_;
               this.§<#G§.load(new URLRequest(this.§ "q§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §#$!§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§ "q§;
         this.§9!H§();
         if(this.§>!O§)
         {
            ++this.§&!]§;
            this.§-"P§();
            if(this.§ $<§ != null)
            {
               this.§ $<§(_loc2_);
            }
            return;
         }
         throw new Error("[LoadManager] IO Error while loading \'" + _loc2_ + "\'.\nError: " + param1.toString(),param1.errorID);
      }
      
      private function § #]§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§2"'§.data);
         this.§4!Q§[this.§98§] = _loc2_;
         if(this.§4u§ != null)
         {
            this.§4u§(this.§ "q§);
         }
         this.§9!H§();
         ++this.§&!]§;
         this.§-"P§();
      }
      
      public function §5s§(param1:String) : XML
      {
         return this.§4!Q§[param1];
      }
      
      private function onLevelLoaded(param1:Event) : void
      {
         if(this.§!$C§)
         {
            this.§!$C§.§]#U§(this.§2"'§.data,this.§##k§.@id);
         }
         if(this.§4u§ != null)
         {
            this.§4u§(this.§ "q§);
         }
         this.§9!H§();
         ++this.§&!]§;
         this.§-"P§();
      }
      
      private function §]@§(param1:Event) : void
      {
         this.§%L§.push(this.§2"'§.data);
         if(this.§`"4§ != null)
         {
            this.§`"4§(this.§2"'§.data);
         }
         if(this.§-!_§)
         {
            this.§-!_§.§>#B§(this.§2"'§.data,this.§`!e§(this.§##k§.@url),true,this.§##k§);
         }
         if(this.§4u§ != null)
         {
            this.§4u§(this.§ "q§);
         }
         this.§9!H§();
         ++this.§&!]§;
         this.§-"P§();
      }
      
      private function §`!e§(param1:String) : String
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
      
      private function §+#x§(param1:ProgressEvent) : void
      {
         this.§4$0§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function § $;§(param1:Event) : void
      {
         if(this.§4u§ != null)
         {
            this.§4u§(this.§ "q§);
         }
         this.§9!H§();
         ++this.§&!]§;
         this.§-"P§();
      }
      
      private function §9!H§() : void
      {
         if(this.§<#G§)
         {
            this.§<#G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ $;§);
            this.§<#G§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§#$!§);
            this.§<#G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§ $;§);
            this.§<#G§ = null;
         }
         if(this.§2"'§)
         {
            this.§2"'§.removeEventListener(Event.COMPLETE,this.§]@§);
            this.§2"'§.removeEventListener(Event.COMPLETE,this.onLevelLoaded);
            this.§2"'§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#$!§);
            this.§2"'§.removeEventListener(ProgressEvent.PROGRESS,this.§+#x§);
            this.§2"'§ = null;
         }
         this.§##k§ = null;
      }
      
      private function §<! §() : void
      {
         this.§4$0§ = 0;
         if(this.§&$9§ != null)
         {
            this.§&$9§.call();
            this.§&$9§ = null;
         }
      }
      
      public function §4"y§() : void
      {
         this.§4$0§ = 0;
         this.§2m§ = false;
         this.§"!k§ = 0;
         if(this.§?#z§)
         {
            this.§?#z§ = null;
         }
         this.§&$9§ = null;
         this.§9!H§();
         if(this.§-!_§)
         {
            this.§-!_§.§4"y§();
         }
      }
      
      public function §3h§() : Number
      {
         if(!this.§,#Z§())
         {
            §4!h§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§2m§ || !this.§?#z§ || !this.§,#Z§())
         {
            §4!h§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§&!]§ == this.§"!k§)
         {
            if(this.§-!_§ && this.§"!k§ > 0)
            {
               if(this.§-!_§.§4Y§)
               {
                  return 1;
               }
               return (this.§&!]§ - 0.1) / this.§"!k§;
            }
            return 1;
         }
         return this.§&!]§ / this.§"!k§;
      }
   }
}
