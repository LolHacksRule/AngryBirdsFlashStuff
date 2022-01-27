package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2FilterData;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §-F§ extends §7";§
   {
       
      
      protected var §>[§:int = 0;
      
      public function §-F§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§>[§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§=#0§ = §!z§;
            _loc1_.§8"A§ = 65535 & ~§7!6§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§1!R§(this.§>[§,§3!t§().GetPosition().x,§3!t§().GetPosition().y);
         }
      }
   }
}
