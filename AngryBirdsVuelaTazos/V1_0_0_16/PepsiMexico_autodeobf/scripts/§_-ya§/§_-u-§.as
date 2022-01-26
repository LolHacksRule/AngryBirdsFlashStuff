package §_-ya§
{
   import flash.utils.Dictionary;
   
   public class §_-u-§
   {
      
      private static var §_-mu§:Dictionary = new Dictionary();
       
      
      public function §_-u-§()
      {
         super();
      }
      
      public static function §_-ej§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-oc§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-mu§[_loc2_])
            {
               _loc3_ = new §_-oc§(param1[_loc2_],_loc2_);
               §_-mu§[_loc2_] = _loc3_;
            }
         }
      }
      
      public static function §each §(param1:String) : §_-oc§
      {
         var _loc2_:§_-oc§ = §_-mu§[param1];
         if(_loc2_)
         {
            _loc2_ = _loc2_.clone();
         }
         return _loc2_;
      }
      
      public static function §_-4B§(param1:String) : §_-oc§
      {
         return §_-mu§[param1];
      }
   }
}
