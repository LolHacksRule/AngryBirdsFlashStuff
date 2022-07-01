package §2!k§
{
   import § !=§.Sprite;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §;s§.§%!c§;
   import §[^§.§`!M§;
   import §]A§.§7x§;
   
   public class §+k§ extends §6",§
   {
       
      
      protected var §[H§:Number = 0.07;
      
      protected var §<m§:Number = 0.0;
      
      public function §+k§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDamageParticles(param1:§?N§, param2:int) : void
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
      
      protected function §["#§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§[H§ < §7x§.§#W§)
            {
               this.§[H§ += param1 * §7x§.§6!X§;
            }
            § 2§().SetAngularVelocity(param1 * this.§[H§);
         }
      }
      
      override public function update(param1:Number, param2:§?N§) : void
      {
         super.update(param1,param2);
         this.§["#§(param1);
         if(§>!m§() || §6!F§ > §7x§.§8'§)
         {
            if(this.§<m§ < §7x§.§[#§)
            {
               this.§<m§ += param1;
               if(this.§<m§ - param1 < §7x§.§2!z§ && this.§<m§ >= §7x§.§2!z§)
               {
                  this.§4!B§();
               }
               if(this.§<m§ >= §7x§.§[#§)
               {
                  this.§!D§(param2);
               }
            }
         }
      }
      
      protected function §4!B§() : void
      {
         §%!c§.§8" §("Mighty_Eagle_Selected_1","ChannelBird");
         §%!c§.§8" §("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §!D§(param1:§?N§) : void
      {
         var _loc2_:Number = § 2§().GetPosition().x - §7x§.§<X§;
         var _loc3_:Number = § 2§().GetPosition().y - §7x§.§<X§ * §7x§.§<L§ * 1.07;
         var _loc4_:§try§;
         (_loc4_ = param1.§1!w§("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§7x§.§8E§ * 1.2,§^O§.§@"+§) as §try§).§1!R§.setScale(1.82);
         _loc4_.§"j§ = id;
      }
      
      override public function updateOutOfBounds(param1:§?N§) : void
      {
         this.§4!B§();
         this.§!D§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
