package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!b§.§<W§;
   import §@!6§.§3!5§;
   import §]k§.§#w§;
   
   public class §?!G§ extends §6!-§
   {
       
      
      protected var § d§:Number = 0.07;
      
      protected var §%!5§:Number = 0.0;
      
      public function §?!G§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDamageParticles(param1:§'`§, param2:int) : void
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
      
      protected function §7!w§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§ d§ < §#w§.§'!X§)
            {
               this.§ d§ += param1 * §#w§.§0!e§;
            }
            §^",§().SetAngularVelocity(param1 * this.§ d§);
         }
      }
      
      override public function update(param1:Number, param2:§'`§) : void
      {
         super.update(param1,param2);
         this.§7!w§(param1);
         if(§@,§() || §5l§ > §#w§.§[!d§)
         {
            if(this.§%!5§ < §#w§.§=!y§)
            {
               this.§%!5§ += param1;
               if(this.§%!5§ - param1 < §#w§.§#Y§ && this.§%!5§ >= §#w§.§#Y§)
               {
                  this.§6"§();
               }
               if(this.§%!5§ >= §#w§.§=!y§)
               {
                  this.§&j§(param2);
               }
            }
         }
      }
      
      protected function §6"§() : void
      {
         §3!5§.§<!9§("Mighty_Eagle_Selected_1","ChannelBird");
         §3!5§.§<!9§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §&j§(param1:§'`§) : void
      {
         var _loc2_:Number = §^",§().GetPosition().x - §#w§.§7!d§;
         var _loc3_:Number = §^",§().GetPosition().y - §#w§.§7!d§ * §#w§.§"b§ * 1.07;
         var _loc4_:§0!d§;
         (_loc4_ = param1.§`!k§("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§#w§.§%!Y§ * 1.2,§!H§.§"!W§) as §0!d§).§9!$§.setScale(1.82);
         _loc4_.§`!6§ = id;
      }
      
      override public function updateOutOfBounds(param1:§'`§) : void
      {
         this.§6"§();
         this.§&j§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
