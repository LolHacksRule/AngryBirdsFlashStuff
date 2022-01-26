package §?!"§
{
   import §"W§.§7`§;
   import flash.events.EventDispatcher;
   
   public class §^!`§ extends EventDispatcher
   {
      
      private static var §0!L§:§7`§;
      
      private static var §5!=§:Array;
      
      private static var §?u§:String;
      
      private static var §0X§:int = 1;
       
      
      public function §^!`§()
      {
         super();
      }
      
      public static function get §[K§() : §7`§
      {
         return §0!L§;
      }
      
      public static function set §[K§(param1:§7`§) : void
      {
         §0!L§ = param1;
      }
      
      public static function get §2?§() : Object
      {
         return {
            "id":§0!L§.§%X§,
            "nickName":§0!L§.name,
            "security":§0!L§.§=P§
         };
      }
      
      public static function get §-;§() : int
      {
         return §0X§;
      }
      
      public static function set §-;§(param1:int) : void
      {
         §0X§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §5!=§ = param1;
      }
      
      public static function §1n§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §5!=§)
         {
            §,-§.§?+§.§,R§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §5!=§;
      }
      
      public static function §6"§(param1:String) : Object
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
      
      public static function §=!R§(param1:String) : Boolean
      {
         var _loc2_:Object = §6"§(param1);
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §?u§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §?u§ = param1;
      }
   }
}
