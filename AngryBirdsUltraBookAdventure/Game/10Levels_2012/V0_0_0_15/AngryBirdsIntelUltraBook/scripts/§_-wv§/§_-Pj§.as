package §_-wv§
{
   import §_-4§.Item;
   import §_-4§.§_-044§;
   import §_-y7§.§_-xe§;
   
   public class §_-Pj§
   {
       
      
      public function §_-Pj§()
      {
         super();
      }
      
      public static function §_-qM§(param1:Array) : String
      {
         var _loc4_:Object = null;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         for each(_loc4_ in param1)
         {
            if(_loc3_ > 0)
            {
               _loc2_ += "-";
            }
            _loc2_ += §_-y9§(_loc4_.category) + _loc4_.sId;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function §_-0Bw§(param1:String) : Array
      {
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §_-08k§(_loc4_))
            {
               _loc3_.push(_loc5_);
            }
         }
         return _loc3_;
      }
      
      public static function §_-08k§(param1:String) : Item
      {
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         var _loc2_:String = param1.substr(0,1);
         var _loc3_:String = param1.substr(1);
         var _loc6_:Array = §_-xe§.§_-eA§().items;
         for each(_loc7_ in _loc6_)
         {
            for each(_loc8_ in _loc7_)
            {
               if(_loc8_.sId == _loc3_)
               {
                  return _loc8_;
               }
            }
         }
         return null;
      }
      
      private static function §_-y9§(param1:String) : String
      {
         var _loc2_:§_-044§ = null;
         for each(_loc2_ in §_-xe§.§_-eA§().§_-05v§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_.sid;
            }
         }
         return "";
      }
   }
}
