package §[,§
{
   import §#!X§.b2FilterData;
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§]"<§;
   
   public class §7!U§ extends §5"§
   {
       
      
      protected var §>"#§:int = 0;
      
      public function §7!U§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number, param9:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§>"#§ = param9;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§5!x§ = §0!=§;
            _loc1_.§]!z§ = 65535 & ~§"!B§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§class§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§%n§(this.§>"#§,§ <§().GetPosition().x,§ <§().GetPosition().y);
         }
      }
   }
}
