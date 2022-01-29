package §4"O§
{
   import §,!s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §%v§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §3#B§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.GetFilterData();
         var _loc4_:b2FilterData = param2.GetFilterData();
         if(_loc3_.§]#s§ == _loc4_.§]#s§ && _loc3_.§]#s§ != 0)
         {
            return _loc3_.§]#s§ > 0;
         }
         return Boolean((_loc3_.§5!H§ & _loc4_.§+"p§) != 0 && (_loc3_.§+"p§ & _loc4_.§5!H§) != 0);
      }
      
      public function §?#R§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§3#B§(param1 as b2Fixture,param2);
      }
   }
}
