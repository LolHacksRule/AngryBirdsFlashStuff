package §2!k§
{
   import § !=§.Sprite;
   import §0!j§.b2FilterData;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §[^§.§`!M§;
   
   public class §^`§ extends §]!§
   {
       
      
      protected var §+!G§:int = 0;
      
      public function §^`§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number, param9:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§+!G§ = param9;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§+!j§ = § 8§;
            _loc1_.§8F§ = 65535 & ~§>"'§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§?N§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§`!0§(this.§+!G§,§ 2§().GetPosition().x,§ 2§().GetPosition().y);
         }
      }
   }
}
