package § !3§
{
   import §!c§.§8M§;
   import §"!5§.§,!!§;
   import §%-§.Sprite;
   import §%x§.§#;§;
   import §%x§.§3=§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1?§ extends §=R§
   {
      
      protected static const § 4§:Boolean = false;
      
      protected static const §2_§:Number = 2000;
      
      protected static const §`O§:Number = 0.2;
       
      
      private var §&v§:Number;
      
      private var §9A§:Boolean = false;
      
      protected var §8r§:int = 0;
      
      public function §1?§(param1:§]!9§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §"0§.mTryToScream = §[4§.§;!E§ + 1;
         }
      }
      
      public function get §`'§() : Boolean
      {
         return this.§9A§;
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
         if(§7j§ < §`9§ && §`E§())
         {
            this.§&v§ += param1;
            if(this.§&v§ >= §2_§)
            {
               return true;
            }
         }
         else
         {
            this.§&v§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§9A§)
         {
            if(§+i§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§+i§.toUpperCase() == "BIRD_YELLOW" || §+i§.toUpperCase() == "BIRD_GREEN" || §+i§.toUpperCase() == "BIRD_RED" || §+i§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§"0§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§"0§.mTryToSpecial)
               {
                  §"0§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§"0§.mTryToSpecial)
            {
               §"0§.mTryToSpecial = false;
               if(§"0§.mIsSpecial)
               {
                  §"0§.mIsSpecial = false;
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
         if(§9! §().IsAwake() && §7j§ == §`9§)
         {
            if(!§"0§.mTryToFly)
            {
               §"0§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§+i§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§9A§ ? 2 : 1) * 360 / 1000;
               §9!?§(§0i§() - _loc3_);
            }
            else if(!(§+i§.toUpperCase() == "BIRD_WHITE" && this.§9A§))
            {
               if(§ 4§)
               {
                  §3+§();
               }
               else if(!§`U§() && !§1!F§())
               {
                  §9!?§(0);
               }
            }
         }
         else if(§"0§.mTryToFly)
         {
            §"0§.mTryToFly = false;
            if(§"0§.mIsFlying)
            {
               §"0§.mIsFlying = false;
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
         var _loc1_:§#;§ = §,!!§.§;4§;
         if(§7j§ < §`9§ || §9! §() == null)
         {
            _loc1_.§=r§(this);
            _loc1_.§^!?§ = false;
            return;
         }
         var _loc2_:Number = x * §#;§.§`!2§;
         var _loc3_:Number = y * §#;§.§`!2§;
         if(_loc1_.§^!?§)
         {
            _loc1_.particles.§ t§(§2S§.§+X§,§5b§.§[M§,§2S§.§^r§,_loc2_,_loc3_,-1,"",§2S§.§`+§);
            _loc1_.§^!?§ = false;
            this.§8r§ = 0;
         }
         else if(§ V§ > 1)
         {
            _loc1_.particles.§ t§(§2S§.§?>§,§5b§.§[M§,§2S§.§^r§,_loc2_,_loc3_,-1,"",§2S§.§`+§);
         }
         else
         {
            _loc4_ = §2S§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§8r§ == 1)
            {
               _loc4_ = §2S§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§8r§ == 2)
            {
               _loc4_ = §2S§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§8r§ = (this.§8r§ + 1) % 3;
            _loc1_.particles.§ t§(_loc4_,§5b§.§[M§,§2S§.§^r§,_loc2_,_loc3_,-1,"",§2S§.§`+§);
         }
         if(§],§() > §3=§.§7[§ && Math.random() < §`O§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§ t§(§2S§.§4"§,§5b§.§?D§,§2S§.§9!>§,§9! §().GetPosition().x,§9! §().GetPosition().y,1250,"",§2S§.§#!2§(§+i§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§"0§.mTryToFly)
         {
            §3%§(§8M§.§"!A§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§]!9§) : Boolean
      {
         if(this.§9A§)
         {
            return false;
         }
         §3%§(§8M§.§implements§);
         this.§9A§ = true;
         return true;
      }
      
      private function §?-§(param1:int) : int
      {
         return Math.min(§,!!§.§;4§.§'V§,param1);
      }
      
      override public function addDestructionParticles(param1:§5b§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §^'§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§?-§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§"0§.mW * §#;§.§`!2§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§"0§.mH * §#;§.§`!2§) + Math.random() * -_loc8_ * 2;
            param1.§ t§(§2S§.§4"§,§5b§.§?D§,§2S§.§9!>§,§9! §().GetPosition().x + _loc7_,§9! §().GetPosition().y + _loc8_,1500,"",§2S§.§#!2§(§+i§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5b§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§1!F§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §],§() / 10;
         var _loc4_:int = 1 + _loc3_ * §^'§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§?-§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§ t§(§2S§.§8x§,§5b§.§?D§,§2S§.§9!>§,§9! §().GetPosition().x,§9! §().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§ t§(§2S§.§4"§,§5b§.§?D§,§2S§.§9!>§,§9! §().GetPosition().x,§9! §().GetPosition().y,1250,"",§2S§.§#!2§(§+i§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
