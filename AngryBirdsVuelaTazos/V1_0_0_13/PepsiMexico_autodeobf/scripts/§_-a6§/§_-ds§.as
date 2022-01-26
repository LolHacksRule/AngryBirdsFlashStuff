package §_-a6§
{
   import §_-vF§.§_-fi§;
   import flash.events.EventDispatcher;
   
   public class §_-ds§ extends EventDispatcher
   {
      
      private static var §_-l8§:§_-fi§;
      
      private static var §_-fD§:Array;
      
      private static var §_-rd§:int = 1;
       
      
      public function §_-ds§()
      {
         super();
      }
      
      public static function get §_-qG§() : §_-fi§
      {
         return §_-l8§;
      }
      
      public static function set §_-qG§(param1:§_-fi§) : void
      {
         §_-l8§ = param1;
      }
      
      public static function get §_-2B§() : Object
      {
         return {
            "id":§_-l8§.§_-Xe§,
            "nickName":§_-l8§.name,
            "security":§_-l8§.§_-Z6§
         };
      }
      
      public static function get competition() : int
      {
         return §_-rd§;
      }
      
      public static function set competition(param1:int) : void
      {
         §_-rd§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-fD§ = param1;
         for each(_loc2_ in param1)
         {
            §_-2U§.§_-T1§.§_-mD§(_loc2_.levelId,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-fD§;
      }
      
      public static function §_-p0§(param1:String) : Object
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
      
      public static function §_-Xj§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-p0§(param1);
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
