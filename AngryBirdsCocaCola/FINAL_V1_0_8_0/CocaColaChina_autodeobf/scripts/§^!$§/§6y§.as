package §^!$§
{
   import §%!a§.§^!=§;
   import §&!9§.Sprite;
   import §&F§.§2!4§;
   import §&F§.§>!2§;
   import §0!b§.§#!=§;
   import §<!L§.b2BodyDef;
   import §<!L§.b2World;
   import §?=§.§&j§;
   import §?=§.§8S§;
   
   public class §6y§ extends §6!3§
   {
      
      protected static const §7!`§:Boolean = false;
      
      protected static const §+!A§:Number = 2000;
      
      protected static const §8v§:Number = 0.2;
       
      
      private var §@+§:Number;
      
      private var §`!K§:Boolean = false;
      
      protected var §1!,§:int = 0;
      
      public function §6y§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §^!9§.mTryToScream = §4<§.§]7§ + 1;
         }
      }
      
      public function get §4c§() : Boolean
      {
         return this.§`!K§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§0!8§ = true;
         _loc3_.§<u§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§+m§ < §>!`§ && §^!S§())
         {
            this.§@+§ += param1;
            if(this.§@+§ >= §+!A§)
            {
               return true;
            }
         }
         else
         {
            this.§@+§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§`!K§)
         {
            if(§=^§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§=^§.toUpperCase() == "BIRD_YELLOW" || §=^§.toUpperCase() == "BIRD_GREEN" || §=^§.toUpperCase() == "BIRD_RED" || §=^§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§^!9§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§^!9§.mTryToSpecial)
               {
                  §^!9§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§^!9§.mTryToSpecial)
            {
               §^!9§.mTryToSpecial = false;
               if(§^!9§.mIsSpecial)
               {
                  §^!9§.mIsSpecial = false;
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
         if(§#!!§().IsAwake() && §+m§ == §>!`§)
         {
            if(!§^!9§.mTryToFly)
            {
               §^!9§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§=^§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§`!K§ ? 2 : 1) * 360 / 1000;
               §1Z§(§<!e§() - _loc3_);
            }
            else if(!(§=^§.toUpperCase() == "BIRD_WHITE" && this.§`!K§))
            {
               if(§7!`§)
               {
                  §`_§();
               }
               else if(!§,c§() && !§6#§())
               {
                  §1Z§(0);
               }
            }
         }
         else if(§^!9§.mTryToFly)
         {
            §^!9§.mTryToFly = false;
            if(§^!9§.mIsFlying)
            {
               §^!9§.mIsFlying = false;
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
         var _loc1_:§>!2§ = §#!=§.§&![§;
         if(§+m§ < §>!`§ || §#!!§() == null)
         {
            _loc1_.§ V§(this);
            _loc1_.§ P§ = false;
            return;
         }
         var _loc2_:Number = x * §>!2§.§9d§;
         var _loc3_:Number = y * §>!2§.§9d§;
         if(_loc1_.§ P§)
         {
            _loc1_.particles.§<§(§8S§.§^F§,§&j§.§^K§,§8S§.§1B§,_loc2_,_loc3_,-1,"",§8S§.§!B§);
            _loc1_.§ P§ = false;
            this.§1!,§ = 0;
         }
         else if(§!w§ > 1)
         {
            _loc1_.particles.§<§(§8S§.§ !1§,§&j§.§^K§,§8S§.§1B§,_loc2_,_loc3_,-1,"",§8S§.§!B§);
         }
         else
         {
            _loc4_ = §8S§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§1!,§ == 1)
            {
               _loc4_ = §8S§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§1!,§ == 2)
            {
               _loc4_ = §8S§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§1!,§ = (this.§1!,§ + 1) % 3;
            _loc1_.particles.§<§(_loc4_,§&j§.§^K§,§8S§.§1B§,_loc2_,_loc3_,-1,"",§8S§.§!B§);
         }
         if(§`!^§() > §2!4§.§[!O§ && Math.random() < §8v§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§<§(§8S§.§]t§,§&j§.§`W§,§8S§.§[!C§,§#!!§().GetPosition().x,§#!!§().GetPosition().y,1250,"",§8S§.§"0§(§=^§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§^!9§.mTryToFly)
         {
            §&!Q§(§^!=§.§'§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§;!D§) : Boolean
      {
         if(this.§`!K§)
         {
            return false;
         }
         §&!Q§(§^!=§.§!V§);
         this.§`!K§ = true;
         return true;
      }
      
      private function §^!C§(param1:int) : int
      {
         return Math.min(§#!=§.§&![§.§[!%§,param1);
      }
      
      override public function addDestructionParticles(param1:§&j§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §>e§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§^!C§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§^!9§.mW * §>!2§.§9d§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§^!9§.mH * §>!2§.§9d§) + Math.random() * -_loc8_ * 2;
            param1.§<§(§8S§.§]t§,§&j§.§`W§,§8S§.§[!C§,§#!!§().GetPosition().x + _loc7_,§#!!§().GetPosition().y + _loc8_,1500,"",§8S§.§"0§(§=^§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§&j§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§6#§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §`!^§() / 10;
         var _loc4_:int = 1 + _loc3_ * §>e§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§^!C§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§<§(§8S§.§=!0§,§&j§.§`W§,§8S§.§[!C§,§#!!§().GetPosition().x,§#!!§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§<§(§8S§.§]t§,§&j§.§`W§,§8S§.§[!C§,§#!!§().GetPosition().x,§#!!§().GetPosition().y,1250,"",§8S§.§"0§(§=^§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
