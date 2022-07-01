package §8" §
{
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §6<§
   {
      
      private static var §3!f§:Dictionary = new Dictionary();
      
      private static var §#a§:Number = 10;
       
      
      public function §6<§()
      {
         super();
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         §3!f§[param1] = param2;
      }
      
      public static function doJsCall(param1:String, ... rest) : void
      {
         var param0:String = param1;
         var params:Array = rest;
         var timer:Timer = new Timer(§#a§,1);
         switch(param0)
         {
            case "startQuest":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §3!f§["onQuestStarted"](§6!$§(),§9@§());
               });
               break;
            case "fetchQuests":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §3!f§["onQuestsFetched"](§-!U§());
               });
               break;
            case "completeQuest":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §3!f§["onQuestCompleted"](§-!U§(),§67§(),§%!`§(),§>!h§());
               });
               break;
            case "bolts":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §3!f§["onSetBolts"](§<"6§());
               });
               break;
            case "increaseItemCount":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §3!f§["onSetBlocks"](§ case§());
               });
         }
         timer.start();
      }
      
      private static function §>!h§() : Boolean
      {
         return true;
      }
      
      private static function §%!`§() : String
      {
         return "{\"startingDate\":\"Oct 11, 2012 7:53:08 AM\",\"completionDate\":\"Oct 11, 2012 7:53:25 AM\",\"path\":\"1\",\"token\":\"bcca787208aef9386644a71aadfda5b0fbce6567\",\"levelId\":\"5a0091aa-f623-4b2c-8f7c-a989d4549336\",\"id\":\"" + Math.random() + "\",\"pack\":1,\"orderNum\":1,\"name\":\"So it Piggins\",\"xp\":4}";
      }
      
      private static function §6!$§() : String
      {
         return "{\"path\":\"1\",\"xp\":4,\"orderNum\":1,\"pack\":1,\"name\":\"So it Piggins\",\"levelId\":\"e1a10335-c328-4cc4-8215-f9fa00fa5201\",\"startingDate\":\"Sep 27, 2012 10:34:14 AM\",\"token\":\"d7541e0dbbd637e4936684a051ec94c1dfa9391c\",\"id\":\"quest_tutorial_01_03\"}";
      }
      
      private static function §9@§() : String
      {
         return "";
      }
      
      private static function §-!U§() : String
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
      
      private static function §67§() : String
      {
         return "{\"oldCoins\":0,\"oldBolts\":{\"maxBolts\":2,\"currentBolts\":1,\"lastRefresh\":\"Sep 17, 2012 9:47:08 AM\"},\"oldXp\":0,\"oldXpLevel\":1,\"newCoins\":1,\"newBolts\":{\"maxBolts\":3,\"currentBolts\":3,\"lastRefresh\":\"Oct 15, 2012 10:37:21 AM\"},\"newXp\":4, \"newItems\":{\"WOOD_BLOCK_2X1\":-1,\"MISC_FOOD_BANANA\":1,\"WOOD_TRIANGLE_4X4\":-1},\"newIsLevelUp\":true,\"newXpLevel\":2,\"minXp\":3,\"maxXp\":7,\"maxOldBlocks\":10,\"maxNewBlocks\":11}";
      }
      
      private static function §2!R§() : String
      {
         return "{\"error\":true,\"reason\":\"Error starting quest: java.lang.IllegalArgumentException: Illegal quest id\"}";
      }
      
      private static function § case§() : int
      {
         return 50;
      }
      
      private static function §<"6§() : Object
      {
         return "{\"coins\":0,\"bolts\":\"{\"maxBolts\":3,\"currentBolts\":3}\"}";
      }
   }
}
