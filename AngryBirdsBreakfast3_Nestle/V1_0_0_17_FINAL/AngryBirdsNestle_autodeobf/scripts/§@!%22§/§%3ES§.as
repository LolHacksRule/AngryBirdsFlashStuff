package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@V§.§&z§;
   import §[!Z§.§>D§;
   
   public class §>S§ extends §^"2§
   {
       
      
      protected var §6!Z§:Number = 0.07;
      
      protected var §+,§:Number = 0.0;
      
      public function §>S§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§`!m§, param2:int) : void
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
      
      protected function §5!F§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§6!Z§ < §&z§.§<5§)
            {
               this.§6!Z§ += param1 * §&z§.§]F§;
            }
            §!!I§().SetAngularVelocity(param1 * this.§6!Z§);
         }
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         super.update(param1,param2);
         this.§5!F§(param1);
         if(§!'§() || §>!'§ > §&z§.§8!M§)
         {
            if(this.§+,§ < §&z§.§!!7§)
            {
               this.§+,§ += param1;
               if(this.§+,§ - param1 < §&z§.§6"5§ && this.§+,§ >= §&z§.§6"5§)
               {
                  this.§<T§();
               }
               if(this.§+,§ >= §&z§.§!!7§)
               {
                  this.§9!4§(param2);
               }
            }
         }
      }
      
      protected function §<T§() : void
      {
         §>D§.§9!q§("Mighty_Eagle_Selected_1","ChannelBird");
         §>D§.§9!q§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §9!4§(param1:§`!m§) : void
      {
         var _loc2_:Number = §!!I§().GetPosition().x - §&z§.§'!g§;
         var _loc3_:Number = §!!I§().GetPosition().y - §&z§.§'!g§ * §&z§.§#!n§ * 1.07;
         var _loc4_:Number = §&z§.§2" § * -1.2;
         var _loc5_:§[!J§;
         (_loc5_ = param1.§&w§("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,_loc4_,§<!l§.§0"+§) as §[!J§).§'",§.setScale(1.82);
         _loc5_.§ !1§ = id;
      }
      
      override public function updateOutOfBounds(param1:§`!m§) : void
      {
         this.§<T§();
         this.§9!4§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
