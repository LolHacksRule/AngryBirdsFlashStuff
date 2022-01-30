package §"P§
{
   import §!"+§.§!o§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §8q§.§]d§;
   import §9G§.§0i§;
   import §=!c§.b2World;
   
   public class §[!U§ extends §?!§
   {
       
      
      protected var §9!@§:Number = 0.07;
      
      protected var §[&§:Number = 0.0;
      
      public function §[!U§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function addDamageParticles(param1:§0w§, param2:int) : void
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
      
      protected function §7! §(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§9!@§ < §0i§.§@!O§)
            {
               this.§9!@§ += param1 * §0i§.§=l§;
            }
            §7J§().SetAngularVelocity(param1 * this.§9!@§);
         }
      }
      
      override public function update(param1:Number, param2:§0w§) : void
      {
         super.update(param1,param2);
         this.§7! §(param1);
         if(§%!;§() || §-K§ > §0i§.§]!l§)
         {
            if(this.§[&§ < §0i§.§?!I§)
            {
               this.§[&§ += param1;
               if(this.§[&§ - param1 < §0i§.§,!n§ && this.§[&§ >= §0i§.§,!n§)
               {
                  this.§35§();
               }
               if(this.§[&§ >= §0i§.§?!I§)
               {
                  this.§;>§(param2);
               }
            }
         }
      }
      
      protected function §35§() : void
      {
         §]d§.§^!J§("Mighty_Eagle_Selected_1","ChannelBird");
         §]d§.§^!J§("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §;>§(param1:§0w§) : void
      {
         var _loc2_:Number = §7J§().GetPosition().x - §0i§.§=!_§;
         var _loc3_:Number = §7J§().GetPosition().y - §0i§.§=!_§ * §0i§.§7N§ * 1.07;
         var _loc4_:§'!2§;
         (_loc4_ = param1.§5!t§("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§0i§.§<!D§ * 1.2,§&"0§.§&g§) as §'!2§).§,!`§.setScale(1.82);
         _loc4_.§<o§ = id;
      }
      
      override public function updateOutOfBounds(param1:§0w§) : void
      {
         this.§35§();
         this.§;>§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
