package §&"8§
{
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §9!0§
   {
      
      private static var §=",§:Dictionary = new Dictionary();
      
      private static var §+_§:Number = 10;
       
      
      public function §9!0§()
      {
         super();
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         §=",§[param1] = param2;
      }
      
      public static function doJsCall(param1:String, ... rest) : void
      {
         var param0:String = param1;
         var params:Array = rest;
         var timer:Timer = new Timer(§+_§,1);
         switch(param0)
         {
            case "startQuest":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §=",§["onQuestStarted"](§7a§(),§@b§());
               });
               break;
            case "fetchQuests":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §=",§["onQuestsFetched"](§!!Z§());
               });
               break;
            case "completeQuest":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §=",§["onQuestCompleted"](§!!Z§(),§4!P§());
               });
         }
         timer.start();
      }
      
      private static function §7a§() : String
      {
         return "{\"path\":\"1\",\"xp\":4,\"orderNum\":1,\"pack\":1,\"name\":\"So it Piggins\",\"levelId\":\"e1a10335-c328-4cc4-8215-f9fa00fa5201\",\"startingDate\":\"Sep 27, 2012 10:34:14 AM\",\"token\":\"d7541e0dbbd637e4936684a051ec94c1dfa9391c\",\"id\":\"quest_tutorial_01_03\"}";
      }
      
      private static function §@b§() : String
      {
         return "";
      }
      
      private static function §!!Z§() : String
      {
         var _loc1_:* = "{";
         var _loc2_:int = 0;
         while(_loc2_ < 20)
         {
            _loc1_ = _loc1_ + "\"" + _loc2_.toString() + "\":{\"name\":\"" + "Quest" + _loc2_.toString() + "\", \"id\":\"" + _loc2_.toString() + "\"}";
            if(_loc2_ != 19)
            {
               _loc1_ += ", ";
            }
            _loc2_++;
         }
         return _loc1_ + "}";
      }
      
      private static function §4!P§() : String
      {
         return "{\"oldCoins\":1,\"oldBolts\":{\"maxBolts\":2,\"currentBolts\":1,\"lastRefresh\":\"Sep 17, 2012 9:47:08 AM\"},\"oldXp\":5,\"oldXpLevel\":2,\"newCoins\":2,\"newBolts\":{\"maxBolts\":3,\"currentBolts\":3,\"lastRefresh\":\"Sep 17, 2012 9:48:09 AM\"},\"newXp\":10,\"newItems\":{\"WOOD_BLOCK_2X1\":2, \"WOOD_BLOCK_8X1\":2, \"MISC_FOOD_DONUT\":-1, \"MISC_FOOD_WATERMELON\":2, \"MISC_FOOD_STRAWBERRY\":1, \"MISC_FOOD_HAM\":99},\"newIsLevelUp\":true,\"newXpLevel\":3,\"minXp\":10,\"maxXp\":16,\"newBlocks\":11,\"maxNewBlocks\":12}";
      }
   }
}
