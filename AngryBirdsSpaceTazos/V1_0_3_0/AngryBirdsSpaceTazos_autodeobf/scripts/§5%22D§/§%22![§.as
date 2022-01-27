package §5"D§
{
   import §3R§.§<!]§;
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §>"!§.§@!9§;
   import §^e§.§^5§;
   
   public class §"![§ extends §1"G§
   {
       
      
      protected var §=[§:Number = 0.07;
      
      protected var §4!q§:Number = 0.0;
      
      public function §"![§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDamageParticles(param1:§0!5§, param2:int) : void
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
      
      protected function §#y§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§=[§ < §<!]§.§6!#§)
            {
               this.§=[§ += param1 * §<!]§.§'!9§;
            }
            §9B§().SetAngularVelocity(param1 * this.§=[§);
         }
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         this.§#y§(param1);
         if(§8!Y§() || timeSinceCollisionMilliSeconds > §<!]§.§;"F§)
         {
            if(this.§4!q§ < §<!]§.§&s§)
            {
               this.§4!q§ += param1;
               if(this.§4!q§ - param1 < §<!]§.§!P§ && this.§4!q§ >= §<!]§.§!P§)
               {
                  this.§"!-§();
               }
               if(this.§4!q§ >= §<!]§.§&s§)
               {
                  this.§-5§(param2);
               }
            }
         }
      }
      
      protected function §"!-§() : void
      {
         §@!9§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
         §@!9§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §-5§(param1:§0!5§) : void
      {
         var _loc2_:Number = §9B§().GetPosition().x - §<!]§.§@!"§;
         var _loc3_:Number = §9B§().GetPosition().y - §<!]§.§@!"§ * §<!]§.§;!d§ * 1.07;
         var _loc4_:§^!H§;
         (_loc4_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§<!]§.§#!]§ * 1.2,§3!3§.§'!y§) as §^!H§).renderer.setScale(1.82);
         _loc4_.§9!^§ = id;
      }
      
      override public function updateOutOfBounds(param1:§0!5§) : void
      {
         this.§"!-§();
         this.§-5§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
