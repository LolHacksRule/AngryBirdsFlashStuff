package §?0§
{
   import §'!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §4e§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §2!]§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§'d§();
         var _loc4_:b2FilterData = param2.§'d§();
         if(_loc3_.§"!3§ == _loc4_.§"!3§ && _loc3_.§"!3§ != 0)
         {
            return _loc3_.§"!3§ > 0;
         }
         return Boolean((_loc3_.§5!E§ & _loc4_.§^H§) != 0 && (_loc3_.§^H§ & _loc4_.§5!E§) != 0);
      }
      
      public function §=P§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§2!]§(param1 as b2Fixture,param2);
      }
   }
}
