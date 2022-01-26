package §_-Hn§
{
   import §_-p9§.§_-4R§;
   import flash.events.EventDispatcher;
   
   public class §_-gJ§ extends EventDispatcher
   {
      
      private static var §_-1y§:§_-4R§;
      
      private static var §_-1S§:Array;
      
      private static var §_-NL§:int = 1;
       
      
      public function §_-gJ§()
      {
         super();
      }
      
      public static function get §_-RR§() : §_-4R§
      {
         return §_-1y§;
      }
      
      public static function set §_-RR§(param1:§_-4R§) : void
      {
         §_-1y§ = param1;
      }
      
      public static function get §_-Fb§() : Object
      {
         return {
            "id":§_-1y§.§_-UJ§,
            "nickName":§_-1y§.name,
            "security":§_-1y§.§_-KO§
         };
      }
      
      public static function get competition() : int
      {
         return §_-NL§;
      }
      
      public static function set competition(param1:int) : void
      {
         §_-NL§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-1S§ = param1;
         for each(_loc2_ in param1)
         {
            §_-5e§.§_-Yn§.§_-Xh§(_loc2_.levelId,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-1S§;
      }
      
      public static function §_-Tc§(param1:String) : Object
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
      
      public static function §_-rR§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-Tc§(param1);
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
