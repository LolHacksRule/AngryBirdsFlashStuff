package §_-rR§
{
   import §_-NW§.§_-XZ§;
   import flash.events.EventDispatcher;
   
   public class §_-7q§ extends EventDispatcher
   {
      
      private static var §_-KK§:§_-XZ§;
      
      private static var §_-1R§:Array;
      
      private static var §_-XL§:int = 1;
       
      
      public function §_-7q§()
      {
         super();
      }
      
      public static function get §_-ek§() : §_-XZ§
      {
         return §_-KK§;
      }
      
      public static function set §_-ek§(param1:§_-XZ§) : void
      {
         §_-KK§ = param1;
      }
      
      public static function get §_-Eg§() : Object
      {
         return {
            "id":§_-KK§.§_-iI§,
            "nickName":§_-KK§.name,
            "security":§_-KK§.§_-70§
         };
      }
      
      public static function get competition() : int
      {
         return §_-XL§;
      }
      
      public static function set competition(param1:int) : void
      {
         §_-XL§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-1R§ = param1;
         for each(_loc2_ in param1)
         {
            §_-0Y§.§_-rb§.§_-7P§(_loc2_.levelId,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-1R§;
      }
      
      public static function §_-4v§(param1:String) : Object
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
      
      public static function §_-q7§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-4v§(param1);
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
