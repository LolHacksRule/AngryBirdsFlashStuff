package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §@0§.§1§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §%$'§ extends §?$%§
   {
       
      
      protected var § $@§:Number = 0.07;
      
      protected var §+d§:Number = 0.0;
      
      public function §%$'§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§&#V§, param2:int) : void
      {
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
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
      
      protected function §`"v§(param1:Number) : void
      {
         if(health == §""5§)
         {
            if(this.§ $@§ < §1#7§.§^!a§)
            {
               this.§ $@§ += param1 * §1#7§.§;K§;
            }
            getBody().SetAngularVelocity(param1 * this.§ $@§);
         }
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         this.§`"v§(param1);
         if(§7#]§() || timeSinceCollisionMilliSeconds > §1#7§.§=#&§)
         {
            if(this.§+d§ < §1#7§.§3!o§)
            {
               this.§+d§ += param1;
               if(this.§+d§ - param1 < §1#7§.§ !3§ && this.§+d§ >= §1#7§.§ !3§)
               {
                  this.§8#a§();
               }
               if(this.§+d§ >= §1#7§.§3!o§)
               {
                  this.§1";§(param2);
               }
            }
         }
      }
      
      protected function §8#a§() : void
      {
         §!"p§.playSound("mightyeagle","ChannelBird");
      }
      
      protected function §1";§(param1:§&#V§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x - §1#7§.§5"8§;
         var _loc3_:Number = getBody().GetPosition().y - §1#7§.§5"8§ * §1#7§.§"!U§ * 1.07;
         var _loc4_:Number = §1#7§.§]!1§ * -1.2;
         var _loc5_:§6"6§;
         (_loc5_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§!#L§.ID_NEXT_FREE) as §6"6§).§##-§.setScale(1.82);
         _loc5_.§=!+§ = id;
      }
      
      override public function updateOutOfBounds(param1:§&#V§) : void
      {
         this.§8#a§();
         this.§1";§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function handleLevelEndCheck() : void
      {
      }
   }
}
