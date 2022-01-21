package §=b§
{
   import §2Y§.§]!k§;
   import flash.events.EventDispatcher;
   
   public class §,!G§ extends EventDispatcher
   {
      
      private static var §@!`§:§]!k§;
      
      private static var §%Z§:Array;
      
      private static var §6!K§:String;
      
      private static const §,1§:Array = [{"levelId":"2-1"},{"levelId":"2-2"}];
      
      private static var §%%§:int = 1;
       
      
      public function §,!G§()
      {
         super();
      }
      
      public static function get §-!8§() : §]!k§
      {
         return §@!`§;
      }
      
      public static function set §-!8§(param1:§]!k§) : void
      {
         §@!`§ = param1;
      }
      
      public static function get §5i§() : Object
      {
         return {
            "id":§@!`§.email,
            "nickName":§@!`§.name,
            "security":§@!`§.§>!n§
         };
      }
      
      public static function get § !p§() : int
      {
         return §%%§;
      }
      
      public static function set § !p§(param1:int) : void
      {
         §%%§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §%Z§ = param1;
      }
      
      public static function §3!p§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §%Z§)
         {
            §2!M§.§&!#§.§4!C§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §%Z§;
      }
      
      public static function §%C§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §,1§)
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
      
      public static function §0g§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §,1§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §&N§(param1:String) : Boolean
      {
         var _loc2_:Object = §%C§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §6!K§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §6!K§ = param1;
      }
   }
}
