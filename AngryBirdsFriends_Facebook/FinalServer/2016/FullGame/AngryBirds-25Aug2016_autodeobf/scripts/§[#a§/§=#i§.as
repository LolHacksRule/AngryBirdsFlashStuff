package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2FilterData;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §=#i§ extends §=,§
   {
       
      
      public function §=#i§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = null;
         _loc1_ = super.createFilterData();
         _loc1_.§;#<§ = §>"2§;
         _loc1_.§!"y§ = 65535;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§7!O§, param2:Boolean) : void
      {
         super.updateBeforeRemoving(param1,param2);
         if(param1)
         {
            param1.§#Q§(§<#;§.§%$&§,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§<"H§) : void
      {
         if(!(param1 is §-k§))
         {
            health = 0;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         if(param3 is §-k§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
   }
}
