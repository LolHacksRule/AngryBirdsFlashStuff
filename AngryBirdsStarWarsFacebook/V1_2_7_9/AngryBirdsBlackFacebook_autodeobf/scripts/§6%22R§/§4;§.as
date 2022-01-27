package §6"R§
{
   import §,"v§.§@§;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§<"n§;
   import §>P§.§=!,§;
   
   public class §4;§ extends §%!0§
   {
       
      
      protected var § !j§:Number = 0.07;
      
      protected var §%! §:Number = 0.0;
      
      public function §4;§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§""M§, param2:int) : void
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
      
      protected function updateRotation(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§ !j§ < §<"n§.§,!c§)
            {
               this.§ !j§ += param1 * §<"n§.§9Z§;
            }
            §?"Z§().SetAngularVelocity(param1 * this.§ !j§);
         }
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         this.updateRotation(param1);
         if(§[d§() || timeSinceCollisionMilliSeconds > §<"n§.§;"!§)
         {
            if(this.§%! § < §<"n§.§8!§)
            {
               this.§%! § += param1;
               if(this.§%! § - param1 < §<"n§.§3!u§ && this.§%! § >= §<"n§.§3!u§)
               {
                  this.§"!W§();
               }
               if(this.§%! § >= §<"n§.§8!§)
               {
                  this.addMightyEagle(param2);
               }
            }
         }
      }
      
      protected function §"!W§() : void
      {
         §@§.§=Y§("Mighty_Eagle_Selected_1","ChannelBird");
         §@§.§=Y§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function addMightyEagle(param1:§""M§) : void
      {
         var _loc2_:Number = §?"Z§().GetPosition().x - §<"n§.§""c§;
         var _loc3_:Number = §?"Z§().GetPosition().y - §<"n§.§""c§ * §<"n§.§8!5§ * 1.07;
         var _loc4_:§0!6§;
         (_loc4_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§<"n§.§%8§ * 1.2,§super§.§4"D§) as §0!6§).§1!w§.setScale(1.82);
         _loc4_.§#!L§ = id;
      }
      
      override public function updateOutOfBounds(param1:§""M§) : void
      {
         this.§"!W§();
         this.addMightyEagle(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
