package §_-Sc§
{
   import flash.utils.Dictionary;
   
   public class §_-iB§
   {
      
      private static var §_-JH§:Dictionary = new Dictionary();
       
      
      public function §_-iB§()
      {
         super();
      }
      
      public static function §_-ux§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-eF§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-JH§[_loc2_])
            {
               _loc3_ = new §_-eF§(param1[_loc2_],_loc2_);
               §_-JH§[_loc2_] = _loc3_;
            }
         }
      }
      
      public static function §_-bp§(param1:String) : §_-eF§
      {
         var _loc2_:§_-eF§ = §_-JH§[param1];
         if(_loc2_)
         {
            _loc2_ = _loc2_.clone();
         }
         return _loc2_;
      }
      
      public static function §_-EI§(param1:String) : §_-eF§
      {
         return §_-JH§[param1];
      }
   }
}
