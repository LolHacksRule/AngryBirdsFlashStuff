package §#!1§
{
   import §<!<§.§>'§;
   import §>%§.§]3§;
   import §]!6§.Sprite;
   import §]"§.§4!F§;
   import §]"§.§=j§;
   import §`i§.§2W§;
   import §`i§.§while§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §9!'§ extends §&z§
   {
      
      protected static const §%!+§:Boolean = false;
      
      protected static const §-J§:Number = 2000;
      
      protected static const §<!,§:Number = 0.2;
       
      
      private var §9k§:Number;
      
      private var §'!&§:Boolean = false;
      
      protected var §1w§:int = 0;
      
      public function §9!'§(param1:§;^§, param2:Sprite, param3:b2World, param4:§2W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §>7§.mTryToScream = §+q§.§+!§ + 1;
         }
      }
      
      public function get §9z§() : Boolean
      {
         return this.§'!&§;
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
         if(§,s§ < §?!+§ && §&!"§())
         {
            this.§9k§ += param1;
            if(this.§9k§ >= §-J§)
            {
               return true;
            }
         }
         else
         {
            this.§9k§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§'!&§)
         {
            if(§=p§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§=p§.toUpperCase() == "BIRD_YELLOW" || §=p§.toUpperCase() == "BIRD_GREEN" || §=p§.toUpperCase() == "BIRD_RED" || §=p§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§>7§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§>7§.mTryToSpecial)
               {
                  §>7§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§>7§.mTryToSpecial)
            {
               §>7§.mTryToSpecial = false;
               if(§>7§.mIsSpecial)
               {
                  §>7§.mIsSpecial = false;
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
         if(§!v§().IsAwake() && §,s§ == §?!+§)
         {
            if(!§>7§.mTryToFly)
            {
               §>7§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§=p§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§'!&§ ? 2 : 1) * 360 / 1000;
               §6!#§(§>!+§() - _loc3_);
            }
            else if(!(§=p§.toUpperCase() == "BIRD_WHITE" && this.§'!&§))
            {
               if(§%!+§)
               {
                  §]!4§();
               }
               else if(!§;w§() && !§,!I§())
               {
                  §6!#§(0);
               }
            }
         }
         else if(§>7§.mTryToFly)
         {
            §>7§.mTryToFly = false;
            if(§>7§.mIsFlying)
            {
               §>7§.mIsFlying = false;
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
         var _loc1_:§2W§ = §]3§.§;v§;
         if(§,s§ < §?!+§ || §!v§() == null)
         {
            _loc1_.§3t§(this);
            _loc1_.§^$§ = false;
            return;
         }
         var _loc2_:Number = x * §2W§.§0;§;
         var _loc3_:Number = y * §2W§.§0;§;
         if(_loc1_.§^$§)
         {
            _loc1_.particles.§#!B§(§4!F§.§7!;§,§=j§.§]O§,§4!F§.§42§,_loc2_,_loc3_,-1,"",§4!F§.§7k§);
            _loc1_.§^$§ = false;
            this.§1w§ = 0;
         }
         else if(§'[§ > 1)
         {
            _loc1_.particles.§#!B§(§4!F§.§`W§,§=j§.§]O§,§4!F§.§42§,_loc2_,_loc3_,-1,"",§4!F§.§7k§);
         }
         else
         {
            _loc4_ = §4!F§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§1w§ == 1)
            {
               _loc4_ = §4!F§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§1w§ == 2)
            {
               _loc4_ = §4!F§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§1w§ = (this.§1w§ + 1) % 3;
            _loc1_.particles.§#!B§(_loc4_,§=j§.§]O§,§4!F§.§42§,_loc2_,_loc3_,-1,"",§4!F§.§7k§);
         }
         if(§]=§() > §while§.§@A§ && Math.random() < §<!,§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§#!B§(§4!F§.§=w§,§=j§.§[m§,§4!F§.§1E§,§!v§().GetPosition().x,§!v§().GetPosition().y,1250,"",§4!F§.§9-§(§=p§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§>7§.mTryToFly)
         {
            §+K§(§>'§.§8X§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§;^§) : Boolean
      {
         if(this.§'!&§)
         {
            return false;
         }
         §+K§(§>'§.§>#§);
         this.§'!&§ = true;
         return true;
      }
      
      private function §#m§(param1:int) : int
      {
         return Math.min(§]3§.§;v§.§`A§,param1);
      }
      
      override public function addDestructionParticles(param1:§=j§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §%!F§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§#m§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§>7§.mW * §2W§.§0;§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§>7§.mH * §2W§.§0;§) + Math.random() * -_loc8_ * 2;
            param1.§#!B§(§4!F§.§=w§,§=j§.§[m§,§4!F§.§1E§,§!v§().GetPosition().x + _loc7_,§!v§().GetPosition().y + _loc8_,1500,"",§4!F§.§9-§(§=p§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§=j§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§,!I§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §]=§() / 10;
         var _loc4_:int = 1 + _loc3_ * §%!F§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§#m§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§#!B§(§4!F§.§#$§,§=j§.§[m§,§4!F§.§1E§,§!v§().GetPosition().x,§!v§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§#!B§(§4!F§.§=w§,§=j§.§[m§,§4!F§.§1E§,§!v§().GetPosition().x,§!v§().GetPosition().y,1250,"",§4!F§.§9-§(§=p§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
