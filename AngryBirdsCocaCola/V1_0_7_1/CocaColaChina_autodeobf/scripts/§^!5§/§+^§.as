package §^!5§
{
   import §%!X§.§=,§;
   import flash.events.EventDispatcher;
   
   public class §+^§ extends EventDispatcher
   {
      
      private static var §9!V§:§=,§;
      
      private static var § !9§:Array;
      
      private static var §=^§:int = 0;
       
      
      public function §+^§()
      {
         super();
      }
      
      public static function get §@U§() : §=,§
      {
         return §9!V§;
      }
      
      public static function set §@U§(param1:§=,§) : void
      {
         §9!V§ = param1;
      }
      
      public static function get §%!§() : Object
      {
         return {
            "id":§9!V§.§"!I§,
            "nickName":§9!V§.name,
            "security":§9!V§.§5!!§,
            "beats":§"!@§.§6!-§.§@!L§
         };
      }
      
      public static function get competition() : int
      {
         return §=^§;
      }
      
      public static function set competition(param1:int) : void
      {
         §=^§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         § !9§ = param1;
      }
      
      public static function §=!7§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in § !9§)
         {
            §"!@§.§6!-§.§^!V§(_loc1_.levelId,_loc1_.score);
            if(_loc1_.weekScore != undefined)
            {
               §"!@§.§6!-§.§1!+§(_loc1_.levelId,_loc1_.weekScore);
            }
            if(_loc1_.communityKey != undefined)
            {
               §"!@§.§6!-§.§[!Q§(_loc1_.communityKey);
            }
         }
      }
      
      public static function get levelProfile() : Array
      {
         return § !9§;
      }
      
      public static function §]Y§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in levelProfile)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §6!!§(param1:String) : Boolean
      {
         var _loc2_:Object = §]Y§(param1);
         if(_loc2_ != null && param1 == "2-6" && !§"!@§.§6!-§.personalGoal1Achieved)
         {
            return false;
         }
         if(_loc2_ != null && param1 == "2-7" && !§"!@§.§6!-§.personalGoal2Achieved)
         {
            return false;
         }
         if(_loc2_ != null && (param1 == "2-8" || param1 == "2-9" || param1 == "2-10") && !§"!@§.§6!-§.§3u§)
         {
            return false;
         }
         return _loc2_ != null;
      }
   }
}
