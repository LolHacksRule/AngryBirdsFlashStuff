package §_-wH§
{
   import flash.utils.Dictionary;
   
   public class §_-Em§
   {
      
      private static var §_-eR§:Dictionary = new Dictionary();
       
      
      public function §_-Em§()
      {
         super();
      }
      
      public static function §_-J8§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-6w§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-eR§[_loc2_])
            {
               _loc3_ = new §_-6w§(param1[_loc2_],_loc2_);
               §_-eR§[_loc2_] = _loc3_;
            }
         }
      }
      
      public static function §_-pp§(param1:String) : §_-6w§
      {
         var _loc2_:§_-6w§ = §_-eR§[param1];
         if(_loc2_)
         {
            _loc2_ = _loc2_.clone();
         }
         return _loc2_;
      }
      
      public static function §_-lG§(param1:String) : §_-6w§
      {
         return §_-eR§[param1];
      }
   }
}
