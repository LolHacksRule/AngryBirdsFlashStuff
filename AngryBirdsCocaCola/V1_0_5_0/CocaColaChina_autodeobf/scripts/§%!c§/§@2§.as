package §%!c§
{
   import §each §.§>!;§;
   import flash.events.EventDispatcher;
   
   public class §@2§ extends EventDispatcher
   {
      
      private static var § v§:§>!;§;
      
      private static var §for§:Array;
      
      private static var §var §:int = 0;
       
      
      public function §@2§()
      {
         super();
      }
      
      public static function get §=!'§() : §>!;§
      {
         return § v§;
      }
      
      public static function set §=!'§(param1:§>!;§) : void
      {
         § v§ = param1;
      }
      
      public static function get §]!$§() : Object
      {
         return {
            "id":§ v§.§<!]§,
            "nickName":§ v§.name,
            "security":§ v§.§,Q§,
            "beats":§6T§.§>c§.§4!5§
         };
      }
      
      public static function get competition() : int
      {
         return §var §;
      }
      
      public static function set competition(param1:int) : void
      {
         §var § = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §for§ = param1;
      }
      
      public static function §<!#§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §for§)
         {
            §6T§.§>c§.§%!M§(_loc1_.levelId,_loc1_.score);
            if(_loc1_.weekScore != undefined)
            {
               §6T§.§>c§.§%C§(_loc1_.levelId,_loc1_.weekScore);
            }
            if(_loc1_.communityKey != undefined)
            {
               §6T§.§>c§.§%W§(_loc1_.communityKey);
            }
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §for§;
      }
      
      public static function §#U§(param1:String) : Object
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
      
      public static function § case§(param1:String) : Boolean
      {
         var _loc2_:Object = §#U§(param1);
         if(_loc2_ != null && param1 == "2-6" && !§6T§.§>c§.personalGoal1Achieved)
         {
            return false;
         }
         if(_loc2_ != null && param1 == "2-7" && !§6T§.§>c§.personalGoal2Achieved)
         {
            return false;
         }
         if(_loc2_ != null && (param1 == "2-8" || param1 == "2-9" || param1 == "2-10") && !§6T§.§>c§.§2!K§)
         {
            return false;
         }
         return _loc2_ != null;
      }
   }
}
