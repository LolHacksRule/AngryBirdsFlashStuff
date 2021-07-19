package §+!o§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §%c§.§=!X§;
   import §+S§.b2BodyDef;
   import §+S§.b2World;
   import §,a§.§+"&§;
   import §5!V§.§!w§;
   import §5!V§.§[!6§;
   import §default§.Sprite;
   
   public class §>G§ extends §2f§
   {
      
      protected static const §&"+§:Boolean = false;
      
      protected static const §]"2§:Number = 2000;
      
      protected static const §4e§:Number = 0.2;
       
      
      private var §%!b§:Number;
      
      private var §#!G§:Boolean = false;
      
      protected var §,U§:int = 0;
      
      public function §>G§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §[!g§.mTryToScream = §<Y§.§^!7§ + 1;
         }
      }
      
      public function get §6S§() : Boolean
      {
         return this.§#!G§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§@!§ = true;
         _loc3_.§[!u§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§@!P§ < §'">§ && §#";§())
         {
            this.§%!b§ += param1;
            if(this.§%!b§ >= §]"2§)
            {
               return true;
            }
         }
         else
         {
            this.§%!b§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§#!G§)
         {
            if(§!F§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§!F§.toUpperCase() == "BIRD_YELLOW" || §!F§.toUpperCase() == "BIRD_GREEN" || §!F§.toUpperCase() == "BIRD_RED" || §!F§.toUpperCase() == "BIRD_RED_BIG" || §!F§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§[!g§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§[!g§.mTryToSpecial)
               {
                  §[!g§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§[!g§.mTryToSpecial)
            {
               §[!g§.mTryToSpecial = false;
               if(§[!g§.mIsSpecial)
               {
                  §[!g§.mIsSpecial = false;
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
         if(getBody().IsAwake() && §@!P§ == §'">§)
         {
            if(!§[!g§.mTryToFly)
            {
               §[!g§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§!F§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§#!G§ ? 2 : 1) * 360 / 1000;
               §-^§(§+!1§() - _loc3_);
            }
            else if(!(§!F§.toUpperCase() == "BIRD_WHITE" && this.§#!G§))
            {
               if(§&"+§)
               {
                  §;I§();
               }
               else if(!§<",§() && !§6!@§())
               {
                  §-^§(0);
               }
            }
         }
         else if(§[!g§.mTryToFly)
         {
            §[!g§.mTryToFly = false;
            if(§[!g§.mIsFlying)
            {
               §[!g§.mIsFlying = false;
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
         var _loc1_:§!w§ = §=!X§.§!'§;
         if(§@!P§ < §'">§ || getBody() == null)
         {
            _loc1_.§5!H§(this);
            _loc1_.§3"9§ = false;
            return;
         }
         var _loc2_:Number = x * §!w§.§4!-§;
         var _loc3_:Number = y * §!w§.§4!-§;
         if(_loc1_.§3"9§)
         {
            _loc1_.particles.§[b§(§&!>§.§5"5§,§-5§.§&b§,§&!>§.§?"0§,_loc2_,_loc3_,-1,"",§&!>§.§`!g§);
            _loc1_.§3"9§ = false;
            this.§,U§ = 0;
         }
         else if(§ !R§ > 1)
         {
            _loc1_.particles.§[b§(§&!>§.§`V§,§-5§.§&b§,§&!>§.§?"0§,_loc2_,_loc3_,-1,"",§&!>§.§`!g§);
         }
         else
         {
            _loc4_ = §&!>§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§,U§ == 1)
            {
               _loc4_ = §&!>§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§,U§ == 2)
            {
               _loc4_ = §&!>§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§,U§ = (this.§,U§ + 1) % 3;
            _loc1_.particles.§[b§(_loc4_,§-5§.§&b§,§&!>§.§?"0§,_loc2_,_loc3_,-1,"",§&!>§.§`!g§);
         }
         if(§0$§() > §[!6§.§`!W§ && Math.random() < §4e§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§[b§(§&!>§.§]!c§,§-5§.§5Q§,§&!>§.§&W§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§&!>§.§6H§(§!F§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§[!g§.mTryToFly)
         {
            §"!a§(§+"&§.§7"0§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         if(this.§#!G§)
         {
            return false;
         }
         §"!a§(§+"&§.§%!&§);
         this.§#!G§ = true;
         return true;
      }
      
      private function §&!9§(param1:int) : int
      {
         return Math.min(§=!X§.§!'§.§#6§,param1);
      }
      
      override public function addDestructionParticles(param1:§-5§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §0&§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§&!9§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§[!g§.mW * §!w§.§4!-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§[!g§.mH * §!w§.§4!-§) + Math.random() * -_loc8_ * 2;
            param1.§[b§(§&!>§.§]!c§,§-5§.§5Q§,§&!>§.§&W§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§&!>§.§6H§(§!F§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§-5§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§6!@§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §0$§() / 10;
         var _loc4_:int = 1 + _loc3_ * §0&§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§&!9§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§[b§(§&!>§.§^!R§,§-5§.§5Q§,§&!>§.§&W§,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§[b§(§&!>§.§]!c§,§-5§.§5Q§,§&!>§.§&W§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§&!>§.§6H§(§!F§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
