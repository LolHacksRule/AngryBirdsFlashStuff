package §^E§
{
   import §8A§.§`]§;
   import flash.events.EventDispatcher;
   
   public class §9!Q§ extends EventDispatcher
   {
      
      private static var §&<§:§`]§;
      
      private static var §^!@§:Array;
      
      private static var §7!N§:String;
      
      private static var §0D§:int = 1;
       
      
      public function §9!Q§()
      {
         super();
      }
      
      public static function get §`!$§() : §`]§
      {
         return §&<§;
      }
      
      public static function set §`!$§(param1:§`]§) : void
      {
         §&<§ = param1;
      }
      
      public static function get §4u§() : Object
      {
         return {
            "id":§&<§.§%^§,
            "nickName":§&<§.name,
            "security":§&<§.§^9§
         };
      }
      
      public static function get §;;§() : int
      {
         return §0D§;
      }
      
      public static function set §;;§(param1:int) : void
      {
         §0D§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §^!@§ = param1;
      }
      
      public static function §4!+§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §^!@§)
         {
            §"H§.§""§.§1P§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §^!@§;
      }
      
      public static function §`!&§(param1:String) : Object
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
      
      public static function § !D§(param1:String) : Boolean
      {
         var _loc2_:Object = §`!&§(param1);
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §7!N§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §7!N§ = param1;
      }
   }
}
