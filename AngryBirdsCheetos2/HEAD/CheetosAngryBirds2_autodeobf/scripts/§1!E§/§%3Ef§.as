package §1!E§
{
   import §5G§.StateConnecting;
   import flash.events.EventDispatcher;
   
   public class §>f§ extends EventDispatcher
   {
      
      private static var §^!e§:§class§;
      
      private static var §9!g§:Array;
      
      private static var §;!=§:String;
      
      private static var §-s§:int = 1;
      
      private static var §>$§:String;
      
      private static var §5!J§:Object;
      
      private static var §3a§:String;
       
      
      public function §>f§()
      {
         super();
      }
      
      public static function get §%!-§() : String
      {
         return §3a§;
      }
      
      public static function set §%!-§(param1:String) : void
      {
         §3a§ = param1;
      }
      
      public static function get §3;§() : Object
      {
         return §5!J§;
      }
      
      public static function set §3;§(param1:Object) : void
      {
         §5!J§ = param1;
      }
      
      public static function get §5!`§() : String
      {
         return §>$§;
      }
      
      public static function set §5!`§(param1:String) : void
      {
         §>$§ = param1;
      }
      
      public static function get §%!`§() : §class§
      {
         return §^!e§;
      }
      
      public static function set §%!`§(param1:§class§) : void
      {
         §^!e§ = param1;
      }
      
      public static function get §[!b§() : Object
      {
         return {
            "id":§^!e§.§6!W§,
            "nickName":§^!e§.name,
            "security":§^!e§.§#]§
         };
      }
      
      public static function get §const§() : int
      {
         return §-s§;
      }
      
      public static function set §const§(param1:int) : void
      {
         §-s§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §9!g§ = param1;
         for each(_loc2_ in param1)
         {
            §5!9§.§#%§.§6!X§(_loc2_.levelId,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §9!g§;
      }
      
      public static function §0!9§(param1:String) : Object
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
      
      public static function §9v§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §0!9§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §^!a§(param1:String) : Boolean
      {
         var _loc2_:Object = §0!9§(param1);
         return _loc2_ != null;
      }
      
      public static function §]!H§(param1:String) : void
      {
         var _loc2_:Object = §0!9§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
      
      public static function §1!P§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §9!g§)
         {
            §5!9§.§#%§.§6!X§(_loc1_.levelId,_loc1_.bestScore);
         }
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §;!=§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §;!=§ = param1;
      }
      
      public static function logout() : void
      {
         §>f§.§%!`§ = null;
         §>f§.§5!`§ = null;
         §>f§.levelProfile = null;
         §>f§.levelProfileSecurity = null;
         if(§5!9§.§-!O§)
         {
            §5!9§.§-!O§.§;!;§(StateConnecting.§3!?§);
         }
      }
   }
}
