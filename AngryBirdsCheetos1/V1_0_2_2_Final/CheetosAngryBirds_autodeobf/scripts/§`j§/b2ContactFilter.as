package §`j§
{
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §+! §:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §`V§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§;5§();
         var _loc4_:b2FilterData = param2.§;5§();
         if(_loc3_.§4g§ == _loc4_.§4g§ && _loc3_.§4g§ != 0)
         {
            return _loc3_.§4g§ > 0;
         }
         return Boolean((_loc3_.§&!8§ & _loc4_.§^-§) != 0 && (_loc3_.§^-§ & _loc4_.§&!8§) != 0);
      }
      
      public function §-!O§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§`V§(param1 as b2Fixture,param2);
      }
   }
}
