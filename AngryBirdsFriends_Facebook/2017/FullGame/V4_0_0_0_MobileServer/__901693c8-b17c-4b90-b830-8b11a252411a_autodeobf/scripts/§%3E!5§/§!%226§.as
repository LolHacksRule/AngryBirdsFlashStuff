package §>!5§
{
   import §&!v§.Sprite;
   import §+!C§.§1!$§;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §!"6§ extends §"7§
   {
       
      
      protected var §=&§:Number = 0.07;
      
      protected var §0"3§:Number = 0.0;
      
      public function §!"6§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§-!S§, param2:int) : void
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
      
      protected function §]#F§(param1:Number) : void
      {
         if(health == §##6§)
         {
            if(this.§=&§ < §1!$§.§`!H§)
            {
               this.§=&§ += param1 * §1!$§.§+"L§;
            }
            getBody().SetAngularVelocity(param1 * this.§=&§);
         }
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         this.§]#F§(param1);
         if(§6#&§() || timeSinceCollisionMilliSeconds > §1!$§.§]&§)
         {
            if(this.§0"3§ < §1!$§.§&"&§)
            {
               this.§0"3§ += param1;
               if(this.§0"3§ - param1 < §1!$§.§?B§ && this.§0"3§ >= §1!$§.§?B§)
               {
                  this.§^3§();
               }
               if(this.§0"3§ >= §1!$§.§&"&§)
               {
                  this.§8#q§(param2);
               }
            }
         }
      }
      
      protected function §^3§() : void
      {
         §!#&§.playSound("mightyeagle","ChannelBird");
      }
      
      protected function §8#q§(param1:§-!S§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x - §1!$§.§]"O§;
         var _loc3_:Number = getBody().GetPosition().y - §1!$§.§]"O§ * §1!$§.§]!!§ * 1.07;
         var _loc4_:Number = §1!$§.§7"w§ * -1.2;
         var _loc5_:§?c§;
         (_loc5_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§6#-§.ID_NEXT_FREE) as §?c§).§<!?§.setScale(1.82);
         _loc5_.§;"-§ = id;
      }
      
      override public function updateOutOfBounds(param1:§-!S§) : void
      {
         this.§^3§();
         this.§8#q§(param1);
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
