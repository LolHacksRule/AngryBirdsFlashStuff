package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2FilterData;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §&"c§ extends §1!y§
   {
       
      
      public function §&"c§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = null;
         _loc1_ = super.createFilterData();
         _loc1_.§'#`§ = §9!4§;
         _loc1_.§<L§ = 65535;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§]!m§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.addExplosion(§-!J§.§]#V§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§'#N§) : void
      {
         if(!(param1 is §[!k§))
         {
            health = 0;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 is §[!k§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param4,param5);
      }
   }
}
