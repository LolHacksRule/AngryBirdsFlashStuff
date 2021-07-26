package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2FilterData;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §`!@§ extends §1!y§
   {
       
      
      protected var §2"C§:int = 0;
      
      public function §`!@§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§2"C§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§'#`§ = §9!4§;
            _loc1_.§<L§ = 65535 & ~§+#N§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§]!m§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.addExplosion(this.§2"C§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
   }
}
