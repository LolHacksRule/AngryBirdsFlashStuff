package §%!c§
{
   import § !3§.§!X§;
   import §9!?§.§=!O§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §3h§
   {
      
      private static var §9!'§:§3h§;
       
      
      private var §];§:Vector.<XML>;
      
      private var §^!B§:Boolean = false;
      
      private var §8u§:int;
      
      private var §"a§:int;
      
      private var §,Q§:Function;
      
      private var §=S§:Function;
      
      private var §]D§:Loader;
      
      private var §4!$§:URLLoader;
      
      private var §3!D§:XML;
      
      private var §-!e§:String = "";
      
      private var §=!^§:int = 0;
      
      private var §?R§:Vector.<String>;
      
      private var §[^§:String = "external_assets/LoadTest.swf";
      
      private var §<!`§:Boolean = false;
      
      private var §[!K§:Array;
      
      private var §>!K§:String;
      
      private var §40§:String;
      
      private var §77§:Number = 0;
      
      private var §-!<§:String = "";
      
      private var §`r§:§7!R§;
      
      public function §3h§()
      {
         this.§[!K§ = [];
         super();
      }
      
      public static function get §=,§() : §3h§
      {
         if(!§9!'§)
         {
            §9!'§ = new §3h§();
         }
         return §9!'§;
      }
      
      public static function §4!K§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §#!e§() : void
      {
         this.§[!K§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§7!R§, param5:Function = null) : void
      {
         this.§>!K§ = param2;
         this.§40§ = param3;
         this.§<!`§ = true;
         this.§^!B§ = false;
         this.§`r§ = param4;
         this.§,Q§ = param5;
      }
      
      private function §@5§() : void
      {
         this.§<!`§ = true;
         this.§^!B§ = false;
      }
      
      public function §,0§() : Boolean
      {
         return this.§<!`§;
      }
      
      public function §>!9§() : Boolean
      {
         if(this.§^!B§ || !this.§,0§())
         {
            return false;
         }
         this.§];§ = new Vector.<XML>();
         this.§8u§ = 0;
         return true;
      }
      
      public function §8!7§(param1:XML) : void
      {
         if(this.§^!B§ && this.§,0§())
         {
            return;
         }
         this.§];§.push(param1);
         ++this.§8u§;
      }
      
      public function §;!E§(param1:Function = null) : void
      {
         if(this.§^!B§ && this.§,0§())
         {
            return;
         }
         this.§=S§ = param1;
         this.§8u§ = this.§];§.length;
         this.§^!B§ = true;
         this.§-!4§();
      }
      
      private function §?'§() : Boolean
      {
         if(this.§`r§ && !this.§`r§.§[c§)
         {
            this.§`r§.removeEventListener(Event.COMPLETE,this.§`x§);
            this.§`r§.addEventListener(Event.COMPLETE,this.§`x§);
            return true;
         }
         return false;
      }
      
      private function §`x§(param1:Event) : void
      {
         this.§`r§.removeEventListener(Event.COMPLETE,this.§`x§);
         this.§-!4§();
      }
      
      private function §-!4§() : void
      {
         if(this.§];§.length > 0)
         {
            this.§[2§();
         }
         else if(this.§=7§() >= 1)
         {
            this.§^v§();
         }
      }
      
      private function §[2§() : void
      {
         var _loc1_:String = null;
         if(this.§^!B§ && this.§,0§())
         {
            if(this.§?'§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§40§ != null && this.§40§.length > 0)
            {
               _loc1_ = "?version=" + this.§40§;
            }
            this.§77§ = 0;
            this.§3!D§ = this.§];§.shift();
            if(this.§3!D§.localName() == "pack")
            {
               this.§4!$§ = new URLLoader();
               this.§4!$§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§4!$§.addEventListener(Event.COMPLETE,this.§!9§);
               this.§4!$§.addEventListener(IOErrorEvent.IO_ERROR,this.§-+§);
               this.§4!$§.addEventListener(ProgressEvent.PROGRESS,this.§,>§);
               this.§-!<§ = this.§>!K§ + this.§3!D§.@url.toString() + _loc1_;
               this.§4!$§.load(new URLRequest(this.§-!<§));
            }
            else
            {
               this.§]D§ = new Loader();
               this.§]D§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§1!#§);
               this.§]D§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§-+§);
               this.§]D§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§,>§);
               this.§-!<§ = this.§>!K§ + this.§-!e§ + this.§3!D§.@swf.toString() + _loc1_;
               this.§]D§.load(new URLRequest(this.§-!<§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §-+§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§-!<§;
         this.§-^§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§-!<§,§=!O§.§6?§);
      }
      
      private function §!9§(param1:Event) : void
      {
         this.§[!K§.push(this.§4!$§.data);
         if(this.§,Q§ != null)
         {
            this.§,Q§(this.§4!$§.data);
         }
         if(this.§`r§)
         {
            this.§`r§.§2!=§(this.§4!$§.data);
         }
         this.§-^§();
         ++this.§"a§;
         this.§-!4§();
      }
      
      private function §,>§(param1:ProgressEvent) : void
      {
         this.§77§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §1!#§(param1:Event) : void
      {
         this.§-^§();
         ++this.§"a§;
         this.§-!4§();
      }
      
      private function §-^§() : void
      {
         if(this.§]D§)
         {
            this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1!#§);
            this.§]D§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§-+§);
            this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1!#§);
            this.§]D§ = null;
         }
         if(this.§4!$§)
         {
            this.§4!$§.removeEventListener(Event.COMPLETE,this.§!9§);
            this.§4!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-+§);
            this.§4!$§.removeEventListener(ProgressEvent.PROGRESS,this.§,>§);
            this.§4!$§ = null;
         }
         this.§3!D§ = null;
      }
      
      private function §^v§() : void
      {
         this.§77§ = 0;
         if(this.§=S§ != null)
         {
            this.§=S§.call();
            this.§=S§ = null;
         }
      }
      
      public function §?!Z§() : void
      {
         this.§77§ = 0;
         this.§^!B§ = false;
         this.§8u§ = 0;
         if(this.§];§)
         {
            this.§];§ = null;
         }
         this.§=S§ = null;
         this.§-^§();
      }
      
      public function §=7§() : Number
      {
         if(!this.§,0§())
         {
            §!X§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§^!B§ || !this.§];§ || !this.§,0§())
         {
            §!X§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§"a§ == this.§8u§)
         {
            if(this.§`r§ && this.§8u§ > 0)
            {
               if(this.§`r§.§[c§)
               {
                  return 1;
               }
               return (this.§"a§ + this.§77§ - 0.5) / this.§8u§;
            }
            return 1;
         }
         return this.§"a§ / this.§8u§;
      }
   }
}
