package §>!L§
{
   import §+!g§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §4"§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §,!5§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§@N§();
         var _loc4_:b2FilterData = param2.§@N§();
         if(_loc3_.§4U§ == _loc4_.§4U§ && _loc3_.§4U§ != 0)
         {
            return _loc3_.§4U§ > 0;
         }
         return Boolean((_loc3_.§"!`§ & _loc4_.§4!<§) != 0 && (_loc3_.§4!<§ & _loc4_.§"!`§) != 0);
      }
      
      public function §<9§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§,!5§(param1 as b2Fixture,param2);
      }
   }
}
