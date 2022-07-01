package §!l§
{
   import §&W§.§7L§;
   import §,!!§.§0v§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §<!"§
   {
      
      private static var §`!z§:§<!"§;
       
      
      private var §@+§:Vector.<XML>;
      
      private var §6"$§:Boolean = false;
      
      private var §0X§:int;
      
      private var §-T§:int;
      
      private var §"",§:Function;
      
      private var §]?§:Function;
      
      private var §+!v§:Loader;
      
      private var §?!H§:URLLoader;
      
      private var §!w§:XML;
      
      private var §'!?§:String = "";
      
      private var §#"-§:int = 0;
      
      private var §1!<§:Vector.<String>;
      
      private var §5`§:String = "external_assets/LoadTest.swf";
      
      private var §+"8§:Boolean = false;
      
      private var §<S§:Array;
      
      private var §?!d§:String;
      
      private var §'u§:String;
      
      private var §+!r§:Number = 0;
      
      private var §&" §:String = "";
      
      private var §@!D§:§?!a§;
      
      public function §<!"§()
      {
         this.§<S§ = [];
         super();
      }
      
      public static function get §7!?§() : §<!"§
      {
         if(!§`!z§)
         {
            §`!z§ = new §<!"§();
         }
         return §`!z§;
      }
      
      public static function § !A§(param1:Loader, param2:XML) : void
      {
      }
      
      public function §8T§() : void
      {
         this.§<S§ = [];
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§?!a§, param5:Function = null) : void
      {
         this.§?!d§ = param2;
         this.§'u§ = param3;
         this.§+"8§ = true;
         this.§6"$§ = false;
         this.§@!D§ = param4;
         this.§"",§ = param5;
      }
      
      private function §'">§() : void
      {
         this.§+"8§ = true;
         this.§6"$§ = false;
      }
      
      public function § w§() : Boolean
      {
         return this.§+"8§;
      }
      
      public function §>!A§() : Boolean
      {
         if(this.§6"$§ || !this.§ w§())
         {
            return false;
         }
         this.§@+§ = new Vector.<XML>();
         this.§0X§ = 0;
         return true;
      }
      
      public function §=H§(param1:XML) : void
      {
         if(this.§6"$§ && this.§ w§())
         {
            return;
         }
         this.§@+§.push(param1);
         ++this.§0X§;
      }
      
      public function §6"#§(param1:Function = null) : void
      {
         if(this.§6"$§ && this.§ w§())
         {
            return;
         }
         this.§]?§ = param1;
         this.§0X§ = this.§@+§.length;
         this.§6"$§ = true;
         this.§#"5§();
      }
      
      private function §>!a§() : Boolean
      {
         if(this.§@!D§ && !this.§@!D§.§8!"§)
         {
            this.§@!D§.removeEventListener(Event.COMPLETE,this.§-!t§);
            this.§@!D§.addEventListener(Event.COMPLETE,this.§-!t§);
            return true;
         }
         return false;
      }
      
      private function §-!t§(param1:Event) : void
      {
         this.§@!D§.removeEventListener(Event.COMPLETE,this.§-!t§);
         this.§#"5§();
      }
      
      private function §#"5§() : void
      {
         if(this.§@+§.length > 0)
         {
            this.§[" §();
         }
         else if(this.§=!N§() >= 1)
         {
            this.§#=§();
         }
      }
      
      private function §[" §() : void
      {
         var _loc1_:String = null;
         if(this.§6"$§ && this.§ w§())
         {
            if(this.§>!a§())
            {
               return;
            }
            _loc1_ = "";
            if(this.§'u§ != null && this.§'u§.length > 0)
            {
               _loc1_ = "?version=" + this.§'u§;
            }
            this.§+!r§ = 0;
            this.§!w§ = this.§@+§.shift();
            if(this.§!w§.localName() == "pack")
            {
               this.§?!H§ = new URLLoader();
               this.§?!H§.dataFormat = URLLoaderDataFormat.BINARY;
               this.§?!H§.addEventListener(Event.COMPLETE,this.§?4§);
               this.§?!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!k§);
               this.§?!H§.addEventListener(ProgressEvent.PROGRESS,this.§7!,§);
               this.§&" § = this.§?!d§ + this.§!w§.@url.toString() + _loc1_;
               this.§?!H§.load(new URLRequest(this.§&" §));
            }
            else
            {
               this.§+!v§ = new Loader();
               this.§+!v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§3"1§);
               this.§+!v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§&!k§);
               this.§+!v§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§7!,§);
               this.§&" § = this.§?!d§ + this.§'!?§ + this.§!w§.@swf.toString() + _loc1_;
               this.§+!v§.load(new URLRequest(this.§&" §),new LoaderContext(false,ApplicationDomain.currentDomain));
            }
         }
      }
      
      private function §&!k§(param1:IOErrorEvent) : void
      {
         var _loc2_:String = this.§&" §;
         this.§&!g§();
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§&" §,§0v§.§"K§);
      }
      
      private function §?4§(param1:Event) : void
      {
         this.§<S§.push(this.§?!H§.data);
         if(this.§"",§ != null)
         {
            this.§"",§(this.§?!H§.data);
         }
         if(this.§@!D§)
         {
            this.§@!D§.§^!7§(this.§?!H§.data);
         }
         this.§&!g§();
         ++this.§-T§;
         this.§#"5§();
      }
      
      private function §7!,§(param1:ProgressEvent) : void
      {
         this.§+!r§ = param1.bytesLoaded / param1.bytesTotal;
      }
      
      private function §3"1§(param1:Event) : void
      {
         this.§&!g§();
         ++this.§-T§;
         this.§#"5§();
      }
      
      private function §&!g§() : void
      {
         if(this.§+!v§)
         {
            this.§+!v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3"1§);
            this.§+!v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!k§);
            this.§+!v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§3"1§);
            this.§+!v§ = null;
         }
         if(this.§?!H§)
         {
            this.§?!H§.removeEventListener(Event.COMPLETE,this.§?4§);
            this.§?!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!k§);
            this.§?!H§.removeEventListener(ProgressEvent.PROGRESS,this.§7!,§);
            this.§?!H§ = null;
         }
         this.§!w§ = null;
      }
      
      private function §#=§() : void
      {
         this.§+!r§ = 0;
         if(this.§]?§ != null)
         {
            this.§]?§.call();
            this.§]?§ = null;
         }
      }
      
      public function §&!2§() : void
      {
         this.§+!r§ = 0;
         this.§6"$§ = false;
         this.§0X§ = 0;
         if(this.§@+§)
         {
            this.§@+§ = null;
         }
         this.§]?§ = null;
         this.§&!g§();
      }
      
      public function §=!N§() : Number
      {
         if(!this.§ w§())
         {
            §7L§.log("[LoadManager] Init not complete yet!");
            return 0;
         }
         if(!this.§6"$§ || !this.§@+§ || !this.§ w§())
         {
            §7L§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
            return -1;
         }
         if(this.§-T§ == this.§0X§)
         {
            if(this.§@!D§ && this.§0X§ > 0)
            {
               if(this.§@!D§.§8!"§)
               {
                  return 1;
               }
               return (this.§-T§ + this.§+!r§ - 0.5) / this.§0X§;
            }
            return 1;
         }
         return this.§-T§ / this.§0X§;
      }
   }
}
