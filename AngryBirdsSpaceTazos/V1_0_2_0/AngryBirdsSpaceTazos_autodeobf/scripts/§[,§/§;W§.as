package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §9!G§.§"!S§;
   import §;"=§.§]"<§;
   import §?!<§.§`!Y§;
   
   public class §;W§ extends §#!v§
   {
       
      
      protected var §?"!§:Number = 0.07;
      
      protected var §7!w§:Number = 0.0;
      
      public function §;W§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDamageParticles(param1:§class§, param2:int) : void
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
      
      protected function §6!=§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§?"!§ < §`!Y§.§>"9§)
            {
               this.§?"!§ += param1 * §`!Y§.§7!g§;
            }
            § <§().SetAngularVelocity(param1 * this.§?"!§);
         }
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         this.§6!=§(param1);
         if(§#"%§() || timeSinceCollisionMilliSeconds > §`!Y§.§%l§)
         {
            if(this.§7!w§ < §`!Y§.§'M§)
            {
               this.§7!w§ += param1;
               if(this.§7!w§ - param1 < §`!Y§.§<"G§ && this.§7!w§ >= §`!Y§.§<"G§)
               {
                  this.§2"H§();
               }
               if(this.§7!w§ >= §`!Y§.§'M§)
               {
                  this.§>!C§(param2);
               }
            }
         }
      }
      
      protected function §2"H§() : void
      {
         §"!S§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
         §"!S§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §>!C§(param1:§class§) : void
      {
         var _loc2_:Number = § <§().GetPosition().x - §`!Y§.§2!W§;
         var _loc3_:Number = § <§().GetPosition().y - §`!Y§.§2!W§ * §`!Y§.§ P§ * 1.07;
         var _loc4_:§1X§;
         (_loc4_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§`!Y§.§`B§ * 1.2,§]j§.§4"1§) as §1X§).renderer.setScale(1.82);
         _loc4_.§3!8§ = id;
      }
      
      override public function updateOutOfBounds(param1:§class§) : void
      {
         this.§2"H§();
         this.§>!C§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
