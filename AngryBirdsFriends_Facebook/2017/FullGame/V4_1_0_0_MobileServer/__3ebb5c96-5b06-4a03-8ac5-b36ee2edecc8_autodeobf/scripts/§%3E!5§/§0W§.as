package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2FilterData;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §0W§ extends §^"9§
   {
       
      
      public function §0W§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§4"?§ = 0;
         return _loc1_;
      }
   }
}
