package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2FilterData;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §[4§ extends §>!9§
   {
       
      
      protected var §-B§:int = 0;
      
      public function §[4§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§-B§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§9!W§ = §,O§;
            _loc1_.§`"%§ = 65535 & ~§8"!§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§3!#§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§ !%§(this.§-B§,§^`§().GetPosition().x,§^`§().GetPosition().y);
         }
      }
   }
}
