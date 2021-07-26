package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§7#E§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §"d§ extends §[!k§
   {
       
      
      protected var §?!q§:Number = 0.07;
      
      protected var §&"L§:Number = 0.0;
      
      public function §"d§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§]!m§, param2:int) : void
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
      
      protected function §3!M§(param1:Number) : void
      {
         if(health == §+#_§)
         {
            if(this.§?!q§ < §7#E§.§@!u§)
            {
               this.§?!q§ += param1 * §7#E§.§%$,§;
            }
            getBody().SetAngularVelocity(param1 * this.§?!q§);
         }
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         this.§3!M§(param1);
         if(§4A§() || timeSinceCollisionMilliSeconds > §7#E§.§,"p§)
         {
            if(this.§&"L§ < §7#E§.§-"-§)
            {
               this.§&"L§ += param1;
               if(this.§&"L§ - param1 < §7#E§.§<!9§ && this.§&"L§ >= §7#E§.§<!9§)
               {
                  this.§]!B§();
               }
               if(this.§&"L§ >= §7#E§.§-"-§)
               {
                  this.§5$7§(param2);
               }
            }
         }
      }
      
      protected function §]!B§() : void
      {
         § b§.playSound("mightyeagle","ChannelBird");
      }
      
      protected function §5$7§(param1:§]!m§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x - §7#E§.§^# §;
         var _loc3_:Number = getBody().GetPosition().y - §7#E§.§^# § * §7#E§.§&i§ * 1.07;
         var _loc4_:Number = §7#E§.§6x§ * -1.2;
         var _loc5_:§;"h§;
         (_loc5_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§ !i§.ID_NEXT_FREE) as §;"h§).§?!V§.setScale(1.82);
         _loc5_.§6!O§ = id;
      }
      
      override public function updateOutOfBounds(param1:§]!m§) : void
      {
         this.§]!B§();
         this.§5$7§(param1);
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
