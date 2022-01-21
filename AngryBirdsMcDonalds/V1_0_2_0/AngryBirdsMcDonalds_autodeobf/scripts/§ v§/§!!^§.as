package § v§
{
   import §@]§.§?![§;
   import flash.events.EventDispatcher;
   
   public class §!!^§ extends EventDispatcher
   {
      
      private static var §<U§:§?![§;
      
      private static var §@s§:Array;
      
      private static var §?f§:String;
      
      private static const §2!J§:Array = [{"levelId":"2-1"},{"levelId":"2-2"}];
      
      private static var §67§:int = 1;
       
      
      public function §!!^§()
      {
         super();
      }
      
      public static function get §,!a§() : §?![§
      {
         return §<U§;
      }
      
      public static function set §,!a§(param1:§?![§) : void
      {
         §<U§ = param1;
      }
      
      public static function get §2n§() : Object
      {
         return {
            "id":§<U§.email,
            "nickName":§<U§.name,
            "security":§<U§.§,!@§
         };
      }
      
      public static function get §"!Y§() : int
      {
         return §67§;
      }
      
      public static function set §"!Y§(param1:int) : void
      {
         §67§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §@s§ = param1;
      }
      
      public static function §,%§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §@s§)
         {
            §'j§.§%g§.§[!B§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §@s§;
      }
      
      public static function §2!9§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §2!J§)
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
      
      public static function §use§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §2!J§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §!q§(param1:String) : Boolean
      {
         var _loc2_:Object = §2!9§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §?f§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §?f§ = param1;
      }
   }
}
