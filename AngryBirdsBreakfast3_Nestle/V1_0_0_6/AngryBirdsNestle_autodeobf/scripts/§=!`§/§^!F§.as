package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2FilterData;
   import §,v§.b2World;
   import §-!b§.§<W§;
   
   public class §^!F§ extends §[B§
   {
       
      
      protected var §'=§:int = 0;
      
      public function §^!F§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number, param9:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§'=§ = param9;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§]!x§ = §8E§;
            _loc1_.§+!l§ = 65535 & ~§1[§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§'`§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§=P§(this.§'=§,§^",§().GetPosition().x,§^",§().GetPosition().y);
         }
      }
   }
}
