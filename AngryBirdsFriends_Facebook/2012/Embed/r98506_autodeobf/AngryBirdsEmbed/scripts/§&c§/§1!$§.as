package §&c§
{
   import §#;§.§!l§;
   import §#;§.§4!8§;
   import §8g§.§"g§;
   import §8g§.§<D§;
   import §;q§.Sprite;
   import §^V§.§<e§;
   import §`t§.§^?§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1!$§ extends § 1§
   {
      
      protected static const §&d§:Boolean = false;
      
      protected static const §[a§:Number = 2000;
      
      protected static const §&l§:Number = 0.2;
       
      
      private var §!!'§:Number;
      
      private var §]T§:Boolean = false;
      
      protected var §!!2§:int = 0;
      
      public function §1!$§(param1:§<'§, param2:Sprite, param3:b2World, param4:§4!8§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §<!'§.mTryToScream = §+`§.§0;§ + 1;
         }
      }
      
      public function get §1V§() : Boolean
      {
         return this.§]T§;
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
         if(§<Y§ < §;u§ && §"! §())
         {
            this.§!!'§ += param1;
            if(this.§!!'§ >= §[a§)
            {
               return true;
            }
         }
         else
         {
            this.§!!'§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§]T§)
         {
            if(§+!!§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§+!!§.toUpperCase() == "BIRD_YELLOW" || §+!!§.toUpperCase() == "BIRD_GREEN" || §+!!§.toUpperCase() == "BIRD_RED" || §+!!§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§<!'§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§<!'§.mTryToSpecial)
               {
                  §<!'§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§<!'§.mTryToSpecial)
            {
               §<!'§.mTryToSpecial = false;
               if(§<!'§.mIsSpecial)
               {
                  §<!'§.mIsSpecial = false;
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
         if(§68§().IsAwake() && §<Y§ == §;u§)
         {
            if(!§<!'§.mTryToFly)
            {
               §<!'§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§+!!§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§]T§ ? 2 : 1) * 360 / 1000;
               §4q§(§1o§() - _loc3_);
            }
            else if(!(§+!!§.toUpperCase() == "BIRD_WHITE" && this.§]T§))
            {
               if(§&d§)
               {
                  §#"§();
               }
               else if(!§2<§() && !§&v§())
               {
                  §4q§(0);
               }
            }
         }
         else if(§<!'§.mTryToFly)
         {
            §<!'§.mTryToFly = false;
            if(§<!'§.mIsFlying)
            {
               §<!'§.mIsFlying = false;
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
         var _loc1_:§4!8§ = §^?§.§]!%§;
         if(§<Y§ < §;u§ || §68§() == null)
         {
            _loc1_.§]%§(this);
            _loc1_.§3T§ = false;
            return;
         }
         var _loc2_:Number = x * §4!8§.§5+§;
         var _loc3_:Number = y * §4!8§.§5+§;
         if(_loc1_.§3T§)
         {
            _loc1_.particles.§[!5§(§<D§.§<-§,§"g§.§#e§,§<D§.§6#§,_loc2_,_loc3_,-1,"",§<D§.§!!&§);
            _loc1_.§3T§ = false;
            this.§!!2§ = 0;
         }
         else if(§;X§ > 1)
         {
            _loc1_.particles.§[!5§(§<D§.§+!$§,§"g§.§#e§,§<D§.§6#§,_loc2_,_loc3_,-1,"",§<D§.§!!&§);
         }
         else
         {
            _loc4_ = §<D§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§!!2§ == 1)
            {
               _loc4_ = §<D§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§!!2§ == 2)
            {
               _loc4_ = §<D§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§!!2§ = (this.§!!2§ + 1) % 3;
            _loc1_.particles.§[!5§(_loc4_,§"g§.§#e§,§<D§.§6#§,_loc2_,_loc3_,-1,"",§<D§.§!!&§);
         }
         if(§6P§() > §!l§.§01§ && Math.random() < §&l§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§[!5§(§<D§.§"W§,§"g§.§;$§,§<D§.§'K§,§68§().GetPosition().x,§68§().GetPosition().y,1250,"",§<D§.§;5§(§+!!§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§<!'§.mTryToFly)
         {
            §@!"§(§<e§.§,H§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§<'§) : Boolean
      {
         if(this.§]T§)
         {
            return false;
         }
         §@!"§(§<e§.§=u§);
         this.§]T§ = true;
         return true;
      }
      
      private function §9!,§(param1:int) : int
      {
         return Math.min(§^?§.§]!%§.§ !$§,param1);
      }
      
      override public function addDestructionParticles(param1:§"g§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §`M§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§9!,§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<!'§.mW * §4!8§.§5+§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<!'§.mH * §4!8§.§5+§) + Math.random() * -_loc8_ * 2;
            param1.§[!5§(§<D§.§"W§,§"g§.§;$§,§<D§.§'K§,§68§().GetPosition().x + _loc7_,§68§().GetPosition().y + _loc8_,1500,"",§<D§.§;5§(§+!!§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§"g§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§&v§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §6P§() / 10;
         var _loc4_:int = 1 + _loc3_ * §`M§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§9!,§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§[!5§(§<D§.§`0§,§"g§.§;$§,§<D§.§'K§,§68§().GetPosition().x,§68§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§[!5§(§<D§.§"W§,§"g§.§;$§,§<D§.§'K§,§68§().GetPosition().x,§68§().GetPosition().y,1250,"",§<D§.§;5§(§+!!§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
