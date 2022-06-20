package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2FilterData;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §@$,§ extends §;"i§
   {
       
      
      public function §@$,§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = null;
         _loc1_ = super.createFilterData();
         _loc1_.§=]§ = § "v§;
         _loc1_.§4"?§ = 65535;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§-!S§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.§<!>§(§+!H§.§;$9§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§#-§) : void
      {
         if(!(param1 is §"7§))
         {
            health = 0;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         if(param3 is §"7§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
   }
}
