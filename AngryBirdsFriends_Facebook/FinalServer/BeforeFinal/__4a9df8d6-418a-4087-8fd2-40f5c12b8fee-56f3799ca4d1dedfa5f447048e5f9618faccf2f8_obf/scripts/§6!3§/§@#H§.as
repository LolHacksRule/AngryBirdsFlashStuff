package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §@!S§.b2FilterData;
   import §@!S§.b2World;
   
   public class §@#H§ extends §^#x§
   {
       
      
      protected var §2!?§:int = 0;
      
      public function §@#H§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§2!?§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§`"!§ = §'[§;
            _loc1_.§#!+§ = 65535 & ~§!!_§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§8$B§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.addExplosion(this.§2!?§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
   }
}
