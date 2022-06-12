package § !i§
{
   import §!9§.§%y§;
   import §`!?§.§%"3§;
   import §`!?§.Item;
   
   public class §=?§
   {
       
      
      public function §=?§()
      {
         super();
      }
      
      public static function §`!r§(param1:Array) : String
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
            _loc2_ += §,"@§(_loc4_.category) + _loc4_.sId;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function §""F§(param1:String) : Array
      {
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §7[§(_loc4_))
            {
               _loc3_.push(_loc5_);
            }
         }
         return _loc3_;
      }
      
      public static function §7[§(param1:String) : Item
      {
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         var _loc2_:String = param1.substr(0,1);
         if(!isNaN(Number(_loc2_)))
         {
            _loc2_ = "";
         }
         var _loc3_:String = param1.substr(_loc2_.length);
         var _loc6_:Array = §%y§.§1[§.items.§`!P§;
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
      
      private static function §,"@§(param1:String) : String
      {
         var _loc2_:§%"3§ = null;
         for each(_loc2_ in §%y§.§1[§.items.§+!Z§)
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
