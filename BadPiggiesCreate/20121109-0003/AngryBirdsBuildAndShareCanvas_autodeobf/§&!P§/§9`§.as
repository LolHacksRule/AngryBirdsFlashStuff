package §&!P§
{
   import §"J§.b2BodyDef;
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §%!0§.§3"!§;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   import §]";§.§34§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   
   public class §9`§ extends §!>§
   {
      
      protected static const §;V§:Boolean = false;
      
      protected static const §3q§:Number = 2000;
      
      protected static const §>!%§:Number = 0.2;
       
      
      private var §?9§:Number;
      
      protected var §3H§:Boolean = false;
      
      protected var §`U§:int = 0;
      
      public function §9`§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §8C§.mTryToScream = §0;§.§2!_§ + 1;
         }
      }
      
      public static function §#;§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §'_§.§=M§.particles.§-"<§("STAR_PARTICLE",§`!E§.§<"9§,§6!Q§.§+f§,§`!E§.§]W§,param1,param2,750,"",§`!E§.§]!I§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §+^§() : Boolean
      {
         return this.§3H§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§7@§ = true;
         _loc3_.§^"6§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§8W§ < §%5§ && §+!>§())
         {
            this.§?9§ += param1;
            if(this.§?9§ >= §3q§)
            {
               return true;
            }
         }
         else
         {
            this.§?9§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§3H§)
         {
            if(§+!A§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§+!A§.toUpperCase() == "BIRD_YELLOW" || §+!A§.toUpperCase() == "BIRD_GREEN" || §+!A§.toUpperCase() == "BIRD_RED" || §+!A§.toUpperCase() == "BIRD_RED_BIG" || §+!A§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§8C§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§8C§.mTryToSpecial)
               {
                  §8C§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§8C§.mTryToSpecial)
            {
               §8C§.mTryToSpecial = false;
               if(§8C§.mIsSpecial)
               {
                  §8C§.mIsSpecial = false;
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
         if(getBody().IsAwake() && §8W§ == §%5§)
         {
            if(!§8C§.mTryToFly)
            {
               §8C§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§+!A§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§3H§ ? 2 : 1) * 360 / 1000;
               §5!D§(§?"1§() - _loc3_);
            }
            else if(!(§+!A§.toUpperCase() == "BIRD_WHITE" && this.§3H§))
            {
               if(§;V§)
               {
                  §7y§();
               }
               else if(!§!0§() && !§9!W§())
               {
                  §5!D§(0);
               }
            }
         }
         else if(§8C§.mTryToFly)
         {
            §8C§.mTryToFly = false;
            if(§8C§.mIsFlying)
            {
               §8C§.mIsFlying = false;
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
         var _loc1_:§,4§ = §'_§.§=M§;
         if(§8W§ < §%5§ || getBody() == null)
         {
            _loc1_.§32§(this);
            _loc1_.§1!;§ = false;
            return;
         }
         var _loc2_:Number = x * §,4§.§,^§;
         var _loc3_:Number = y * §,4§.§,^§;
         if(_loc1_.§1!;§)
         {
            _loc1_.particles.§'p§(§`!E§.§"!2§,§6!Q§.§;"#§,§`!E§.§+"=§,_loc2_,_loc3_,-1,"",§`!E§.§6!O§);
            _loc1_.§1!;§ = false;
            this.§`U§ = 0;
         }
         else if(§9T§ > 1)
         {
            _loc1_.particles.§'p§(§`!E§.§#!g§,§6!Q§.§;"#§,§`!E§.§+"=§,_loc2_,_loc3_,-1,"",§`!E§.§6!O§);
         }
         else
         {
            _loc4_ = §`!E§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§`U§ == 1)
            {
               _loc4_ = §`!E§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§`U§ == 2)
            {
               _loc4_ = §`!E§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§`U§ = (this.§`U§ + 1) % 3;
            _loc1_.particles.§'p§(_loc4_,§6!Q§.§;"#§,§`!E§.§+"=§,_loc2_,_loc3_,-1,"",§`!E§.§6!O§);
         }
         if(_loc1_.slingshot.§5§())
         {
            §#;§(_loc2_,_loc3_,0,3,10);
         }
         if(§[!_§() > §3"!§.§&S§ && Math.random() < §>!%§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§'p§(§`!E§.§@!1§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§`!E§.§]!I§(§+!A§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§8C§.mTryToFly)
         {
            §^!x§(§34§.§5!C§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         if(this.§3H§)
         {
            return false;
         }
         §^!x§(§34§.§'k§);
         this.§3H§ = true;
         return true;
      }
      
      private function §<L§(param1:int) : int
      {
         return Math.min(§'_§.§=M§.§]!c§,param1);
      }
      
      override public function addDestructionParticles(param1:§6!Q§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §9!3§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§<L§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8C§.mW * §,4§.§,^§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8C§.mH * §,4§.§,^§) + Math.random() * -_loc8_ * 2;
            param1.§'p§(§`!E§.§@!1§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§`!E§.§]!I§(§+!A§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§6!Q§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§9!W§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §[!_§() / 10;
         var _loc4_:int = 1 + _loc3_ * §9!3§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§<L§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§'p§(§`!E§.§5!p§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§'p§(§`!E§.§@!1§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§`!E§.§]!I§(§+!A§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
