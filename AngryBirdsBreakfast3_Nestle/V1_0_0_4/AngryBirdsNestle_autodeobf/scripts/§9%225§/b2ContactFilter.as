package §9"5§
{
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §>! §:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §0Q§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§<m§();
         var _loc4_:b2FilterData = param2.§<m§();
         if(_loc3_.§'§ == _loc4_.§'§ && _loc3_.§'§ != 0)
         {
            return _loc3_.§'§ > 0;
         }
         return Boolean((_loc3_.§3L§ & _loc4_.§`!1§) != 0 && (_loc3_.§`!1§ & _loc4_.§3L§) != 0);
      }
      
      public function §0!#§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§0Q§(param1 as b2Fixture,param2);
      }
   }
}
