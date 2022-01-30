package §@!2§
{
   import §"I§.§=!U§;
   import §`6§.§7!q§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §2A§
   {
      
      private static var §,"'§:§2A§;
       
      
      private var §?f§:Vector.<XML>;
      
      private var §-,§:Boolean = false;
      
      private var §?!"§:int;
      
      private var §,!O§:int;
      
      private var §1!M§:Function;
      
      private var §"!k§:Function;
      
      private var §9R§:Loader;
      
      private var §`>§:URLLoader;
      
      private var §#a§:XML;
      
      private var §#y§:String = "";
      
      private var §!Z§:int = 0;
      
      private var §'h§:Vector.<String>;
      
      private var §3E§:String = "external_assets/LoadTest.swf";
      
      private var §7a§:Boolean = false;
      
      private var §5!]§:Array;
      
      private var § ""§:String;
      
      private var §>!w§:String;
      
      private var §1!C§:Number = 0;
      
      private var §%u§:String = "";
      
      private var §0!S§:§7"1§;
      
      public function §2A§()
      {
         this.§5!]§ = [];
         super();
      }
      
      public static function get §?!+§() : §2A§
      {
         if(!§,"'§)
         {
            §,"'§ = new §2A§();
         }
         return §,"'§;
      }
      
      public static function §[!m§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §@!O§() : void
      {
         this.§5!]§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§7"1§, param5:Function = null) : void
      {
         this.§ ""§ = param2;
         this.§>!w§ = param3;
         this.§7a§ = true;
         this.§-,§ = false;
         this.§0!S§ = param4;
         this.§1!M§ = param5;
      }
      
      private function §;!S§() : void
      {
         this.§7a§ = true;
         this.§-,§ = false;
      }
      
      public function §;!R§() : Boolean
      {
         return this.§7a§;
      }
      
      public function §;" §() : Boolean
      {
         if(this.§-,§ || !this.§;!R§())
         {
            return false;
         }
         this.§?f§ = new Vector.<XML>();
         this.§?!"§ = 0;
         return true;
      }
      
      public function §%R§(param1:XML) : void
      {
         if(this.§-,§ && this.§;!R§())
         {
            return;
         }
         this.§?f§.push(param1);
         ++this.§?!"§;
      }
      
      public function §3O§(param1:Function = null) : void
      {
         if(this.§-,§ && this.§;!R§())
         {
            return;
         }
         this.§"!k§ = param1;
         this.§?!"§ = this.§?f§.length;
         this.§,!O§ = 0;
         this.§-,§ = true;
         this.§#n§();
      }
      
      private function §-!v§() : Boolean
      {
         if(this.§0!S§ && !this.§0!S§.§0G§)
         {
            this.§0!S§.removeEventListener(Event.COMPLETE,this.§null §);
            this.§0!S§.addEventListener(Event.COMPLETE,this.§null §);
            return true;
         }
         return false;
      }
      
      private function §null §(param1:Event) : void
      {
         this.§0!S§.removeEventListener(Event.COMPLETE,this.§null §);
         this.§#n§();
      }
      
      private function §#n§() : void
      {
         if(!this.§?f§)
         {
            return;
         }
         if(this.§?f§.length > 0)
         {
            this.§<!$§();
         }
         else if(this.§+"!§() >= 1)
         {
            this.§"!D§();
         }
         else
         {
            this.§-!v§();
         }
      }
      
      private function §<!$§() : void
      {
         var _loc1_:String = null;
         if(this.§-,§ && this.§;!R§())
         {
            if(this.§-!v§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§>!w§ != null && this.§>!w§.length > 0)
            {
               _loc1_ = "?version=" + this.§>!w§;
            }
            this.§1!C§ = 0;
            this.§#a§ = this.§?f§.shift();
            if(this.§#a§.localName() == "pack")
            {
               this.§`>§ = new URLLoader();
               this.§`>§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§`>§.addEventListener(Event.COMPLETE,this.§6I§);
               this.§`>§.addEventListener(IOErrorEvent.IO_ERROR,this.§%;§);
               this.§`>§.addEventListener(ProgressEvent.PROGRESS,this.§0c§);
               this.§%u§ = this.§ ""§ + this.§#a§.@url.toString() + _loc1_;
               this.§`>§.load(new URLRequest(this.§%u§));
            }
            else
            {
               this.§9R§ = new Loader();
               this.§9R§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§+!G§);
               this.§9R§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%;§);
               this.§9R§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§0c§);
               this.§%u§ = this.§ ""§ + this.§#y§ + this.§#a§.@swf.toString() + _loc1_;
               this.§9R§.load(new URLRequest(this.§%u§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §%;§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§%u§;
         this.§?!t§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§%u§,§7!q§.§ l§);
      }
      
      private function §6I§(param1:Event) : void
      {
         this.§5!]§.push(this.§`>§.data);
         if(this.§1!M§ != null)
         {
            this.§1!M§(this.§`>§.data);
         }
         if(this.§0!S§)
         {
            this.§0!S§.§=!=§(this.§`>§.data,this.§5c§(this.§#a§.@url));
         }
         this.§?!t§();
         ++this.§,!O§;
         this.§#n§();
      }
      
      private function §5c§(param1:String) : String
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
      
      private function §0c§(param1:ProgressEvent) : void
      {
         this.§1!C§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §+!G§(param1:Event) : void
      {
         this.§?!t§();
         ++this.§,!O§;
         this.§#n§();
      }
      
      private function §?!t§() : void
      {
         if(this.§9R§)
         {
            this.§9R§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+!G§);
            this.§9R§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%;§);
            this.§9R§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+!G§);
            this.§9R§ = null;
         }
         if(this.§`>§)
         {
            this.§`>§.removeEventListener(Event.COMPLETE,this.§6I§);
            this.§`>§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%;§);
            this.§`>§.removeEventListener(ProgressEvent.PROGRESS,this.§0c§);
            this.§`>§ = null;
         }
         this.§#a§ = null;
      }
      
      private function §"!D§() : void
      {
         this.§1!C§ = 0;
         if(this.§"!k§ != null)
         {
            this.§"!k§.call();
            this.§"!k§ = null;
         }
      }
      
      public function §1!T§() : void
      {
         this.§1!C§ = 0;
         this.§-,§ = false;
         this.§?!"§ = 0;
         if(this.§?f§)
         {
            this.§?f§ = null;
         }
         this.§"!k§ = null;
         this.§?!t§();
         if(this.§0!S§)
         {
            this.§0!S§.§1!T§();
         }
      }
      
      public function §+"!§() : Number
      {
         if(!this.§;!R§())
         {
            §=!U§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§-,§ || !this.§?f§ || !this.§;!R§())
         {
            §=!U§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§,!O§ == this.§?!"§)
         {
            if(this.§0!S§ && this.§?!"§ > 0)
            {
               if(this.§0!S§.§0G§)
               {
                  return 1;
               }
               return (this.§,!O§ - 0.1) / this.§?!"§;
            }
            return 1;
         }
         return this.§,!O§ / this.§?!"§;
      }
   }
}
