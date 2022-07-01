package §]!q§
{
   import §&!>§.§3!k§;
   import §-!f§.Sprite;
   import §0I§.§1!N§;
   import §5!7§.§3!Y§;
   import §6_§.§6k§;
   import §9"5§.b2World;
   
   public class §0"-§ extends §,6§
   {
       
      
      protected var §@f§:Number = 0.07;
      
      protected var §%!q§:Number = 0.0;
      
      public function §0"-§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDamageParticles(param1:§5z§, param2:int) : void
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
      
      protected function §2'§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§@f§ < §1!N§.§=!r§)
            {
               this.§@f§ += param1 * §1!N§.§&!4§;
            }
            §4!7§().SetAngularVelocity(param1 * this.§@f§);
         }
      }
      
      override public function update(param1:Number, param2:§5z§) : void
      {
         super.update(param1,param2);
         this.§2'§(param1);
         if(§;0§() || §]!U§ > §1!N§.§`p§)
         {
            if(this.§%!q§ < §1!N§.§2",§)
            {
               this.§%!q§ += param1;
               if(this.§%!q§ - param1 < §1!N§.§,J§ && this.§%!q§ >= §1!N§.§,J§)
               {
                  this.§true §();
               }
               if(this.§%!q§ >= §1!N§.§2",§)
               {
                  this.§09§(param2);
               }
            }
         }
      }
      
      protected function §true §() : void
      {
         §3!k§.§]"4§("Mighty_Eagle_Selected_1","ChannelBird");
         §3!k§.§]"4§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §09§(param1:§5z§) : void
      {
         var _loc2_:Number = §4!7§().GetPosition().x - §1!N§.§>F§;
         var _loc3_:Number = §4!7§().GetPosition().y - §1!N§.§>F§ * §1!N§.§6?§ * 1.07;
         var _loc4_:§'!;§;
         (_loc4_ = param1.§!t§("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§1!N§.§5N§ * 1.2,§!i§.§-1§) as §'!;§).§`!G§.setScale(1.82);
         _loc4_.§0^§ = id;
      }
      
      override public function updateOutOfBounds(param1:§5z§) : void
      {
         this.§true §();
         this.§09§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
