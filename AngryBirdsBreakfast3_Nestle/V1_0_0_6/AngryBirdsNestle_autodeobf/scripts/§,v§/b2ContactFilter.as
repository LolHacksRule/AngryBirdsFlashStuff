package §,v§
{
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §`"#§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §;!+§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§4!<§();
         var _loc4_:b2FilterData = param2.§4!<§();
         if(_loc3_.§!i§ == _loc4_.§!i§ && _loc3_.§!i§ != 0)
         {
            return _loc3_.§!i§ > 0;
         }
         return Boolean((_loc3_.§+!l§ & _loc4_.§]!x§) != 0 && (_loc3_.§]!x§ & _loc4_.§+!l§) != 0);
      }
      
      public function §<!$§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§;!+§(param1 as b2Fixture,param2);
      }
   }
}
