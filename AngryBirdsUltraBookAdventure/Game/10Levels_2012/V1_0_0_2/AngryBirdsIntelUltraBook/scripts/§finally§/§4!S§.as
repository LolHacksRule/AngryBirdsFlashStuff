package §finally§
{
   import §7r§.§?V§;
   import §7r§.Item;
   import §`!%§.§6!_§;
   
   public class §4!S§
   {
       
      
      public function §4!S§()
      {
         super();
      }
      
      public static function §#D§(param1:Array) : String
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
            _loc2_ += §3!X§(_loc4_.category) + _loc4_.sId;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function §`x§(param1:String) : Array
      {
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §"!>§(_loc4_))
            {
               _loc3_.push(_loc5_);
            }
         }
         return _loc3_;
      }
      
      public static function §"!>§(param1:String) : Item
      {
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         var _loc2_:String = param1.substr(0,1);
         var _loc3_:String = param1.substr(1);
         var _loc6_:Array = §6!_§.§1w§().items;
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
      
      private static function §3!X§(param1:String) : String
      {
         var _loc2_:§?V§ = null;
         for each(_loc2_ in §6!_§.§1w§().§=!b§)
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
