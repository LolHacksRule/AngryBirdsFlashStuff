package §^!A§
{
   import §&o§.Sprite;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §6A§.§4!C§;
   import §^!L§.§%h§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §^`§ extends §#z§
   {
      
      protected static const §#l§:Boolean = false;
      
      protected static const §=z§:Number = 2000;
      
      protected static const §9r§:Number = 0.2;
       
      
      private var §#!§:Number;
      
      protected var §"f§:Boolean = false;
      
      protected var §7O§:int = 0;
      
      public function §^`§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §;S§.mTryToScream = §[!J§.§`"§ + 1;
         }
      }
      
      public static function §+!N§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §=w§.§ o§.particles.§?e§("STAR_PARTICLE",§<!6§.§1X§,§2!H§.§"!5§,§<!6§.§!E§,param1,param2,750,"",§<!6§.§4!8§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §[!E§() : Boolean
      {
         return this.§"f§;
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
         if(§`Y§ < §@!§ && §switch§())
         {
            this.§#!§ += param1;
            if(this.§#!§ >= §=z§)
            {
               return true;
            }
         }
         else
         {
            this.§#!§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§"f§)
         {
            if(§1>§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§1>§.toUpperCase() == "BIRD_YELLOW" || §1>§.toUpperCase() == "BIRD_GREEN" || §1>§.toUpperCase() == "BIRD_RED" || §1>§.toUpperCase() == "BIRD_RED_BIG" || §1>§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§;S§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§;S§.mTryToSpecial)
               {
                  §;S§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§;S§.mTryToSpecial)
            {
               §;S§.mTryToSpecial = false;
               if(§;S§.mIsSpecial)
               {
                  §;S§.mIsSpecial = false;
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
         if(§'[§().IsAwake() && §`Y§ == §@!§)
         {
            if(!§;S§.mTryToFly)
            {
               §;S§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§1>§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§"f§ ? 2 : 1) * 360 / 1000;
               §=!<§(§>8§() - _loc3_);
            }
            else if(!(§1>§.toUpperCase() == "BIRD_WHITE" && this.§"f§))
            {
               if(§#l§)
               {
                  §`!3§();
               }
               else if(!§"!"§() && !§@!-§())
               {
                  §=!<§(0);
               }
            }
         }
         else if(§;S§.mTryToFly)
         {
            §;S§.mTryToFly = false;
            if(§;S§.mIsFlying)
            {
               §;S§.mIsFlying = false;
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
         var _loc1_:§ !§ = §=w§.§ o§;
         if(§`Y§ < §@!§ || §'[§() == null)
         {
            _loc1_.§[r§(this);
            _loc1_.§?<§ = false;
            return;
         }
         var _loc2_:Number = x * § !§.§`J§;
         var _loc3_:Number = y * § !§.§`J§;
         if(_loc1_.§?<§)
         {
            _loc1_.particles.§4#§(§<!6§.§7!M§,§2!H§.§+!7§,§<!6§.§8!!§,_loc2_,_loc3_,-1,"",§<!6§.§2!2§);
            _loc1_.§?<§ = false;
            this.§7O§ = 0;
         }
         else if(§4Y§ > 1)
         {
            _loc1_.particles.§4#§(§<!6§.§8!H§,§2!H§.§+!7§,§<!6§.§8!!§,_loc2_,_loc3_,-1,"",§<!6§.§2!2§);
         }
         else
         {
            _loc4_ = §<!6§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§7O§ == 1)
            {
               _loc4_ = §<!6§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§7O§ == 2)
            {
               _loc4_ = §<!6§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§7O§ = (this.§7O§ + 1) % 3;
            _loc1_.particles.§4#§(_loc4_,§2!H§.§+!7§,§<!6§.§8!!§,_loc2_,_loc3_,-1,"",§<!6§.§2!2§);
         }
         if(_loc1_.slingshot.§+A§())
         {
            §+!N§(_loc2_,_loc3_,0,3,10);
         }
         if(§8!A§() > §4!C§.§?1§ && Math.random() < §9r§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§4#§(§<!6§.§9<§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x,§'[§().GetPosition().y,1250,"",§<!6§.§4!8§(§1>§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§;S§.mTryToFly)
         {
            §,H§(§%h§.§+T§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         if(this.§"f§)
         {
            return false;
         }
         §,H§(§%h§.§8M§);
         this.§"f§ = true;
         return true;
      }
      
      private function §3x§(param1:int) : int
      {
         return Math.min(§=w§.§ o§.§!,§,param1);
      }
      
      override public function addDestructionParticles(param1:§2!H§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §1!=§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§3x§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§;S§.mW * § !§.§`J§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§;S§.mH * § !§.§`J§) + Math.random() * -_loc8_ * 2;
            param1.§4#§(§<!6§.§9<§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x + _loc7_,§'[§().GetPosition().y + _loc8_,1500,"",§<!6§.§4!8§(§1>§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§2!H§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§@!-§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §8!A§() / 10;
         var _loc4_:int = 1 + _loc3_ * §1!=§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§3x§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§4#§(§<!6§.§=#§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x,§'[§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§4#§(§<!6§.§9<§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x,§'[§().GetPosition().y,1250,"",§<!6§.§4!8§(§1>§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
