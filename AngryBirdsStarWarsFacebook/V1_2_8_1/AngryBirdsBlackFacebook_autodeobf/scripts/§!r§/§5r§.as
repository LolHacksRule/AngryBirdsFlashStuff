package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2FilterData;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §5r§ extends §<!^§
   {
       
      
      protected var §?"W§:int = 0;
      
      public function §5r§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§?"W§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§3!$§ = §9!t§;
            _loc1_.§ "b§ = 65535 & ~§9V§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§'=§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§6!C§(this.§?"W§,§3"s§().GetPosition().x,§3"s§().GetPosition().y);
         }
      }
   }
}
