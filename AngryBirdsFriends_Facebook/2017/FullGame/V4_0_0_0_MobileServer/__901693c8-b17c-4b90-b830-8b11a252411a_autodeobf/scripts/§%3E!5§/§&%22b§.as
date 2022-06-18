package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2FilterData;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §&"b§ extends §;"i§
   {
       
      
      protected var §[;§:int = 0;
      
      public function §&"b§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§[;§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§=]§ = § "v§;
            _loc1_.§4"?§ = 65535 & ~§'!W§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§-!S§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.§<!>§(this.§[;§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
   }
}
