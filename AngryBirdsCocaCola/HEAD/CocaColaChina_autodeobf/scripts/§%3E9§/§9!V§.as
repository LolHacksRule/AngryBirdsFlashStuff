package §>9§
{
   import §=J§.§^<§;
   import flash.events.EventDispatcher;
   
   public class §9!V§ extends EventDispatcher
   {
      
      private static var § !9§:§^<§;
      
      private static var §=^§:Array;
      
      private static var §@U§:int = 0;
       
      
      public function §9!V§()
      {
         super();
      }
      
      public static function get §%!§() : §^<§
      {
         return § !9§;
      }
      
      public static function set §%!§(param1:§^<§) : void
      {
         § !9§ = param1;
      }
      
      public static function get §=!7§() : Object
      {
         return {
            "id":§ !9§.§7!;§,
            "nickName":§ !9§.name,
            "security":§ !9§.§<d§,
            "beats":§"!@§.§-5§.§3S§
         };
      }
      
      public static function get competition() : int
      {
         return §@U§;
      }
      
      public static function set competition(param1:int) : void
      {
         §@U§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §=^§ = param1;
      }
      
      public static function §]Y§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §=^§)
         {
            §"!@§.§-5§.§^!V§(_loc1_.levelId,_loc1_.score);
            if(_loc1_.weekScore != undefined)
            {
               §"!@§.§-5§.§;!K§(_loc1_.levelId,_loc1_.weekScore);
            }
            if(_loc1_.communityKey != undefined)
            {
               §"!@§.§-5§.§ !^§(_loc1_.communityKey);
            }
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §=^§;
      }
      
      public static function §6!!§(param1:String) : Object
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
      
      public static function §6p§(param1:String) : Boolean
      {
         var _loc2_:Object = §6!!§(param1);
         if(_loc2_ != null && param1 == "2-6" && !§"!@§.§-5§.personalGoal1Achieved)
         {
            return false;
         }
         if(_loc2_ != null && param1 == "2-7" && !§"!@§.§-5§.personalGoal2Achieved)
         {
            return false;
         }
         if(_loc2_ != null && (param1 == "2-8" || param1 == "2-9" || param1 == "2-10") && !§"!@§.§-5§.§[!Q§)
         {
            return false;
         }
         return _loc2_ != null;
      }
   }
}
