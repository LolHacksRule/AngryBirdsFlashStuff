package §=!c§
{
   import §7!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §1!l§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §<z§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§]"4§();
         var _loc4_:b2FilterData = param2.§]"4§();
         if(_loc3_.§"!T§ == _loc4_.§"!T§ && _loc3_.§"!T§ != 0)
         {
            return _loc3_.§"!T§ > 0;
         }
         return Boolean((_loc3_.§!G§ & _loc4_.§^!s§) != 0 && (_loc3_.§^!s§ & _loc4_.§!G§) != 0);
      }
      
      public function §!!,§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§<z§(param1 as b2Fixture,param2);
      }
   }
}
