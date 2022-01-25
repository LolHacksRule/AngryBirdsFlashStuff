package §!!4§
{
   import §#!&§.§<p§;
   import §-"§.§,_§;
   import §4^§.§=!D§;
   import §9L§.§?%§;
   import §`!3§.§2B§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §8>§
   {
      
      public static const §+!O§:String = "serializationJSON";
      
      public static const §?h§:String = "serializationURLParameters";
      
      private static var §9#§:Array = [81,101,89,100,100,66,100,105,68,90,119,103,84,76,110,88,116,105,80,89,112,51,98,86,117,89,67,53,112,77,54,118];
      
      private static var §,!C§:Array = [97,72,103,113,52,102,101,55,81,53,107,108,98,69,117,83,111,112,77,51];
       
      
      private var §-!4§:URLLoader;
      
      private var §>;§:§?%§;
      
      private var §2h§:Boolean = false;
      
      public function §8>§(param1:Object, param2:String, param3:§?%§, param4:String)
      {
         super();
         this.§-!4§ = new §<p§();
         this.§>;§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§-!4§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §+!O§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §=!D§.encode(param1);
               break;
            case §?h§:
               _loc5_.data = this.§3;§(param1);
         }
         this.§-!4§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§-!4§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#!5§);
         this.§-!4§.addEventListener(IOErrorEvent.IO_ERROR,this.§0!B§);
         _loc5_.url = param2;
         this.§2h§ = false;
         this.§-!4§.load(_loc5_);
      }
      
      public static function §`X§(param1:Object, param2:Boolean) : String
      {
         if(!param2)
         {
            return §2B§.§-l§([param1.levelId,param1.score,§,_§.§^m§.id,getText(§9#§)].join("|"));
         }
         return §2B§.§-l§([param1.levelId,param1.score,§,_§.§^m§.id,getText(§9#§),§,_§.competition,param1.blocks,param1.gamePlay,§-!#§.§4,§.§3!&§(),§-!#§.§4,§.§<M§].join("|"));
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
      
      public static function §#!X§() : String
      {
         return getText(§,!C§);
      }
      
      public function get §;]§() : Boolean
      {
         return this.§2h§;
      }
      
      private function §5!H§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§>;§.onComplete(param1);
         this.§2h§ = true;
         this.removeEventListeners();
      }
      
      private function §#!5§(param1:HTTPStatusEvent) : void
      {
         this.§>;§.§#!5§(param1);
      }
      
      private function §0!B§(param1:IOErrorEvent) : void
      {
         this.§>;§.§0!B§(param1);
         this.removeEventListeners();
      }
      
      public function get §<z§() : URLLoader
      {
         return this.§-!4§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§-!4§)
         {
            this.§-!4§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#!5§);
            this.§-!4§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§-!4§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!B§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§-!4§)
         {
            this.§-!4§.close();
            this.§-!4§ = null;
         }
         if(this.§>;§)
         {
            this.§>;§ = null;
         }
      }
      
      private function §3;§(param1:Object) : URLVariables
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
