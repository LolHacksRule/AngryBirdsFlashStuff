package §<o§
{
   import §+!Z§.§ !1§;
   import §5!"§.§+!2§;
   import §7L§.§"%§;
   import §^>§.§5b§;
   import §`!7§.§[5§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#D§
   {
      
      public static const § !a§:String = "serializationJSON";
      
      public static const §use§:String = "serializationURLParameters";
      
      private static var §;!a§:Array = [81,101,89,100,100,66,100,105,68,90,119,103,84,76,110,88,116,105,80,89,112,51,98,86,117,89,67,53,112,77,54,118];
      
      private static var §`!I§:Array = [97,72,103,113,52,102,101,55,81,53,107,108,98,69,117,83,111,112,77,51];
       
      
      private var §5!Z§:URLLoader;
      
      private var §^k§:§5b§;
      
      private var §]!a§:Boolean = false;
      
      public function §#D§(param1:Object, param2:String, param3:§5b§, param4:String)
      {
         super();
         this.§5!Z§ = new § !1§();
         this.§^k§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§5!Z§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case § !a§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §+!2§.encode(param1);
               break;
            case §use§:
               _loc5_.data = this.§6A§(param1);
         }
         this.§5!Z§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§5!Z§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5x§);
         this.§5!Z§.addEventListener(IOErrorEvent.IO_ERROR,this.§'1§);
         _loc5_.url = param2;
         this.§]!a§ = false;
         this.§5!Z§.load(_loc5_);
      }
      
      public static function §null§(param1:Object, param2:Boolean) : String
      {
         if(!param2)
         {
            return §"%§.§8!L§([param1.levelId,param1.score,§[5§.§[!N§.id,getText(§;!a§)].join("|"));
         }
         return §"%§.§8!L§([param1.levelId,param1.score,§[5§.§[!N§.id,getText(§;!a§),§[5§.competition,param1.blocks,param1.gamePlay,§=i§.§2S§.§!!Q§(),§=i§.§2S§.§'u§].join("|"));
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
      
      public static function §;!#§() : String
      {
         return getText(§`!I§);
      }
      
      public function get § !`§() : Boolean
      {
         return this.§]!a§;
      }
      
      private function § y§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§^k§.onComplete(param1);
         this.§]!a§ = true;
         this.removeEventListeners();
      }
      
      private function §5x§(param1:HTTPStatusEvent) : void
      {
         this.§^k§.§5x§(param1);
      }
      
      private function §'1§(param1:IOErrorEvent) : void
      {
         this.§^k§.§'1§(param1);
         this.removeEventListeners();
      }
      
      public function get §+^§() : URLLoader
      {
         return this.§5!Z§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§5!Z§)
         {
            this.§5!Z§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5x§);
            this.§5!Z§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§5!Z§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'1§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§5!Z§)
         {
            this.§5!Z§.close();
            this.§5!Z§ = null;
         }
         if(this.§^k§)
         {
            this.§^k§ = null;
         }
      }
      
      private function §6A§(param1:Object) : URLVariables
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
