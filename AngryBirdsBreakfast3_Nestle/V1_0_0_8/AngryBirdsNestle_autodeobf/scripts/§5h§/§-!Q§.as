package §5h§
{
   import §%f§.§[!l§;
   import §;4§.§]!%§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §-!Q§
   {
      
      private static var §<U§:§-!Q§;
       
      
      private var §'7§:Vector.<XML>;
      
      private var §<4§:Boolean = false;
      
      private var §=A§:int;
      
      private var § "1§:int;
      
      private var §0g§:Function;
      
      private var §&!r§:Function;
      
      private var §!!=§:Loader;
      
      private var §9!P§:URLLoader;
      
      private var §4!§:XML;
      
      private var §^d§:Vector.<String>;
      
      private var §^i§:String = "external_assets/LoadTest.swf";
      
      private var §'[§:Boolean = false;
      
      private var §7m§:Array;
      
      private var §["0§:String;
      
      private var §>X§:String;
      
      private var §1!S§:Number = 0;
      
      private var §&!<§:String = "";
      
      private var §"!,§:§+"7§;
      
      private var §%!?§:Object;
      
      public function §-!Q§()
      {
         this.§7m§ = [];
         super();
      }
      
      public static function get §"e§() : §-!Q§
      {
         if(!§<U§)
         {
            §<U§ = new §-!Q§();
         }
         return §<U§;
      }
      
      public static function §"=§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §8!!§() : void
      {
         this.§7m§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§+"7§, param5:Function = null, param6:String = "") : void
      {
         this.§["0§ = param2;
         this.§>X§ = param3;
         this.§'[§ = true;
         this.§<4§ = false;
         this.§"!,§ = param4;
         this.§0g§ = param5;
         if(param6 != null && param6 != "")
         {
            this.§%!?§ = JSON.parse(param6);
         }
      }
      
      private function §87§() : void
      {
         this.§'[§ = true;
         this.§<4§ = false;
      }
      
      public function §%!_§() : Boolean
      {
         return this.§'[§;
      }
      
      public function §7!f§() : Boolean
      {
         if(this.§<4§ || !this.§%!_§())
         {
            return false;
         }
         this.§'7§ = new Vector.<XML>();
         this.§=A§ = 0;
         return true;
      }
      
      public function §7l§(param1:XML) : void
      {
         if(this.§<4§ && this.§%!_§())
         {
            return;
         }
         this.§'7§.push(param1);
         ++this.§=A§;
      }
      
      public function §]"&§(param1:Function = null) : void
      {
         if(this.§<4§ && this.§%!_§())
         {
            return;
         }
         this.§&!r§ = param1;
         this.§=A§ = this.§'7§.length;
         this.§ "1§ = 0;
         this.§<4§ = true;
         this.§extends§();
      }
      
      private function §4l§() : Boolean
      {
         if(this.§"!,§ && !this.§"!,§.§2!D§)
         {
            this.§"!,§.removeEventListener(Event.COMPLETE,this.§8I§);
            this.§"!,§.addEventListener(Event.COMPLETE,this.§8I§);
            return true;
         }
         return false;
      }
      
      private function §8I§(param1:Event) : void
      {
         this.§"!,§.removeEventListener(Event.COMPLETE,this.§8I§);
         this.§extends§();
      }
      
      private function §extends§() : void
      {
         if(!this.§'7§)
         {
            return;
         }
         if(this.§'7§.length > 0)
         {
            this.§18§();
         }
         else if(this.§'!I§() >= 1)
         {
            this.§"!#§();
         }
         else
         {
            this.§4l§();
         }
      }
      
      private function §18§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§<4§ && this.§%!_§())
         {
            if(this.§4l§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§>X§ != null && this.§>X§.length > 0)
            {
               _loc1_ = "?version=" + this.§>X§;
            }
            this.§1!S§ = 0;
            this.§4!§ = this.§'7§.shift();
            if(this.§4!§.localName() == "pack")
            {
               _loc2_ = this.§["0§ + this.§4!§.@url.toString();
               if(this.§%!?§ && this.§%!?§[_loc2_])
               {
                  _loc2_ = this.§%!?§[_loc2_];
               }
               this.§9!P§ = new URLLoader();
               this.§9!P§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§9!P§.addEventListener(Event.COMPLETE,this.§%!2§);
               this.§9!P§.addEventListener(IOErrorEvent.IO_ERROR,this.§7"3§);
               this.§9!P§.addEventListener(ProgressEvent.PROGRESS,this.§"" §);
               this.§&!<§ = _loc2_ + _loc1_;
               this.§9!P§.load(new URLRequest(this.§&!<§));
            }
            else
            {
               _loc3_ = this.§["0§ + this.§4!§.@swf.toString();
               if(this.§%!?§ && this.§%!?§[_loc3_])
               {
                  _loc3_ = this.§%!?§[_loc3_];
               }
               this.§!!=§ = new Loader();
               this.§!!=§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%!E§);
               this.§!!=§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§7"3§);
               this.§!!=§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§"" §);
               this.§&!<§ = _loc3_ + _loc1_;
               this.§!!=§.load(new URLRequest(this.§&!<§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §7"3§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§&!<§;
         this.§7!H§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§&!<§,§[!l§.§&"3§);
      }
      
      private function §%!2§(param1:Event) : void
      {
         this.§7m§.push(this.§9!P§.data);
         if(this.§0g§ != null)
         {
            this.§0g§(this.§9!P§.data);
         }
         if(this.§"!,§)
         {
            this.§"!,§.§+!8§(this.§9!P§.data,this.§9!8§(this.§4!§.@url));
         }
         this.§7!H§();
         ++this.§ "1§;
         this.§extends§();
      }
      
      private function §9!8§(param1:String) : String
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
      
      private function §"" §(param1:ProgressEvent) : void
      {
         this.§1!S§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §%!E§(param1:Event) : void
      {
         this.§7!H§();
         ++this.§ "1§;
         this.§extends§();
      }
      
      private function §7!H§() : void
      {
         if(this.§!!=§)
         {
            this.§!!=§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%!E§);
            this.§!!=§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§7"3§);
            this.§!!=§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§%!E§);
            this.§!!=§ = null;
         }
         if(this.§9!P§)
         {
            this.§9!P§.removeEventListener(Event.COMPLETE,this.§%!2§);
            this.§9!P§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7"3§);
            this.§9!P§.removeEventListener(ProgressEvent.PROGRESS,this.§"" §);
            this.§9!P§ = null;
         }
         this.§4!§ = null;
      }
      
      private function §"!#§() : void
      {
         this.§1!S§ = 0;
         if(this.§&!r§ != null)
         {
            this.§&!r§.call();
            this.§&!r§ = null;
         }
      }
      
      public function §!!V§() : void
      {
         this.§1!S§ = 0;
         this.§<4§ = false;
         this.§=A§ = 0;
         if(this.§'7§)
         {
            this.§'7§ = null;
         }
         this.§&!r§ = null;
         this.§7!H§();
         if(this.§"!,§)
         {
            this.§"!,§.§!!V§();
         }
      }
      
      public function §'!I§() : Number
      {
         if(!this.§%!_§())
         {
            §]!%§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§<4§ || !this.§'7§ || !this.§%!_§())
         {
            §]!%§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§ "1§ == this.§=A§)
         {
            if(this.§"!,§ && this.§=A§ > 0)
            {
               if(this.§"!,§.§2!D§)
               {
                  return 1;
               }
               return (this.§ "1§ - 0.1) / this.§=A§;
            }
            return 1;
         }
         return this.§ "1§ / this.§=A§;
      }
   }
}
