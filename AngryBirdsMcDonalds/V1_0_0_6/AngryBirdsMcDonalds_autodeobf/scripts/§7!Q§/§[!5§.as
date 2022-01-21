package §7!Q§
{
   import § !O§.§9!F§;
   import flash.events.EventDispatcher;
   
   public class §[!5§ extends EventDispatcher
   {
      
      private static var §#!h§:§9!F§;
      
      private static var §#h§:Array;
      
      private static var §+W§:String;
      
      private static const §0!b§:Array = [{"levelId":"2-1"},{"levelId":"2-2"}];
      
      private static var §1!Q§:int = 1;
       
      
      public function §[!5§()
      {
         super();
      }
      
      public static function get §7!h§() : §9!F§
      {
         return §#!h§;
      }
      
      public static function set §7!h§(param1:§9!F§) : void
      {
         §#!h§ = param1;
      }
      
      public static function get §[y§() : Object
      {
         return {
            "id":§#!h§.email,
            "nickName":§#!h§.name,
            "security":§#!h§.§[!9§
         };
      }
      
      public static function get §!a§() : int
      {
         return §1!Q§;
      }
      
      public static function set §!a§(param1:int) : void
      {
         §1!Q§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §#h§ = param1;
      }
      
      public static function §[!3§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §#h§)
         {
            § 4§.§?H§.§#!k§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §#h§;
      }
      
      public static function §>a§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §0!b§)
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
      
      public static function §1G§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §0!b§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §'A§(param1:String) : Boolean
      {
         var _loc2_:Object = §>a§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §+W§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §+W§ = param1;
      }
   }
}
