package §?"&§
{
   import § ""§.§<9§;
   import §7!q§.b2BodyDef;
   import §7!q§.b2World;
   import §8!E§.§1!6§;
   import §8!E§.§?!X§;
   import §=!<§.§5!U§;
   import §["8§.§ !>§;
   import §["8§.§=!i§;
   import §`L§.Sprite;
   
   public class §`!k§ extends §%Z§
   {
      
      protected static const §<!X§:Boolean = false;
      
      protected static const §!I§:Number = 2000;
      
      protected static const §4U§:Number = 0.2;
       
      
      private var §<!J§:Number;
      
      private var §8!2§:Boolean = false;
      
      protected var §&"7§:int = 0;
      
      public function §`!k§(param1:§5b§, param2:Sprite, param3:b2World, param4:§?!X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §!!8§.mTryToScream = §"f§.§7X§ + 1;
         }
      }
      
      public function get §=!3§() : Boolean
      {
         return this.§8!2§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§!!s§ = true;
         _loc3_.§%!G§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§`X§ < §&<§ && §<!s§())
         {
            this.§<!J§ += param1;
            if(this.§<!J§ >= §!I§)
            {
               return true;
            }
         }
         else
         {
            this.§<!J§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§8!2§)
         {
            if(§=!+§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§=!+§.toUpperCase() == "BIRD_YELLOW" || §=!+§.toUpperCase() == "BIRD_GREEN" || §=!+§.toUpperCase() == "BIRD_RED" || §=!+§.toUpperCase() == "BIRD_RED_BIG" || §=!+§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§!!8§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§!!8§.mTryToSpecial)
               {
                  §!!8§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§!!8§.mTryToSpecial)
            {
               §!!8§.mTryToSpecial = false;
               if(§!!8§.mIsSpecial)
               {
                  §!!8§.mIsSpecial = false;
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
         if(getBody().IsAwake() && §`X§ == §&<§)
         {
            if(!§!!8§.mTryToFly)
            {
               §!!8§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§=!+§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§8!2§ ? 2 : 1) * 360 / 1000;
               §%[§(§#!q§() - _loc3_);
            }
            else if(!(§=!+§.toUpperCase() == "BIRD_WHITE" && this.§8!2§))
            {
               if(§<!X§)
               {
                  §+W§();
               }
               else if(!§?l§() && !§23§())
               {
                  §%[§(0);
               }
            }
         }
         else if(§!!8§.mTryToFly)
         {
            §!!8§.mTryToFly = false;
            if(§!!8§.mIsFlying)
            {
               §!!8§.mIsFlying = false;
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
         var _loc1_:§?!X§ = §5!U§.§,!E§;
         if(§`X§ < §&<§ || getBody() == null)
         {
            _loc1_.§-3§(this);
            _loc1_.§%D§ = false;
            return;
         }
         var _loc2_:Number = x * §?!X§.§57§;
         var _loc3_:Number = y * §?!X§.§57§;
         if(_loc1_.§%D§)
         {
            _loc1_.particles.§-?§(§=!i§.§6&§,§ !>§.§?!T§,§=!i§.§>?§,_loc2_,_loc3_,-1,"",§=!i§.§&f§);
            _loc1_.§%D§ = false;
            this.§&"7§ = 0;
         }
         else if(§]H§ > 1)
         {
            _loc1_.particles.§-?§(§=!i§.§]!E§,§ !>§.§?!T§,§=!i§.§>?§,_loc2_,_loc3_,-1,"",§=!i§.§&f§);
         }
         else
         {
            _loc4_ = §=!i§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§&"7§ == 1)
            {
               _loc4_ = §=!i§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§&"7§ == 2)
            {
               _loc4_ = §=!i§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§&"7§ = (this.§&"7§ + 1) % 3;
            _loc1_.particles.§-?§(_loc4_,§ !>§.§?!T§,§=!i§.§>?§,_loc2_,_loc3_,-1,"",§=!i§.§&f§);
         }
         if(§]X§() > §1!6§.§ !i§ && Math.random() < §4U§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§-?§(§=!i§.§#!+§,§ !>§.§!!]§,§=!i§.§^!3§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§=!i§.§6z§(§=!+§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§!!8§.mTryToFly)
         {
            §@!,§(§<9§.§^!f§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§5b§) : Boolean
      {
         if(this.§8!2§)
         {
            return false;
         }
         §@!,§(§<9§.§9! §);
         this.§8!2§ = true;
         return true;
      }
      
      private function §>b§(param1:int) : int
      {
         return Math.min(§5!U§.§,!E§.§#",§,param1);
      }
      
      override public function addDestructionParticles(param1:§ !>§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §,!U§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§>b§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§!!8§.mW * §?!X§.§57§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§!!8§.mH * §?!X§.§57§) + Math.random() * -_loc8_ * 2;
            param1.§-?§(§=!i§.§#!+§,§ !>§.§!!]§,§=!i§.§^!3§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§=!i§.§6z§(§=!+§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§ !>§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§23§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §]X§() / 10;
         var _loc4_:int = 1 + _loc3_ * §,!U§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§>b§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§-?§(§=!i§.§+1§,§ !>§.§!!]§,§=!i§.§^!3§,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§-?§(§=!i§.§#!+§,§ !>§.§!!]§,§=!i§.§^!3§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§=!i§.§6z§(§=!+§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
