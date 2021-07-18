package §9_§
{
   import §!Y§.§[o§;
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §4N§.§7E§;
   import §[x§.§2^§;
   import §[x§.§9"§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §4!;§ extends §<F§
   {
      
      protected static const §0h§:Boolean = false;
      
      protected static const §5Z§:Number = 2000;
      
      protected static const §+c§:Number = 0.2;
       
      
      private var §?T§:Number;
      
      private var §"p§:Boolean = false;
      
      protected var §9l§:int = 0;
      
      public function §4!;§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §<p§.mTryToScream = §`-§.§`w§ + 1;
         }
      }
      
      public function get §;$§() : Boolean
      {
         return this.§"p§;
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
         if(§8!'§ < §[!3§ && §2h§())
         {
            this.§?T§ += param1;
            if(this.§?T§ >= §5Z§)
            {
               return true;
            }
         }
         else
         {
            this.§?T§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§"p§)
         {
            if(§57§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§57§.toUpperCase() == "BIRD_YELLOW" || §57§.toUpperCase() == "BIRD_GREEN" || §57§.toUpperCase() == "BIRD_RED" || §57§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§<p§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§<p§.mTryToSpecial)
               {
                  §<p§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§<p§.mTryToSpecial)
            {
               §<p§.mTryToSpecial = false;
               if(§<p§.mIsSpecial)
               {
                  §<p§.mIsSpecial = false;
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
         if(§>b§().IsAwake() && §8!'§ == §[!3§)
         {
            if(!§<p§.mTryToFly)
            {
               §<p§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§57§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§"p§ ? 2 : 1) * 360 / 1000;
               §9F§(§^k§() - _loc3_);
            }
            else if(!(§57§.toUpperCase() == "BIRD_WHITE" && this.§"p§))
            {
               if(§0h§)
               {
                  §[i§();
               }
               else if(!§[d§() && !§8i§())
               {
                  §9F§(0);
               }
            }
         }
         else if(§<p§.mTryToFly)
         {
            §<p§.mTryToFly = false;
            if(§<p§.mIsFlying)
            {
               §<p§.mIsFlying = false;
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
         var _loc1_:§2^§ = §[o§.§='§;
         if(§8!'§ < §[!3§ || §>b§() == null)
         {
            _loc1_.§%!-§(this);
            _loc1_.§^t§ = false;
            return;
         }
         var _loc2_:Number = x * §2^§.§,]§;
         var _loc3_:Number = y * §2^§.§,]§;
         if(_loc1_.§^t§)
         {
            _loc1_.particles.§-X§(§'b§.§]V§,§>=§.§8'§,§'b§.§6D§,_loc2_,_loc3_,-1,"",§'b§.§9X§);
            _loc1_.§^t§ = false;
            this.§9l§ = 0;
         }
         else if(§"G§ > 1)
         {
            _loc1_.particles.§-X§(§'b§.§<b§,§>=§.§8'§,§'b§.§6D§,_loc2_,_loc3_,-1,"",§'b§.§9X§);
         }
         else
         {
            _loc4_ = §'b§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§9l§ == 1)
            {
               _loc4_ = §'b§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§9l§ == 2)
            {
               _loc4_ = §'b§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§9l§ = (this.§9l§ + 1) % 3;
            _loc1_.particles.§-X§(_loc4_,§>=§.§8'§,§'b§.§6D§,_loc2_,_loc3_,-1,"",§'b§.§9X§);
         }
         if(§8!E§() > §9"§.§?,§ && Math.random() < §+c§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§-X§(§'b§.§"x§,§>=§.§>!5§,§'b§.§=<§,§>b§().GetPosition().x,§>b§().GetPosition().y,1250,"",§'b§.§@#§(§57§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§<p§.mTryToFly)
         {
            §;v§(§7E§.§!u§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         if(this.§"p§)
         {
            return false;
         }
         §;v§(§7E§.§6M§);
         this.§"p§ = true;
         return true;
      }
      
      private function § !,§(param1:int) : int
      {
         return Math.min(§[o§.§='§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§>=§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §8@§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§ !,§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<p§.mW * §2^§.§,]§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<p§.mH * §2^§.§,]§) + Math.random() * -_loc8_ * 2;
            param1.§-X§(§'b§.§"x§,§>=§.§>!5§,§'b§.§=<§,§>b§().GetPosition().x + _loc7_,§>b§().GetPosition().y + _loc8_,1500,"",§'b§.§@#§(§57§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§>=§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§8i§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §8!E§() / 10;
         var _loc4_:int = 1 + _loc3_ * §8@§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§ !,§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§-X§(§'b§.§,U§,§>=§.§>!5§,§'b§.§=<§,§>b§().GetPosition().x,§>b§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§-X§(§'b§.§"x§,§>=§.§>!5§,§'b§.§=<§,§>b§().GetPosition().x,§>b§().GetPosition().y,1250,"",§'b§.§@#§(§57§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
