package §`!X§
{
   import §8!I§.b2BodyDef;
   import §8!I§.b2World;
   import §<!-§.Sprite;
   import §>!Z§.§+!Z§;
   import §>!Z§.§`!S§;
   import §?!P§.§@@§;
   import §^!7§.§]H§;
   import §^!7§.§^A§;
   import §`Y§.§3!M§;
   
   public class §>K§ extends §-E§
   {
      
      protected static const §[3§:Boolean = false;
      
      protected static const §-!4§:Number = 2000;
      
      protected static const §'e§:Number = 0.2;
       
      
      private var §6U§:Number;
      
      private var §?M§:Boolean = false;
      
      protected var §?![§:int = 0;
      
      public function §>K§(param1:§@!^§, param2:Sprite, param3:b2World, param4:§^A§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §?W§.mTryToScream = §>r§.§&!E§ + 1;
         }
      }
      
      public function get §'!8§() : Boolean
      {
         return this.§?M§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§,Z§ = true;
         _loc3_.§;d§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§^o§ < §'!M§ && §9!E§())
         {
            this.§6U§ += param1;
            if(this.§6U§ >= §-!4§)
            {
               return true;
            }
         }
         else
         {
            this.§6U§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§?M§)
         {
            if(§7=§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§7=§.toUpperCase() == "BIRD_YELLOW" || §7=§.toUpperCase() == "BIRD_GREEN" || §7=§.toUpperCase() == "BIRD_RED" || §7=§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§?W§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§?W§.mTryToSpecial)
               {
                  §?W§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§?W§.mTryToSpecial)
            {
               §?W§.mTryToSpecial = false;
               if(§?W§.mIsSpecial)
               {
                  §?W§.mIsSpecial = false;
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
         if(§1!E§().IsAwake() && §^o§ == §'!M§)
         {
            if(!§?W§.mTryToFly)
            {
               §?W§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§7=§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§?M§ ? 2 : 1) * 360 / 1000;
               §10§(§4!2§() - _loc3_);
            }
            else if(!(§7=§.toUpperCase() == "BIRD_WHITE" && this.§?M§))
            {
               if(§[3§)
               {
                  §&!>§();
               }
               else if(!§8P§() && !§2!U§())
               {
                  §10§(0);
               }
            }
         }
         else if(§?W§.mTryToFly)
         {
            §?W§.mTryToFly = false;
            if(§?W§.mIsFlying)
            {
               §?W§.mIsFlying = false;
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
         var _loc1_:§^A§ = §@@§.§ !8§;
         if(§^o§ < §'!M§ || §1!E§() == null)
         {
            _loc1_.§5?§(this);
            _loc1_.§4v§ = false;
            return;
         }
         var _loc2_:Number = x * §^A§.§<U§;
         var _loc3_:Number = y * §^A§.§<U§;
         if(_loc1_.§4v§)
         {
            _loc1_.particles.addParticle(§+!Z§.§>!>§,§`!S§.§6!8§,§+!Z§.§]!6§,_loc2_,_loc3_,-1,"",§+!Z§.§<!8§);
            _loc1_.§4v§ = false;
            this.§?![§ = 0;
         }
         else if(§'!#§ > 1)
         {
            _loc1_.particles.addParticle(§+!Z§.§9?§,§`!S§.§6!8§,§+!Z§.§]!6§,_loc2_,_loc3_,-1,"",§+!Z§.§<!8§);
         }
         else
         {
            _loc4_ = §+!Z§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§?![§ == 1)
            {
               _loc4_ = §+!Z§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§?![§ == 2)
            {
               _loc4_ = §+!Z§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§?![§ = (this.§?![§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§`!S§.§6!8§,§+!Z§.§]!6§,_loc2_,_loc3_,-1,"",§+!Z§.§<!8§);
         }
         if(§^!6§() > §]H§.§+_§ && Math.random() < §'e§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§+!Z§.§-!+§,§`!S§.§3!_§,§+!Z§.§76§,§1!E§().GetPosition().x,§1!E§().GetPosition().y,1250,"",§+!Z§.§function§(§7=§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§?W§.mTryToFly)
         {
            §`u§(§3!M§.§?!&§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§@!^§) : Boolean
      {
         if(this.§?M§)
         {
            return false;
         }
         §`u§(§3!M§.§4!%§);
         this.§?M§ = true;
         return true;
      }
      
      private function §,&§(param1:int) : int
      {
         return Math.min(§@@§.§ !8§.§@&§,param1);
      }
      
      override public function addDestructionParticles(param1:§`!S§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §[N§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§,&§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§?W§.mW * §^A§.§<U§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§?W§.mH * §^A§.§<U§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§+!Z§.§-!+§,§`!S§.§3!_§,§+!Z§.§76§,§1!E§().GetPosition().x + _loc7_,§1!E§().GetPosition().y + _loc8_,1500,"",§+!Z§.§function§(§7=§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§`!S§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§2!U§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §^!6§() / 10;
         var _loc4_:int = 1 + _loc3_ * §[N§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§,&§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§+!Z§.§>w§,§`!S§.§3!_§,§+!Z§.§76§,§1!E§().GetPosition().x,§1!E§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§+!Z§.§-!+§,§`!S§.§3!_§,§+!Z§.§76§,§1!E§().GetPosition().x,§1!E§().GetPosition().y,1250,"",§+!Z§.§function§(§7=§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
