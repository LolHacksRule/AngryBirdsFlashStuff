package §0L§
{
   import §!!M§.§,!+§;
   import flash.events.EventDispatcher;
   
   public class §&Y§ extends EventDispatcher
   {
      
      private static var §1!X§:§,!+§;
      
      private static var §@=§:Array;
      
      private static var §<!7§:int = 1;
      
      private static var §7=§:int = 0;
      
      private static var §??§:String;
      
      private static var §!!0§:Object;
      
      private static var §9!5§:String;
       
      
      public function §&Y§()
      {
         super();
      }
      
      public static function get §#!a§() : String
      {
         return §9!5§;
      }
      
      public static function set §#!a§(param1:String) : void
      {
         §9!5§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §!!0§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §!!0§ = param1;
      }
      
      public static function get §7!J§() : String
      {
         return §??§;
      }
      
      public static function set §7!J§(param1:String) : void
      {
         §??§ = param1;
      }
      
      public static function get §>!_§() : §,!+§
      {
         return §1!X§;
      }
      
      public static function set §>!_§(param1:§,!+§) : void
      {
         §1!X§ = param1;
      }
      
      public static function get credits() : int
      {
         return §7=§;
      }
      
      public static function set credits(param1:int) : void
      {
         §7=§ = param1;
      }
      
      public static function get §%T§() : Object
      {
         return {
            "id":§1!X§.§;S§,
            "nickName":§1!X§.name,
            "security":§1!X§.§'!=§
         };
      }
      
      public static function get §9!'§() : int
      {
         return §<!7§;
      }
      
      public static function set §9!'§(param1:int) : void
      {
         §<!7§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §@=§ = param1;
         for each(_loc2_ in param1)
         {
            §7!^§.§3!U§.§7!4§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §@=§;
      }
      
      public static function §;!#§(param1:String) : Object
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
      
      public static function §[0§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §;!#§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §'Z§(param1:String) : Boolean
      {
         var _loc2_:Object = §;!#§(param1);
         return _loc2_ != null;
      }
      
      public static function §]<§(param1:String) : void
      {
         var _loc2_:Object = §;!#§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
