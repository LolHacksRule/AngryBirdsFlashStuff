package §?k§
{
   import §#-§.§4!K§;
   import §,!0§.§8c§;
   import §2!S§.§3!X§;
   import §87§.§ C§;
   import §^!5§.§+^§;
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
       
      
      private var §;!A§:URLLoader;
      
      private var §>!6§:§ C§;
      
      private var §[m§:Boolean = false;
      
      public function §[n§(param1:Object, param2:String, param3:§ C§, param4:String)
      {
         super();
         this.§;!A§ = new §8c§();
         this.§>!6§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§;!A§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §,!b§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §4!K§.encode(param1);
               break;
            case §@N§:
               _loc5_.data = this.§^i§(param1);
         }
         this.§;!A§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§;!A§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<p§);
         this.§;!A§.addEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
         _loc5_.url = param2;
         this.§[m§ = false;
         this.§;!A§.load(_loc5_);
      }
      
      public static function §#D§(param1:Object, param2:Boolean) : String
      {
         if(!param2)
         {
            return §3!X§.§9!`§([param1.levelId,param1.score,§+^§.§%!§.id,getText(§0!E§)].join("|"));
         }
         return §3!X§.§9!`§([param1.levelId,param1.score,§+^§.§%!§.id,getText(§0!E§),§+^§.competition,param1.blocks,param1.gamePlay,§"!@§.§6!-§.§+L§(),§"!@§.§6!-§.§@!L§].join("|"));
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
         return this.§;!A§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§;!A§)
         {
            this.§;!A§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<p§);
            this.§;!A§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§;!A§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§;!A§)
         {
            this.§;!A§.close();
            this.§;!A§ = null;
         }
         if(this.§>!6§)
         {
            this.§>!6§ = null;
         }
      }
      
      private function §^i§(param1:Object) : URLVariables
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
