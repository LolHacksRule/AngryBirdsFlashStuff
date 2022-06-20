package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2FilterData;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class § "O§ extends §,!h§
   {
       
      
      protected var §%#m§:int = 0;
      
      public function § "O§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§%#m§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§`!+§ = §&"e§;
            _loc1_.§#"5§ = 65535 & ~§2!F§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§ #'§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.addExplosion(this.§%#m§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
   }
}
