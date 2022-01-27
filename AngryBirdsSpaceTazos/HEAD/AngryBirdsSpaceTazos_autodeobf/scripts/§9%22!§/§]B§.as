package §9"!§
{
   import §&!]§.Sprite;
   import §3!S§.§<5§;
   import §3"#§.;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §]B§ extends §!!H§
   {
       
      
      protected var §>o§:Number = 0.07;
      
      protected var § !3§:Number = 0.0;
      
      public function §]B§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDamageParticles(param1:§0!s§, param2:int) : void
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
      
      protected function §0"+§(param1:Number) : void
      {
         if(health == healthMax)
         {
            if(this.§>o§ < §#2§.§!V§)
            {
               this.§>o§ += param1 * §#2§.§0! §;
            }
            §`I§().SetAngularVelocity(param1 * this.§>o§);
         }
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         this.§0"+§(param1);
         if(§ !W§() || timeSinceCollisionMilliSeconds > §#2§.§#E§)
         {
            if(this.§ !3§ < §#2§.§%7§)
            {
               this.§ !3§ += param1;
               if(this.§ !3§ - param1 < §#2§.§8"C§ && this.§ !3§ >= §#2§.§8"C§)
               {
                  this.§=A§();
               }
               if(this.§ !3§ >= §#2§.§%7§)
               {
                  this.§7'§(param2);
               }
            }
         }
      }
      
      protected function §=A§() : void
      {
         §<5§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
         §<5§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
      }
      
      protected function §7'§(param1:§0!s§) : void
      {
         var _loc2_:Number = §`I§().GetPosition().x - §#2§.§4!M§;
         var _loc3_:Number = §`I§().GetPosition().y - §#2§.§4!M§ * §#2§.§&!e§ * 1.07;
         var _loc4_:§7"3§;
         (_loc4_ = param1.addObject("BIRD_MIGHTY_EAGLE",_loc2_,_loc3_,§#2§.§]"9§ * 1.2,§"" §.§%A§) as §7"3§).renderer.setScale(1.82);
         _loc4_.§%!B§ = id;
      }
      
      override public function updateOutOfBounds(param1:§0!s§) : void
      {
         this.§=A§();
         this.§7'§(param1);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
   }
}
