package §7!N§
{
   import §+J§.§?!'§;
   import flash.events.EventDispatcher;
   
   public class §0-§ extends EventDispatcher
   {
      
      private static var §7!$§:§?!'§;
      
      private static var §7!2§:Array;
      
      private static var §[s§:String;
      
      private static const §"!N§:Array = [{"levelId":"2-1"},{"levelId":"2-2"}];
      
      private static var §3!h§:int = 1;
       
      
      public function §0-§()
      {
         super();
      }
      
      public static function get §6!&§() : §?!'§
      {
         return §7!$§;
      }
      
      public static function set §6!&§(param1:§?!'§) : void
      {
         §7!$§ = param1;
      }
      
      public static function get §4!E§() : Object
      {
         return {
            "id":§7!$§.email,
            "nickName":§7!$§.name,
            "security":§7!$§.§7!j§
         };
      }
      
      public static function get §`'§() : int
      {
         return §3!h§;
      }
      
      public static function set §`'§(param1:int) : void
      {
         §3!h§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §7!2§ = param1;
      }
      
      public static function §5!^§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §7!2§)
         {
            §9!_§.§1!?§.§6c§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §7!2§;
      }
      
      public static function §=!6§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §"!N§)
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
      
      public static function §-5§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §"!N§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §1!L§(param1:String) : Boolean
      {
         var _loc2_:Object = §=!6§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §[s§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §[s§ = param1;
      }
   }
}
