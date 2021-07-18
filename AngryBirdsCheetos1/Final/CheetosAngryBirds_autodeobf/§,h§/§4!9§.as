package §,h§
{
   import §!X§.§#K§;
   import §!X§.§86§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §?m§.§7?§;
   import §]@§.Sprite;
   import §`j§.b2BodyDef;
   import §`j§.b2World;
   import §default§.§!A§;
   
   public class §4!9§ extends §9!@§
   {
      
      protected static const §-P§:Boolean = false;
      
      protected static const §,o§:Number = 2000;
      
      protected static const §+!]§:Number = 0.2;
       
      
      private var §#!T§:Number;
      
      private var §]u§:Boolean = false;
      
      protected var §"!?§:int = 0;
      
      public function §4!9§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §2P§.mTryToScream = §0q§.§<!6§ + 1;
         }
      }
      
      public function get §;J§() : Boolean
      {
         return this.§]u§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§<!;§ = true;
         _loc3_.§?!'§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§,!&§ < §+?§ && §69§())
         {
            this.§#!T§ += param1;
            if(this.§#!T§ >= §,o§)
            {
               return true;
            }
         }
         else
         {
            this.§#!T§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§]u§)
         {
            if(§2!1§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§2!1§.toUpperCase() == "BIRD_YELLOW" || §2!1§.toUpperCase() == "BIRD_GREEN" || §2!1§.toUpperCase() == "BIRD_RED" || §2!1§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§2P§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§2P§.mTryToSpecial)
               {
                  §2P§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§2P§.mTryToSpecial)
            {
               §2P§.mTryToSpecial = false;
               if(§2P§.mIsSpecial)
               {
                  §2P§.mIsSpecial = false;
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
         if(§?!7§().IsAwake() && §,!&§ == §+?§)
         {
            if(!§2P§.mTryToFly)
            {
               §2P§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§2!1§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§]u§ ? 2 : 1) * 360 / 1000;
               §5K§(§%4§() - _loc3_);
            }
            else if(!(§2!1§.toUpperCase() == "BIRD_WHITE" && this.§]u§))
            {
               if(§-P§)
               {
                  §8f§();
               }
               else if(!§@m§() && !§>1§())
               {
                  §5K§(0);
               }
            }
         }
         else if(§2P§.mTryToFly)
         {
            §2P§.mTryToFly = false;
            if(§2P§.mIsFlying)
            {
               §2P§.mIsFlying = false;
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
         var _loc1_:§86§ = §7?§.§4!H§;
         if(§,!&§ < §+?§ || §?!7§() == null)
         {
            _loc1_.§-M§(this);
            _loc1_.§+"§ = false;
            return;
         }
         var _loc2_:Number = x * §86§.§7!4§;
         var _loc3_:Number = y * §86§.§7!4§;
         if(_loc1_.§+"§)
         {
            _loc1_.particles.addParticle(§7o§.§?!J§,§<2§.§&!H§,§7o§.§4;§,_loc2_,_loc3_,-1,"",§7o§.§]!4§);
            _loc1_.§+"§ = false;
            this.§"!?§ = 0;
         }
         else if(§ !I§ > 1)
         {
            _loc1_.particles.addParticle(§7o§.§7!+§,§<2§.§&!H§,§7o§.§4;§,_loc2_,_loc3_,-1,"",§7o§.§]!4§);
         }
         else
         {
            _loc4_ = §7o§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§"!?§ == 1)
            {
               _loc4_ = §7o§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§"!?§ == 2)
            {
               _loc4_ = §7o§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§"!?§ = (this.§"!?§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§<2§.§&!H§,§7o§.§4;§,_loc2_,_loc3_,-1,"",§7o§.§]!4§);
         }
         if(§1b§() > §#K§.§ true§ && Math.random() < §+!]§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§7o§.§8!I§,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,1250,"",§7o§.§3E§(§2!1§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§2P§.mTryToFly)
         {
            § !=§(§!A§.§-!4§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         if(this.§]u§)
         {
            return false;
         }
         § !=§(§!A§.§2'§);
         this.§]u§ = true;
         return true;
      }
      
      private function § !L§(param1:int) : int
      {
         return Math.min(§7?§.§4!H§.§"w§,param1);
      }
      
      override public function addDestructionParticles(param1:§<2§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §'!+§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§ !L§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2P§.mW * §86§.§7!4§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2P§.mH * §86§.§7!4§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§7o§.§8!I§,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x + _loc7_,§?!7§().GetPosition().y + _loc8_,1500,"",§7o§.§3E§(§2!1§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§<2§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§>1§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §1b§() / 10;
         var _loc4_:int = 1 + _loc3_ * §'!+§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§ !L§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§7o§.§39§,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§7o§.§8!I§,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,1250,"",§7o§.§3E§(§2!1§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
