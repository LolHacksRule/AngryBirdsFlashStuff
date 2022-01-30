package §"!-§
{
   import §!!<§.§>"4§;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §9![§.§1!i§;
   import §;'§.b2World;
   import §@"1§.§<!<§;
   
   public class §93§ extends § !§
   {
       
      
      protected var §9!Q§:Number = 0.07;
      
      protected var §^!0§:Number = 0.0;
      
      public function §93§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDamageParticles(param1:§!l§, param2:int) : void
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
      
      protected function §6]§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§9!Q§ < §<!<§.§@!N§)
            {
               this.§9!Q§ += param1 * §<!<§.§"O§;
            }
            §9l§().SetAngularVelocity(param1 * this.§9!Q§);
         }
      }
      
      override public function update(param1:Number, param2:§!l§) : void
      {
         super.update(param1,param2);
         this.§6]§(param1);
         if(§]!<§() || §`0§ > §<!<§.§"!A§)
         {
            if(this.§^!0§ < §<!<§.§""'§)
            {
               this.§^!0§ += param1;
               if(this.§^!0§ - param1 < §<!<§.§1O§ && this.§^!0§ >= §<!<§.§1O§)
               {
                  this.§4!N§();
               }
               if(this.§^!0§ >= §<!<§.§""'§)
               {
                  this.§9z§(param2);
               }
            }
         }
      }
      
      protected function §4!N§() : void
      {
         §1!i§.§+!Y§("Mighty_Eagle_Selected_1","ChannelBird");
         §1!i§.§+!Y§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §9z§(param1:§!l§) : void
      {
         var _loc2_:Number = §9l§().GetPosition().x - §<!<§.§0c§;
         var _loc3_:Number = §9l§().GetPosition().y - §<!<§.§0c§ * §<!<§.§!S§ * 1.07;
         var _loc4_:§2P§;
         (_loc4_ = param1.§&0§("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§<!<§.§<G§ * 1.2,§1i§.§^!;§) as §2P§).§<l§.setScale(1.82);
         _loc4_.§<!x§ = id;
      }
      
      override public function updateOutOfBounds(param1:§!l§) : void
      {
         this.§4!N§();
         this.§9z§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
