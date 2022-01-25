package §`!7§
{
   import §@!2§.§%!W§;
   import flash.events.EventDispatcher;
   
   public class §[5§ extends EventDispatcher
   {
      
      private static var §4c§:§%!W§;
      
      private static var §?!5§:Array;
      
      private static var §0I§:int = 0;
       
      
      public function §[5§()
      {
         super();
      }
      
      public static function get §0c§() : §%!W§
      {
         return §4c§;
      }
      
      public static function set §0c§(param1:§%!W§) : void
      {
         §4c§ = param1;
      }
      
      public static function get §[!N§() : Object
      {
         return {
            "id":§4c§.§#c§,
            "nickName":§4c§.name,
            "security":§4c§.§!!6§,
            "beats":§=i§.§2S§.§'u§
         };
      }
      
      public static function get competition() : int
      {
         return §0I§;
      }
      
      public static function set competition(param1:int) : void
      {
         §0I§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §?!5§ = param1;
      }
      
      public static function §=!I§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §?!5§)
         {
            §=i§.§2S§.§,4§(_loc1_.levelId,_loc1_.score);
            if(_loc1_.weekScore != undefined)
            {
               §=i§.§2S§.§,!?§(_loc1_.levelId,_loc1_.weekScore);
            }
            if(_loc1_.communityKey != undefined)
            {
               §=i§.§2S§.§;![§(_loc1_.communityKey);
            }
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §?!5§;
      }
      
      public static function §,Z§(param1:String) : Object
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
      
      public static function §!_§(param1:String) : Boolean
      {
         var _loc2_:Object = §,Z§(param1);
         if(_loc2_ != null && param1 == "2-6" && !§=i§.§2S§.personalGoal1Achieved)
         {
            return false;
         }
         if(_loc2_ != null && param1 == "2-7" && !§=i§.§2S§.personalGoal2Achieved)
         {
            return false;
         }
         if(_loc2_ != null && (param1 == "2-8" || param1 == "2-9" || param1 == "2-10") && !§=i§.§2S§.§@!#§)
         {
            return false;
         }
         return _loc2_ != null;
      }
   }
}
