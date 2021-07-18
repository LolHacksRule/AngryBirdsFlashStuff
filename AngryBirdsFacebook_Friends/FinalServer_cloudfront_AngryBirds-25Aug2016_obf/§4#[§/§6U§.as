package §4#[§
{
   import §1"1§.§3!m§;
   import §6#s§.§1"G§;
   import §6#s§.Item;
   
   public class §6U§
   {
       
      
      public function §6U§()
      {
         super();
      }
      
      public static function §]p§(param1:Array) : String
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
            _loc2_ += §3§(_loc4_.category) + _loc4_.sId;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function §;!,§(param1:String) : Array
      {
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §<",§(_loc4_))
            {
               _loc3_.push(_loc5_);
            }
         }
         return _loc3_;
      }
      
      public static function §<",§(param1:String) : Item
      {
         null;
         null;
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         var _loc2_:String = param1.substr(0,1);
         if(!isNaN(Number(_loc2_)))
         {
            _loc2_ = "";
         }
         var _loc3_:String = param1.substr(_loc2_.length);
         var _loc6_:Array = §3!m§.§3!]§.items.§!"p§;
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
      
      private static function §3§(param1:String) : String
      {
         var _loc2_:§1"G§ = null;
         for each(_loc2_ in §3!m§.§3!]§.items.§!&§)
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
