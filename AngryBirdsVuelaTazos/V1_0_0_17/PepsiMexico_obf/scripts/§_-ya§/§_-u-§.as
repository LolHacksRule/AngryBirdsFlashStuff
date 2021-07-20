package §_-ya§
{
   import flash.utils.Dictionary;
   
   public class §_-u-§
   {
      
      private static var §_-mu§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-mu§ = new Dictionary();
         }
      }
      
      public function §_-u-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §_-ej§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§_-oc§ = null;
         for(_loc2_ in param1)
         {
            if(!_loc7_)
            {
               if(§_-mu§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §_-oc§(param1[_loc2_],_loc2_);
            if(!(_loc7_ && param1))
            {
               §_-mu§[_loc2_] = _loc3_;
            }
         }
      }
      
      public static function §each §(param1:String) : §_-oc§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-oc§ = §_-mu§[param1];
         if(_loc4_)
         {
            if(_loc2_)
            {
               addr30:
               _loc2_ = _loc2_.clone();
            }
            return _loc2_;
         }
         §§goto(addr30);
      }
      
      public static function §_-4B§(param1:String) : §_-oc§
      {
         return §_-mu§[param1];
      }
   }
}
