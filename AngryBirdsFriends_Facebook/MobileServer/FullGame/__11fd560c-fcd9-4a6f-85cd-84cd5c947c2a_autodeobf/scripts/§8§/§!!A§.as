package §8§#8
{
   import §4"O§.b2FilterData;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §!!A§ extends §]o§
   {
       
      
      protected var §9#7§:int = 0;
      
      public function §!!A§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§9#7§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§+"p§ = §,-§;
            _loc1_.§5!H§ = 65535 & ~§6!a§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§&#V§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.addExplosion(this.§9#7§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
   }
}
