package §[#a§
{
   import §,#L§.§!#%§;
   import §52§.§;!p§;
   import §8§.§#$+§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §4!d§ extends §-k§
   {
       
      
      protected var §!"V§:Number = 0.07;
      
      protected var §&#A§:Number = 0.0;
      
      public function §4!d§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§7!O§, param2:int) : void
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
      
      protected function §0"4§(param1:Number) : void
      {
         if(health == §2!w§)
         {
            if(this.§!"V§ < §;!p§.§=!t§)
            {
               this.§!"V§ += param1 * §;!p§.§8!i§;
            }
            getBody().SetAngularVelocity(param1 * this.§!"V§);
         }
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         this.§0"4§(param1);
         if(§[!K§() || timeSinceCollisionMilliSeconds > §;!p§.§?#B§)
         {
            if(this.§&#A§ < §;!p§.§!c§)
            {
               this.§&#A§ += param1;
               if(this.§&#A§ - param1 < §;!p§.§+"x§ && this.§&#A§ >= §;!p§.§+"x§)
               {
                  this.§=c§();
               }
               if(this.§&#A§ >= §;!p§.§!c§)
               {
                  this.§'#j§(param2);
               }
            }
         }
      }
      
      protected function §=c§() : void
      {
         §#$+§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
         §#$+§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §'#j§(param1:§7!O§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x - §;!p§.§;K§;
         var _loc3_:Number = getBody().GetPosition().y - §;!p§.§;K§ * §;!p§.§0"G§ * 1.07;
         var _loc4_:Number = §;!p§.§&T§ * -1.2;
         var _loc5_:§8"i§;
         (_loc5_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§6"[§.ID_NEXT_FREE) as §8"i§).§4"C§.setScale(1.82);
         _loc5_.§5!-§ = id;
      }
      
      override public function updateOutOfBounds(param1:§7!O§) : void
      {
         this.§=c§();
         this.§'#j§(param1);
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
