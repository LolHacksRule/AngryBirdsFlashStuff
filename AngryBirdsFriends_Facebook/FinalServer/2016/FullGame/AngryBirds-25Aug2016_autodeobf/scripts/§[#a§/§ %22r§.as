package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2FilterData;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class § "r§ extends §=,§
   {
       
      
      protected var §%#[§:int = 0;
      
      public function § "r§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§%#[§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§;#<§ = §>"2§;
            _loc1_.§!"y§ = 65535 & ~§+#S§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§7!O§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.§#Q§(this.§%#[§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
   }
}
