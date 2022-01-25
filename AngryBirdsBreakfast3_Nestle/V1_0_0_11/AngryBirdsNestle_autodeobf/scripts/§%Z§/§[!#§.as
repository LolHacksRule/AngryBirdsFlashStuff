package §%Z§
{
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2FilterData;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §[!#§ extends §1H§
   {
       
      
      public function §[!#§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§"!7§ = §!",§;
         _loc1_.§ <§ = 65535 & ~§0!M§;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§8!m§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§8!U§(§9!,§.§ !q§,§-!N§().GetPosition().x,§-!N§().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§+!F§) : void
      {
         health = 0;
      }
   }
}
