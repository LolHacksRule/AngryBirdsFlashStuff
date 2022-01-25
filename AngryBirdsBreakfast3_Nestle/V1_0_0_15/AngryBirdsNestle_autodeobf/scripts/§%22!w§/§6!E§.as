package §"!w§
{
   import §24§.;
   import §4!i§.§9w§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §6!E§
   {
      
      private static var §&8§:§6!E§;
       
      
      private var §`b§:Vector.<XML>;
      
      private var §'!1§:Boolean = false;
      
      private var §?j§:int;
      
      private var §4h§:int;
      
      private var §<l§:Function;
      
      private var §>!x§:Function;
      
      private var §8!N§:Loader;
      
      private var §]o§:URLLoader;
      
      private var §3!Q§:XML;
      
      private var §#O§:Vector.<String>;
      
      private var §]B§:String = "external_assets/LoadTest.swf";
      
      private var § !C§:Boolean = false;
      
      private var §-!!§:Array;
      
      private var §6,§:String;
      
      private var §?k§:String;
      
      private var §^!b§:Number = 0;
      
      private var §?!N§:String = "";
      
      private var §!!&§:§&t§;
      
      private var §"4§:Object;
      
      public function §6!E§()
      {
         this.§-!!§ = [];
         super();
      }
      
      public static function get §,2§() : §6!E§
      {
         if(!§&8§)
         {
            §&8§ = new §6!E§();
         }
         return §&8§;
      }
      
      public static function §4!M§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §7!t§() : void
      {
         this.§-!!§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§&t§, param5:Function = null, param6:String = "") : void
      {
         this.§6,§ = param2;
         this.§?k§ = param3;
         this.§ !C§ = true;
         this.§'!1§ = false;
         this.§!!&§ = param4;
         this.§<l§ = param5;
         if(param6 != null && param6 != "")
         {
            this.§"4§ = JSON.parse(param6);
         }
      }
      
      private function §-r§() : void
      {
         this.§ !C§ = true;
         this.§'!1§ = false;
      }
      
      public function §&;§() : Boolean
      {
         return this.§ !C§;
      }
      
      public function §#y§() : Boolean
      {
         if(this.§'!1§ || !this.§&;§())
         {
            return false;
         }
         this.§`b§ = new Vector.<XML>();
         this.§?j§ = 0;
         return true;
      }
      
      public function §#X§(param1:XML) : void
      {
         if(this.§'!1§ && this.§&;§())
         {
            return;
         }
         this.§`b§.push(param1);
         ++this.§?j§;
      }
      
      public function §&!L§(param1:Function = null) : void
      {
         if(this.§'!1§ && this.§&;§())
         {
            return;
         }
         this.§>!x§ = param1;
         this.§?j§ = this.§`b§.length;
         this.§4h§ = 0;
         this.§'!1§ = true;
         this.§>!T§();
      }
      
      private function §`!#§() : Boolean
      {
         if(this.§!!&§ && !this.§!!&§.§^!;§)
         {
            this.§!!&§.removeEventListener(Event.COMPLETE,this.§9"§);
            this.§!!&§.addEventListener(Event.COMPLETE,this.§9"§);
            return true;
         }
         return false;
      }
      
      private function §9"§(param1:Event) : void
      {
         this.§!!&§.removeEventListener(Event.COMPLETE,this.§9"§);
         this.§>!T§();
      }
      
      private function §>!T§() : void
      {
         if(!this.§`b§)
         {
            return;
         }
         if(this.§`b§.length > 0)
         {
            this.§8!]§();
         }
         else if(this.§#"3§() >= 1)
         {
            this.§9!5§();
         }
         else
         {
            this.§`!#§();
         }
      }
      
      private function §8!]§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§'!1§ && this.§&;§())
         {
            if(this.§`!#§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§?k§ != null && this.§?k§.length > 0)
            {
               _loc1_ = "?version=" + this.§?k§;
            }
            this.§^!b§ = 0;
            this.§3!Q§ = this.§`b§.shift();
            if(this.§3!Q§.localName() == "pack")
            {
               _loc2_ = this.§6,§ + this.§3!Q§.@url.toString();
               if(this.§"4§ && this.§"4§[_loc2_])
               {
                  _loc2_ = this.§"4§[_loc2_];
               }
               this.§]o§ = new URLLoader();
               this.§]o§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§]o§.addEventListener(Event.COMPLETE,this.§4!U§);
               this.§]o§.addEventListener(IOErrorEvent.IO_ERROR,this.§`M§);
               this.§]o§.addEventListener(ProgressEvent.PROGRESS,this.§4!<§);
               this.§?!N§ = _loc2_ + _loc1_;
               this.§]o§.load(new URLRequest(this.§?!N§));
            }
            else
            {
               _loc3_ = this.§6,§ + this.§3!Q§.@swf.toString();
               if(this.§"4§ && this.§"4§[_loc3_])
               {
                  _loc3_ = this.§"4§[_loc3_];
               }
               this.§8!N§ = new Loader();
               this.§8!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§>'§);
               this.§8!N§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§`M§);
               this.§8!N§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§4!<§);
               this.§?!N§ = _loc3_ + _loc1_;
               this.§8!N§.load(new URLRequest(this.§?!N§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §`M§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§?!N§;
         this.§1!E§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§?!N§,§9w§.§="2§);
      }
      
      private function §4!U§(param1:Event) : void
      {
         this.§-!!§.push(this.§]o§.data);
         if(this.§<l§ != null)
         {
            this.§<l§(this.§]o§.data);
         }
         if(this.§!!&§)
         {
            this.§!!&§.§,!L§(this.§]o§.data,this.§9!%§(this.§3!Q§.@url));
         }
         this.§1!E§();
         ++this.§4h§;
         this.§>!T§();
      }
      
      private function §9!%§(param1:String) : String
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
      
      private function §4!<§(param1:ProgressEvent) : void
      {
         this.§^!b§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §>'§(param1:Event) : void
      {
         this.§1!E§();
         ++this.§4h§;
         this.§>!T§();
      }
      
      private function §1!E§() : void
      {
         if(this.§8!N§)
         {
            this.§8!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>'§);
            this.§8!N§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§`M§);
            this.§8!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>'§);
            this.§8!N§ = null;
         }
         if(this.§]o§)
         {
            this.§]o§.removeEventListener(Event.COMPLETE,this.§4!U§);
            this.§]o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§`M§);
            this.§]o§.removeEventListener(ProgressEvent.PROGRESS,this.§4!<§);
            this.§]o§ = null;
         }
         this.§3!Q§ = null;
      }
      
      private function §9!5§() : void
      {
         this.§^!b§ = 0;
         if(this.§>!x§ != null)
         {
            this.§>!x§.call();
            this.§>!x§ = null;
         }
      }
      
      public function §#!?§() : void
      {
         this.§^!b§ = 0;
         this.§'!1§ = false;
         this.§?j§ = 0;
         if(this.§`b§)
         {
            this.§`b§ = null;
         }
         this.§>!x§ = null;
         this.§1!E§();
         if(this.§!!&§)
         {
            this.§!!&§.§#!?§();
         }
      }
      
      public function §#"3§() : Number
      {
         if(!this.§&;§())
         {
            §#7§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§'!1§ || !this.§`b§ || !this.§&;§())
         {
            §#7§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§4h§ == this.§?j§)
         {
            if(this.§!!&§ && this.§?j§ > 0)
            {
               if(this.§!!&§.§^!;§)
               {
                  return 1;
               }
               return (this.§4h§ - 0.1) / this.§?j§;
            }
            return 1;
         }
         return this.§4h§ / this.§?j§;
      }
   }
}
