package §`"§
{
   import §!T§.§`P§;
   import §0H§.§-V§;
   import §0H§.§2x§;
   import §10§.§#!4§;
   import §9!?§.§%g§;
   import §9!?§.§^]§;
   import §<k§.Sprite;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §&>§ extends § P§
   {
      
      protected static const §5v§:Boolean = false;
      
      protected static const §&C§:Number = 2000;
      
      private static const § -§:int = 20;
      
      private static const §6=§:Number = 0.2;
       
      
      private var §6!@§:Number;
      
      private var §[b§:Boolean = false;
      
      private var §&m§:int = 0;
      
      public function §&>§(param1:§?!;§, param2:Sprite, param3:b2World, param4:§^]§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §>b§.mTryToScream = §'q§.§3P§ + 1;
         }
      }
      
      public function get §->§() : Boolean
      {
         return this.§[b§;
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
         if(§`h§ < §'R§ && §&c§())
         {
            this.§6!@§ += param1;
            if(this.§6!@§ >= §&C§)
            {
               return true;
            }
         }
         else
         {
            this.§6!@§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§[b§)
         {
            if(§"]§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§"]§.toUpperCase() == "BIRD_YELLOW" || §"]§.toUpperCase() == "BIRD_GREEN" || §"]§.toUpperCase() == "BIRD_RED" || §"]§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§>b§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§>b§.mTryToSpecial)
               {
                  §>b§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§>b§.mTryToSpecial)
            {
               §>b§.mTryToSpecial = false;
               if(§>b§.mIsSpecial)
               {
                  §>b§.mIsSpecial = false;
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
         if(§]d§().IsAwake() && §`h§ == §'R§)
         {
            if(!§>b§.mTryToFly)
            {
               §>b§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§"]§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§[b§ ? 2 : 1) * 360 / 1000;
               §@;§(§2c§() - _loc3_);
            }
            else if(!(§"]§.toUpperCase() == "BIRD_WHITE" && this.§[b§))
            {
               if(§5v§)
               {
                  §8o§();
               }
               else if(!§6-§() && !§8p§())
               {
                  §@;§(0);
               }
            }
         }
         else if(§>b§.mTryToFly)
         {
            §>b§.mTryToFly = false;
            if(§>b§.mIsFlying)
            {
               §>b§.mIsFlying = false;
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
         var _loc1_:§^]§ = §#!4§.§^Y§;
         if(§`h§ < §'R§ || §]d§() == null)
         {
            _loc1_.§3!=§(this);
            _loc1_.§4J§ = false;
            return;
         }
         var _loc2_:Number = x * §^]§.§ u§;
         var _loc3_:Number = y * §^]§.§ u§;
         if(_loc1_.§4J§)
         {
            _loc1_.particles.§]1§(§-V§.§]Z§,§2x§.§+u§,§-V§.§^W§,_loc2_,_loc3_,-1,"",§-V§.§>&§);
            _loc1_.§4J§ = false;
            this.§&m§ = 0;
         }
         else if(§^!!§ > 1)
         {
            _loc1_.particles.§]1§(§-V§.§3e§,§2x§.§+u§,§-V§.§^W§,_loc2_,_loc3_,-1,"",§-V§.§>&§);
         }
         else
         {
            _loc4_ = §-V§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§&m§ == 1)
            {
               _loc4_ = §-V§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§&m§ == 2)
            {
               _loc4_ = §-V§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§&m§ = (this.§&m§ + 1) % 3;
            _loc1_.particles.§]1§(_loc4_,§2x§.§+u§,§-V§.§^W§,_loc2_,_loc3_,-1,"",§-V§.§>&§);
         }
         if(§>u§() > §%g§.§&h§ && Math.random() < §6=§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§]1§(§-V§.§&§,§2x§.§3!6§,§-V§.§?P§,§]d§().GetPosition().x,§]d§().GetPosition().y,1250,"",§-V§.§3!;§(§"]§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§>b§.mTryToFly)
         {
            §0Z§(§`P§.§]!%§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§?!;§) : Boolean
      {
         if(this.§[b§)
         {
            return false;
         }
         §0Z§(§`P§.§#U§);
         this.§[b§ = true;
         return true;
      }
      
      private function §5E§(param1:int) : int
      {
         return Math.min(§ -§,param1);
      }
      
      override public function addDestructionParticles(param1:§2x§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §7V§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§5E§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§>b§.mW * §^]§.§ u§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§>b§.mH * §^]§.§ u§) + Math.random() * -_loc8_ * 2;
            param1.§]1§(§-V§.§&§,§2x§.§3!6§,§-V§.§?P§,§]d§().GetPosition().x + _loc7_,§]d§().GetPosition().y + _loc8_,1500,"",§-V§.§3!;§(§"]§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§2x§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§8p§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §>u§() / 10;
         var _loc4_:int = 1 + _loc3_ * §7V§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§5E§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§]1§(§-V§.§+!D§,§2x§.§3!6§,§-V§.§?P§,§]d§().GetPosition().x,§]d§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§]1§(§-V§.§&§,§2x§.§3!6§,§-V§.§?P§,§]d§().GetPosition().x,§]d§().GetPosition().y,1250,"",§-V§.§3!;§(§"]§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
