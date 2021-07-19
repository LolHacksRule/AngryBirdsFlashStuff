package §#"A§
{
   import §+!c§.§;!=§;
   import §9@§.§1!j§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   
   public class §'"U§
   {
      
      private static var §+!Y§:§'"U§;
       
      
      private var §8!g§:Vector.<XML>;
      
      private var §'d§:Boolean = false;
      
      private var §9K§:int;
      
      private var §5b§:int;
      
      private var §5!A§:Function;
      
      private var §<f§:Function;
      
      private var §2!H§:Loader;
      
      private var § !"§:URLLoader;
      
      private var §?>§:XML;
      
      private var §2c§:int = 0;
      
      private var §8!%§:Vector.<String>;
      
      private var §-!O§:String = "external_assets/LoadTest.swf";
      
      private var §^"I§:Boolean = false;
      
      private var §3!m§:Array;
      
      private var §%Q§:String;
      
      private var §>"Y§:String;
      
      private var § "[§:Dictionary;
      
      private var §^I§:String = "";
      
      private var §5r§:Number = 0;
      
      private var §1"G§:String = "";
      
      private var §^!A§:String = "";
      
      private var §@V§:§^!8§;
      
      private var §^!L§:Object;
      
      public function §'"U§()
      {
         this.§3!m§ = [];
         this.§ "[§ = new Dictionary();
         super();
      }
      
      public static function get §&"5§() : §'"U§
      {
         if(!§+!Y§)
         {
            §+!Y§ = new §'"U§();
         }
         return §+!Y§;
      }
      
      public static function §!,§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §2"?§() : void
      {
         this.§3!m§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§^!8§, param5:Function = null, param6:String = "", param7:String = "") : void
      {
         this.§%Q§ = param2;
         this.§>"Y§ = param3;
         this.§^"I§ = true;
         this.§'d§ = false;
         this.§@V§ = param4;
         this.§5!A§ = param5;
         if(this.§^!A§ == "")
         {
            this.§^!A§ = param7;
         }
         if(param6 != null && param6 != "")
         {
            this.§^!L§ = JSON.parse(param6);
         }
      }
      
      private function §#!k§() : void
      {
         this.§^"I§ = true;
         this.§'d§ = false;
      }
      
      public function §+@§() : Boolean
      {
         return this.§^"I§;
      }
      
      public function §3!,§() : Boolean
      {
         if(this.§'d§ || !this.§+@§())
         {
            return false;
         }
         this.§8!g§ = new Vector.<XML>();
         this.§9K§ = 0;
         return true;
      }
      
      public function §!x§(param1:XML) : void
      {
         if(this.§'d§ && this.§+@§())
         {
            return;
         }
         this.§8!g§.push(param1);
         ++this.§9K§;
      }
      
      public function §+g§(param1:Function = null) : void
      {
         if(this.§'d§ && this.§+@§())
         {
            return;
         }
         this.§<f§ = param1;
         this.§9K§ = this.§8!g§.length;
         this.§'d§ = true;
         this.§<!a§();
      }
      
      private function §3"5§() : Boolean
      {
         if(this.§@V§ && !this.§@V§.§'!@§)
         {
            this.§@V§.removeEventListener(Event.COMPLETE,this.§3§);
            this.§@V§.addEventListener(Event.COMPLETE,this.§3§);
            return true;
         }
         return false;
      }
      
      private function §3§(param1:Event) : void
      {
         this.§@V§.removeEventListener(Event.COMPLETE,this.§3§);
         this.§<!a§();
      }
      
      private function §<!a§() : void
      {
         if(this.§8!g§.length > 0)
         {
            this.§"!P§();
         }
         else if(this.§-Z§() >= 1)
         {
            this.§8!?§();
         }
      }
      
      private function §"!P§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this.§'d§ && this.§+@§())
         {
            if(this.§3"5§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§>"Y§ != null && this.§>"Y§.length > 0)
            {
               _loc1_ = "?version=" + this.§>"Y§;
            }
            this.§5r§ = 0;
            if(this.§%Q§ == "/flash/")
            {
               this.§%Q§ = "";
            }
            this.§?>§ = this.§8!g§.shift();
            if(this.§?>§.localName() == "pack")
            {
               _loc2_ = this.§^!A§ + this.§?>§.@url.toString();
               if(this.§^!L§)
               {
                  _loc2_ = this.§^!L§[_loc2_];
               }
               this.§ !"§ = new URLLoader();
               this.§ !"§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§ !"§.addEventListener(Event.COMPLETE,this.§"S§);
               this.§ !"§.addEventListener(IOErrorEvent.IO_ERROR,this.§%k§);
               this.§ !"§.addEventListener(ProgressEvent.PROGRESS,this.§>u§);
               this.§1"G§ = this.§%Q§ + _loc2_ + _loc1_;
               this.§ !"§.load(new URLRequest(this.§1"G§));
            }
            else if(this.§?>§.localName() == "xml")
            {
               this.§^I§ = this.§?>§.@name;
               this.§ !"§ = new URLLoader();
               this.§ !"§.addEventListener(Event.COMPLETE,this.§=!R§);
               this.§ !"§.addEventListener(IOErrorEvent.IO_ERROR,this.§%k§);
               this.§ !"§.addEventListener(ProgressEvent.PROGRESS,this.§>u§);
               this.§1"G§ = this.§%Q§ + this.§?>§.@url.toString() + _loc1_;
               this.§ !"§.load(new URLRequest(this.§1"G§));
            }
            else
            {
               _loc3_ = this.§^!A§ + this.§?>§.@swf.toString();
               if(this.§^!L§)
               {
                  _loc3_ = this.§^!L§[_loc3_];
               }
               this.§2!H§ = new Loader();
               this.§2!H§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§,"C§);
               this.§2!H§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%k§);
               this.§2!H§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§>u§);
               this.§1"G§ = this.§%Q§ + _loc3_ + _loc1_;
               this.§2!H§.load(new URLRequest(this.§1"G§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §%k§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§1"G§;
         this.§[H§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§1"G§,§1!j§.§^'§);
      }
      
      private function §=!R§(param1:Event) : void
      {
         var _loc2_:XML = new XML(this.§ !"§.data);
         this.§ "[§[this.§^I§] = _loc2_;
         this.§[H§();
         ++this.§5b§;
         this.§<!a§();
      }
      
      public function §?!v§(param1:String) : XML
      {
         return this.§ "[§[param1];
      }
      
      private function §"S§(param1:Event) : void
      {
         this.§3!m§.push(this.§ !"§.data);
         if(this.§5!A§ != null)
         {
            this.§5!A§(this.§ !"§.data);
         }
         if(this.§@V§)
         {
            this.§@V§.§'S§(this.§ !"§.data);
         }
         this.§[H§();
         ++this.§5b§;
         this.§<!a§();
      }
      
      private function §>u§(param1:ProgressEvent) : void
      {
         this.§5r§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §,"C§(param1:Event) : void
      {
         this.§[H§();
         ++this.§5b§;
         this.§<!a§();
      }
      
      private function §[H§() : void
      {
         if(this.§2!H§)
         {
            this.§2!H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§,"C§);
            this.§2!H§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%k§);
            this.§2!H§.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.§>u§);
            this.§2!H§ = null;
         }
         if(this.§ !"§)
         {
            this.§ !"§.removeEventListener(Event.COMPLETE,this.§"S§);
            this.§ !"§.removeEventListener(Event.COMPLETE,this.§=!R§);
            this.§ !"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%k§);
            this.§ !"§.removeEventListener(ProgressEvent.PROGRESS,this.§>u§);
            this.§ !"§ = null;
         }
         this.§?>§ = null;
      }
      
      private function §8!?§() : void
      {
         this.§5r§ = 0;
         if(this.§<f§ != null)
         {
            this.§<f§.call();
            this.§<f§ = null;
         }
      }
      
      public function §8!`§() : void
      {
         this.§5r§ = 0;
         this.§'d§ = false;
         this.§9K§ = 0;
         if(this.§8!g§)
         {
            this.§8!g§ = null;
         }
         this.§<f§ = null;
         this.§[H§();
      }
      
      public function §-Z§() : Number
      {
         if(!this.§+@§())
         {
            §;!=§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§'d§ || !this.§8!g§ || !this.§+@§())
         {
            §;!=§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§5b§ == this.§9K§)
         {
            if(this.§@V§ && this.§9K§ > 0)
            {
               if(this.§@V§.§'!@§)
               {
                  return 1;
               }
               return (this.§5b§ + this.§5r§ - 0.5) / this.§9K§;
            }
            return 1;
         }
         return this.§5b§ / this.§9K§;
      }
   }
}
