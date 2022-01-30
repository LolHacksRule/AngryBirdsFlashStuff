package §63§
{
   import flash.events.EventDispatcher;
   
   public class §^!!§ extends EventDispatcher
   {
      
      private static var §6!]§:§%!8§;
      
      private static var §3"2§:Array;
      
      private static var §[Y§:String;
      
      private static const §`"§:Array = [];
      
      private static var §4!N§:int = 1;
       
      
      public function §^!!§()
      {
         super();
      }
      
      public static function get §]!P§() : §%!8§
      {
         return §6!]§;
      }
      
      public static function set §]!P§(param1:§%!8§) : void
      {
         §6!]§ = param1;
      }
      
      public static function get §+A§() : Object
      {
         return {
            "id":§6!]§.id,
            "nickName":§6!]§.name,
            "security":§6!]§.§>4§
         };
      }
      
      public static function get §&!§() : int
      {
         return §4!N§;
      }
      
      public static function set §&!§(param1:int) : void
      {
         §4!N§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §3"2§ = param1;
      }
      
      public static function §9!m§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §3"2§)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=! §.setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
            (§-!I§.§[f§ as AngryBirdsCustom).§=! §.§=!C§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §3"2§;
      }
      
      public static function §@r§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §`"§)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc2_ in levelProfile)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § !R§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §`"§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §=!"§(param1:String) : Boolean
      {
         var _loc2_:Object = §@r§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §[Y§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §[Y§ = param1;
      }
   }
}
