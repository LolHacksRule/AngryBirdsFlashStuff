package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2FilterData;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §>m§ extends §8"J§
   {
       
      
      public function §>m§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§#"5§ = 0;
         return _loc1_;
      }
   }
}
