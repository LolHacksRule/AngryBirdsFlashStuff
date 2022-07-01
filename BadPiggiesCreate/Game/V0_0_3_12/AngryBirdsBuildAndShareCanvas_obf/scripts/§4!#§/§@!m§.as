package §4!#§
{
   import §!R§.§8u§;
   import §!R§.§>"=§;
   import §#?§.§?![§;
   import §&!M§.b2BodyDef;
   import §&!M§.b2World;
   import §7"1§.§%W§;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   import §[B§.§^W§;
   
   public class §@!m§ extends §4!Q§
   {
      
      protected static const §?"=§:Boolean = false;
      
      protected static const §]P§:Number = 2000;
      
      protected static const §7j§:Number = 0.2;
       
      
      private var § t§:Number;
      
      private var §3!l§:Boolean = false;
      
      protected var §@$§:int = 0;
      
      public function §@!m§(param1:§[R§, param2:Sprite, param3:b2World, param4:§"d§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §8!5§.mTryToScream = §#0§.§#!i§ + 1;
         }
      }
      
      public function get §3!b§() : Boolean
      {
         return this.§3!l§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§2"#§ = true;
         _loc3_.§@c§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§2E§ < §<e§ && §5l§())
         {
            this.§ t§ += param1;
            if(this.§ t§ >= §]P§)
            {
               return true;
            }
         }
         else
         {
            this.§ t§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§3!l§)
         {
            if(§%!t§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§%!t§.toUpperCase() == "BIRD_YELLOW" || §%!t§.toUpperCase() == "BIRD_GREEN" || §%!t§.toUpperCase() == "BIRD_RED" || §%!t§.toUpperCase() == "BIRD_RED_BIG" || §%!t§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§8!5§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§8!5§.mTryToSpecial)
               {
                  §8!5§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§8!5§.mTryToSpecial)
            {
               §8!5§.mTryToSpecial = false;
               if(§8!5§.mIsSpecial)
               {
                  §8!5§.mIsSpecial = false;
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
         if(getBody().IsAwake() && §2E§ == §<e§)
         {
            if(!§8!5§.mTryToFly)
            {
               §8!5§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§%!t§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§3!l§ ? 2 : 1) * 360 / 1000;
               §!!B§(§1o§() - _loc3_);
            }
            else if(!(§%!t§.toUpperCase() == "BIRD_WHITE" && this.§3!l§))
            {
               if(§?"=§)
               {
                  §@Q§();
               }
               else if(!§!"5§() && !§^!m§())
               {
                  §!!B§(0);
               }
            }
         }
         else if(§8!5§.mTryToFly)
         {
            §8!5§.mTryToFly = false;
            if(§8!5§.mIsFlying)
            {
               §8!5§.mIsFlying = false;
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
         var _loc1_:§"d§ = §%W§.§5"8§;
         if(§2E§ < §<e§ || getBody() == null)
         {
            _loc1_.§^U§(this);
            _loc1_.§'"?§ = false;
            return;
         }
         var _loc2_:Number = x * §"d§.§2!]§;
         var _loc3_:Number = y * §"d§.§2!]§;
         if(_loc1_.§'"?§)
         {
            _loc1_.particles.§""#§(§8u§.§6-§,§>"=§.§ J§,§8u§.§6!8§,_loc2_,_loc3_,-1,"",§8u§.§^t§);
            _loc1_.§'"?§ = false;
            this.§@$§ = 0;
         }
         else if(§!!;§ > 1)
         {
            _loc1_.particles.§""#§(§8u§.§,"6§,§>"=§.§ J§,§8u§.§6!8§,_loc2_,_loc3_,-1,"",§8u§.§^t§);
         }
         else
         {
            _loc4_ = §8u§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§@$§ == 1)
            {
               _loc4_ = §8u§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§@$§ == 2)
            {
               _loc4_ = §8u§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§@$§ = (this.§@$§ + 1) % 3;
            _loc1_.particles.§""#§(_loc4_,§>"=§.§ J§,§8u§.§6!8§,_loc2_,_loc3_,-1,"",§8u§.§^t§);
         }
         if(§+!M§() > §^W§.§&!I§ && Math.random() < §7j§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§""#§(§8u§.§=!H§,§>"=§.§3%§,§8u§.§@9§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§8u§.§^p§(§%!t§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§8!5§.mTryToFly)
         {
            §6B§(§?![§.§5"3§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§[R§) : Boolean
      {
         if(this.§3!l§)
         {
            return false;
         }
         §6B§(§?![§.§3@§);
         this.§3!l§ = true;
         return true;
      }
      
      private function §8b§(param1:int) : int
      {
         return Math.min(§%W§.§5"8§.§>!u§,param1);
      }
      
      override public function addDestructionParticles(param1:§>"=§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = § !l§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§8b§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8!5§.mW * §"d§.§2!]§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8!5§.mH * §"d§.§2!]§) + Math.random() * -_loc8_ * 2;
            param1.§""#§(§8u§.§=!H§,§>"=§.§3%§,§8u§.§@9§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§8u§.§^p§(§%!t§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§>"=§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§^!m§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §+!M§() / 10;
         var _loc4_:int = 1 + _loc3_ * § !l§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§8b§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§""#§(§8u§.§'!4§,§>"=§.§3%§,§8u§.§@9§,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§""#§(§8u§.§=!H§,§>"=§.§3%§,§8u§.§@9§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§8u§.§^p§(§%!t§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
