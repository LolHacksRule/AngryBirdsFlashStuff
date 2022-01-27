package §1!6§
{
   import §;D§.§]T§;
   import flash.events.EventDispatcher;
   
   public class § !3§ extends EventDispatcher
   {
      
      private static var §-Z§:§]T§;
      
      private static var §&j§:Array;
      
      private static var § use§:String;
      
      private static var §5#§:int = 1;
       
      
      public function § !3§()
      {
         super();
      }
      
      public static function get §@!`§() : §]T§
      {
         return §-Z§;
      }
      
      public static function set §@!`§(param1:§]T§) : void
      {
         §-Z§ = param1;
      }
      
      public static function get § ^§() : Object
      {
         return {
            "id":§-Z§.§#!3§,
            "nickName":§-Z§.name,
            "security":§-Z§.§@]§
         };
      }
      
      public static function get §6!1§() : int
      {
         return §5#§;
      }
      
      public static function set §6!1§(param1:int) : void
      {
         §5#§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §&j§ = param1;
      }
      
      public static function §44§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §&j§)
         {
            §1F§.§=l§.§6!R§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §&j§;
      }
      
      public static function § V§(param1:String) : Object
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
      
      public static function §]D§(param1:String) : Boolean
      {
         var _loc2_:Object = § V§(param1);
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return § use§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         § use§ = param1;
      }
   }
}
