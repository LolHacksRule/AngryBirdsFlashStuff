package § !$§
{
   import § !K§.Sprite;
   import §1v§.§,e§;
   import §3f§.b2World;
   import §4A§.§&_§;
   import §7I§.§<!0§;
   import §;+§.§+!?§;
   import §;G§.§1D§;
   import §;G§.§;Z§;
   import §^p§.§=!3§;
   
   public class §4u§ extends §0D§
   {
       
      
      private var §13§:Number = 0;
      
      public function §4u§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§1D§) : void
      {
         this.§8R§(param1);
         this.§<!!§(param1,1);
         this.§<!!§(param1,2);
         this.§<!!§(param1,3);
         this.§<!!§(param1,4);
         §`@§.createExplosion(§`@§.§,!+§,x,y);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         this.§13§ += param1;
         var _loc7_:Number = §-!$§.material.mValues[§=!3§.§;!_§];
         if(this.§13§ >= _loc7_)
         {
            this.§13§ = 0;
            param1 = §?L§ / 4 + 1 + _loc7_ / 4;
            if(§"!@§.§-5§.§3u§() == 4)
            {
               param6 = true;
            }
            var _loc8_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
            if(§"!D§ < §?L§)
            {
               if(§"!@§.§-5§.§3u§() == 0)
               {
                  §"!@§.§-5§.§?!V§(this);
                  §<!0§.playSound("Drum_1_1");
               }
               if(§"!D§ <= §?L§ * 0.75)
               {
                  if(§"!@§.§-5§.§3u§() == 1)
                  {
                     §"!@§.§-5§.§?!V§(this);
                     §<!0§.playSound("Drum_2_1");
                  }
                  if(§"!D§ <= §?L§ * 0.5)
                  {
                     if(§"!@§.§-5§.§3u§() == 2)
                     {
                        §"!@§.§-5§.§?!V§(this);
                        §<!0§.playSound("Drum_3_1");
                     }
                     if(§"!D§ <= §?L§ * 0.25)
                     {
                        if(§"!@§.§-5§.§3u§() == 3)
                        {
                           §"!@§.§-5§.§?!V§(this);
                           §<!0§.playSound("Golden_Drum_1","ChannelMisc",1,1);
                           §"!D§ = 0;
                        }
                     }
                  }
               }
            }
            return _loc8_;
         }
         return 0;
      }
      
      override public function addDamageParticles(param1:§1D§, param2:int) : void
      {
         if(§"!D§ < §?L§)
         {
            if(§"!@§.§-5§.§3u§() <= 0)
            {
               this.§<!!§(param1,1);
            }
            if(§"!D§ <= §?L§ * 0.75)
            {
               if(§"!@§.§-5§.§3u§() == 1)
               {
                  this.§<!!§(param1,2);
               }
               if(§"!D§ <= §?L§ * 0.5)
               {
                  if(§"!@§.§-5§.§3u§() == 2)
                  {
                     this.§<!!§(param1,3);
                  }
                  if(§"!D§ <= §?L§ * 0.25)
                  {
                     if(§"!@§.§-5§.§3u§() == 3)
                     {
                        this.§<!!§(param1,4);
                     }
                  }
               }
            }
         }
      }
      
      private function §8R§(param1:§1D§) : void
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
            param1.§#!Q§("PARTICLE_COLLECT_GOLDEN_DRUM_STAR",§1D§.§%d§,§;Z§.§>!H§,§1!d§().GetPosition().x,§1!d§().GetPosition().y,400 + 700 * Math.random(),"",§;Z§.§"!a§(§1T§),_loc9_,_loc10_,10,_loc10_ * 20,0.5 + Math.random() * 1);
            _loc7_++;
         }
      }
      
      private function §<!!§(param1:§1D§, param2:Number) : void
      {
         var _loc3_:§;Z§ = param1.§#!Q§("PARTICLE_SOUNDWAVE_COKE",§1D§.§<!L§,§,e§.§=U§,§1!d§().GetPosition().x,§1!d§().GetPosition().y,600,"",§;Z§.§"!a§(§1T§),0,0,0,0,param2 * 0.5);
      }
   }
}
