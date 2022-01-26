package §[O§
{
   import §#m§.§&r§;
   import §,!Q§.Sprite;
   import §,M§.§%C§;
   import §,M§.§,!;§;
   import §1v§.§,e§;
   import §4A§.§&_§;
   import §4U§.b2World;
   import §7m§.§7I§;
   import §9C§.§;,§;
   
   public class §3!K§ extends §#a§
   {
       
      
      private var §"! §:Number = 0;
      
      public function §3!K§(param1:§;,§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§%C§) : void
      {
         this.§0D§(param1);
         this.§1w§(param1,1);
         this.§1w§(param1,2);
         this.§1w§(param1,3);
         this.§1w§(param1,4);
         §#3§.createExplosion(§#3§.§9!0§,x,y);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         this.§"! § += param1;
         var _loc7_:Number = §4!%§.material.mValues[§&r§.§4! §];
         if(this.§"! § >= _loc7_)
         {
            this.§"! § = 0;
            param1 = §&=§ / 4 + 1 + _loc7_ / 4;
            if(§"!@§.§6!-§.§+L§() == 4)
            {
               param6 = true;
            }
            var _loc8_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
            if(§ b§ < §&=§)
            {
               if(§"!@§.§6!-§.§+L§() == 0)
               {
                  §"!@§.§6!-§.§3S§(this);
                  §7I§.playSound("Drum_1_1");
               }
               if(§ b§ <= §&=§ * 0.75)
               {
                  if(§"!@§.§6!-§.§+L§() == 1)
                  {
                     §"!@§.§6!-§.§3S§(this);
                     §7I§.playSound("Drum_2_1");
                  }
                  if(§ b§ <= §&=§ * 0.5)
                  {
                     if(§"!@§.§6!-§.§+L§() == 2)
                     {
                        §"!@§.§6!-§.§3S§(this);
                        §7I§.playSound("Drum_3_1");
                     }
                     if(§ b§ <= §&=§ * 0.25)
                     {
                        if(§"!@§.§6!-§.§+L§() == 3)
                        {
                           §"!@§.§6!-§.§3S§(this);
                           §7I§.playSound("Golden_Drum_1","ChannelMisc",1,1);
                           § b§ = 0;
                        }
                     }
                  }
               }
            }
            return _loc8_;
         }
         return 0;
      }
      
      override public function addDamageParticles(param1:§%C§, param2:int) : void
      {
         if(§ b§ < §&=§)
         {
            if(§"!@§.§6!-§.§+L§() <= 0)
            {
               this.§1w§(param1,1);
            }
            if(§ b§ <= §&=§ * 0.75)
            {
               if(§"!@§.§6!-§.§+L§() == 1)
               {
                  this.§1w§(param1,2);
               }
               if(§ b§ <= §&=§ * 0.5)
               {
                  if(§"!@§.§6!-§.§+L§() == 2)
                  {
                     this.§1w§(param1,3);
                  }
                  if(§ b§ <= §&=§ * 0.25)
                  {
                     if(§"!@§.§6!-§.§+L§() == 3)
                     {
                        this.§1w§(param1,4);
                     }
                  }
               }
            }
         }
      }
      
      private function §0D§(param1:§%C§) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc3_:int = 70;
         var _loc4_:Number = 90;
         _loc3_ *= 1;
         var _loc7_:int = 0;
         while(_loc7_ < _loc3_)
         {
            _loc8_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc9_ = 30 * Math.cos(_loc8_) * Math.random();
            _loc10_ = -30 * Math.sin(_loc8_) * Math.random();
            param1.§<%§("PARTICLE_COLLECT_GOLDEN_DRUM_STAR",§%C§.§5l§,§,!;§.§7s§,§@!?§().GetPosition().x,§@!?§().GetPosition().y,400 + 700 * Math.random(),"",§,!;§.§%!$§(§!I§),_loc9_,_loc10_,10,_loc10_ * 20,0.5 + Math.random() * 1);
            _loc7_++;
         }
      }
      
      private function §1w§(param1:§%C§, param2:Number) : void
      {
         var _loc3_:§,!;§ = param1.§<%§("PARTICLE_SOUNDWAVE_COKE",§%C§.§1D§,§,e§.§=U§,§@!?§().GetPosition().x,§@!?§().GetPosition().y,600,"",§,!;§.§%!$§(§!I§),0,0,0,0,param2 * 0.5);
      }
   }
}
