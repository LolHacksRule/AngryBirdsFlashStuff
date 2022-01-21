package §1B§
{
   public class b2FilterData
   {
       
      
      public var §`v§:uint = 1;
      
      public var §^!c§:uint = 65535;
      
      public var §-!c§:int = 0;
      
      public function b2FilterData()
      {
         super();
      }
      
      public function Copy() : b2FilterData
      {
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§`v§ = this.§`v§;
         _loc1_.§^!c§ = this.§^!c§;
         _loc1_.§-!c§ = this.§-!c§;
         return _loc1_;
      }
   }
}
