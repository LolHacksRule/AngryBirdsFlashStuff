package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2FilterData;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §`W§ extends §=Q§
   {
       
      
      public function §`W§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§@>§ = 0;
         return _loc1_;
      }
   }
}
