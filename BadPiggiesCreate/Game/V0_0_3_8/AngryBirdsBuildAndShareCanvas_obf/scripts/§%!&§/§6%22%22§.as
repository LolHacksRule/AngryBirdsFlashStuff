package §%!&§
{
   import §%!<§.§=!j§;
   import §%h§.§5X§;
   import §%h§.§=$§;
   import §?!E§.b2BodyDef;
   import §?!E§.b2World;
   import §?c§.§3!u§;
   import §?c§.final;
   import §]!2§.Sprite;
   import §`%§.§8!0§;
   
   public class §6""§ extends §@!§
   {
      
      protected static const §!!U§:Boolean = false;
      
      protected static const §1X§:Number = 2000;
      
      protected static const §3Z§:Number = 0.2;
       
      
      private var §?u§:Number;
      
      private var §@c§:Boolean = false;
      
      protected var §^f§:int = 0;
      
      public function §6""§(param1:§'"-§, param2:Sprite, param3:b2World, param4:§5X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §+G§.mTryToScream = §5",§.§-!5§ + 1;
         }
      }
      
      public function get §&!I§() : Boolean
      {
         return this.§@c§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§^6§ = true;
         _loc3_.§`_§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§^!n§ < §?!`§ && §^!V§())
         {
            this.§?u§ += param1;
            if(this.§?u§ >= §1X§)
            {
               return true;
            }
         }
         else
         {
            this.§?u§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§@c§)
         {
            if(§6u§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§6u§.toUpperCase() == "BIRD_YELLOW" || §6u§.toUpperCase() == "BIRD_GREEN" || §6u§.toUpperCase() == "BIRD_RED" || §6u§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§+G§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§+G§.mTryToSpecial)
               {
                  §+G§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§+G§.mTryToSpecial)
            {
               §+G§.mTryToSpecial = false;
               if(§+G§.mIsSpecial)
               {
                  §+G§.mIsSpecial = false;
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
         if(getBody().IsAwake() && §^!n§ == §?!`§)
         {
            if(!§+G§.mTryToFly)
            {
               §+G§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§6u§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§@c§ ? 2 : 1) * 360 / 1000;
               §8Q§(§8!1§() - _loc3_);
            }
            else if(!(§6u§.toUpperCase() == "BIRD_WHITE" && this.§@c§))
            {
               if(§!!U§)
               {
                  §;"0§();
               }
               else if(!§7!_§() && !§ %§())
               {
                  §8Q§(0);
               }
            }
         }
         else if(§+G§.mTryToFly)
         {
            §+G§.mTryToFly = false;
            if(§+G§.mIsFlying)
            {
               §+G§.mIsFlying = false;
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
         var _loc1_:§5X§ = §8!0§.§?2§;
         if(§^!n§ < §?!`§ || getBody() == null)
         {
            _loc1_.§;!T§(this);
            _loc1_.§-6§ = false;
            return;
         }
         var _loc2_:Number = x * §5X§.§,!m§;
         var _loc3_:Number = y * §5X§.§,!m§;
         if(_loc1_.§-6§)
         {
            _loc1_.particles.§=!J§(§3!u§.§'B§,final.§=!o§,§3!u§.§0-§,_loc2_,_loc3_,-1,"",§3!u§.§'o§);
            _loc1_.§-6§ = false;
            this.§^f§ = 0;
         }
         else if(§]y§ > 1)
         {
            _loc1_.particles.§=!J§(§3!u§.§@!G§,final.§=!o§,§3!u§.§0-§,_loc2_,_loc3_,-1,"",§3!u§.§'o§);
         }
         else
         {
            _loc4_ = §3!u§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§^f§ == 1)
            {
               _loc4_ = §3!u§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§^f§ == 2)
            {
               _loc4_ = §3!u§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§^f§ = (this.§^f§ + 1) % 3;
            _loc1_.particles.§=!J§(_loc4_,final.§=!o§,§3!u§.§0-§,_loc2_,_loc3_,-1,"",§3!u§.§'o§);
         }
         if(§5b§() > §=$§.§+9§ && Math.random() < §3Z§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§=!J§(§3!u§.§%!#§,final.§0e§,§3!u§.§[!%§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§3!u§.§!"5§(§6u§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§+G§.mTryToFly)
         {
            §,!_§(§=!j§.§[!@§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§'"-§) : Boolean
      {
         if(this.§@c§)
         {
            return false;
         }
         §,!_§(§=!j§.§^Z§);
         this.§@c§ = true;
         return true;
      }
      
      private function §9"4§(param1:int) : int
      {
         return Math.min(§8!0§.§?2§.§@l§,param1);
      }
      
      override public function addDestructionParticles(param1:final) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §""&§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§9"4§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§+G§.mW * §5X§.§,!m§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§+G§.mH * §5X§.§,!m§) + Math.random() * -_loc8_ * 2;
            param1.§=!J§(§3!u§.§%!#§,final.§0e§,§3!u§.§[!%§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§3!u§.§!"5§(§6u§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:final, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§ %§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §5b§() / 10;
         var _loc4_:int = 1 + _loc3_ * §""&§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§9"4§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§=!J§(§3!u§.§9N§,final.§0e§,§3!u§.§[!%§,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§=!J§(§3!u§.§%!#§,final.§0e§,§3!u§.§[!%§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§3!u§.§!"5§(§6u§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
