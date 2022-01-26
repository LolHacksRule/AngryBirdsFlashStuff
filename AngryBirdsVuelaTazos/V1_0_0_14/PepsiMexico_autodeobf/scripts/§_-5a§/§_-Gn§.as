package §_-5a§
{
   import §_-Xk§.§_-o5§;
   import flash.events.EventDispatcher;
   
   public class §_-Gn§ extends EventDispatcher
   {
      
      private static var §_-nY§:§_-o5§;
      
      private static var §_-au§:Array;
      
      private static var §_-wt§:int = 1;
       
      
      public function §_-Gn§()
      {
         super();
      }
      
      public static function get §_-Yd§() : §_-o5§
      {
         return §_-nY§;
      }
      
      public static function set §_-Yd§(param1:§_-o5§) : void
      {
         §_-nY§ = param1;
      }
      
      public static function get §_-B1§() : Object
      {
         return {
            "id":§_-nY§.§_-P0§,
            "nickName":§_-nY§.name,
            "security":§_-nY§.§_-za§
         };
      }
      
      public static function get competition() : int
      {
         return §_-wt§;
      }
      
      public static function set competition(param1:int) : void
      {
         §_-wt§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-au§ = param1;
         for each(_loc2_ in param1)
         {
            §_-Tj§.§_-7q§.§_-0a§(_loc2_.levelId,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-au§;
      }
      
      public static function §_-0Y§(param1:String) : Object
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
      
      public static function §_-gY§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-0Y§(param1);
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
