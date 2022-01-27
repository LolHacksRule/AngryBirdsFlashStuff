package §#!X§
{
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §&[§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §&e§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§@"4§();
         var _loc4_:b2FilterData = param2.§@"4§();
         if(_loc3_.§2=§ == _loc4_.§2=§ && _loc3_.§2=§ != 0)
         {
            return _loc3_.§2=§ > 0;
         }
         return Boolean((_loc3_.§]!z§ & _loc4_.§5!x§) != 0 && (_loc3_.§5!x§ & _loc4_.§]!z§) != 0);
      }
      
      public function §=!G§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§&e§(param1 as b2Fixture,param2);
      }
   }
}
