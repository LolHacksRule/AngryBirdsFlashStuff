package §;z§
{
   import §"P§.§%w§;
   import §'!Y§.§+e§;
   import §'!Y§.§^Z§;
   import §,H§.Sprite;
   import §-A§.§ '§;
   import §-A§.§%9§;
   import §4!&§.b2BodyDef;
   import §4!&§.b2World;
   import §@!W§.§8!W§;
   
   public class §=P§ extends §2!S§
   {
      
      protected static const §,y§:Boolean = false;
      
      protected static const §>!O§:Number = 2000;
      
      protected static const §+&§:Number = 0.2;
       
      
      private var § S§:Number;
      
      private var §3o§:Boolean = false;
      
      protected var §,!C§:int = 0;
      
      public function §=P§(param1:§]!N§, param2:Sprite, param3:b2World, param4:§%9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §=t§.mTryToScream = §0!Q§.§%!?§ + 1;
         }
      }
      
      public function get §%Z§() : Boolean
      {
         return this.§3o§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§do § = true;
         _loc3_.§&t§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§^,§ < §[!,§ && § !3§())
         {
            this.§ S§ += param1;
            if(this.§ S§ >= §>!O§)
            {
               return true;
            }
         }
         else
         {
            this.§ S§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§3o§)
         {
            if(§10§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§10§.toUpperCase() == "BIRD_YELLOW" || §10§.toUpperCase() == "BIRD_GREEN" || §10§.toUpperCase() == "BIRD_RED" || §10§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§=t§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§=t§.mTryToSpecial)
               {
                  §=t§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§=t§.mTryToSpecial)
            {
               §=t§.mTryToSpecial = false;
               if(§=t§.mIsSpecial)
               {
                  §=t§.mIsSpecial = false;
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
         if(§^!V§().IsAwake() && §^,§ == §[!,§)
         {
            if(!§=t§.mTryToFly)
            {
               §=t§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§10§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§3o§ ? 2 : 1) * 360 / 1000;
               §6!Z§(§!?§() - _loc3_);
            }
            else if(!(§10§.toUpperCase() == "BIRD_WHITE" && this.§3o§))
            {
               if(§,y§)
               {
                  §&!4§();
               }
               else if(!§+K§() && !§<K§())
               {
                  §6!Z§(0);
               }
            }
         }
         else if(§=t§.mTryToFly)
         {
            §=t§.mTryToFly = false;
            if(§=t§.mIsFlying)
            {
               §=t§.mIsFlying = false;
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
         var _loc1_:§%9§ = §8!W§.§=X§;
         if(§^,§ < §[!,§ || §^!V§() == null)
         {
            _loc1_.§=J§(this);
            _loc1_.§+!B§ = false;
            return;
         }
         var _loc2_:Number = x * §%9§.§1[§;
         var _loc3_:Number = y * §%9§.§1[§;
         if(_loc1_.§+!B§)
         {
            _loc1_.particles.addParticle(§+e§.§]!Q§,§^Z§.§'F§,§+e§.§5%§,_loc2_,_loc3_,-1,"",§+e§.§8!N§);
            _loc1_.§+!B§ = false;
            this.§,!C§ = 0;
         }
         else if(§>!?§ > 1)
         {
            _loc1_.particles.addParticle(§+e§.§'!6§,§^Z§.§'F§,§+e§.§5%§,_loc2_,_loc3_,-1,"",§+e§.§8!N§);
         }
         else
         {
            _loc4_ = §+e§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§,!C§ == 1)
            {
               _loc4_ = §+e§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§,!C§ == 2)
            {
               _loc4_ = §+e§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§,!C§ = (this.§,!C§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§^Z§.§'F§,§+e§.§5%§,_loc2_,_loc3_,-1,"",§+e§.§8!N§);
         }
         if(§>!6§() > § '§.§3B§ && Math.random() < §+&§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§+e§.§#0§,§^Z§.§<!%§,§+e§.§]@§,§^!V§().GetPosition().x,§^!V§().GetPosition().y,1250,"",§+e§.§super§(§10§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§=t§.mTryToFly)
         {
            §6!H§(§%w§.§[!9§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§]!N§) : Boolean
      {
         if(this.§3o§)
         {
            return false;
         }
         §6!H§(§%w§.§8!?§);
         this.§3o§ = true;
         return true;
      }
      
      private function §%!1§(param1:int) : int
      {
         return Math.min(§8!W§.§=X§.§!§,param1);
      }
      
      override public function addDestructionParticles(param1:§^Z§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §4T§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§%!1§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§=t§.mW * §%9§.§1[§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§=t§.mH * §%9§.§1[§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§+e§.§#0§,§^Z§.§<!%§,§+e§.§]@§,§^!V§().GetPosition().x + _loc7_,§^!V§().GetPosition().y + _loc8_,1500,"",§+e§.§super§(§10§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§^Z§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§<K§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §>!6§() / 10;
         var _loc4_:int = 1 + _loc3_ * §4T§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§%!1§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§+e§.§ O§,§^Z§.§<!%§,§+e§.§]@§,§^!V§().GetPosition().x,§^!V§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§+e§.§#0§,§^Z§.§<!%§,§+e§.§]@§,§^!V§().GetPosition().x,§^!V§().GetPosition().y,1250,"",§+e§.§super§(§10§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
