package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §1T§.§'!c§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   import §@L§.§=b§;
   
   public class §!t§ extends §?!z§
   {
       
      
      protected var §[!H§:Number = 0.07;
      
      protected var §?v§:Number = 0.0;
      
      public function §!t§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§3!#§, param2:int) : void
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
      
      protected function §>W§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§[!H§ < §=b§.§-!X§)
            {
               this.§[!H§ += param1 * §=b§.§8§;
            }
            §^`§().SetAngularVelocity(param1 * this.§[!H§);
         }
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         super.update(param1,param2);
         this.§>W§(param1);
         if(§^" §() || §?T§ > §=b§.§2^§)
         {
            if(this.§?v§ < §=b§.§'!_§)
            {
               this.§?v§ += param1;
               if(this.§?v§ - param1 < §=b§.§'!O§ && this.§?v§ >= §=b§.§'!O§)
               {
                  this.§!!k§();
               }
               if(this.§?v§ >= §=b§.§'!_§)
               {
                  this.§`"'§(param2);
               }
            }
         }
      }
      
      protected function §!!k§() : void
      {
         §'!c§.§3!f§("Mighty_Eagle_Selected_1","ChannelBird");
         §'!c§.§3!f§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §`"'§(param1:§3!#§) : void
      {
         var _loc2_:Number = §^`§().GetPosition().x - §=b§.§`!,§;
         var _loc3_:Number = §^`§().GetPosition().y - §=b§.§`!,§ * §=b§.§7!p§ * 1.07;
         var _loc4_:§+f§;
         (_loc4_ = param1.§,]§("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§=b§.§"-§ * 1.2,§&"§.§5!1§) as §+f§).§9!%§.setScale(1.82);
         _loc4_.§`!0§ = id;
      }
      
      override public function updateOutOfBounds(param1:§3!#§) : void
      {
         this.§!!k§();
         this.§`"'§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
