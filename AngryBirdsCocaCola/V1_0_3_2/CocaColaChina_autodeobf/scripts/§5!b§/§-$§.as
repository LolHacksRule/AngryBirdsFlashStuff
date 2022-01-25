package §5!b§
{
   import § !9§.§'!U§;
   import §4!O§.§+K§;
   import §43§.§@r§;
   import §5!?§.§>"§;
   import §;t§.Sprite;
   import §=!U§.b2World;
   import §@!>§.§<!J§;
   import §@!>§.§=!R§;
   import §[o§.§@N§;
   
   public class §-$§ extends § g§
   {
       
      
      private var §<%§:Number = 0;
      
      public function §-$§(param1:§+K§, param2:Sprite, param3:b2World, param4:§>"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§=!R§) : void
      {
         this.§?y§(param1);
         this.§'!b§(param1,1);
         this.§'!b§(param1,2);
         this.§'!b§(param1,3);
         this.§'!b§(param1,4);
         §9!O§.createExplosion(§9!O§.§`;§,x,y);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         this.§<%§ += param1;
         var _loc7_:Number = §false§.material.mValues[§@N§.§;_§];
         if(this.§<%§ >= _loc7_)
         {
            this.§<%§ = 0;
            param1 = §6!N§ / 4 + 1 + _loc7_ / 4;
            if(§=i§.§2S§.§!!Q§() == 4)
            {
               param6 = true;
            }
            var _loc8_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
            if(§8!B§ < §6!N§)
            {
               if(§=i§.§2S§.§!!Q§() == 0)
               {
                  §=i§.§2S§.§!r§(this);
                  §'!U§.playSound("Drum_1_1");
               }
               if(§8!B§ <= §6!N§ * 0.75)
               {
                  if(§=i§.§2S§.§!!Q§() == 1)
                  {
                     §=i§.§2S§.§!r§(this);
                     §'!U§.playSound("Drum_2_1");
                  }
                  if(§8!B§ <= §6!N§ * 0.5)
                  {
                     if(§=i§.§2S§.§!!Q§() == 2)
                     {
                        §=i§.§2S§.§!r§(this);
                        §'!U§.playSound("Drum_3_1");
                     }
                     if(§8!B§ <= §6!N§ * 0.25)
                     {
                        if(§=i§.§2S§.§!!Q§() == 3)
                        {
                           §=i§.§2S§.§!r§(this);
                           §'!U§.playSound("Golden_Drum_1","ChannelMisc",1,1);
                           §8!B§ = 0;
                        }
                     }
                  }
               }
            }
            return _loc8_;
         }
         return 0;
      }
      
      override public function addDamageParticles(param1:§=!R§, param2:int) : void
      {
         if(§8!B§ < §6!N§)
         {
            if(§=i§.§2S§.§!!Q§() <= 0)
            {
               this.§'!b§(param1,1);
            }
            if(§8!B§ <= §6!N§ * 0.75)
            {
               if(§=i§.§2S§.§!!Q§() == 1)
               {
                  this.§'!b§(param1,2);
               }
               if(§8!B§ <= §6!N§ * 0.5)
               {
                  if(§=i§.§2S§.§!!Q§() == 2)
                  {
                     this.§'!b§(param1,3);
                  }
                  if(§8!B§ <= §6!N§ * 0.25)
                  {
                     if(§=i§.§2S§.§!!Q§() == 3)
                     {
                        this.§'!b§(param1,4);
                     }
                  }
               }
            }
         }
      }
      
      private function §?y§(param1:§=!R§) : void
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
            param1.§'!"§("PARTICLE_COLLECT_GOLDEN_DRUM_STAR",§=!R§.§4r§,§<!J§.§"@§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,400 + 700 * Math.random(),"",§<!J§.§7D§(§7!0§),_loc9_,_loc10_,10,_loc10_ * 20,0.5 + Math.random() * 1);
            _loc7_++;
         }
      }
      
      private function §'!b§(param1:§=!R§, param2:Number) : void
      {
         var _loc3_:§<!J§ = param1.§'!"§("PARTICLE_SOUNDWAVE_COKE",§=!R§.§`!N§,§@r§.§>!Q§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,600,"",§<!J§.§7D§(§7!0§),0,0,0,0,param2 * 0.5);
      }
   }
}
