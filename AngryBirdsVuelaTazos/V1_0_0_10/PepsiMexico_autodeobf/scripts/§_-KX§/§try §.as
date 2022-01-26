package §_-KX§
{
   import flash.utils.Dictionary;
   
   public class §try §
   {
      
      private static var §_-Jz§:Dictionary = new Dictionary();
       
      
      public function §try §()
      {
         super();
      }
      
      public static function §_-S0§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-bf§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-Jz§[_loc2_])
            {
               _loc3_ = new §_-bf§(param1[_loc2_],_loc2_);
               §_-Jz§[_loc2_] = _loc3_;
            }
         }
      }
      
      public static function §_-eQ§(param1:String) : §_-bf§
      {
         var _loc2_:§_-bf§ = §_-Jz§[param1];
         if(_loc2_)
         {
            _loc2_ = _loc2_.clone();
         }
         return _loc2_;
      }
      
      public static function §_-nC§(param1:String) : §_-bf§
      {
         return §_-Jz§[param1];
      }
   }
}
