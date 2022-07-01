package §"!-§
{
   import §!!<§.§>"4§;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §;'§.b2FilterData;
   import §;'§.b2World;
   
   public class §<"'§ extends §44§
   {
       
      
      protected var §`Z§:int = 0;
      
      public function §<"'§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number, param9:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§`Z§ = param9;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§]!-§ = §"!t§;
            _loc1_.§]!=§ = 65535 & ~§,Z§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§!l§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§4!K§(this.§`Z§,§9l§().GetPosition().x,§9l§().GetPosition().y);
         }
      }
   }
}
