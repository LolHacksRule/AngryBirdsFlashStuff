package §&x§
{
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §5!O§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §?!6§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§ L§();
         var _loc4_:b2FilterData = param2.§ L§();
         if(_loc3_.§3E§ == _loc4_.§3E§ && _loc3_.§3E§ != 0)
         {
            return _loc3_.§3E§ > 0;
         }
         return Boolean((_loc3_.§8!m§ & _loc4_.§?F§) != 0 && (_loc3_.§?F§ & _loc4_.§8!m§) != 0);
      }
      
      public function § r§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§?!6§(param1 as b2Fixture,param2);
      }
   }
}
