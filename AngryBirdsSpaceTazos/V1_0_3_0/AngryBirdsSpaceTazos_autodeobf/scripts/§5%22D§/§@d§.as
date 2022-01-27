package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §;`§.b2FilterData;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §@d§ extends §"f§
   {
       
      
      protected var §'P§:int = 0;
      
      public function §@d§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number, param9:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§'P§ = param9;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§@W§ = §6t§;
            _loc1_.§`!`§ = 65535 & ~§6!6§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§0!5§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§-Z§(this.§'P§,§9B§().GetPosition().x,§9B§().GetPosition().y);
         }
      }
   }
}
