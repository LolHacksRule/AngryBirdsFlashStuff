package §3!#§
{
   import §&!Y§.b2BodyDef;
   import §&!Y§.b2World;
   import §0!2§.§,!W§;
   import §0!2§.§5"L§;
   import §5!G§.§&2§;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §=%§.§7!g§;
   import §]!v§.Sprite;
   
   public class §!!k§ extends §0"7§
   {
      
      protected static const §3!-§:Boolean = false;
      
      protected static const §3!h§:Number = 2000;
      
      protected static const §6§:Number = 0.2;
       
      
      private var §0!s§:Number;
      
      protected var §^d§:Boolean = false;
      
      protected var §;%§:int = 0;
      
      public function §!!k§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §<!K§.mTryToScream = §38§.§;""§ + 1;
         }
      }
      
      public static function §^!%§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §&2§.§],§.particles.§-!O§("STAR_PARTICLE",§4! §.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§4! §.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §'!G§() : Boolean
      {
         return this.§^d§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§4!#§ = true;
         _loc3_.§5v§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§!!U§ < §3!A§ && §!!b§())
         {
            this.§0!s§ += param1;
            if(this.§0!s§ >= §3!h§)
            {
               return true;
            }
         }
         else
         {
            this.§0!s§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§^d§)
         {
            if(§=-§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§=-§.toUpperCase() == "BIRD_YELLOW" || §=-§.toUpperCase() == "BIRD_GREEN" || §=-§.toUpperCase() == "BIRD_RED" || §=-§.toUpperCase() == "BIRD_RED_BIG" || §=-§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§<!K§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§<!K§.mTryToSpecial)
               {
                  §<!K§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§<!K§.mTryToSpecial)
            {
               §<!K§.mTryToSpecial = false;
               if(§<!K§.mIsSpecial)
               {
                  §<!K§.mIsSpecial = false;
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
         if(§`!y§().IsAwake() && §!!U§ == §3!A§)
         {
            if(!§<!K§.mTryToFly)
            {
               §<!K§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§=-§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§^d§ ? 2 : 1) * 360 / 1000;
               §-!#§(§#"<§() - _loc3_);
            }
            else if(!(§=-§.toUpperCase() == "BIRD_WHITE" && this.§^d§))
            {
               if(§3!-§)
               {
                  §3"B§();
               }
               else if(!§0"K§() && !§`h§())
               {
                  §-!#§(0);
               }
            }
         }
         else if(§<!K§.mTryToFly)
         {
            §<!K§.mTryToFly = false;
            if(§<!K§.mIsFlying)
            {
               §<!K§.mIsFlying = false;
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
         var _loc1_:§5"L§ = §&2§.§],§;
         if(§!!U§ < §3!A§ || §`!y§() == null)
         {
            _loc1_.§!!o§(this);
            _loc1_.§4!E§ = false;
            return;
         }
         var _loc2_:Number = x * §5"L§.§@>§;
         var _loc3_:Number = y * §5"L§.§@>§;
         if(_loc1_.§4!E§)
         {
            _loc1_.particles.§`"6§(§4! §.§-!B§,§3!p§.§"z§,§4! §.§1!G§,_loc2_,_loc3_,-1,"",§4! §.§in §);
            _loc1_.§4!E§ = false;
            this.§;%§ = 0;
         }
         else if(§>#§ > 1)
         {
            _loc1_.particles.§`"6§(§4! §.§#!x§,§3!p§.§"z§,§4! §.§1!G§,_loc2_,_loc3_,-1,"",§4! §.§in §);
         }
         else
         {
            _loc4_ = §4! §.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§;%§ == 1)
            {
               _loc4_ = §4! §.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§;%§ == 2)
            {
               _loc4_ = §4! §.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§;%§ = (this.§;%§ + 1) % 3;
            _loc1_.particles.§`"6§(_loc4_,§3!p§.§"z§,§4! §.§1!G§,_loc2_,_loc3_,-1,"",§4! §.§in §);
         }
         if(_loc1_.slingshot.§,,§())
         {
            §^!%§(_loc2_,_loc3_,0,3,10);
         }
         if(§3l§() > §,!W§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §6§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§`"6§(§4! §.§<2§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,§`!y§().GetPosition().x,§`!y§().GetPosition().y,1250,"",§4! §.getParticleMaterialFromEngineMaterial(§=-§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§<!K§.mTryToFly)
         {
            §!?§(§7!g§.§`!3§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§04§) : Boolean
      {
         if(this.§^d§)
         {
            return false;
         }
         §!?§(§7!g§.§1!v§);
         this.§^d§ = true;
         return true;
      }
      
      private function §5!O§(param1:int) : int
      {
         return Math.min(§&2§.§],§.§0<§,param1);
      }
      
      override public function addDestructionParticles(param1:§3!p§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §+p§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§5!O§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<!K§.mW * §5"L§.§@>§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<!K§.mH * §5"L§.§@>§) + Math.random() * -_loc8_ * 2;
            param1.§`"6§(§4! §.§<2§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,§`!y§().GetPosition().x + _loc7_,§`!y§().GetPosition().y + _loc8_,1500,"",§4! §.getParticleMaterialFromEngineMaterial(§=-§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3!p§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§`h§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §3l§() / 10;
         var _loc4_:int = 1 + _loc3_ * §+p§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§5!O§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§`"6§(§4! §.§#"#§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,§`!y§().GetPosition().x,§`!y§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§`"6§(§4! §.§<2§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,§`!y§().GetPosition().x,§`!y§().GetPosition().y,1250,"",§4! §.getParticleMaterialFromEngineMaterial(§=-§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
