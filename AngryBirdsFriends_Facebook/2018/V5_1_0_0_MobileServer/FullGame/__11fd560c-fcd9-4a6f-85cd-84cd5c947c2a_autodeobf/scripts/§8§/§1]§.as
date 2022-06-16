package §8§#8
{
   import §4"O§.b2FilterData;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §1]§ extends §]o§
   {
       
      
      public function §1]§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = null;
         _loc1_ = super.createFilterData();
         _loc1_.§+"p§ = §,-§;
         _loc1_.§5!H§ = 65535;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§&#V§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.addExplosion(§2#%§.§=#U§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§,#5§) : void
      {
         if(!(param1 is §?$%§))
         {
            health = 0;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         if(param3 is §?$%§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
   }
}
