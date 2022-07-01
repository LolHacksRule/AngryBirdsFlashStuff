package §>!'§
{
   import § !t§.b2BodyDef;
   import § !t§.b2World;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!<§.§;§;
   import §?!-§.§'!V§;
   import §?!6§.§@T§;
   
   public class §7!U§ extends §5!6§
   {
      
      protected static const §+!I§:Boolean = false;
      
      protected static const §^n§:Number = 2000;
      
      private static const §'W§:Number = 0.2;
       
      
      private var §2!#§:Number;
      
      private var §-c§:Boolean = false;
      
      private var §4!T§:int = 0;
      
      public function §7!U§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §0!E§.mTryToScream = §6!N§.§0+§ + 1;
         }
      }
      
      public function get §6!i§() : Boolean
      {
         return this.§-c§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§@x§ = true;
         _loc3_.§<!A§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§!!>§ < §1!s§ && §^!%§())
         {
            this.§2!#§ += param1;
            if(this.§2!#§ >= §^n§)
            {
               return true;
            }
         }
         else
         {
            this.§2!#§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§-c§)
         {
            if(§>p§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§>p§.toUpperCase() == "BIRD_YELLOW" || §>p§.toUpperCase() == "BIRD_GREEN" || §>p§.toUpperCase() == "BIRD_RED" || §>p§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§0!E§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§0!E§.mTryToSpecial)
               {
                  §0!E§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§0!E§.mTryToSpecial)
            {
               §0!E§.mTryToSpecial = false;
               if(§0!E§.mIsSpecial)
               {
                  §0!E§.mIsSpecial = false;
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
         if(getBody().IsAwake() && §!!>§ == §1!s§)
         {
            if(!§0!E§.mTryToFly)
            {
               §0!E§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§>p§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§-c§ ? 2 : 1) * 360 / 1000;
               §?!1§(§;x§() - _loc3_);
            }
            else if(!(§>p§.toUpperCase() == "BIRD_WHITE" && this.§-c§))
            {
               if(§+!I§)
               {
                  §9P§();
               }
               else if(!§='§() && !§4!t§())
               {
                  §?!1§(0);
               }
            }
         }
         else if(§0!E§.mTryToFly)
         {
            §0!E§.mTryToFly = false;
            if(§0!E§.mIsFlying)
            {
               §0!E§.mIsFlying = false;
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
         var _loc1_:§7E§ = §'!V§.§1!2§;
         if(§!!>§ < §1!s§ || getBody() == null)
         {
            _loc1_.§,!H§(this);
            _loc1_.§7s§ = false;
            return;
         }
         var _loc2_:Number = x * §7E§.§8!'§;
         var _loc3_:Number = y * §7E§.§8!'§;
         if(_loc1_.§7s§)
         {
            _loc1_.particles.§1&§(§!r§.§%H§,§<!r§.§<[§,§!r§.§#!!§,_loc2_,_loc3_,-1,"",§!r§.§&!§);
            _loc1_.§7s§ = false;
            this.§4!T§ = 0;
         }
         else if(§^3§ > 1)
         {
            _loc1_.particles.§1&§(§!r§.§ !s§,§<!r§.§<[§,§!r§.§#!!§,_loc2_,_loc3_,-1,"",§!r§.§&!§);
         }
         else
         {
            _loc4_ = §!r§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§4!T§ == 1)
            {
               _loc4_ = §!r§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§4!T§ == 2)
            {
               _loc4_ = §!r§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§4!T§ = (this.§4!T§ + 1) % 3;
            _loc1_.particles.§1&§(_loc4_,§<!r§.§<[§,§!r§.§#!!§,_loc2_,_loc3_,-1,"",§!r§.§&!§);
         }
         if(§^![§() > §;§.§ !3§ && Math.random() < §'W§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§1&§(§!r§.§2!H§,§<!r§.§1N§,§!r§.§^!F§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§!r§.§^!O§(§>p§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§0!E§.mTryToFly)
         {
            §97§(§@T§.§5!r§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         if(this.§-c§)
         {
            return false;
         }
         §97§(§@T§.§4!^§);
         this.§-c§ = true;
         return true;
      }
      
      private function §@!R§(param1:int) : int
      {
         return Math.min(§'!V§.§1!2§.§9R§,param1);
      }
      
      override public function addDestructionParticles(param1:§<!r§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §'J§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§@!R§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§0!E§.mW * §7E§.§8!'§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§0!E§.mH * §7E§.§8!'§) + Math.random() * -_loc8_ * 2;
            param1.§1&§(§!r§.§2!H§,§<!r§.§1N§,§!r§.§^!F§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§!r§.§^!O§(§>p§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§<!r§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§4!t§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §^![§() / 10;
         var _loc4_:int = 1 + _loc3_ * §'J§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§@!R§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§1&§(§!r§.§93§,§<!r§.§1N§,§!r§.§^!F§,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§1&§(§!r§.§2!H§,§<!r§.§1N§,§!r§.§^!F§,getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§!r§.§^!O§(§>p§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
