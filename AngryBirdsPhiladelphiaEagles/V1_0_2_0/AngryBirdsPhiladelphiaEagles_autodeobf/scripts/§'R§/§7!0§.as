package §'R§
{
   import §%"§.§ do§;
   import §%"§.§7?§;
   import §;;§.§"!E§;
   import §;;§.§9"§;
   import §<!F§.§5!+§;
   import §<!N§.Sprite;
   import §`=§.§?!E§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §7!0§ extends §%-§
   {
      
      protected static const §3t§:Boolean = false;
      
      protected static const §6!0§:Number = 2000;
      
      protected static const §8>§:Number = 0.2;
       
      
      private var §[^§:Number;
      
      private var §,-§:Boolean = false;
      
      protected var §'!>§:int = 0;
      
      public function §7!0§(param1:§!m§, param2:Sprite, param3:b2World, param4:§ do§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §,q§.mTryToScream = §-$§.§`!,§ + 1;
         }
      }
      
      public function get §!z§() : Boolean
      {
         return this.§,-§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.bullet = true;
         _loc3_.angularDamping = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§3! § < §`!O§ && §8@§())
         {
            this.§[^§ += param1;
            if(this.§[^§ >= §6!0§)
            {
               return true;
            }
         }
         else
         {
            this.§[^§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§,-§)
         {
            if(§8!I§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§8!I§.toUpperCase() == "BIRD_YELLOW" || §8!I§.toUpperCase() == "BIRD_GREEN" || §8!I§.toUpperCase() == "BIRD_RED" || §8!I§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§,q§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§,q§.mTryToSpecial)
               {
                  §,q§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§,q§.mTryToSpecial)
            {
               §,q§.mTryToSpecial = false;
               if(§,q§.mIsSpecial)
               {
                  §,q§.mIsSpecial = false;
                  _loc2_ = true;
               }
            }
         }
         return _loc2_;
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = false;
         if(§<!I§().IsAwake() && §3! § == §`!O§)
         {
            if(!§,q§.mTryToFly)
            {
               §,q§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§8!I§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§,-§ ? 2 : 1) * 360 / 1000;
               §+!6§(§@!G§() - _loc3_);
            }
            else if(!(§8!I§.toUpperCase() == "BIRD_WHITE" && this.§,-§))
            {
               if(§3t§)
               {
                  §7G§();
               }
               else if(!§]!G§() && !§'!A§())
               {
                  §+!6§(0);
               }
            }
         }
         else if(§,q§.mTryToFly)
         {
            §,q§.mTryToFly = false;
            if(§,q§.mIsFlying)
            {
               §,q§.mIsFlying = false;
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§ do§ = §5!+§.§6!§;
         if(§3! § < §`!O§ || §<!I§() == null)
         {
            _loc1_.§[!@§(this);
            _loc1_.§`!A§ = false;
            return;
         }
         var _loc2_:Number = x * § do§.§^!I§;
         var _loc3_:Number = y * § do§.§^!I§;
         if(_loc1_.§`!A§)
         {
            _loc1_.particles.addParticle(§"!E§.§4!$§,§9"§.§8D§,§"!E§.§6&§,_loc2_,_loc3_,-1,"",§"!E§.§;[§);
            _loc1_.§`!A§ = false;
            this.§'!>§ = 0;
         }
         else if(§8!-§ > 1)
         {
            _loc1_.particles.addParticle(§"!E§.§%W§,§9"§.§8D§,§"!E§.§6&§,_loc2_,_loc3_,-1,"",§"!E§.§;[§);
         }
         else
         {
            _loc4_ = §"!E§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§'!>§ == 1)
            {
               _loc4_ = §"!E§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§'!>§ == 2)
            {
               _loc4_ = §"!E§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§'!>§ = (this.§'!>§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§9"§.§8D§,§"!E§.§6&§,_loc2_,_loc3_,-1,"",§"!E§.§;[§);
         }
         if(§ ! §() > §7?§.§#k§ && Math.random() < §8>§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§"!E§.§!!7§,§9"§.§`z§,§"!E§.§!b§,§<!I§().GetPosition().x,§<!I§().GetPosition().y,1250,"",§"!E§.§3H§(§8!I§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§,q§.mTryToFly)
         {
            §@!E§(§?!E§.§"F§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§!m§) : Boolean
      {
         if(this.§,-§)
         {
            return false;
         }
         §@!E§(§?!E§.§[!I§);
         this.§,-§ = true;
         return true;
      }
      
      private function § T§(param1:int) : int
      {
         return Math.min(§5!+§.§6!§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§9"§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §[L§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§ T§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§,q§.mW * § do§.§^!I§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§,q§.mH * § do§.§^!I§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§"!E§.§!!7§,§9"§.§`z§,§"!E§.§!b§,§<!I§().GetPosition().x + _loc7_,§<!I§().GetPosition().y + _loc8_,1500,"",§"!E§.§3H§(§8!I§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§9"§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§'!A§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = § ! §() / 10;
         var _loc4_:int = 1 + _loc3_ * §[L§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§ T§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§"!E§.§,T§,§9"§.§`z§,§"!E§.§!b§,§<!I§().GetPosition().x,§<!I§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§"!E§.§!!7§,§9"§.§`z§,§"!E§.§!b§,§<!I§().GetPosition().x,§<!I§().GetPosition().y,1250,"",§"!E§.§3H§(§8!I§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
