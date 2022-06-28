package §#V§
{
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §5!o§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §'!3§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§%!v§();
         var _loc4_:b2FilterData = param2.§%!v§();
         if(_loc3_.§^b§ == _loc4_.§^b§ && _loc3_.§^b§ != 0)
         {
            return _loc3_.§^b§ > 0;
         }
         return Boolean((_loc3_.§'!7§ & _loc4_.§8K§) != 0 && (_loc3_.§8K§ & _loc4_.§'!7§) != 0);
      }
      
      public function § &§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§'!3§(param1 as b2Fixture,param2);
      }
   }
}
