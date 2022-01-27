package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2FilterData;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   
   public class §]"5§ extends §5"v§
   {
       
      
      public function §]"5§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§=^§ = §5"4§;
         _loc1_.§'"5§ = 65535 & ~§@"3§;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§""M§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§""L§(§<!<§.§2"_§,§?"Z§().GetPosition().x,§?"Z§().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§!z§) : void
      {
         health = 0;
      }
   }
}
