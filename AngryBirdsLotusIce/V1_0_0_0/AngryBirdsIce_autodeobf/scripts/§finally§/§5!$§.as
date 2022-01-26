package §finally§
{
   import §"o§.§ M§;
   import §"o§.§<+§;
   import §2!"§.§8y§;
   import §;j§.§8[§;
   import §@!=§.Sprite;
   import §]2§.§<u§;
   import §]2§.§`b§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5!$§ extends §>! §
   {
      
      protected static const §=Y§:Boolean = false;
      
      protected static const §`X§:Number = 2000;
      
      protected static const §8z§:Number = 0.2;
       
      
      private var §+!"§:Number;
      
      private var §^M§:Boolean = false;
      
      protected var §`!9§:int = 0;
      
      public function §5!$§(param1:§3X§, param2:Sprite, param3:b2World, param4:§ M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §8h§.mTryToScream = §`u§.§@S§ + 1;
         }
      }
      
      public function get §?!B§() : Boolean
      {
         return this.§^M§;
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
         if(§8x§ < §3-§ && §7!3§())
         {
            this.§+!"§ += param1;
            if(this.§+!"§ >= §`X§)
            {
               return true;
            }
         }
         else
         {
            this.§+!"§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§^M§)
         {
            if(§5o§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§5o§.toUpperCase() == "BIRD_YELLOW" || §5o§.toUpperCase() == "BIRD_GREEN" || §5o§.toUpperCase() == "BIRD_RED" || §5o§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§8h§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§8h§.mTryToSpecial)
               {
                  §8h§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§8h§.mTryToSpecial)
            {
               §8h§.mTryToSpecial = false;
               if(§8h§.mIsSpecial)
               {
                  §8h§.mIsSpecial = false;
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
         if(§+!-§().IsAwake() && §8x§ == §3-§)
         {
            if(!§8h§.mTryToFly)
            {
               §8h§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§5o§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§^M§ ? 2 : 1) * 360 / 1000;
               § !!§(§&1§() - _loc3_);
            }
            else if(!(§5o§.toUpperCase() == "BIRD_WHITE" && this.§^M§))
            {
               if(§=Y§)
               {
                  §]N§();
               }
               else if(!§9;§() && !§,c§())
               {
                  § !!§(0);
               }
            }
         }
         else if(§8h§.mTryToFly)
         {
            §8h§.mTryToFly = false;
            if(§8h§.mIsFlying)
            {
               §8h§.mIsFlying = false;
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
         var _loc1_:§ M§ = §8[§.§import§;
         if(§8x§ < §3-§ || §+!-§() == null)
         {
            _loc1_.§09§(this);
            _loc1_.§ 4§ = false;
            return;
         }
         var _loc2_:Number = x * § M§.§%v§;
         var _loc3_:Number = y * § M§.§%v§;
         if(_loc1_.§ 4§)
         {
            _loc1_.particles.§1C§(§`b§.§?E§,§<u§.§6x§,§`b§.§!-§,_loc2_,_loc3_,-1,"",§`b§.§-Q§);
            _loc1_.§ 4§ = false;
            this.§`!9§ = 0;
         }
         else if(§!V§ > 1)
         {
            _loc1_.particles.§1C§(§`b§.§6]§,§<u§.§6x§,§`b§.§!-§,_loc2_,_loc3_,-1,"",§`b§.§-Q§);
         }
         else
         {
            _loc4_ = §`b§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§`!9§ == 1)
            {
               _loc4_ = §`b§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§`!9§ == 2)
            {
               _loc4_ = §`b§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§`!9§ = (this.§`!9§ + 1) % 3;
            _loc1_.particles.§1C§(_loc4_,§<u§.§6x§,§`b§.§!-§,_loc2_,_loc3_,-1,"",§`b§.§-Q§);
         }
         if(§,&§() > §<+§.§#r§ && Math.random() < §8z§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§1C§(§`b§.§7M§,§<u§.§>7§,§`b§.§ "§,§+!-§().GetPosition().x,§+!-§().GetPosition().y,1250,"",§`b§.§>!6§(§5o§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§8h§.mTryToFly)
         {
            §continue§(§8y§.§07§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§3X§) : Boolean
      {
         if(this.§^M§)
         {
            return false;
         }
         §continue§(§8y§.§#!;§);
         this.§^M§ = true;
         return true;
      }
      
      private function §+=§(param1:int) : int
      {
         return Math.min(§8[§.§import§.damageParticleLimit,param1);
      }
      
      override public function addDestructionParticles(param1:§<u§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §']§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§+=§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8h§.mW * § M§.§%v§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8h§.mH * § M§.§%v§) + Math.random() * -_loc8_ * 2;
            param1.§1C§(§`b§.§7M§,§<u§.§>7§,§`b§.§ "§,§+!-§().GetPosition().x + _loc7_,§+!-§().GetPosition().y + _loc8_,1500,"",§`b§.§>!6§(§5o§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§<u§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§,c§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §,&§() / 10;
         var _loc4_:int = 1 + _loc3_ * §']§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§+=§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§1C§(§`b§.§ !0§,§<u§.§>7§,§`b§.§ "§,§+!-§().GetPosition().x,§+!-§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§1C§(§`b§.§7M§,§<u§.§>7§,§`b§.§ "§,§+!-§().GetPosition().x,§+!-§().GetPosition().y,1250,"",§`b§.§>!6§(§5o§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
