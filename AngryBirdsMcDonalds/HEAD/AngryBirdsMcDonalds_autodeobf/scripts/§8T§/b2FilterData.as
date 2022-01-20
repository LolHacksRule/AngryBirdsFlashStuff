package §8T§
{
   public class b2FilterData
   {
       
      
      public var §`!-§:uint = 1;
      
      public var §'H§:uint = 65535;
      
      public var §9!h§:int = 0;
      
      public function b2FilterData()
      {
         super();
      }
      
      public function Copy() : b2FilterData
      {
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§`!-§ = this.§`!-§;
         _loc1_.§'H§ = this.§'H§;
         _loc1_.§9!h§ = this.§9!h§;
         return _loc1_;
      }
   }
}
