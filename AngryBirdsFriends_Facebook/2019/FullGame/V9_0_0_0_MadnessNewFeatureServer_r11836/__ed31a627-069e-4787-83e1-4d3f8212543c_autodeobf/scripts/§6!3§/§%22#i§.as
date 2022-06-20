package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §@!S§.b2FilterData;
   import §@!S§.b2World;
   
   public class §"#i§ extends §;!U§
   {
       
      
      public function §"#i§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§#!+§ = 0;
         return _loc1_;
      }
   }
}
