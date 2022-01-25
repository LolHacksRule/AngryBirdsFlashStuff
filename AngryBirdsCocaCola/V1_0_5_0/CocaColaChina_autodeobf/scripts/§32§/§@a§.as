package §32§
{
   import § y§.b2World;
   import §#B§.§ ! §;
   import §,-§.§ q§;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §2!G§.§2!V§;
   import §<!$§.Sprite;
   import §=L§.§@E§;
   import §[+§.§3L§;
   
   public class §@a§ extends §3_§
   {
       
      
      private var §[h§:Number = 0;
      
      public function §@a§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§]s§) : void
      {
         this.§switch§(param1);
         this.§%!?§(param1,1);
         this.§%!?§(param1,2);
         this.§%!?§(param1,3);
         this.§%!?§(param1,4);
         §"S§.createExplosion(§"S§.§8!X§,x,y);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         this.§[h§ += param1;
         var _loc7_:Number = §5K§.material.mValues[§ q§.§,!,§];
         if(this.§[h§ >= _loc7_)
         {
            this.§[h§ = 0;
            param1 = §?G§ / 4 + 1 + _loc7_ / 4;
            if(§6T§.§>c§.§^!b§() == 4)
            {
               param6 = true;
            }
            var _loc8_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
            if(§=1§ < §?G§)
            {
               if(§6T§.§>c§.§^!b§() == 0)
               {
                  §6T§.§>c§.§>!N§(this);
                  §@E§.playSound("Drum_1_1");
               }
               if(§=1§ <= §?G§ * 0.75)
               {
                  if(§6T§.§>c§.§^!b§() == 1)
                  {
                     §6T§.§>c§.§>!N§(this);
                     §@E§.playSound("Drum_2_1");
                  }
                  if(§=1§ <= §?G§ * 0.5)
                  {
                     if(§6T§.§>c§.§^!b§() == 2)
                     {
                        §6T§.§>c§.§>!N§(this);
                        §@E§.playSound("Drum_3_1");
                     }
                     if(§=1§ <= §?G§ * 0.25)
                     {
                        if(§6T§.§>c§.§^!b§() == 3)
                        {
                           §6T§.§>c§.§>!N§(this);
                           §@E§.playSound("Golden_Drum_1","ChannelMisc",1,1);
                           §=1§ = 0;
                        }
                     }
                  }
               }
            }
            return _loc8_;
         }
         return 0;
      }
      
      override public function addDamageParticles(param1:§]s§, param2:int) : void
      {
         if(§=1§ < §?G§)
         {
            if(§6T§.§>c§.§^!b§() <= 0)
            {
               this.§%!?§(param1,1);
            }
            if(§=1§ <= §?G§ * 0.75)
            {
               if(§6T§.§>c§.§^!b§() == 1)
               {
                  this.§%!?§(param1,2);
               }
               if(§=1§ <= §?G§ * 0.5)
               {
                  if(§6T§.§>c§.§^!b§() == 2)
                  {
                     this.§%!?§(param1,3);
                  }
                  if(§=1§ <= §?G§ * 0.25)
                  {
                     if(§6T§.§>c§.§^!b§() == 3)
                     {
                        this.§%!?§(param1,4);
                     }
                  }
               }
            }
         }
      }
      
      private function §switch§(param1:§]s§) : void
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
            param1.§;!V§("PARTICLE_COLLECT_GOLDEN_DRUM_STAR",§]s§.§0!E§,§&!^§.§7!L§,§4g§().GetPosition().x,§4g§().GetPosition().y,400 + 700 * Math.random(),"",§&!^§.§5F§(§3a§),_loc9_,_loc10_,10,_loc10_ * 20,0.5 + Math.random() * 1);
            _loc7_++;
         }
      }
      
      private function §%!?§(param1:§]s§, param2:Number) : void
      {
         var _loc3_:§&!^§ = param1.§;!V§("PARTICLE_SOUNDWAVE_COKE",§]s§.§'-§,§3L§.§1!d§,§4g§().GetPosition().x,§4g§().GetPosition().y,600,"",§&!^§.§5F§(§3a§),0,0,0,0,param2 * 0.5);
      }
   }
}
