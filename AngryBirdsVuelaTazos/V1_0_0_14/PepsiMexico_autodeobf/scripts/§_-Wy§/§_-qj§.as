package §_-Wy§
{
   import flash.utils.Dictionary;
   
   public class §_-qj§
   {
      
      private static var §_-rR§:Dictionary = new Dictionary();
       
      
      public function §_-qj§()
      {
         super();
      }
      
      public static function §_-eP§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-JO§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-rR§[_loc2_])
            {
               _loc3_ = new §_-JO§(param1[_loc2_],_loc2_);
               §_-rR§[_loc2_] = _loc3_;
            }
         }
      }
      
      public static function §_-xi§(param1:String) : §_-JO§
      {
         var _loc2_:§_-JO§ = §_-rR§[param1];
         if(_loc2_)
         {
            _loc2_ = _loc2_.clone();
         }
         return _loc2_;
      }
      
      public static function §_-un§(param1:String) : §_-JO§
      {
         return §_-rR§[param1];
      }
   }
}
