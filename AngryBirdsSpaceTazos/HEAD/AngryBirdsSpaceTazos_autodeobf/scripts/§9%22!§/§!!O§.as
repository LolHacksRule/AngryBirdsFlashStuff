package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §9!K§.b2FilterData;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §!!O§ extends § !K§
   {
       
      
      protected var §%+§:int = 0;
      
      public function §!!O§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number, param9:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§%+§ = param9;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§7"C§ = §!!$§;
            _loc1_.§1!"§ = 65535 & ~§;!z§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§0!s§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§&k§(this.§%+§,§`I§().GetPosition().x,§`I§().GetPosition().y);
         }
      }
   }
}
