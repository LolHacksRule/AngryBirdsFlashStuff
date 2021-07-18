package §+!8§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§9§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2BodyDef;
   import §3!R§.b2World;
   import §9b§.§"!S§;
   import §@0§.§!k§;
   
   public class §`!O§ extends § !5§
   {
      
      protected static const §2!M§:Boolean = false;
      
      protected static const §?]§:Number = 2000;
      
      protected static const §?I§:Number = 0.2;
       
      
      private var §=!9§:Number;
      
      private var §?z§:Boolean = false;
      
      protected var §9!Q§:int = 0;
      
      public function §`!O§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §[r§.mTryToScream = §&!_§.§6!c§ + 1;
         }
      }
      
      public function get §!!M§() : Boolean
      {
         return this.§?z§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§,r§ = true;
         _loc3_.§5!T§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§[h§ < §'!V§ && §[b§())
         {
            this.§=!9§ += param1;
            if(this.§=!9§ >= §?]§)
            {
               return true;
            }
         }
         else
         {
            this.§=!9§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§?z§)
         {
            if(§>R§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§>R§.toUpperCase() == "BIRD_YELLOW" || §>R§.toUpperCase() == "BIRD_GREEN" || §>R§.toUpperCase() == "BIRD_RED" || §>R§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§[r§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§[r§.mTryToSpecial)
               {
                  §[r§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§[r§.mTryToSpecial)
            {
               §[r§.mTryToSpecial = false;
               if(§[r§.mIsSpecial)
               {
                  §[r§.mIsSpecial = false;
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
         if(§0c§().IsAwake() && §[h§ == §'!V§)
         {
            if(!§[r§.mTryToFly)
            {
               §[r§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§>R§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§?z§ ? 2 : 1) * 360 / 1000;
               §`X§(§4!W§() - _loc3_);
            }
            else if(!(§>R§.toUpperCase() == "BIRD_WHITE" && this.§?z§))
            {
               if(§2!M§)
               {
                  §!c§();
               }
               else if(!§,h§() && !§9!5§())
               {
                  §`X§(0);
               }
            }
         }
         else if(§[r§.mTryToFly)
         {
            §[r§.mTryToFly = false;
            if(§[r§.mIsFlying)
            {
               §[r§.mIsFlying = false;
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
         var _loc1_:§^!2§ = §"!S§.§-!7§;
         if(§[h§ < §'!V§ || §0c§() == null)
         {
            _loc1_.§9?§(this);
            _loc1_.§?j§ = false;
            return;
         }
         var _loc2_:Number = x * §^!2§.§3!S§;
         var _loc3_:Number = y * §^!2§.§3!S§;
         if(_loc1_.§?j§)
         {
            _loc1_.particles.addParticle(§!U§.§7!G§,§?F§.§;!;§,§!U§.§<x§,_loc2_,_loc3_,-1,"",§!U§.§^!J§);
            _loc1_.§?j§ = false;
            this.§9!Q§ = 0;
         }
         else if(§^!O§ > 1)
         {
            _loc1_.particles.addParticle(§!U§.§<+§,§?F§.§;!;§,§!U§.§<x§,_loc2_,_loc3_,-1,"",§!U§.§^!J§);
         }
         else
         {
            _loc4_ = §!U§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§9!Q§ == 1)
            {
               _loc4_ = §!U§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§9!Q§ == 2)
            {
               _loc4_ = §!U§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§9!Q§ = (this.§9!Q§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§?F§.§;!;§,§!U§.§<x§,_loc2_,_loc3_,-1,"",§!U§.§^!J§);
         }
         if(§;D§() > §9§.§;!]§ && Math.random() < §?I§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§!U§.§&§,§?F§.§<G§,§!U§.§"R§,§0c§().GetPosition().x,§0c§().GetPosition().y,1250,"",§!U§.§9Z§(§>R§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§[r§.mTryToFly)
         {
            §^!H§(§!k§.§8!C§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         if(this.§?z§)
         {
            return false;
         }
         §^!H§(§!k§.§4U§);
         this.§?z§ = true;
         return true;
      }
      
      private function §'N§(param1:int) : int
      {
         return Math.min(§"!S§.§-!7§.§8!0§,param1);
      }
      
      override public function addDestructionParticles(param1:§?F§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §[x§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§'N§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§[r§.mW * §^!2§.§3!S§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§[r§.mH * §^!2§.§3!S§) + Math.random() * -_loc8_ * 2;
            param1.addParticle(§!U§.§&§,§?F§.§<G§,§!U§.§"R§,§0c§().GetPosition().x + _loc7_,§0c§().GetPosition().y + _loc8_,1500,"",§!U§.§9Z§(§>R§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§?F§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§9!5§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §;D§() / 10;
         var _loc4_:int = 1 + _loc3_ * §[x§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§'N§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.addParticle(§!U§.§5!Y§,§?F§.§<G§,§!U§.§"R§,§0c§().GetPosition().x,§0c§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.addParticle(§!U§.§&§,§?F§.§<G§,§!U§.§"R§,§0c§().GetPosition().x,§0c§().GetPosition().y,1250,"",§!U§.§9Z§(§>R§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
