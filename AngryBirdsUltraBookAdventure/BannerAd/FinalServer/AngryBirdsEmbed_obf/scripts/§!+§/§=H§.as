package §!+§
{
   import §!!>§.§!8§;
   import §!!>§.§#C§;
   import §5H§.§[k§;
   import §7!0§.§6Z§;
   import §9W§.Sprite;
   import §?b§.§4K§;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=H§ extends §89§
   {
      
      protected static const §9!4§:Boolean = false;
      
      protected static const §-u§:Number = 2000;
      
      protected static const §2k§:Number = 0.2;
       
      
      private var §6E§:Number;
      
      private var §!!<§:Boolean = false;
      
      protected var §7!'§:int = 0;
      
      public function §=H§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §'j§.mTryToScream = override.§`=§ + 1;
         }
      }
      
      public function get §^`§() : Boolean
      {
         return this.§!!<§;
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
         if(§`0§ < § !,§ && §%f§())
         {
            this.§6E§ += param1;
            if(this.§6E§ >= §-u§)
            {
               return true;
            }
         }
         else
         {
            this.§6E§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§!!<§)
         {
            if(§2Z§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§2Z§.toUpperCase() == "BIRD_YELLOW" || §2Z§.toUpperCase() == "BIRD_GREEN" || §2Z§.toUpperCase() == "BIRD_RED" || §2Z§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§'j§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§'j§.mTryToSpecial)
               {
                  §'j§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§'j§.mTryToSpecial)
            {
               §'j§.mTryToSpecial = false;
               if(§'j§.mIsSpecial)
               {
                  §'j§.mIsSpecial = false;
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
         if(§`t§().IsAwake() && §`0§ == § !,§)
         {
            if(!§'j§.mTryToFly)
            {
               §'j§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§2Z§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§!!<§ ? 2 : 1) * 360 / 1000;
               §8V§(§5>§() - _loc3_);
            }
            else if(!(§2Z§.toUpperCase() == "BIRD_WHITE" && this.§!!<§))
            {
               if(§9!4§)
               {
                  §4b§();
               }
               else if(!§0y§() && !§@v§())
               {
                  §8V§(0);
               }
            }
         }
         else if(§'j§.mTryToFly)
         {
            §'j§.mTryToFly = false;
            if(§'j§.mIsFlying)
            {
               §'j§.mIsFlying = false;
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
         var _loc1_:§7!,§ = §[k§.§&@§;
         if(§`0§ < § !,§ || §`t§() == null)
         {
            _loc1_.§+!?§(this);
            _loc1_.§]L§ = false;
            return;
         }
         var _loc2_:Number = x * §7!,§.§ '§;
         var _loc3_:Number = y * §7!,§.§ '§;
         if(_loc1_.§]L§)
         {
            _loc1_.particles.§'!;§(§!8§.§ !3§,§#C§.§=!7§,§!8§.§"_§,_loc2_,_loc3_,-1,"",§!8§.§!;§);
            _loc1_.§]L§ = false;
            this.§7!'§ = 0;
         }
         else if(§[!G§ > 1)
         {
            _loc1_.particles.§'!;§(§!8§.§&D§,§#C§.§=!7§,§!8§.§"_§,_loc2_,_loc3_,-1,"",§!8§.§!;§);
         }
         else
         {
            _loc4_ = §!8§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§7!'§ == 1)
            {
               _loc4_ = §!8§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§7!'§ == 2)
            {
               _loc4_ = §!8§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§7!'§ = (this.§7!'§ + 1) % 3;
            _loc1_.particles.§'!;§(_loc4_,§#C§.§=!7§,§!8§.§"_§,_loc2_,_loc3_,-1,"",§!8§.§!;§);
         }
         if(§&?§() > §4K§.§ m§ && Math.random() < §2k§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§'!;§(§!8§.dynamic,§#C§.§#!'§,§!8§.§3!'§,§`t§().GetPosition().x,§`t§().GetPosition().y,1250,"",§!8§.§3^§(§2Z§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§'j§.mTryToFly)
         {
            §+!&§(§6Z§.§`W§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§#-§) : Boolean
      {
         if(this.§!!<§)
         {
            return false;
         }
         §+!&§(§6Z§.§`^§);
         this.§!!<§ = true;
         return true;
      }
      
      private function §+v§(param1:int) : int
      {
         return Math.min(§[k§.§&@§.§%t§,param1);
      }
      
      override public function addDestructionParticles(param1:§#C§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §[_§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§+v§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§'j§.mW * §7!,§.§ '§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§'j§.mH * §7!,§.§ '§) + Math.random() * -_loc8_ * 2;
            param1.§'!;§(§!8§.dynamic,§#C§.§#!'§,§!8§.§3!'§,§`t§().GetPosition().x + _loc7_,§`t§().GetPosition().y + _loc8_,1500,"",§!8§.§3^§(§2Z§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§#C§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§@v§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §&?§() / 10;
         var _loc4_:int = 1 + _loc3_ * §[_§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§+v§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§'!;§(§!8§.§7_§,§#C§.§#!'§,§!8§.§3!'§,§`t§().GetPosition().x,§`t§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§'!;§(§!8§.dynamic,§#C§.§#!'§,§!8§.§3!'§,§`t§().GetPosition().x,§`t§().GetPosition().y,1250,"",§!8§.§3^§(§2Z§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
