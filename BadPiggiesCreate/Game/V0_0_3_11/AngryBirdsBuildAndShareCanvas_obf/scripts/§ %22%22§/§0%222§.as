package § ""§
{
   import §'x§.§?z§;
   import §,!!§.§5!G§;
   import §,!!§.§>!]§;
   import §1!Y§.Sprite;
   import §1!v§.§>"!§;
   import §1!v§.§@%§;
   import §7z§.b2BodyDef;
   import §7z§.b2World;
   import §8q§.§+P§;
   
   public class §0"2§ extends §[!a§
   {
      
      protected static const §#E§:Boolean = false;
      
      protected static const §[!M§:Number = 2000;
      
      protected static const §^"5§:Number = 0.2;
       
      
      private var §?M§:Number;
      
      private var §@V§:Boolean = false;
      
      protected var §=!y§:int = 0;
      
      public function §0"2§(param1:§6!u§, param2:Sprite, param3:b2World, param4:§@%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §>!M§.mTryToScream = §<"6§.§3I§ + 1;
         }
      }
      
      public function get §>!d§() : Boolean
      {
         return this.§@V§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§case§ = true;
         _loc3_.§0!I§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§=!,§ < §,!f§ && §!!Q§())
         {
            this.§?M§ += param1;
            if(this.§?M§ >= §[!M§)
            {
               return true;
            }
         }
         else
         {
            this.§?M§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§@V§)
         {
            if(§"g§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§"g§.toUpperCase() == "BIRD_YELLOW" || §"g§.toUpperCase() == "BIRD_GREEN" || §"g§.toUpperCase() == "BIRD_RED" || §"g§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§>!M§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§>!M§.mTryToSpecial)
               {
                  §>!M§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§>!M§.mTryToSpecial)
            {
               §>!M§.mTryToSpecial = false;
               if(§>!M§.mIsSpecial)
               {
                  §>!M§.mIsSpecial = false;
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
         if(getBody().IsAwake() && §=!,§ == §,!f§)
         {
            if(!§>!M§.mTryToFly)
            {
               §>!M§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§"g§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§@V§ ? 2 : 1) * 360 / 1000;
               §&!t§(§;!k§() - _loc3_);
            }
            else if(!(§"g§.toUpperCase() == "BIRD_WHITE" && this.§@V§))
            {
               if(§#E§)
               {
                  § "-§();
               }
               else if(!§"[§() && !§?",§())
               {
                  §&!t§(0);
               }
            }
         }
         else if(§>!M§.mTryToFly)
         {
            §>!M§.mTryToFly = false;
            if(§>!M§.mIsFlying)
            {
               §>!M§.mIsFlying = false;
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
         var _loc1_:§@%§ = §?z§.§=7§;
         if(§=!,§ < §,!f§ || getBody() == null)
         {
            _loc1_.§]A§(this);
            _loc1_.§ !"§ = false;
            return;
         }
         var _loc2_:Number = x * §@%§.§?k§;
         var _loc3_:Number = y * §@%§.§?k§;
         if(_loc1_.§ !"§)
         {
            _loc1_.particles.§,D§(§>!]§.§?!T§,§5!G§.§8N§,§>!]§.§2!f§,_loc2_,_loc3_,-1,"",§>!]§.§!E§);
            _loc1_.§ !"§ = false;
            this.§=!y§ = 0;
         }
         else if(§!y§ > 1)
         {
            _loc1_.particles.§,D§(§>!]§.§?![§,§5!G§.§8N§,§>!]§.§2!f§,_loc2_,_loc3_,-1,"",§>!]§.§!E§);
         }
         else
         {
            _loc4_ = §>!]§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§=!y§ == 1)
            {
               _loc4_ = §>!]§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§=!y§ == 2)
            {
               _loc4_ = §>!]§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§=!y§ = (this.§=!y§ + 1) % 3;
            _loc1_.particles.§,D§(_loc4_,§5!G§.§8N§,§>!]§.§2!f§,_loc2_,_loc3_,-1,"",§>!]§.§!E§);
         }
         if(§=!W§() > §>"!§.§=d§ && Math.random() < §^"5§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§,D§(§>!]§.§]!&§,§5!G§.§5N§,§>!]§.§@!q§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§>!]§.§`!9§(§"g§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§>!M§.mTryToFly)
         {
            §4!u§(§+P§.§&!i§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§6!u§) : Boolean
      {
         if(this.§@V§)
         {
            return false;
         }
         §4!u§(§+P§.§1"&§);
         this.§@V§ = true;
         return true;
      }
      
      private function §8!v§(param1:int) : int
      {
         return Math.min(§?z§.§=7§.§]'§,param1);
      }
      
      override public function addDestructionParticles(param1:§5!G§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §3C§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§8!v§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§>!M§.mW * §@%§.§?k§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§>!M§.mH * §@%§.§?k§) + Math.random() * -_loc8_ * 2;
            param1.§,D§(§>!]§.§]!&§,§5!G§.§5N§,§>!]§.§@!q§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§>!]§.§`!9§(§"g§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5!G§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§?",§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §=!W§() / 10;
         var _loc4_:int = 1 + _loc3_ * §3C§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§8!v§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§,D§(§>!]§.§;%§,§5!G§.§5N§,§>!]§.§@!q§,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§,D§(§>!]§.§]!&§,§5!G§.§5N§,§>!]§.§@!q§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§>!]§.§`!9§(§"g§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
