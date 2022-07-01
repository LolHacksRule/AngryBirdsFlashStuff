package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2FilterData;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §7@§ extends §4!X§
   {
       
      
      protected var §+"$§:int = 0;
      
      public function §7@§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§+"$§ = param7;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            _loc1_.§^!d§ = §"!]§;
            _loc1_.§+!+§ = 65535 & ~§[<§;
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§`!m§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§<!Q§(this.§+"$§,§!!I§().GetPosition().x,§!!I§().GetPosition().y);
         }
      }
   }
}
