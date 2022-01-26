package §_-bs§
{
   import flash.utils.Dictionary;
   
   public class §_-3j§
   {
      
      private static var §_-49§:Dictionary = new Dictionary();
       
      
      public function §_-3j§()
      {
         super();
      }
      
      public static function §_-lv§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-J5§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-49§[_loc2_])
            {
               _loc3_ = new §_-J5§(param1[_loc2_],_loc2_);
               §_-49§[_loc2_] = _loc3_;
            }
         }
      }
      
      public static function §_-k7§(param1:String) : §_-J5§
      {
         var _loc2_:§_-J5§ = §_-49§[param1];
         if(_loc2_)
         {
            _loc2_ = _loc2_.clone();
         }
         return _loc2_;
      }
      
      public static function §_-W5§(param1:String) : §_-J5§
      {
         return §_-49§[param1];
      }
   }
}
