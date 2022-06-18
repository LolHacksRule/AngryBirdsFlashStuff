package §#!<§
{
   import §]i§.§]E§;
   import flash.events.EventDispatcher;
   
   public class §8!3§ extends EventDispatcher
   {
      
      private static var §!!B§:§]E§;
      
      private static var §#!F§:Array;
      
      private static var §=!<§:int = 1;
      
      private static var § !J§:int = 0;
      
      private static var §2!P§:String;
      
      private static var §0!Q§:Object;
      
      private static var §%!;§:String;
       
      
      public function §8!3§()
      {
         super();
      }
      
      public static function get §%!O§() : String
      {
         return §%!;§;
      }
      
      public static function set §%!O§(param1:String) : void
      {
         §%!;§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §0!Q§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §0!Q§ = param1;
      }
      
      public static function get §7%§() : String
      {
         return §2!P§;
      }
      
      public static function set §7%§(param1:String) : void
      {
         §2!P§ = param1;
      }
      
      public static function get §^!E§() : §]E§
      {
         return §!!B§;
      }
      
      public static function set §^!E§(param1:§]E§) : void
      {
         §!!B§ = param1;
      }
      
      public static function get credits() : int
      {
         return § !J§;
      }
      
      public static function set credits(param1:int) : void
      {
         § !J§ = param1;
      }
      
      public static function get §="§() : Object
      {
         return {
            "id":§!!B§.§5@§,
            "nickName":§!!B§.name,
            "security":§!!B§.§3!8§
         };
      }
      
      public static function get §5!<§() : int
      {
         return §=!<§;
      }
      
      public static function set §5!<§(param1:int) : void
      {
         §=!<§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §#!F§ = param1;
         for each(_loc2_ in param1)
         {
            §1R§.§0!N§.§#!^§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §#!F§;
      }
      
      public static function §]z§(param1:String) : Object
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
      
      public static function §-!I§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §]z§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §[h§(param1:String) : Boolean
      {
         var _loc2_:Object = §]z§(param1);
         return _loc2_ != null;
      }
      
      public static function §^_§(param1:String) : void
      {
         var _loc2_:Object = §]z§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
