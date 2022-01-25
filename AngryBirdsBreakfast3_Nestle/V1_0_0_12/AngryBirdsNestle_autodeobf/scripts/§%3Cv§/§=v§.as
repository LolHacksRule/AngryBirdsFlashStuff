package §<v§
{
   import §8!$§.§?p§;
   import §`!s§.§!!o§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §=v§
   {
      
      private static var §04§:§=v§;
       
      
      private var §1D§:Vector.<XML>;
      
      private var §8!S§:Boolean = false;
      
      private var §=V§:int;
      
      private var §3!f§:int;
      
      private var §["-§:Function;
      
      private var §8!§:Function;
      
      private var §2!Z§:Loader;
      
      private var §`Q§:URLLoader;
      
      private var §1C§:XML;
      
      private var §[!L§:Vector.<String>;
      
      private var §+v§:String = "external_assets/LoadTest.swf";
      
      private var §%7§:Boolean = false;
      
      private var §2'§:Array;
      
      private var §6"4§:String;
      
      private var §#8§:String;
      
      private var §&!n§:Number = 0;
      
      private var §1c§:String = "";
      
      private var §""7§:§<x§;
      
      private var §]y§:Object;
      
      public function §=v§()
      {
         this.§2'§ = [];
         super();
      }
      
      public static function get §&!;§() : §=v§
      {
         if(!§04§)
         {
            §04§ = new §=v§();
         }
         return §04§;
      }
      
      public static function §;e§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §9a§() : void
      {
         this.§2'§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§<x§, param5:Function = null, param6:String = "") : void
      {
         this.§6"4§ = param2;
         this.§#8§ = param3;
         this.§%7§ = true;
         this.§8!S§ = false;
         this.§""7§ = param4;
         this.§["-§ = param5;
         if(param6 != null && param6 != "")
         {
            this.§]y§ = JSON.parse(param6);
         }
      }
      
      private function §1!V§() : void
      {
         this.§%7§ = true;
         this.§8!S§ = false;
      }
      
      public function §-!5§() : Boolean
      {
         return this.§%7§;
      }
      
      public function §break§() : Boolean
      {
         if(this.§8!S§ || !this.§-!5§())
         {
            return false;
         }
         this.§1D§ = new Vector.<XML>();
         this.§=V§ = 0;
         return true;
      }
      
      public function §4"-§(param1:XML) : void
      {
         if(this.§8!S§ && this.§-!5§())
         {
            return;
         }
         this.§1D§.push(param1);
         ++this.§=V§;
      }
      
      public function §,"2§(param1:Function = null) : void
      {
         if(this.§8!S§ && this.§-!5§())
         {
            return;
         }
         this.§8!§ = param1;
         this.§=V§ = this.§1D§.length;
         this.§3!f§ = 0;
         this.§8!S§ = true;
         this.§1!4§();
      }
      
      private function §8!G§() : Boolean
      {
         if(this.§""7§ && !this.§""7§.§;f§)
         {
            this.§""7§.removeEventListener(Event.COMPLETE,this.§!!V§);
            this.§""7§.addEventListener(Event.COMPLETE,this.§!!V§);
            return true;
         }
         return false;
      }
      
      private function §!!V§(param1:Event) : void
      {
         this.§""7§.removeEventListener(Event.COMPLETE,this.§!!V§);
         this.§1!4§();
      }
      
      private function §1!4§() : void
      {
         if(!this.§1D§)
         {
            return;
         }
         if(this.§1D§.length > 0)
         {
            this.§"!r§();
         }
         else if(this.§`" §() >= 1)
         {
            this.§`"5§();
         }
         else
         {
            this.§8!G§();
         }
      }
      
      private function §"!r§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§8!S§ && this.§-!5§())
         {
            if(this.§8!G§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§#8§ != null && this.§#8§.length > 0)
            {
               _loc1_ = "?version=" + this.§#8§;
            }
            this.§&!n§ = 0;
            this.§1C§ = this.§1D§.shift();
            if(this.§1C§.localName() == "pack")
            {
               _loc2_ = this.§6"4§ + this.§1C§.@url.toString();
               if(this.§]y§ && this.§]y§[_loc2_])
               {
                  _loc2_ = this.§]y§[_loc2_];
               }
               this.§`Q§ = new URLLoader();
               this.§`Q§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§`Q§.addEventListener(Event.COMPLETE,this.§8Z§);
               this.§`Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§#!V§);
               this.§`Q§.addEventListener(ProgressEvent.PROGRESS,this.§]!I§);
               this.§1c§ = _loc2_ + _loc1_;
               this.§`Q§.load(new URLRequest(this.§1c§));
            }
            else
            {
               _loc3_ = this.§6"4§ + this.§1C§.@swf.toString();
               if(this.§]y§ && this.§]y§[_loc3_])
               {
                  _loc3_ = this.§]y§[_loc3_];
               }
               this.§2!Z§ = new Loader();
               this.§2!Z§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§7!?§);
               this.§2!Z§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§#!V§);
               this.§2!Z§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§]!I§);
               this.§1c§ = _loc3_ + _loc1_;
               this.§2!Z§.load(new URLRequest(this.§1c§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §#!V§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§1c§;
         this.§`!#§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§1c§,§!!o§.§1>§);
      }
      
      private function §8Z§(param1:Event) : void
      {
         this.§2'§.push(this.§`Q§.data);
         if(this.§["-§ != null)
         {
            this.§["-§(this.§`Q§.data);
         }
         if(this.§""7§)
         {
            this.§""7§.§`!X§(this.§`Q§.data,this.§9!k§(this.§1C§.@url));
         }
         this.§`!#§();
         ++this.§3!f§;
         this.§1!4§();
      }
      
      private function §9!k§(param1:String) : String
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
      
      private function §]!I§(param1:ProgressEvent) : void
      {
         this.§&!n§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §7!?§(param1:Event) : void
      {
         this.§`!#§();
         ++this.§3!f§;
         this.§1!4§();
      }
      
      private function §`!#§() : void
      {
         if(this.§2!Z§)
         {
            this.§2!Z§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§7!?§);
            this.§2!Z§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!V§);
            this.§2!Z§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§7!?§);
            this.§2!Z§ = null;
         }
         if(this.§`Q§)
         {
            this.§`Q§.removeEventListener(Event.COMPLETE,this.§8Z§);
            this.§`Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#!V§);
            this.§`Q§.removeEventListener(ProgressEvent.PROGRESS,this.§]!I§);
            this.§`Q§ = null;
         }
         this.§1C§ = null;
      }
      
      private function §`"5§() : void
      {
         this.§&!n§ = 0;
         if(this.§8!§ != null)
         {
            this.§8!§.call();
            this.§8!§ = null;
         }
      }
      
      public function §1!Q§() : void
      {
         this.§&!n§ = 0;
         this.§8!S§ = false;
         this.§=V§ = 0;
         if(this.§1D§)
         {
            this.§1D§ = null;
         }
         this.§8!§ = null;
         this.§`!#§();
         if(this.§""7§)
         {
            this.§""7§.§1!Q§();
         }
      }
      
      public function §`" §() : Number
      {
         if(!this.§-!5§())
         {
            §?p§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§8!S§ || !this.§1D§ || !this.§-!5§())
         {
            §?p§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§3!f§ == this.§=V§)
         {
            if(this.§""7§ && this.§=V§ > 0)
            {
               if(this.§""7§.§;f§)
               {
                  return 1;
               }
               return (this.§3!f§ - 0.1) / this.§=V§;
            }
            return 1;
         }
         return this.§3!f§ / this.§=V§;
      }
   }
}
