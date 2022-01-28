package §_-jO§
{
   import §_-yQ§.§_-Dv§;
   import flash.events.EventDispatcher;
   
   public class §_-z5§ extends EventDispatcher
   {
      
      private static var §_-ZY§:§_-Dv§;
      
      private static var §_-lj§:Array;
      
      private static var §_-g2§:int = 1;
       
      
      public function §_-z5§()
      {
         super();
      }
      
      public static function get §_-z2§() : §_-Dv§
      {
         return §_-ZY§;
      }
      
      public static function set §_-z2§(param1:§_-Dv§) : void
      {
         §_-ZY§ = param1;
      }
      
      public static function get §_-gt§() : Object
      {
         return {
            "id":§_-ZY§.§_-U§,
            "nickName":§_-ZY§.name,
            "security":§_-ZY§.§_-VF§
         };
      }
      
      public static function get competition() : int
      {
         return §_-g2§;
      }
      
      public static function set competition(param1:int) : void
      {
         §_-g2§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-lj§ = param1;
         for each(_loc2_ in param1)
         {
            §_-q0§.§_-AI§.§_-wL§(_loc2_.levelId,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-lj§;
      }
      
      public static function §_-Eh§(param1:String) : Object
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
      
      public static function §_-TX§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Object = §_-Eh§(param1);
         _loc3_.unlocked = !param2;
      }
      
      public static function §_-FS§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-Eh§(param1);
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
