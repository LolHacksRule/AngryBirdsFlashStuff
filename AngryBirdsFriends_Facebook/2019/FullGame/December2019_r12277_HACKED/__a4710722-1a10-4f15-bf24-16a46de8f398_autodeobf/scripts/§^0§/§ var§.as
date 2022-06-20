package §^0§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §?$#§.§&$0§;
   import §@"v§.§@$<§;
   
   public class § var§ extends §[# §
   {
       
      
      protected var §>!n§:Number = 0.07;
      
      protected var §6#l§:Number = 0.0;
      
      public function § var§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§>"T§, param2:int) : void
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
      
      protected function §?!F§(param1:Number) : void
      {
         if(health == §,D§)
         {
            if(this.§>!n§ < §&$0§.§'#O§)
            {
               this.§>!n§ += param1 * §&$0§.§`"i§;
            }
            getBody().SetAngularVelocity(param1 * this.§>!n§);
         }
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         this.§?!F§(param1);
         if(§ A§() || timeSinceCollisionMilliSeconds > §&$0§.§`!!§)
         {
            if(this.§6#l§ < §&$0§.§"!e§)
            {
               this.§6#l§ += param1;
               if(this.§6#l§ - param1 < §&$0§.§;#=§ && this.§6#l§ >= §&$0§.§;#=§)
               {
                  this.§4!j§();
               }
               if(this.§6#l§ >= §&$0§.§"!e§)
               {
                  this.§9$@§(param2);
               }
            }
         }
      }
      
      protected function §4!j§() : void
      {
         §4$4§.playSound("mightyeagle","ChannelBird");
      }
      
      protected function §9$@§(param1:§>"T§) : void
      {
         var _loc2_:Number = getBody().GetPosition().x - §&$0§.§+#o§;
         var _loc3_:Number = getBody().GetPosition().y - §&$0§.§+#o§ * §&$0§.§5e§ * 1.07;
         var _loc4_:Number = §&$0§.§="G§ * -1.2;
         var _loc5_:§]#m§;
         (_loc5_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§%"^§.ID_NEXT_FREE) as §]#m§).§2#+§.setScale(1.82);
         _loc5_.§3!_§ = id;
      }
      
      override public function updateOutOfBounds(param1:§>"T§) : void
      {
         this.§4!j§();
         this.§9$@§(param1);
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
