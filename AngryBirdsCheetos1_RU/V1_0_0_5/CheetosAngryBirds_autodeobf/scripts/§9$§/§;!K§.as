package §9$§
{
   import §5B§.§^`§;
   import flash.events.EventDispatcher;
   
   public class §;!K§ extends EventDispatcher
   {
      
      private static var §;!Z§:§^`§;
      
      private static var §8!R§:Array;
      
      private static var § ,§:int = 1;
      
      private static var §9j§:int = 0;
      
      private static var §-!4§:String;
      
      private static var §in§:Object;
      
      private static var §8h§:String;
       
      
      public function §;!K§()
      {
         super();
      }
      
      public static function get §5s§() : String
      {
         return §8h§;
      }
      
      public static function set §5s§(param1:String) : void
      {
         §8h§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §in§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §in§ = param1;
      }
      
      public static function get §`! §() : String
      {
         return §-!4§;
      }
      
      public static function set §`! §(param1:String) : void
      {
         §-!4§ = param1;
      }
      
      public static function get §+!K§() : §^`§
      {
         return §;!Z§;
      }
      
      public static function set §+!K§(param1:§^`§) : void
      {
         §;!Z§ = param1;
      }
      
      public static function get credits() : int
      {
         return §9j§;
      }
      
      public static function set credits(param1:int) : void
      {
         §9j§ = param1;
      }
      
      public static function get §=y§() : Object
      {
         return {
            "id":§;!Z§.§'!9§,
            "nickName":§;!Z§.name,
            "security":§;!Z§.§;!Y§
         };
      }
      
      public static function get §[!4§() : int
      {
         return § ,§;
      }
      
      public static function set §[!4§(param1:int) : void
      {
         § ,§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §8!R§ = param1;
         for each(_loc2_ in param1)
         {
            §3§.§6!Z§.§]?§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §8!R§;
      }
      
      public static function §%!0§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in levelProfile)
         {
            if(_loc2_.levelID == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8q§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §%!0§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function override(param1:String) : Boolean
      {
         var _loc2_:Object = §%!0§(param1);
         return _loc2_ != null;
      }
      
      public static function §-g§(param1:String) : void
      {
         var _loc2_:Object = §%!0§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
