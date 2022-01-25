package §?k§
{
   import § C§.§+Q§;
   import §#%§.§@-§;
   import §#-§.§4!K§;
   import §3!X§.§=>§;
   import §>9§.§9!V§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §[n§
   {
      
      public static const §,!b§:String = "serializationJSON";
      
      public static const §@N§:String = "serializationURLParameters";
      
      private static var §0!E§:Array = [81,101,89,100,100,66,100,105,68,90,119,103,84,76,110,88,116,105,80,89,112,51,98,86,117,89,67,53,112,77,54,118];
      
      private static var §]!6§:Array = [97,72,103,113,52,102,101,55,81,53,107,108,98,69,117,83,111,112,77,51];
       
      
      private var §6!I§:URLLoader;
      
      private var §>!6§:§+Q§;
      
      private var §[m§:Boolean = false;
      
      public function §[n§(param1:Object, param2:String, param3:§+Q§, param4:String)
      {
         super();
         this.§6!I§ = new §@-§();
         this.§>!6§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§6!I§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §,!b§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §4!K§.encode(param1);
               break;
            case §@N§:
               _loc5_.data = this.§[z§(param1);
         }
         this.§6!I§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§6!I§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<p§);
         this.§6!I§.addEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
         _loc5_.url = param2;
         this.§[m§ = false;
         this.§6!I§.load(_loc5_);
      }
      
      public static function §#D§(param1:Object, param2:Boolean) : String
      {
         if(!param2)
         {
            return §=>§.§!+§([param1.levelId,param1.score,§9!V§.§=!7§.id,getText(§0!E§)].join("|"));
         }
         return §=>§.§!+§([param1.levelId,param1.score,§9!V§.§=!7§.id,getText(§0!E§),§9!V§.competition,param1.blocks,param1.gamePlay,§"!@§.§-5§.§3u§(),§"!@§.§-5§.§3S§].join("|"));
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public static function §6w§() : String
      {
         return getText(§]!6§);
      }
      
      public function get §=!U§() : Boolean
      {
         return this.§[m§;
      }
      
      private function §!l§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§>!6§.onComplete(param1);
         this.§[m§ = true;
         this.removeEventListeners();
      }
      
      private function §<p§(param1:HTTPStatusEvent) : void
      {
         this.§>!6§.§<p§(param1);
      }
      
      private function §;n§(param1:IOErrorEvent) : void
      {
         this.§>!6§.§;n§(param1);
         this.removeEventListeners();
      }
      
      public function get §?!;§() : URLLoader
      {
         return this.§6!I§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§6!I§)
         {
            this.§6!I§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<p§);
            this.§6!I§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§6!I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§6!I§)
         {
            this.§6!I§.close();
            this.§6!I§ = null;
         }
         if(this.§>!6§)
         {
            this.§>!6§ = null;
         }
      }
      
      private function §[z§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
   }
}
