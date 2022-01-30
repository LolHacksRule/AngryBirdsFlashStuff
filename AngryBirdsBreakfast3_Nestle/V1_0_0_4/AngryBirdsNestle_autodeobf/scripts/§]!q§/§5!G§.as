package §]!q§
{
   import §-!f§.Sprite;
   import §5!7§.§3!Y§;
   import §6_§.§6k§;
   import §9"5§.b2FilterData;
   import §9"5§.b2World;
   
   public class §5!G§ extends §"P§
   {
       
      
      protected var §]z§:int = 0;
      
      public function §5!G§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number, param9:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§]z§ = param9;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§`!1§ = §0=§;
            _loc1_.§3L§ = 65535 & ~§>!'§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§5z§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§9!§(this.§]z§,§4!7§().GetPosition().x,§4!7§().GetPosition().y);
         }
      }
   }
}
