package §;`§
{
   import §8K§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §#"$§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §-!V§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§'!>§();
         var _loc4_:b2FilterData = param2.§'!>§();
         if(_loc3_.§@§ == _loc4_.§@§ && _loc3_.§@§ != 0)
         {
            return _loc3_.§@§ > 0;
         }
         return Boolean((_loc3_.§`!`§ & _loc4_.§@W§) != 0 && (_loc3_.§@W§ & _loc4_.§`!`§) != 0);
      }
      
      public function §7![§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§-!V§(param1 as b2Fixture,param2);
      }
   }
}
