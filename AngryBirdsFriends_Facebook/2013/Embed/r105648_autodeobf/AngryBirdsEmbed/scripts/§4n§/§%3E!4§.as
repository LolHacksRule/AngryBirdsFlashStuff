package §4n§
{
   import §#]§.§'5§;
   import §9!#§.§+5§;
   import §;'§.§8!;§;
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import §[!=§.§3r§;
   import §[!=§.§>Z§;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §>!4§ extends §-!9§
   {
      
      protected static const §7Z§:Boolean = false;
      
      protected static const §!Z§:Number = 2000;
      
      protected static const §+!'§:Number = 0.2;
       
      
      private var §+G§:Number;
      
      protected var §&!2§:Boolean = false;
      
      protected var § I§:int = 0;
      
      public function §>!4§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §`V§.mTryToScream = §8X§.§4k§ + 1;
         }
      }
      
      public static function §4Q§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §'5§.§^;§.particles.§"T§("STAR_PARTICLE",§>Z§.§6!E§,§3r§.§"H§,§>Z§.§%t§,param1,param2,750,"",§>Z§.§'T§("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public function get §8m§() : Boolean
      {
         return this.§&!2§;
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
         if(§'s§ < §@g§ && §@!5§())
         {
            this.§+G§ += param1;
            if(this.§+G§ >= §!Z§)
            {
               return true;
            }
         }
         else
         {
            this.§+G§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§&!2§)
         {
            if(§"!!§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§"!!§.toUpperCase() == "BIRD_YELLOW" || §"!!§.toUpperCase() == "BIRD_GREEN" || §"!!§.toUpperCase() == "BIRD_RED" || §"!!§.toUpperCase() == "BIRD_RED_BIG" || §"!!§.toUpperCase() == "BIRD_ORANGE")
            {
               if(§`V§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§`V§.mTryToSpecial)
               {
                  §`V§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§`V§.mTryToSpecial)
            {
               §`V§.mTryToSpecial = false;
               if(§`V§.mIsSpecial)
               {
                  §`V§.mIsSpecial = false;
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
         if(§^C§().IsAwake() && §'s§ == §@g§)
         {
            if(!§`V§.mTryToFly)
            {
               §`V§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§"!!§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§&!2§ ? 2 : 1) * 360 / 1000;
               §#x§(§1&§() - _loc3_);
            }
            else if(!(§"!!§.toUpperCase() == "BIRD_WHITE" && this.§&!2§))
            {
               if(§7Z§)
               {
                  §4S§();
               }
               else if(!§=!9§() && !§-g§())
               {
                  §#x§(0);
               }
            }
         }
         else if(§`V§.mTryToFly)
         {
            §`V§.mTryToFly = false;
            if(§`V§.mIsFlying)
            {
               §`V§.mIsFlying = false;
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
         var _loc1_:§?!D§ = §'5§.§^;§;
         if(§'s§ < §@g§ || §^C§() == null)
         {
            _loc1_.§<<§(this);
            _loc1_.§=6§ = false;
            return;
         }
         var _loc2_:Number = x * §?!D§.§@!I§;
         var _loc3_:Number = y * §?!D§.§@!I§;
         if(_loc1_.§=6§)
         {
            _loc1_.particles.§48§(§>Z§.§8!I§,§3r§.§+W§,§>Z§.§5T§,_loc2_,_loc3_,-1,"",§>Z§.§]9§);
            _loc1_.§=6§ = false;
            this.§ I§ = 0;
         }
         else if(§2!;§ > 1)
         {
            _loc1_.particles.§48§(§>Z§.§@b§,§3r§.§+W§,§>Z§.§5T§,_loc2_,_loc3_,-1,"",§>Z§.§]9§);
         }
         else
         {
            _loc4_ = §>Z§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§ I§ == 1)
            {
               _loc4_ = §>Z§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§ I§ == 2)
            {
               _loc4_ = §>Z§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§ I§ = (this.§ I§ + 1) % 3;
            _loc1_.particles.§48§(_loc4_,§3r§.§+W§,§>Z§.§5T§,_loc2_,_loc3_,-1,"",§>Z§.§]9§);
         }
         if(_loc1_.slingshot.§6F§())
         {
            §4Q§(_loc2_,_loc3_,0,3,10);
         }
         if(§+$§() > §8!;§.§%!'§ && Math.random() < §+!'§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§48§(§>Z§.§5e§,§3r§.§"H§,§>Z§.§%t§,§^C§().GetPosition().x,§^C§().GetPosition().y,1250,"",§>Z§.§'T§(§"!!§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§`V§.mTryToFly)
         {
            §2!%§(§+5§.§+@§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§8y§) : Boolean
      {
         if(this.§&!2§)
         {
            return false;
         }
         §2!%§(§+5§.§ E§);
         this.§&!2§ = true;
         return true;
      }
      
      private function §3!6§(param1:int) : int
      {
         return Math.min(§'5§.§^;§.§^!0§,param1);
      }
      
      override public function addDestructionParticles(param1:§3r§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §<o§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§3!6§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§`V§.mW * §?!D§.§@!I§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§`V§.mH * §?!D§.§@!I§) + Math.random() * -_loc8_ * 2;
            param1.§48§(§>Z§.§5e§,§3r§.§"H§,§>Z§.§%t§,§^C§().GetPosition().x + _loc7_,§^C§().GetPosition().y + _loc8_,1500,"",§>Z§.§'T§(§"!!§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§3r§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§-g§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §+$§() / 10;
         var _loc4_:int = 1 + _loc3_ * §<o§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§3!6§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§48§(§>Z§.§=P§,§3r§.§"H§,§>Z§.§%t§,§^C§().GetPosition().x,§^C§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§48§(§>Z§.§5e§,§3r§.§"H§,§>Z§.§%t§,§^C§().GetPosition().x,§^C§().GetPosition().y,1250,"",§>Z§.§'T§(§"!!§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
