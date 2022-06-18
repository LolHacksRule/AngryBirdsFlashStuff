package §!!B§
{
   import §;0§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §@z§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §67§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§`!8§();
         var _loc4_:b2FilterData = param2.§`!8§();
         if(_loc3_.get == _loc4_.get && _loc3_.get != 0)
         {
            return _loc3_.get > 0;
         }
         return Boolean((_loc3_.§@!T§ & _loc4_.§7!X§) != 0 && (_loc3_.§7!X§ & _loc4_.§@!T§) != 0);
      }
      
      public function §&!X§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§67§(param1 as b2Fixture,param2);
      }
   }
}
