package §9#o§
{
   import §+#B§.§4"[§;
   import §9#K§.§=#f§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §,#t§
   {
      
      private static var §#!5§:§,#t§;
       
      
      private var §7]§:Vector.<XML>;
      
      private var §;"N§:Boolean = false;
      
      private var §&"B§:int;
      
      private var §+!y§:int;
      
      private var §!!1§:Function;
      
      private var §2"&§:Function;
      
      private var §2!$§:Function;
      
      private var §?c§:Function;
      
      private var §&![§:Loader;
      
      private var §,">§:URLLoader;
      
      private var § $$§:XML;
      
      private var §;'§:Vector.<String>;
      
      private var §[#l§:String = "external_assets/LoadTest.swf";
      
      private var §`"!§:Boolean = false;
      
      private var §^"k§:Array;
      
      private var §8"l§:String;
      
      private var §^;§:String;
      
      private var §'"x§:§4"[§;
      
      private var §=b§:String = "";
      
      private var §#$+§:Number = 0;
      
      private var §=#1§:String = "";
      
      private var §`"z§:§6!u§;
      
      private var §?!0§:Boolean;
      
      private var §!#P§:§%"N§;
      
      public function §,#t§(param1:Boolean = false)
      {
         this.§^"k§ = [];
         this.§'"x§ = new §4"[§();
         super();
         this.§?!0§ = param1;
      }
      
      public static function get §?q§() : §,#t§
      {
         if(!§#!5§)
         {
            §#!5§ = new §,#t§();
         }
         return §#!5§;
      }
      
      public static function §&!J§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §7#Q§() : void
      {
         this.§^"k§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§6!u§, param5:Function = null, param6:§%"N§ = null) : void
      {
         this.§8"l§ = param2;
         this.§^;§ = param3;
         this.§`"!§ = true;
         this.§;"N§ = false;
         this.§`"z§ = param4;
         this.§!!1§ = param5;
         this.§!#P§ = param6;
      }
      
      private function §4!1§() : void
      {
         this.§`"!§ = true;
         this.§;"N§ = false;
      }
      
      public function §;!n§() : Boolean
      {
         return this.§`"!§;
      }
      
      public function §"a§() : Boolean
      {
         if(this.§;"N§ || !this.§;!n§())
         {
            return false;
         }
         this.§7]§ = new Vector.<XML>();
         this.§&"B§ = 0;
         return true;
      }
      
      public function §=!D§(param1:XML) : void
      {
         if(this.§;"N§ && this.§;!n§())
         {
            return;
         }
         this.§7]§.push(param1);
         ++this.§&"B§;
      }
      
      public function §!#c§(param1:Function = null, param2:Function = null, param3:Function = null) : void
      {
         if(this.§;"N§ && this.§;!n§())
         {
            return;
         }
         this.§2"&§ = param1;
         this.§2!$§ = param2;
         this.§?c§ = param3;
         this.§&"B§ = this.§7]§.length;
         this.§+!y§ = 0;
         this.§;"N§ = true;
         this.§-!Q§();
      }
      
      private function §7`§() : Boolean
      {
         if(this.§`"z§ && !this.§`"z§.§-!i§)
         {
            this.§`"z§.removeEventListener(Event.COMPLETE,this.§59§);
            this.§`"z§.addEventListener(Event.COMPLETE,this.§59§);
            return true;
         }
         return false;
      }
      
      private function §59§(param1:Event) : void
      {
         this.§`"z§.removeEventListener(Event.COMPLETE,this.§59§);
         this.§-!Q§();
      }
      
      private function §-!Q§() : void
      {
         if(!this.§7]§)
         {
            return;
         }
         if(this.§7]§.length > 0)
         {
            this.§4#S§();
         }
         else if(this.§0!O§() >= 1)
         {
            this.§#!9§();
         }
         else
         {
            this.§7`§();
         }
      }
      
      private function §4#S§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(this.§;"N§ && this.§;!n§())
         {
            if(this.§7`§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§^;§ != null && this.§^;§.length > 0)
            {
               _loc1_ = "?version=" + this.§^;§;
            }
            this.§#$+§ = 0;
            this.§ $$§ = this.§7]§.shift();
            if(this.§ $$§.localName() == "level")
            {
               _loc2_ = this.§ $$§.@url.toString();
               _loc2_ = §=!,§.§?q§.§6#^§(_loc2_);
               this.§,">§ = new URLLoader();
               this.§,">§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§,">§.addEventListener(Event.COMPLETE,this.onLevelLoaded);
               this.§,">§.addEventListener(IOErrorEvent.IO_ERROR,this.§^" §);
               this.§,">§.addEventListener(ProgressEvent.PROGRESS,this.§?!O§);
               this.§=#1§ = _loc2_;
               this.§,">§.load(new URLRequest(_loc2_));
            }
            else if(this.§ $$§.localName() == "pack")
            {
               _loc3_ = this.§ $$§.@url.toString();
               _loc3_ = §=!,§.§?q§.§6#^§(_loc3_);
               this.§,">§ = new URLLoader();
               this.§,">§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§,">§.addEventListener(Event.COMPLETE,this.§9S§);
               this.§,">§.addEventListener(IOErrorEvent.IO_ERROR,this.§^" §);
               this.§,">§.addEventListener(ProgressEvent.PROGRESS,this.§?!O§);
               this.§=#1§ = this.§8"l§ + _loc3_ + _loc1_;
               this.§,">§.load(new URLRequest(this.§=#1§));
            }
            else if(this.§ $$§.localName() == "xml")
            {
               _loc4_ = this.§ $$§.@url.toString();
               _loc4_ = §=!,§.§?q§.§6#^§(_loc4_);
               this.§=b§ = this.§ $$§.@name;
               this.§,">§ = new URLLoader();
               this.§,">§.addEventListener(Event.COMPLETE,this.§7!4§);
               this.§,">§.addEventListener(IOErrorEvent.IO_ERROR,this.§^" §);
               this.§,">§.addEventListener(ProgressEvent.PROGRESS,this.§?!O§);
               this.§=#1§ = this.§8"l§ + _loc4_ + _loc1_;
               this.§,">§.load(new URLRequest(this.§=#1§));
            }
            else
            {
               _loc5_ = this.§ $$§.@swf.toString();
               _loc5_ = §=!,§.§?q§.§6#^§(_loc5_);
               this.§&![§ = new Loader();
               this.§&![§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§<#s§);
               this.§&![§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§^" §);
               this.§&![§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§?!O§);
               this.§=#1§ = this.§8"l§ + _loc5_ + _loc1_;
               this.§&![§.load(new URLRequest(this.§=#1§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §^" §(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§=#1§;
         this.§4$E§();
         if(this.§?!0§)
         {
            ++this.§+!y§;
            this.§-!Q§();
            if(this.§2!$§ != null)
            {
               this.§2!$§(_loc2_);
            }
            return;
         }
         throw new Error("[LoadManager] IO Error while loading \'" + _loc2_ + "\'.\nError: " + param1.toString(),param1.errorID);
      }
      
      private function §7!4§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§,">§.data);
         this.§'"x§[this.§=b§] = _loc2_;
         if(this.§?c§ != null)
         {
            this.§?c§(this.§=#1§);
         }
         this.§4$E§();
         ++this.§+!y§;
         this.§-!Q§();
      }
      
      public function §-#&§(param1:String) : XML
      {
         return this.§'"x§[param1];
      }
      
      private function onLevelLoaded(param1:Event) : void
      {
         if(this.§!#P§)
         {
            this.§!#P§.§-"=§(this.§,">§.data,this.§ $$§.@id);
         }
         if(this.§?c§ != null)
         {
            this.§?c§(this.§=#1§);
         }
         this.§4$E§();
         ++this.§+!y§;
         this.§-!Q§();
      }
      
      private function §9S§(param1:Event) : void
      {
         this.§^"k§.push(this.§,">§.data);
         if(this.§!!1§ != null)
         {
            this.§!!1§(this.§,">§.data);
         }
         if(this.§`"z§)
         {
            this.§`"z§.§7"V§(this.§,">§.data,this.§^#t§(this.§ $$§.@url),true,this.§ $$§);
         }
         if(this.§?c§ != null)
         {
            this.§?c§(this.§=#1§);
         }
         this.§4$E§();
         ++this.§+!y§;
         this.§-!Q§();
      }
      
      private function §^#t§(param1:String) : String
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
      
      private function §?!O§(param1:ProgressEvent) : void
      {
         this.§#$+§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §<#s§(param1:Event) : void
      {
         if(this.§?c§ != null)
         {
            this.§?c§(this.§=#1§);
         }
         this.§4$E§();
         ++this.§+!y§;
         this.§-!Q§();
      }
      
      private function §4$E§() : void
      {
         if(this.§&![§)
         {
            this.§&![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§<#s§);
            this.§&![§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§^" §);
            this.§&![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§<#s§);
            this.§&![§ = null;
         }
         if(this.§,">§)
         {
            this.§,">§.removeEventListener(Event.COMPLETE,this.§9S§);
            this.§,">§.removeEventListener(Event.COMPLETE,this.onLevelLoaded);
            this.§,">§.removeEventListener(IOErrorEvent.IO_ERROR,this.§^" §);
            this.§,">§.removeEventListener(ProgressEvent.PROGRESS,this.§?!O§);
            this.§,">§ = null;
         }
         this.§ $$§ = null;
      }
      
      private function §#!9§() : void
      {
         this.§#$+§ = 0;
         if(this.§2"&§ != null)
         {
            this.§2"&§.call();
            this.§2"&§ = null;
         }
      }
      
      public function §1"b§() : void
      {
         this.§#$+§ = 0;
         this.§;"N§ = false;
         this.§&"B§ = 0;
         if(this.§7]§)
         {
            this.§7]§ = null;
         }
         this.§2"&§ = null;
         this.§4$E§();
         if(this.§`"z§)
         {
            this.§`"z§.§1"b§();
         }
      }
      
      public function §0!O§() : Number
      {
         if(!this.§;!n§())
         {
            §=#f§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§;"N§ || !this.§7]§ || !this.§;!n§())
         {
            §=#f§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§+!y§ == this.§&"B§)
         {
            if(this.§`"z§ && this.§&"B§ > 0)
            {
               if(this.§`"z§.§-!i§)
               {
                  return 1;
               }
               return (this.§+!y§ - 0.1) / this.§&"B§;
            }
            return 1;
         }
         return this.§+!y§ / this.§&"B§;
      }
   }
}
