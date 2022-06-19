package §"!4§
{
   import §0!?§.§'!$§;
   import §<!<§.§^!I§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §1!m§
   {
      
      private static var §#!O§:§1!m§;
       
      
      private var §+!_§:Vector.<XML>;
      
      private var §["&§:Boolean = false;
      
      private var §5O§:int;
      
      private var §]!t§:int;
      
      private var §7s§:Function;
      
      private var §%&§:Function;
      
      private var §^t§:Loader;
      
      private var §"3§:URLLoader;
      
      private var §-9§:XML;
      
      private var §<!§:String = "";
      
      private var §`b§:int = 0;
      
      private var §6"@§:Vector.<String>;
      
      private var §3"9§:String = "external_assets/LoadTest.swf";
      
      private var §"!T§:Boolean = false;
      
      private var §,"5§:Array;
      
      private var §=7§:String;
      
      private var §6j§:String;
      
      private var §@!6§:Number = 0;
      
      private var §3!u§:String = "";
      
      private var §>"#§:§2!G§;
      
      public function §1!m§()
      {
         this.§,"5§ = [];
         super();
      }
      
      public static function get §8c§() : §1!m§
      {
         if(!§#!O§)
         {
            §#!O§ = new §1!m§();
         }
         return §#!O§;
      }
      
      public static function §^c§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §-! §() : void
      {
         this.§,"5§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§2!G§, param5:Function = null) : void
      {
         this.§=7§ = param2;
         this.§6j§ = param3;
         this.§"!T§ = true;
         this.§["&§ = false;
         this.§>"#§ = param4;
         this.§7s§ = param5;
      }
      
      private function §<"7§() : void
      {
         this.§"!T§ = true;
         this.§["&§ = false;
      }
      
      public function §7! §() : Boolean
      {
         return this.§"!T§;
      }
      
      public function §9Z§() : Boolean
      {
         if(this.§["&§ || !this.§7! §())
         {
            return false;
         }
         this.§+!_§ = new Vector.<XML>();
         this.§5O§ = 0;
         return true;
      }
      
      public function §0!b§(param1:XML) : void
      {
         if(this.§["&§ && this.§7! §())
         {
            return;
         }
         this.§+!_§.push(param1);
         ++this.§5O§;
      }
      
      public function §7?§(param1:Function = null) : void
      {
         if(this.§["&§ && this.§7! §())
         {
            return;
         }
         this.§%&§ = param1;
         this.§5O§ = this.§+!_§.length;
         this.§["&§ = true;
         this.§!!>§();
      }
      
      private function §]a§() : Boolean
      {
         if(this.§>"#§ && !this.§>"#§.§-!4§)
         {
            this.§>"#§.removeEventListener(Event.COMPLETE,this.§'!x§);
            this.§>"#§.addEventListener(Event.COMPLETE,this.§'!x§);
            return true;
         }
         return false;
      }
      
      private function §'!x§(param1:Event) : void
      {
         this.§>"#§.removeEventListener(Event.COMPLETE,this.§'!x§);
         this.§!!>§();
      }
      
      private function §!!>§() : void
      {
         if(this.§+!_§.length > 0)
         {
            this.§'!K§();
         }
         else if(this.§!7§() >= 1)
         {
            this.§21§();
         }
      }
      
      private function §'!K§() : void
      {
         var _loc1_:String = null;
         if(this.§["&§ && this.§7! §())
         {
            if(this.§]a§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§6j§ != null && this.§6j§.length > 0)
            {
               _loc1_ = "?version=" + this.§6j§;
            }
            this.§@!6§ = 0;
            this.§-9§ = this.§+!_§.shift();
            if(this.§-9§.localName() == "pack")
            {
               this.§"3§ = new URLLoader();
               this.§"3§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§"3§.addEventListener(Event.COMPLETE,this.§>!B§);
               this.§"3§.addEventListener(IOErrorEvent.IO_ERROR,this.§>u§);
               this.§"3§.addEventListener(ProgressEvent.PROGRESS,this.§4!6§);
               this.§3!u§ = this.§=7§ + this.§-9§.@url.toString() + _loc1_;
               this.§"3§.load(new URLRequest(this.§3!u§));
            }
            else
            {
               this.§^t§ = new Loader();
               this.§^t§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2D§);
               this.§^t§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§>u§);
               this.§^t§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§4!6§);
               this.§3!u§ = this.§=7§ + this.§<!§ + this.§-9§.@swf.toString() + _loc1_;
               this.§^t§.load(new URLRequest(this.§3!u§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §>u§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§3!u§;
         this.§0;§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§3!u§,§^!I§.§]D§);
      }
      
      private function §>!B§(param1:Event) : void
      {
         this.§,"5§.push(this.§"3§.data);
         if(this.§7s§ != null)
         {
            this.§7s§(this.§"3§.data);
         }
         if(this.§>"#§)
         {
            this.§>"#§.§&!]§(this.§"3§.data);
         }
         this.§0;§();
         ++this.§]!t§;
         this.§!!>§();
      }
      
      private function §4!6§(param1:ProgressEvent) : void
      {
         this.§@!6§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §2D§(param1:Event) : void
      {
         this.§0;§();
         ++this.§]!t§;
         this.§!!>§();
      }
      
      private function §0;§() : void
      {
         if(this.§^t§)
         {
            this.§^t§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2D§);
            this.§^t§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§>u§);
            this.§^t§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§2D§);
            this.§^t§ = null;
         }
         if(this.§"3§)
         {
            this.§"3§.removeEventListener(Event.COMPLETE,this.§>!B§);
            this.§"3§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>u§);
            this.§"3§.removeEventListener(ProgressEvent.PROGRESS,this.§4!6§);
            this.§"3§ = null;
         }
         this.§-9§ = null;
      }
      
      private function §21§() : void
      {
         this.§@!6§ = 0;
         if(this.§%&§ != null)
         {
            this.§%&§.call();
            this.§%&§ = null;
         }
      }
      
      public function §5a§() : void
      {
         this.§@!6§ = 0;
         this.§["&§ = false;
         this.§5O§ = 0;
         if(this.§+!_§)
         {
            this.§+!_§ = null;
         }
         this.§%&§ = null;
         this.§0;§();
      }
      
      public function §!7§() : Number
      {
         if(!this.§7! §())
         {
            §'!$§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§["&§ || !this.§+!_§ || !this.§7! §())
         {
            §'!$§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§]!t§ == this.§5O§)
         {
            if(this.§>"#§ && this.§5O§ > 0)
            {
               if(this.§>"#§.§-!4§)
               {
                  return 1;
               }
               return (this.§]!t§ + this.§@!6§ - 0.5) / this.§5O§;
            }
            return 1;
         }
         return this.§]!t§ / this.§5O§;
      }
   }
}
