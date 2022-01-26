package §const§
{
   import §_-bW§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §default§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §_-dd§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§_-Cs§();
         var _loc4_:b2FilterData = param2.§_-Cs§();
         if(_loc3_.§_-q4§ == _loc4_.§_-q4§ && _loc3_.§_-q4§ != 0)
         {
            return _loc3_.§_-q4§ > 0;
         }
         return Boolean((_loc3_.§_-gA§ & _loc4_.§_-iI§) != 0 && (_loc3_.§_-iI§ & _loc4_.§_-gA§) != 0);
      }
      
      public function §_-on§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§_-dd§(param1 as b2Fixture,param2);
      }
   }
}
