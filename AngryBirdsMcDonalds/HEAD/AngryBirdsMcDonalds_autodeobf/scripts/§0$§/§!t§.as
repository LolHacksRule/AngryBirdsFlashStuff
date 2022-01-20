package §0$§
{
   import §=f§.§#!A§;
   import flash.events.EventDispatcher;
   
   public class §!t§ extends EventDispatcher
   {
      
      private static var §=>§:§#!A§;
      
      private static var §=!f§:Array;
      
      private static var §6t§:String;
      
      private static const §[!Q§:Array = [{"levelId":"2-1"},{"levelId":"2-2"}];
      
      private static var §8!f§:int = 1;
       
      
      public function §!t§()
      {
         super();
      }
      
      public static function get §<1§() : §#!A§
      {
         return §=>§;
      }
      
      public static function set §<1§(param1:§#!A§) : void
      {
         §=>§ = param1;
      }
      
      public static function get §[B§() : Object
      {
         return {
            "id":§=>§.email,
            "nickName":§=>§.name,
            "security":§=>§.§7!F§
         };
      }
      
      public static function get §;F§() : int
      {
         return §8!f§;
      }
      
      public static function set §;F§(param1:int) : void
      {
         §8!f§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §=!f§ = param1;
      }
      
      public static function §5>§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §=!f§)
         {
            §3![§.§5!6§.§3!d§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §=!f§;
      }
      
      public static function §`!o§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §[!Q§)
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
      
      public static function §0P§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §[!Q§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §>E§(param1:String) : Boolean
      {
         var _loc2_:Object = §`!o§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §6t§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §6t§ = param1;
      }
   }
}
