package §?" §
{
   import §6o§.§+!k§;
   import §<a§.§!!m§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §=!L§
   {
      
      private static var §2"<§:§=!L§;
       
      
      private var §3u§:Vector.<XML>;
      
      private var §[&§:Boolean = false;
      
      private var §"+§:int;
      
      private var §,",§:int;
      
      private var §5!<§:Function;
      
      private var §>!5§:Function;
      
      private var §]D§:Loader;
      
      private var § !4§:URLLoader;
      
      private var §,"-§:XML;
      
      private var §""9§:String = "";
      
      private var §&[§:int = 0;
      
      private var §=!m§:Vector.<String>;
      
      private var §,"$§:String = "external_assets/LoadTest.swf";
      
      private var §^!0§:Boolean = false;
      
      private var §3!@§:Array;
      
      private var §&t§:String;
      
      private var §;!k§:String;
      
      private var §-!]§:Number = 0;
      
      private var §0f§:String = "";
      
      private var §8!H§:§7"8§;
      
      public function §=!L§()
      {
         this.§3!@§ = [];
         super();
      }
      
      public static function get §;"§() : §=!L§
      {
         if(!§2"<§)
         {
            §2"<§ = new §=!L§();
         }
         return §2"<§;
      }
      
      public static function § !v§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §-!`§() : void
      {
         this.§3!@§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§7"8§, param5:Function = null) : void
      {
         this.§&t§ = param2;
         this.§;!k§ = param3;
         this.§^!0§ = true;
         this.§[&§ = false;
         this.§8!H§ = param4;
         this.§5!<§ = param5;
      }
      
      private function §#h§() : void
      {
         this.§^!0§ = true;
         this.§[&§ = false;
      }
      
      public function §6j§() : Boolean
      {
         return this.§^!0§;
      }
      
      public function §%!D§() : Boolean
      {
         if(this.§[&§ || !this.§6j§())
         {
            return false;
         }
         this.§3u§ = new Vector.<XML>();
         this.§"+§ = 0;
         return true;
      }
      
      public function §+9§(param1:XML) : void
      {
         if(this.§[&§ && this.§6j§())
         {
            return;
         }
         this.§3u§.push(param1);
         ++this.§"+§;
      }
      
      public function §@j§(param1:Function = null) : void
      {
         if(this.§[&§ && this.§6j§())
         {
            return;
         }
         this.§>!5§ = param1;
         this.§"+§ = this.§3u§.length;
         this.§[&§ = true;
         this.§-O§();
      }
      
      private function §0^§() : Boolean
      {
         if(this.§8!H§ && !this.§8!H§.§%!'§)
         {
            this.§8!H§.removeEventListener(Event.COMPLETE,this.§8!5§);
            this.§8!H§.addEventListener(Event.COMPLETE,this.§8!5§);
            return true;
         }
         return false;
      }
      
      private function §8!5§(param1:Event) : void
      {
         this.§8!H§.removeEventListener(Event.COMPLETE,this.§8!5§);
         this.§-O§();
      }
      
      private function §-O§() : void
      {
         if(this.§3u§.length > 0)
         {
            this.§>"C§();
         }
         else if(this.§-!y§() >= 1)
         {
            this.§1R§();
         }
      }
      
      private function §>"C§() : void
      {
         var _loc1_:String = null;
         if(this.§[&§ && this.§6j§())
         {
            if(this.§0^§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§;!k§ != null && this.§;!k§.length > 0)
            {
               _loc1_ = "?version=" + this.§;!k§;
            }
            this.§-!]§ = 0;
            this.§,"-§ = this.§3u§.shift();
            if(this.§,"-§.localName() == "pack")
            {
               this.§ !4§ = new URLLoader();
               this.§ !4§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§ !4§.addEventListener(Event.COMPLETE,this.§implements§);
               this.§ !4§.addEventListener(IOErrorEvent.IO_ERROR,this.§"!f§);
               this.§ !4§.addEventListener(ProgressEvent.PROGRESS,this.§]5§);
               this.§0f§ = this.§&t§ + this.§,"-§.@url.toString() + _loc1_;
               this.§ !4§.load(new URLRequest(this.§0f§));
            }
            else
            {
               this.§]D§ = new Loader();
               this.§]D§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;l§);
               this.§]D§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"!f§);
               this.§]D§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§]5§);
               this.§0f§ = this.§&t§ + this.§""9§ + this.§,"-§.@swf.toString() + _loc1_;
               this.§]D§.load(new URLRequest(this.§0f§),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §"!f§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§0f§;
         this.§-!'§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§0f§,§!!m§.§5"#§);
      }
      
      private function §implements§(param1:Event) : void
      {
         this.§3!@§.push(this.§ !4§.data);
         if(this.§5!<§ != null)
         {
            this.§5!<§(this.§ !4§.data);
         }
         if(this.§8!H§)
         {
            this.§8!H§.§,!T§(this.§ !4§.data);
         }
         this.§-!'§();
         ++this.§,",§;
         this.§-O§();
      }
      
      private function §]5§(param1:ProgressEvent) : void
      {
         this.§-!]§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §;l§(param1:Event) : void
      {
         this.§-!'§();
         ++this.§,",§;
         this.§-O§();
      }
      
      private function §-!'§() : void
      {
         if(this.§]D§)
         {
            this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;l§);
            this.§]D§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!f§);
            this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;l§);
            this.§]D§ = null;
         }
         if(this.§ !4§)
         {
            this.§ !4§.removeEventListener(Event.COMPLETE,this.§implements§);
            this.§ !4§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"!f§);
            this.§ !4§.removeEventListener(ProgressEvent.PROGRESS,this.§]5§);
            this.§ !4§ = null;
         }
         this.§,"-§ = null;
      }
      
      private function §1R§() : void
      {
         this.§-!]§ = 0;
         if(this.§>!5§ != null)
         {
            this.§>!5§.call();
            this.§>!5§ = null;
         }
      }
      
      public function §5l§() : void
      {
         this.§-!]§ = 0;
         this.§[&§ = false;
         this.§"+§ = 0;
         if(this.§3u§)
         {
            this.§3u§ = null;
         }
         this.§>!5§ = null;
         this.§-!'§();
      }
      
      public function §-!y§() : Number
      {
         if(!this.§6j§())
         {
            §+!k§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§[&§ || !this.§3u§ || !this.§6j§())
         {
            §+!k§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§,",§ == this.§"+§)
         {
            if(this.§8!H§ && this.§"+§ > 0)
            {
               if(this.§8!H§.§%!'§)
               {
                  return 1;
               }
               return (this.§,",§ + this.§-!]§ - 0.5) / this.§"+§;
            }
            return 1;
         }
         return this.§,",§ / this.§"+§;
      }
   }
}
