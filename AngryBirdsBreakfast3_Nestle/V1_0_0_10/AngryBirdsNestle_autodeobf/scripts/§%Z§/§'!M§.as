package §%Z§
{
   import § 2§.§3t§;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §;X§.§4!@§;
   import §`!B§.Sprite;
   
   public class §'!M§ extends §=!V§
   {
       
      
      protected var §`!H§:Number = 0.07;
      
      protected var §!!E§:Number = 0.0;
      
      public function §'!M§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§8!m§, param2:int) : void
      {
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      protected function §!"#§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§`!H§ < §3t§.§`"7§)
            {
               this.§`!H§ += param1 * §3t§.§88§;
            }
            §-!N§().SetAngularVelocity(param1 * this.§`!H§);
         }
      }
      
      override public function update(param1:Number, param2:§8!m§) : void
      {
         super.update(param1,param2);
         this.§!"#§(param1);
         if(§7G§() || §^i§ > §3t§.§;]§)
         {
            if(this.§!!E§ < §3t§.§,7§)
            {
               this.§!!E§ += param1;
               if(this.§!!E§ - param1 < §3t§.§=!=§ && this.§!!E§ >= §3t§.§=!=§)
               {
                  this.§=?§();
               }
               if(this.§!!E§ >= §3t§.§,7§)
               {
                  this.§=y§(param2);
               }
            }
         }
      }
      
      protected function §=?§() : void
      {
         §4!@§.§`!w§("Mighty_Eagle_Selected_1","ChannelBird");
         §4!@§.§`!w§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §=y§(param1:§8!m§) : void
      {
         var _loc2_:Number = §-!N§().GetPosition().x - §3t§.§@m§;
         var _loc3_:Number = §-!N§().GetPosition().y - §3t§.§@m§ * §3t§.§]!,§ * 1.07;
         var _loc4_:Number = §3t§.§1!f§ * -1.2;
         var _loc5_:§2h§;
         (_loc5_ = param1.§'!%§("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§7l§.§-u§) as §2h§).§@!9§.setScale(1.82);
         _loc5_.§%F§ = id;
      }
      
      override public function updateOutOfBounds(param1:§8!m§) : void
      {
         this.§=?§();
         this.§=y§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
