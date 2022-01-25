package §-"§
{
   import §"! §.§=s§;
   import flash.events.EventDispatcher;
   
   public class §,_§ extends EventDispatcher
   {
      
      private static var §6$§:§=s§;
      
      private static var §-?§:Array;
      
      private static var §3!,§:int = 0;
       
      
      public function §,_§()
      {
         super();
      }
      
      public static function get §9;§() : §=s§
      {
         return §6$§;
      }
      
      public static function set §9;§(param1:§=s§) : void
      {
         §6$§ = param1;
      }
      
      public static function get §^m§() : Object
      {
         return {
            "id":§6$§.§2-§,
            "nickName":§6$§.name,
            "security":§6$§.§"!4§,
            "beats":§-!#§.§4,§.§<M§
         };
      }
      
      public static function get competition() : int
      {
         return §3!,§;
      }
      
      public static function set competition(param1:int) : void
      {
         §3!,§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §-?§ = param1;
      }
      
      public static function §%t§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §-?§)
         {
            §-!#§.§4,§.§=!+§(_loc1_.levelId,_loc1_.score);
            if(_loc1_.weekScore != undefined)
            {
               §-!#§.§4,§.§?R§(_loc1_.levelId,_loc1_.weekScore);
            }
            if(_loc1_.communityKey != undefined)
            {
               §-!#§.§4,§.§0!0§(_loc1_.communityKey);
            }
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §-?§;
      }
      
      public static function §0!X§(param1:String) : Object
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
      
      public static function §%!F§(param1:String) : Boolean
      {
         var _loc2_:Object = §0!X§(param1);
         if(_loc2_ != null && param1 == "2-6" && !§-!#§.§4,§.personalGoal1Achieved)
         {
            return false;
         }
         if(_loc2_ != null && param1 == "2-7" && !§-!#§.§4,§.personalGoal2Achieved)
         {
            return false;
         }
         if(_loc2_ != null && (param1 == "2-8" || param1 == "2-9" || param1 == "2-10") && !§-!#§.§4,§.§>b§)
         {
            return false;
         }
         return _loc2_ != null;
      }
   }
}
