package §^!!§
{
   import §2!I§.§[!,§;
   import flash.events.EventDispatcher;
   
   public class §'!_§ extends EventDispatcher
   {
      
      private static var §;!7§:§[!,§;
      
      private static var §&!_§:Array;
      
      private static var §^2§:int = 1;
      
      private static var §6!^§:int = 0;
      
      private static var §5"§:String;
      
      private static var §9!?§:Object;
      
      private static var §&!U§:String;
       
      
      public function §'!_§()
      {
         super();
      }
      
      public static function get §[!H§() : String
      {
         return §&!U§;
      }
      
      public static function set §[!H§(param1:String) : void
      {
         §&!U§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §9!?§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §9!?§ = param1;
      }
      
      public static function get §&C§() : String
      {
         return §5"§;
      }
      
      public static function set §&C§(param1:String) : void
      {
         §5"§ = param1;
      }
      
      public static function get §=!"§() : §[!,§
      {
         return §;!7§;
      }
      
      public static function set §=!"§(param1:§[!,§) : void
      {
         §;!7§ = param1;
      }
      
      public static function get credits() : int
      {
         return §6!^§;
      }
      
      public static function set credits(param1:int) : void
      {
         §6!^§ = param1;
      }
      
      public static function get §&s§() : Object
      {
         return {
            "id":§;!7§.§^!F§,
            "nickName":§;!7§.name,
            "security":§;!7§.§^!,§
         };
      }
      
      public static function get §8_§() : int
      {
         return §^2§;
      }
      
      public static function set §8_§(param1:int) : void
      {
         §^2§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §&!_§ = param1;
         for each(_loc2_ in param1)
         {
            §2!-§.§5R§.§1V§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §&!_§;
      }
      
      public static function §@I§(param1:String) : Object
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
      
      public static function § !G§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §@I§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §7I§(param1:String) : Boolean
      {
         var _loc2_:Object = §@I§(param1);
         return _loc2_ != null;
      }
      
      public static function §@J§(param1:String) : void
      {
         var _loc2_:Object = §@I§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
