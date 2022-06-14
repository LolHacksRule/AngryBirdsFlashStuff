package §8w§
{
   public class § !-§
   {
      
      public static var §-n§:Object = null;
       
      
      public function § !-§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Date = null;
         var _loc4_:Number = NaN;
         for each(_loc2_ in param1)
         {
            _loc3_ = new Date();
            if((_loc4_ = _loc3_.time) > _loc2_.cs && _loc4_ < _loc2_.ce)
            {
               §-n§ = _loc2_;
            }
         }
      }
   }
}
