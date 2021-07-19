package § ^§
{
   import flash.events.EventDispatcher;
   
   public class §`!2§ extends EventDispatcher
   {
      
      private static var §0!K§:§[C§;
      
      private static var §!!5§:Array;
      
      private static var §7`§:String;
      
      private static const §]s§:Array = [];
      
      private static var §;!j§:int = 1;
       
      
      public function §`!2§()
      {
         super();
      }
      
      public static function get §9!&§() : §[C§
      {
         return §0!K§;
      }
      
      public static function set §9!&§(param1:§[C§) : void
      {
         §0!K§ = param1;
      }
      
      public static function get §!!$§() : Object
      {
         return {
            "id":§0!K§.id,
            "nickName":§0!K§.name,
            "security":§0!K§.§4J§
         };
      }
      
      public static function get § !$§() : int
      {
         return §;!j§;
      }
      
      public static function set § !$§(param1:int) : void
      {
         §;!j§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §!!5§ = param1;
      }
      
      public static function §?>§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §!!5§)
         {
            (§6!!§.singleton as §4!=§).§?!b§.setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
            (§6!!§.singleton as §4!=§).§?!b§.§@!Q§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §!!5§;
      }
      
      public static function §+"#§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §]s§)
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
      
      public static function §`E§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §]s§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §'!d§(param1:String) : Boolean
      {
         var _loc2_:Object = §+"#§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return true;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §7`§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §7`§ = param1;
      }
   }
}
