package §^!Z§
{
   import §+&§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §=K§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §^n§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§5W§();
         var _loc4_:b2FilterData = param2.§5W§();
         if(_loc3_.§4!@§ == _loc4_.§4!@§ && _loc3_.§4!@§ != 0)
         {
            return _loc3_.§4!@§ > 0;
         }
         return Boolean((_loc3_.§]!D§ & _loc4_.§'y§) != 0 && (_loc3_.§'y§ & _loc4_.§]!D§) != 0);
      }
      
      public function §[?§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§^n§(param1 as b2Fixture,param2);
      }
   }
}
