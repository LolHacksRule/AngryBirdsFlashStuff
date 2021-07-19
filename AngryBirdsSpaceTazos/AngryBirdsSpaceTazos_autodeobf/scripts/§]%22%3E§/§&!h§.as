package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2FilterData;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §&!h§ extends §@"D§
   {
       
      
      protected var §#"-§:int = 0;
      
      public function §&!h§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number, param9:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§#"-§ = param9;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§ #§ = §-"#§;
            _loc1_.§5!@§ = 65535 & ~§>!C§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§>"'§(this.§#"-§,§^!z§().GetPosition().x,§^!z§().GetPosition().y);
         }
      }
   }
}
