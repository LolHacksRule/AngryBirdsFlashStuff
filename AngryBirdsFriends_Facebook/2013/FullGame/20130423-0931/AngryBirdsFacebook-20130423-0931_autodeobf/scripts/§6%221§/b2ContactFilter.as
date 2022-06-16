package §6"1§
{
   import §,"[§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §-"H§:b2ContactFilter = new b2ContactFilter();
       
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function §[">§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1.§%"L§();
         var _loc4_:b2FilterData = param2.§%"L§();
         if(_loc3_.§+!,§ == _loc4_.§+!,§ && _loc3_.§+!,§ != 0)
         {
            return _loc3_.§+!,§ > 0;
         }
         return Boolean((_loc3_.§="[§ & _loc4_.§@!1§) != 0 && (_loc3_.§@!1§ & _loc4_.§="[§) != 0);
      }
      
      public function §0!x§(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this.§[">§(param1 as b2Fixture,param2);
      }
   }
}
