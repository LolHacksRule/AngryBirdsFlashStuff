package §_-W0§
{
   import §_-ZI§.§_-9v§;
   import flash.events.EventDispatcher;
   
   public class §_-MC§ extends EventDispatcher
   {
      
      private static var §_-DK§:§_-9v§;
      
      private static var §_-5a§:Array;
      
      private static var §_-Oa§:int = 1;
       
      
      public function §_-MC§()
      {
         super();
      }
      
      public static function get §_-9H§() : §_-9v§
      {
         return §_-DK§;
      }
      
      public static function set §_-9H§(param1:§_-9v§) : void
      {
         §_-DK§ = param1;
      }
      
      public static function get §_-7w§() : Object
      {
         return {
            "id":§_-DK§.§_-Yv§,
            "nickName":§_-DK§.name,
            "security":§_-DK§.§_-le§
         };
      }
      
      public static function get competition() : int
      {
         return §_-Oa§;
      }
      
      public static function set competition(param1:int) : void
      {
         §_-Oa§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-5a§ = param1;
         for each(_loc2_ in param1)
         {
            §_-Qu§.§_-di§.§_-ux§(_loc2_.levelId,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-5a§;
      }
      
      public static function §_-yg§(param1:String) : Object
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
      
      public static function §_-wR§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-yg§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
   }
}
