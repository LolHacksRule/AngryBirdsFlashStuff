package §;" §
{
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §!H§
   {
      
      private static var §5!n§:Dictionary = new Dictionary();
      
      private static var §%!m§:Number = 10;
       
      
      public function §!H§()
      {
         super();
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         §5!n§[param1] = param2;
      }
      
      public static function doJsCall(param1:String, ... rest) : void
      {
         var param0:String = param1;
         var params:Array = rest;
         var timer:Timer = new Timer(§%!m§,1);
         switch(param0)
         {
            case "startQuest":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §5!n§["onQuestStarted"](§,",§(),§'L§());
               });
               break;
            case "fetchQuests":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §5!n§["onQuestsFetched"](§;"-§());
               });
               break;
            case "completeQuest":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §5!n§["onQuestCompleted"](§;"-§(),§3!m§(),§8!C§(),§"!S§());
               });
               break;
            case "bolts":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §5!n§["onSetBolts"](§7N§());
               });
               break;
            case "increaseItemCount":
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
               {
                  §5!n§["onSetBlocks"](§5!#§());
               });
         }
         timer.start();
      }
      
      private static function §"!S§() : Boolean
      {
         return true;
      }
      
      private static function §8!C§() : String
      {
         return "{\"startingDate\":\"Oct 11, 2012 7:53:08 AM\",\"completionDate\":\"Oct 11, 2012 7:53:25 AM\",\"path\":\"1\",\"token\":\"bcca787208aef9386644a71aadfda5b0fbce6567\",\"levelId\":\"5a0091aa-f623-4b2c-8f7c-a989d4549336\",\"id\":\"" + Math.random() + "\",\"pack\":1,\"orderNum\":1,\"name\":\"So it Piggins\",\"xp\":4}";
      }
      
      private static function §,",§() : String
      {
         return "{\"path\":\"1\",\"xp\":4,\"orderNum\":1,\"pack\":1,\"name\":\"So it Piggins\",\"levelId\":\"e1a10335-c328-4cc4-8215-f9fa00fa5201\",\"startingDate\":\"Sep 27, 2012 10:34:14 AM\",\"token\":\"d7541e0dbbd637e4936684a051ec94c1dfa9391c\",\"id\":\"quest_tutorial_01_03\"}";
      }
      
      private static function §'L§() : String
      {
         return "{\"world\":{\"bird_1\":{\"x\":-5.199999999999999,\"id\":\"BIRD_REDBIG\",\"y\":-1.85},\"bird_2\":{\"x\":-10.2,\"id\":\"BIRD_REDBIG\",\"y\":-1.85},\"bird_4\":{\"x\":-20.2,\"id\":\"BIRD_REDBIG\",\"y\":-1.85},\"block_1\":{\"x\":50.95,\"angle\":0,\"id\":\"PIG_BASIC_MEDIUM\",\"y\":-6.95,\"uniqueID\":\"\",\"front\":false},\"bird_3\":{\"x\":-15.2,\"id\":\"BIRD_REDBIG\",\"y\":-1.85}},\"counts\":{\"birds\":4,\"blocks\":1,\"joints\":0},\"name\":null,\"slingshotY\":-8,\"LevelExtension\":0,\"scoreGold\":28176,\"slingshotX\":0,\"scoreEagle\":0,\"scoreSilver\":12600,\"camera\":[{\"left\":-24.2,\"scale\":0.5322687957418496,\"id\":\"SLINGSHOT\",\"y\":-15,\"right\":50.95,\"x\":13.375000000000002,\"bottom\":10,\"top\":-40},{\"left\":38.95,\"scale\":0.6,\"id\":\"CASTLE\",\"y\":-15,\"right\":62.95,\"x\":50.95,\"bottom\":10,\"top\":-40}],\"theme\":\"BACKGROUND_BLUE_GRASS\"}";
      }
      
      private static function §;"-§() : String
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
      
      private static function §3!m§() : String
      {
         return "{\"oldCoins\":0,\"oldBolts\":{\"maxBolts\":2,\"currentBolts\":1,\"lastRefresh\":\"Sep 17, 2012 9:47:08 AM\"},\"oldXp\":0,\"oldXpLevel\":1,\"newCoins\":1,\"newBolts\":{\"maxBolts\":3,\"currentBolts\":3,\"lastRefresh\":\"Oct 15, 2012 10:37:21 AM\"},\"newXp\":4, \"newItems\":{\"WOOD_BLOCK_2X1\":-1,\"MISC_FOOD_BANANA\":1,\"WOOD_TRIANGLE_4X4\":-1},\"newIsLevelUp\":true,\"newXpLevel\":2,\"minXp\":3,\"maxXp\":7,\"maxOldBlocks\":10,\"maxNewBlocks\":11}";
      }
      
      private static function §?g§() : String
      {
         return "{\"error\":true,\"reason\":\"Error starting quest: java.lang.IllegalArgumentException: Illegal quest id\"}";
      }
      
      private static function §5!#§() : int
      {
         return 50;
      }
      
      private static function §7N§() : String
      {
         return "{\"message\":\"User does not have enough coins to buy 1 bolts\",\"error\":true,\"exception\":\"java.lang.IllegalStateException: User does not have enough coins to buy 1 bolts\"}";
      }
   }
}
