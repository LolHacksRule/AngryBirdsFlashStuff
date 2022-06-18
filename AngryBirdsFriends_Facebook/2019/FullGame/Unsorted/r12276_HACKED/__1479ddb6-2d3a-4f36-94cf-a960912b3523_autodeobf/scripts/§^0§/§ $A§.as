package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2FilterData;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class § $A§ extends §%N§
   {
       
      
      protected var §8"t§:int = 0;
      
      public function § $A§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§8"t§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§1$3§ = §,!u§;
            _loc1_.§@>§ = 65535 & ~§?M§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§>"T§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.addExplosion(this.§8"t§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
   }
}
