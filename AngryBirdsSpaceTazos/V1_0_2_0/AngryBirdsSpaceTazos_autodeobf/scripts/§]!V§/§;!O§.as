package §]!V§
{
   import §""<§.§#N§;
   import §'#§.§4!Q§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §;!O§
   {
      
      private static var §&!<§:§;!O§;
       
      
      private var §0w§:Vector.<XML>;
      
      private var §-K§:Boolean = false;
      
      private var §#Y§:int;
      
      private var §;!%§:int;
      
      private var §0I§:Function;
      
      private var § else§:Function;
      
      private var §-,§:Loader;
      
      private var §+!2§:URLLoader;
      
      private var §2!f§:XML;
      
      private var §6a§:String = "";
      
      private var §[!d§:int = 0;
      
      private var §&"1§:Vector.<String>;
      
      private var §6K§:String = "external_assets/LoadTest.swf";
      
      private var §'!h§:Boolean = false;
      
      private var §`!R§:Array;
      
      private var §6!Y§:String;
      
      private var §5F§:String;
      
      private var §4<§:Number = 0;
      
      private var §7""§:String = "";
      
      private var §-B§:§3E§;
      
      public function §;!O§()
      {
         this.§`!R§ = [];
         super();
      }
      
      public static function get §<"B§() : §;!O§
      {
         if(!§&!<§)
         {
            §&!<§ = new §;!O§();
         }
         return §&!<§;
      }
      
      public static function §=j§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §-!,§() : void
      {
         this.§`!R§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§3E§, param5:Function = null) : void
      {
         this.§6!Y§ = param2;
         this.§5F§ = param3;
         this.§'!h§ = true;
         this.§-K§ = false;
         this.§-B§ = param4;
         this.§0I§ = param5;
      }
      
      private function §>!k§() : void
      {
         this.§'!h§ = true;
         this.§-K§ = false;
      }
      
      public function §<=§() : Boolean
      {
         return this.§'!h§;
      }
      
      public function §'!"§() : Boolean
      {
         if(this.§-K§ || !this.§<=§())
         {
            return false;
         }
         this.§0w§ = new Vector.<XML>();
         this.§#Y§ = 0;
         return true;
      }
      
      public function §4=§(param1:XML) : void
      {
         if(this.§-K§ && this.§<=§())
         {
            return;
         }
         this.§0w§.push(param1);
         ++this.§#Y§;
      }
      
      public function §%!1§(param1:Function = null) : void
      {
         if(this.§-K§ && this.§<=§())
         {
            return;
         }
         this.§ else§ = param1;
         this.§#Y§ = this.§0w§.length;
         this.§;!%§ = 0;
         this.§-K§ = true;
         this.§`!3§();
      }
      
      private function §;7§() : Boolean
      {
         if(this.§-B§ && !this.§-B§.§2V§)
         {
            this.§-B§.removeEventListener(Event.COMPLETE,this.§11§);
            this.§-B§.addEventListener(Event.COMPLETE,this.§11§);
            return true;
         }
         return false;
      }
      
      private function §11§(param1:Event) : void
      {
         this.§-B§.removeEventListener(Event.COMPLETE,this.§11§);
         this.§`!3§();
      }
      
      private function §`!3§() : void
      {
         if(!this.§0w§)
         {
            return;
         }
         if(this.§0w§.length > 0)
         {
            this.§<6§();
         }
         else if(this.§=!2§() >= 1)
         {
            this.§`t§();
         }
         else
         {
            this.§;7§();
         }
      }
      
      private function §<6§() : void
      {
         var _loc1_:String = null;
         if(this.§-K§ && this.§<=§())
         {
            if(this.§;7§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§5F§ != null && this.§5F§.length > 0)
            {
               _loc1_ = "?version=" + this.§5F§;
            }
            this.§4<§ = 0;
            this.§2!f§ = this.§0w§.shift();
            if(this.§2!f§.localName() == "pack")
            {
               this.§+!2§ = new URLLoader();
               this.§+!2§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§+!2§.addEventListener(Event.COMPLETE,this.§-!`§);
               this.§+!2§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!9§);
               this.§+!2§.addEventListener(ProgressEvent.PROGRESS,this.§5!]§);
               this.§7""§ = this.§6!Y§ + this.§2!f§.@url.toString() + _loc1_;
               this.§+!2§.load(new URLRequest(this.§7""§));
            }
            else
            {
               this.§-,§ = new Loader();
               this.§-,§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§6Q§);
               this.§-,§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§&!9§);
               this.§-,§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§5!]§);
               this.§7""§ = this.§6!Y§ + this.§6a§ + this.§2!f§.@swf.toString() + _loc1_;
               this.§-,§.load(new URLRequest(this.§7""§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §&!9§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§7""§;
         this.§5!l§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§7""§,§4!Q§.§#!L§);
      }
      
      private function §-!`§(param1:Event) : void
      {
         this.§`!R§.push(this.§+!2§.data);
         if(this.§0I§ != null)
         {
            this.§0I§(this.§+!2§.data);
         }
         if(this.§-B§)
         {
            this.§-B§.§1!r§(this.§+!2§.data,this.§@D§(this.§2!f§.@url));
         }
         this.§5!l§();
         ++this.§;!%§;
         this.§`!3§();
      }
      
      private function §@D§(param1:String) : String
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
      
      private function §5!]§(param1:ProgressEvent) : void
      {
         this.§4<§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §6Q§(param1:Event) : void
      {
         this.§5!l§();
         ++this.§;!%§;
         this.§`!3§();
      }
      
      private function §5!l§() : void
      {
         if(this.§-,§)
         {
            this.§-,§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6Q§);
            this.§-,§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!9§);
            this.§-,§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§6Q§);
            this.§-,§ = null;
         }
         if(this.§+!2§)
         {
            this.§+!2§.removeEventListener(Event.COMPLETE,this.§-!`§);
            this.§+!2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!9§);
            this.§+!2§.removeEventListener(ProgressEvent.PROGRESS,this.§5!]§);
            this.§+!2§ = null;
         }
         this.§2!f§ = null;
      }
      
      private function §`t§() : void
      {
         this.§4<§ = 0;
         if(this.§ else§ != null)
         {
            this.§ else§.call();
            this.§ else§ = null;
         }
      }
      
      public function §&v§() : void
      {
         this.§4<§ = 0;
         this.§-K§ = false;
         this.§#Y§ = 0;
         if(this.§0w§)
         {
            this.§0w§ = null;
         }
         this.§ else§ = null;
         this.§5!l§();
         if(this.§-B§)
         {
            this.§-B§.§&v§();
         }
      }
      
      public function §=!2§() : Number
      {
         if(!this.§<=§())
         {
            §#N§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§-K§ || !this.§0w§ || !this.§<=§())
         {
            §#N§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§;!%§ == this.§#Y§)
         {
            if(this.§-B§ && this.§#Y§ > 0)
            {
               if(this.§-B§.§2V§)
               {
                  return 1;
               }
               return (this.§;!%§ - 0.1) / this.§#Y§;
            }
            return 1;
         }
         return this.§;!%§ / this.§#Y§;
      }
   }
}
