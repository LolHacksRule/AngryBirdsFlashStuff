package §2!w§
{
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §>!k§
   {
      
      private static var §4<§:Dictionary = new Dictionary();
      
      private static var §3"2§:Number = 10;
       
      
      public function §>!k§()
      {
         super();
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         §4<§[param1] = param2;
      }
      
      public static function doJsCall(param1:String, ... rest) : void
      {
         var param0:String = param1;
         var params:Array = rest;
         var timer:Timer = new Timer(§3"2§,1);
         switch(param0)
         {
            case "startQuest":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §4<§["onQuestStarted"](§5y§(),§-!$§());
               });
               break;
            case "fetchQuests":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §4<§["onQuestsFetched"](§@&§());
               });
               break;
            case "completeQuest":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §4<§["onQuestCompleted"](§@&§(),§0!5§(),§7V§(),§#q§());
               });
               break;
            case "bolts":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §4<§["onSetBolts"](§2"7§());
               });
               break;
            case "increaseItemCount":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §4<§["onSetBlocks"](§!!I§());
               });
         }
         timer.start();
      }
      
      private static function §#q§() : Boolean
      {
         return true;
      }
      
      private static function §7V§() : String
      {
         return "{\"startingDate\":\"Oct 11, 2012 7:53:08 AM\",\"completionDate\":\"Oct 11, 2012 7:53:25 AM\",\"path\":\"1\",\"token\":\"bcca787208aef9386644a71aadfda5b0fbce6567\",\"levelId\":\"5a0091aa-f623-4b2c-8f7c-a989d4549336\",\"id\":\"" + Math.random() + "\",\"pack\":1,\"orderNum\":1,\"name\":\"So it Piggins\",\"xp\":4}";
      }
      
      private static function §5y§() : String
      {
         return "{\"path\":\"1\",\"xp\":4,\"orderNum\":1,\"pack\":1,\"name\":\"So it Piggins\",\"levelId\":\"e1a10335-c328-4cc4-8215-f9fa00fa5201\",\"startingDate\":\"Sep 27, 2012 10:34:14 AM\",\"token\":\"d7541e0dbbd637e4936684a051ec94c1dfa9391c\",\"id\":\"quest_tutorial_01_03\"}";
      }
      
      private static function §-!$§() : String
      {
         return "";
      }
      
      private static function §@&§() : String
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
      
      private static function §0!5§() : String
      {
         return "{\"oldCoins\":1,\"oldBolts\":{\"maxBolts\":2,\"currentBolts\":1,\"lastRefresh\":\"Sep 17, 2012 9:47:08 AM\"},\"oldXp\":5,\"oldXpLevel\":2,\"newCoins\":12,\"newBolts\":{\"maxBolts\":20,\"currentBolts\":3,\"lastRefresh\":\"Sep 17, 2012 9:48:09 AM\"},\"newXp\":10,\"newItems\":{\"WOOD_BLOCK_2X1\":2,\"WOOD_TRIANGLE_4X4\":-1, \"WOOD_BLOCK_8X1\":2, \"MISC_FOOD_DONUT\":-1, \"MISC_FOOD_WATERMELON\":2, \"MISC_FOOD_STRAWBERRY\":1, \"MISC_FOOD_HAM\":99},\"newXpLevel\":3,\"minXp\":10,\"maxXp\":16,\"newBlocks\":11,\"maxNewBlocks\":12}";
      }
      
      private static function §null§() : String
      {
         return "{\"error\":true,\"reason\":\"Error starting quest: java.lang.IllegalArgumentException: Illegal quest id\"}";
      }
      
      private static function §!!I§() : Object
      {
         return 250;
      }
      
      private static function §2"7§() : Object
      {
         return "{\"coins\":0,\"bolts\":\"{\"maxBolts\":3,\"currentBolts\":3}\"}";
      }
   }
}
