package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §8#K§.§3Z§;
   import §>2§.§!!W§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §5K§ extends §,s§
   {
       
      
      protected var §'!!§:Number = 0.07;
      
      protected var §&'§:Number = 0.0;
      
      public function §5K§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§8$B§, param2:int) : void
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
      
      protected function §'#U§(param1:Number) : void
      {
         if(health == §6"k§)
         {
            if(this.§'!!§ < §!!W§.§8#+§)
            {
               this.§'!!§ += param1 * §!!W§.§"F§;
            }
            getBody().SetAngularVelocity(param1 * this.§'!!§);
         }
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         this.§'#U§(param1);
         if(§>"@§() || timeSinceCollisionMilliSeconds > §!!W§.§7!l§)
         {
            if(this.§&'§ < §!!W§.§;#H§)
            {
               this.§&'§ += param1;
               if(this.§&'§ - param1 < §!!W§.§#$B§ && this.§&'§ >= §!!W§.§#$B§)
               {
                  this.§,$'§();
               }
               if(this.§&'§ >= §!!W§.§;#H§)
               {
                  this.§<2§(param2);
               }
            }
         }
      }
      
      protected function §,$'§() : void
      {
         §3Z§.playSound("mightyeagle","ChannelBird");
      }
      
      protected function §<2§(param1:§8$B§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x - §!!W§.§'!z§;
         var _loc3_:Number = getBody().GetPosition().y - §!!W§.§'!z§ * §!!W§.§[j§ * 1.07;
         var _loc4_:Number = §!!W§.§["7§ * -1.2;
         var _loc5_:§<"V§;
         (_loc5_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§'!§.ID_NEXT_FREE) as §<"V§).§8#1§.setScale(1.82);
         _loc5_.§@"'§ = id;
      }
      
      override public function updateOutOfBounds(param1:§8$B§) : void
      {
         this.§,$'§();
         this.§<2§(param1);
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
