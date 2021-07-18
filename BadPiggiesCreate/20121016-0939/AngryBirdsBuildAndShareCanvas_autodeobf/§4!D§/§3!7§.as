package §4!D§
{
   import §'@§.§]!g§;
   import §=!M§.§9!P§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §3!7§
   {
      
      private static var §1%§:§3!7§;
       
      
      private var §4!d§:Vector.<XML>;
      
      private var §'!p§:Boolean = false;
      
      private var §<"2§:int;
      
      private var §-!s§:int;
      
      private var §#i§:Function;
      
      private var §@!!§:Function;
      
      private var §-<§:Loader;
      
      private var §@!#§:URLLoader;
      
      private var §[!v§:XML;
      
      private var §%!M§:String = "";
      
      private var §5G§:int = 0;
      
      private var §[!B§:Vector.<String>;
      
      private var §6!i§:String = "external_assets/LoadTest.swf";
      
      private var §else§:Boolean = false;
      
      private var §-!p§:Array;
      
      private var §%!^§:String;
      
      private var §,j§:String;
      
      private var §-!&§:Number = 0;
      
      private var §4"=§:String = "";
      
      private var §9"!§:§9![§;
      
      public function §3!7§()
      {
         this.§-!p§ = [];
         super();
      }
      
      public static function get §2=§() : §3!7§
      {
         if(!§1%§)
         {
            §1%§ = new §3!7§();
         }
         return §1%§;
      }
      
      public static function §=!V§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §1b§() : void
      {
         this.§-!p§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§9![§, param5:Function = null) : void
      {
         this.§%!^§ = param2;
         this.§,j§ = param3;
         this.§else§ = true;
         this.§'!p§ = false;
         this.§9"!§ = param4;
         this.§#i§ = param5;
      }
      
      private function § do§() : void
      {
         this.§else§ = true;
         this.§'!p§ = false;
      }
      
      public function §%",§() : Boolean
      {
         return this.§else§;
      }
      
      public function §6"5§() : Boolean
      {
         if(this.§'!p§ || !this.§%",§())
         {
            return false;
         }
         this.§4!d§ = new Vector.<XML>();
         this.§<"2§ = 0;
         return true;
      }
      
      public function §^A§(param1:XML) : void
      {
         if(this.§'!p§ && this.§%",§())
         {
            return;
         }
         this.§4!d§.push(param1);
         ++this.§<"2§;
      }
      
      public function §,!'§(param1:Function = null) : void
      {
         if(this.§'!p§ && this.§%",§())
         {
            return;
         }
         this.§@!!§ = param1;
         this.§<"2§ = this.§4!d§.length;
         this.§'!p§ = true;
         this.§^!d§();
      }
      
      private function §6"1§() : Boolean
      {
         if(this.§9"!§ && !this.§9"!§.§2"$§)
         {
            this.§9"!§.removeEventListener(Event.COMPLETE,this.§#!w§);
            this.§9"!§.addEventListener(Event.COMPLETE,this.§#!w§);
            return true;
         }
         return false;
      }
      
      private function §#!w§(param1:Event) : void
      {
         this.§9"!§.removeEventListener(Event.COMPLETE,this.§#!w§);
         this.§^!d§();
      }
      
      private function §^!d§() : void
      {
         if(this.§4!d§.length > 0)
         {
            this.§%"=§();
         }
         else if(this.§-!E§() >= 1)
         {
            this.§#!Q§();
         }
      }
      
      private function §%"=§() : void
      {
         var _loc1_:String = null;
         if(this.§'!p§ && this.§%",§())
         {
            if(this.§6"1§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§,j§ != null && this.§,j§.length > 0)
            {
               _loc1_ = "?version=" + this.§,j§;
            }
            this.§-!&§ = 0;
            this.§[!v§ = this.§4!d§.shift();
            if(this.§[!v§.localName() == "pack")
            {
               this.§@!#§ = new URLLoader();
               this.§@!#§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§@!#§.addEventListener(Event.COMPLETE,this.§5!R§);
               this.§@!#§.addEventListener(IOErrorEvent.IO_ERROR,this.§%3§);
               this.§@!#§.addEventListener(ProgressEvent.PROGRESS,this.§=!o§);
               this.§4"=§ = this.§%!^§ + this.§[!v§.@url.toString() + _loc1_;
               this.§@!#§.load(new URLRequest(this.§4"=§));
            }
            else
            {
               this.§-<§ = new Loader();
               this.§-<§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§!!h§);
               this.§-<§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%3§);
               this.§-<§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§=!o§);
               this.§4"=§ = this.§%!^§ + this.§%!M§ + this.§[!v§.@swf.toString() + _loc1_;
               this.§-<§.load(new URLRequest(this.§4"=§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §%3§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§4"=§;
         this.§=k§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§4"=§,§]!g§.§'!C§);
      }
      
      private function §5!R§(param1:Event) : void
      {
         this.§-!p§.push(this.§@!#§.data);
         if(this.§#i§ != null)
         {
            this.§#i§(this.§@!#§.data);
         }
         if(this.§9"!§)
         {
            this.§9"!§.§^a§(this.§@!#§.data);
         }
         this.§=k§();
         ++this.§-!s§;
         this.§^!d§();
      }
      
      private function §=!o§(param1:ProgressEvent) : void
      {
         this.§-!&§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §!!h§(param1:Event) : void
      {
         this.§=k§();
         ++this.§-!s§;
         this.§^!d§();
      }
      
      private function §=k§() : void
      {
         if(this.§-<§)
         {
            this.§-<§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!!h§);
            this.§-<§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%3§);
            this.§-<§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!!h§);
            this.§-<§ = null;
         }
         if(this.§@!#§)
         {
            this.§@!#§.removeEventListener(Event.COMPLETE,this.§5!R§);
            this.§@!#§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%3§);
            this.§@!#§.removeEventListener(ProgressEvent.PROGRESS,this.§=!o§);
            this.§@!#§ = null;
         }
         this.§[!v§ = null;
      }
      
      private function §#!Q§() : void
      {
         this.§-!&§ = 0;
         if(this.§@!!§ != null)
         {
            this.§@!!§.call();
            this.§@!!§ = null;
         }
      }
      
      public function §'e§() : void
      {
         this.§-!&§ = 0;
         this.§'!p§ = false;
         this.§<"2§ = 0;
         if(this.§4!d§)
         {
            this.§4!d§ = null;
         }
         this.§@!!§ = null;
         this.§=k§();
      }
      
      public function §-!E§() : Number
      {
         if(!this.§%",§())
         {
            §9!P§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§'!p§ || !this.§4!d§ || !this.§%",§())
         {
            §9!P§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§-!s§ == this.§<"2§)
         {
            if(this.§9"!§ && this.§<"2§ > 0)
            {
               if(this.§9"!§.§2"$§)
               {
                  return 1;
               }
               return (this.§-!s§ + this.§-!&§ - 0.5) / this.§<"2§;
            }
            return 1;
         }
         return this.§-!s§ / this.§<"2§;
      }
   }
}
