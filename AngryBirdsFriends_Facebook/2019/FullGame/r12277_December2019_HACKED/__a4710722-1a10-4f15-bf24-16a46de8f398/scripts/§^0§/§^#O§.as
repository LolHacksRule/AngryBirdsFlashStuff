package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2FilterData;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §^#O§ extends §%N§
   {
       
      
      public function §^#O§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = null;
         _loc1_ = super.createFilterData();
         _loc1_.§1$3§ = §,!u§;
         _loc1_.§@>§ = 65535;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§>"T§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.addExplosion(§0#;§.§`"9§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§4!t§) : void
      {
         if(!(param1 is §[# §))
         {
            health = 0;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 is §[# §)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
   }
}
