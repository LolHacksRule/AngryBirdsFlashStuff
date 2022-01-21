package §?H§
{
   import §^u§.§5!U§;
   import flash.events.EventDispatcher;
   
   public class §>!!§ extends EventDispatcher
   {
      
      private static var §default§:§5!U§;
      
      private static var §]!E§:Array;
      
      private static var §4#§:String;
      
      private static const §<!J§:Array = [{"levelId":"2-1"},{"levelId":"2-2"}];
      
      private static var §=!`§:int = 1;
       
      
      public function §>!!§()
      {
         super();
      }
      
      public static function get §^!4§() : §5!U§
      {
         return §default§;
      }
      
      public static function set §^!4§(param1:§5!U§) : void
      {
         §default§ = param1;
      }
      
      public static function get §5M§() : Object
      {
         return {
            "id":§default§.email,
            "nickName":§default§.name,
            "security":§default§.§,b§
         };
      }
      
      public static function get §-3§() : int
      {
         return §=!`§;
      }
      
      public static function set §-3§(param1:int) : void
      {
         §=!`§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §]!E§ = param1;
      }
      
      public static function §]a§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §]!E§)
         {
            §;!4§.§8'§.§with§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §]!E§;
      }
      
      public static function §]r§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<!J§)
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
      
      public static function §8S§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<!J§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §3N§(param1:String) : Boolean
      {
         var _loc2_:Object = §]r§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §4#§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §4#§ = param1;
      }
   }
}
