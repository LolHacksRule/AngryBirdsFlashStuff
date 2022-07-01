package §=M§
{
   import § !Q§.§"D§;
   import §!!&§.§'$§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §&!1§
   {
      
      private static var §#B§:§&!1§;
       
      
      private var §>X§:Vector.<XML>;
      
      private var §]y§:Boolean = false;
      
      private var §9!+§:int;
      
      private var §+!_§:int;
      
      private var §5!@§:Function;
      
      private var §,"&§:Function;
      
      private var §3!N§:Loader;
      
      private var § Q§:URLLoader;
      
      private var §=!o§:XML;
      
      private var §3"2§:String = "";
      
      private var §1!v§:int = 0;
      
      private var §!!I§:Vector.<String>;
      
      private var §?6§:String = "external_assets/LoadTest.swf";
      
      private var §;<§:Boolean = false;
      
      private var §in §:Array;
      
      private var §&!n§:String;
      
      private var §!!H§:String;
      
      private var §[k§:Number = 0;
      
      private var §4p§:String = "";
      
      private var §#!-§:§"!8§;
      
      public function §&!1§()
      {
         this.§in § = [];
         super();
      }
      
      public static function get §>!P§() : §&!1§
      {
         if(!§#B§)
         {
            §#B§ = new §&!1§();
         }
         return §#B§;
      }
      
      public static function §"!7§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §with§() : void
      {
         this.§in § = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§"!8§, param5:Function = null) : void
      {
         this.§&!n§ = param2;
         this.§!!H§ = param3;
         this.§;<§ = true;
         this.§]y§ = false;
         this.§#!-§ = param4;
         this.§5!@§ = param5;
      }
      
      private function §;!p§() : void
      {
         this.§;<§ = true;
         this.§]y§ = false;
      }
      
      public function §1G§() : Boolean
      {
         return this.§;<§;
      }
      
      public function §=a§() : Boolean
      {
         if(this.§]y§ || !this.§1G§())
         {
            return false;
         }
         this.§>X§ = new Vector.<XML>();
         this.§9!+§ = 0;
         return true;
      }
      
      public function §<!'§(param1:XML) : void
      {
         if(this.§]y§ && this.§1G§())
         {
            return;
         }
         this.§>X§.push(param1);
         ++this.§9!+§;
      }
      
      public function § !4§(param1:Function = null) : void
      {
         if(this.§]y§ && this.§1G§())
         {
            return;
         }
         this.§,"&§ = param1;
         this.§9!+§ = this.§>X§.length;
         this.§+!_§ = 0;
         this.§]y§ = true;
         this.§^H§();
      }
      
      private function §;!J§() : Boolean
      {
         if(this.§#!-§ && !this.§#!-§.§&Q§)
         {
            this.§#!-§.removeEventListener(Event.COMPLETE,this.§%!Q§);
            this.§#!-§.addEventListener(Event.COMPLETE,this.§%!Q§);
            return true;
         }
         return false;
      }
      
      private function §%!Q§(param1:Event) : void
      {
         this.§#!-§.removeEventListener(Event.COMPLETE,this.§%!Q§);
         this.§^H§();
      }
      
      private function §^H§() : void
      {
         if(!this.§>X§)
         {
            return;
         }
         if(this.§>X§.length > 0)
         {
            this.§]^§();
         }
         else if(this.§5!7§() >= 1)
         {
            this.§4c§();
         }
         else
         {
            this.§;!J§();
         }
      }
      
      private function §]^§() : void
      {
         var _loc1_:String = null;
         if(this.§]y§ && this.§1G§())
         {
            if(this.§;!J§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§!!H§ != null && this.§!!H§.length > 0)
            {
               _loc1_ = "?version=" + this.§!!H§;
            }
            this.§[k§ = 0;
            this.§=!o§ = this.§>X§.shift();
            if(this.§=!o§.localName() == "pack")
            {
               this.§ Q§ = new URLLoader();
               this.§ Q§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§ Q§.addEventListener(Event.COMPLETE,this.§&"+§);
               this.§ Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§2!C§);
               this.§ Q§.addEventListener(ProgressEvent.PROGRESS,this.§;c§);
               this.§4p§ = this.§&!n§ + this.§=!o§.@url.toString() + _loc1_;
               this.§ Q§.load(new URLRequest(this.§4p§));
            }
            else
            {
               this.§3!N§ = new Loader();
               this.§3!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5!8§);
               this.§3!N§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§2!C§);
               this.§3!N§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§;c§);
               this.§4p§ = this.§&!n§ + this.§3"2§ + this.§=!o§.@swf.toString() + _loc1_;
               this.§3!N§.load(new URLRequest(this.§4p§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §2!C§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§4p§;
         this.§!w§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§4p§,§'$§.§0!c§);
      }
      
      private function §&"+§(param1:Event) : void
      {
         this.§in §.push(this.§ Q§.data);
         if(this.§5!@§ != null)
         {
            this.§5!@§(this.§ Q§.data);
         }
         if(this.§#!-§)
         {
            this.§#!-§.§-!=§(this.§ Q§.data,this.§%!6§(this.§=!o§.@url));
         }
         this.§!w§();
         ++this.§+!_§;
         this.§^H§();
      }
      
      private function §%!6§(param1:String) : String
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
      
      private function §;c§(param1:ProgressEvent) : void
      {
         this.§[k§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §5!8§(param1:Event) : void
      {
         this.§!w§();
         ++this.§+!_§;
         this.§^H§();
      }
      
      private function §!w§() : void
      {
         if(this.§3!N§)
         {
            this.§3!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5!8§);
            this.§3!N§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!C§);
            this.§3!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5!8§);
            this.§3!N§ = null;
         }
         if(this.§ Q§)
         {
            this.§ Q§.removeEventListener(Event.COMPLETE,this.§&"+§);
            this.§ Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!C§);
            this.§ Q§.removeEventListener(ProgressEvent.PROGRESS,this.§;c§);
            this.§ Q§ = null;
         }
         this.§=!o§ = null;
      }
      
      private function §4c§() : void
      {
         this.§[k§ = 0;
         if(this.§,"&§ != null)
         {
            this.§,"&§.call();
            this.§,"&§ = null;
         }
      }
      
      public function §<!h§() : void
      {
         this.§[k§ = 0;
         this.§]y§ = false;
         this.§9!+§ = 0;
         if(this.§>X§)
         {
            this.§>X§ = null;
         }
         this.§,"&§ = null;
         this.§!w§();
         if(this.§#!-§)
         {
            this.§#!-§.§<!h§();
         }
      }
      
      public function §5!7§() : Number
      {
         if(!this.§1G§())
         {
            §"D§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§]y§ || !this.§>X§ || !this.§1G§())
         {
            §"D§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§+!_§ == this.§9!+§)
         {
            if(this.§#!-§ && this.§9!+§ > 0)
            {
               if(this.§#!-§.§&Q§)
               {
                  return 1;
               }
               return (this.§+!_§ - 0.1) / this.§9!+§;
            }
            return 1;
         }
         return this.§+!_§ / this.§9!+§;
      }
   }
}
