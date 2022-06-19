package §#v§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.Sprite;
   import §!J§.§[&§;
   import §,B§.§1F§;
   import §?!0§.b2BodyDef;
   import §?!0§.b2World;
   import §?'§.§'L§;
   import §?'§.§9N§;
   
   public class §!!!§ extends §`q§
   {
      
      protected static const §2!C§:Boolean = false;
      
      protected static const §5^§:Number = 2000;
      
      private static const §`Q§:int = 20;
      
      private static const §1Y§:Number = 0.2;
       
      
      private var §^!1§:Number;
      
      private var §=p§:Boolean = false;
      
      private var §9f§:int = 0;
      
      public function §!!!§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §5-§.mTryToScream = §"d§.§1!&§ + 1;
         }
      }
      
      public function get §@A§() : Boolean
      {
         return this.§=p§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§ v§ = true;
         _loc3_.§[!8§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§;!A§ < §]p§ && §`9§())
         {
            this.§^!1§ += param1;
            if(this.§^!1§ >= §5^§)
            {
               return true;
            }
         }
         else
         {
            this.§^!1§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§=p§)
         {
            if(§,!§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§,!§.toUpperCase() == "BIRD_YELLOW" || §,!§.toUpperCase() == "BIRD_GREEN" || §,!§.toUpperCase() == "BIRD_RED" || §,!§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§5-§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§5-§.mTryToSpecial)
               {
                  §5-§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§5-§.mTryToSpecial)
            {
               §5-§.mTryToSpecial = false;
               if(§5-§.mIsSpecial)
               {
                  §5-§.mIsSpecial = false;
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
         if(§#a§().IsAwake() && §;!A§ == §]p§)
         {
            if(!§5-§.mTryToFly)
            {
               §5-§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§,!§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§=p§ ? 2 : 1) * 360 / 1000;
               §`!K§(§@L§() - _loc3_);
            }
            else if(!(§,!§.toUpperCase() == "BIRD_WHITE" && this.§=p§))
            {
               if(§2!C§)
               {
                  §]!-§();
               }
               else if(!§7!?§() && !§;!B§())
               {
                  §`!K§(0);
               }
            }
         }
         else if(§5-§.mTryToFly)
         {
            §5-§.mTryToFly = false;
            if(§5-§.mIsFlying)
            {
               §5-§.mIsFlying = false;
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
         var _loc1_:§9N§ = §[&§.§&!'§;
         if(§;!A§ < §]p§ || §#a§() == null)
         {
            _loc1_.§6!A§(this);
            _loc1_.§]!Q§ = false;
            return;
         }
         var _loc2_:Number = x * §9N§.§8!5§;
         var _loc3_:Number = y * §9N§.§8!5§;
         if(_loc1_.§]!Q§)
         {
            _loc1_.particles.addParticle(§?f§.§<6§,§7!W§.§&!>§,§?f§.§3!<§,_loc2_,_loc3_,-1,"",§?f§.§1U§);
            _loc1_.§]!Q§ = false;
            this.§9f§ = 0;
         }
         else if(§&§ > 1)
         {
            _loc1_.particles.addParticle(§?f§.§%8§,§7!W§.§&!>§,§?f§.§3!<§,_loc2_,_loc3_,-1,"",§?f§.§1U§);
         }
         else
         {
            _loc4_ = §?f§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§9f§ == 1)
            {
               _loc4_ = §?f§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§9f§ == 2)
            {
               _loc4_ = §?f§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§9f§ = (this.§9f§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§7!W§.§&!>§,§?f§.§3!<§,_loc2_,_loc3_,-1,"",§?f§.§1U§);
         }
         if(§"!J§() > §'L§.§1p§ && Math.random() < §1Y§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§?f§.§[!Y§,§7!W§.§'>§,§?f§.§"z§,§#a§().GetPosition().x,§#a§().GetPosition().y,1250,"",§?f§.§+!Z§(§,!§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§5-§.mTryToFly)
         {
            §0K§(§1F§.§"w§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§-!7§) : Boolean
      {
         if(this.§=p§)
         {
            return false;
         }
         §0K§(§1F§.§@!M§);
         this.§=p§ = true;
         return true;
      }
      
      private function §]Z§(param1:int) : int
      {
         return Math.min(§`Q§,param1);
      }
      
      override public function addDestructionParticles(param1:§7!W§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §&c§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§]Z§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5-§.mW * §9N§.§8!5§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5-§.mH * §9N§.§8!5§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§?f§.§[!Y§,§7!W§.§'>§,§?f§.§"z§,§#a§().GetPosition().x + _loc7_,§#a§().GetPosition().y + _loc8_,1500,"",§?f§.§+!Z§(§,!§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§7!W§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§;!B§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §"!J§() / 10;
         var _loc4_:int = 1 + _loc3_ * §&c§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§]Z§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§?f§.§2!K§,§7!W§.§'>§,§?f§.§"z§,§#a§().GetPosition().x,§#a§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§?f§.§[!Y§,§7!W§.§'>§,§?f§.§"z§,§#a§().GetPosition().x,§#a§().GetPosition().y,1250,"",§?f§.§+!Z§(§,!§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
