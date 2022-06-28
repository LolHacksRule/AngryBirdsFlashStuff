package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§>!A§;
   import §,!5§.§^g§;
   import §<!1§.§<!R§;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §`w§.b2BodyDef;
   import §`w§.b2World;
   import §true§.§ _§;
   
   public class §3L§ extends § !v§
   {
      
      protected static const §[!=§:Boolean = false;
      
      protected static const §@!J§:Number = 2000;
      
      protected static const §3H§:Number = 0.2;
       
      
      private var §1Q§:Number;
      
      private var §do §:Boolean = false;
      
      protected var §4!&§:int = 0;
      
      public function §3L§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         if(param10)
         {
            §?!M§.mTryToScream = §'!%§.§2<§ + 1;
         }
      }
      
      public function get §?!?§() : Boolean
      {
         return this.§do §;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         _loc3_.§,$§ = true;
         _loc3_.§!!J§ = 2;
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§%!R§ < §-!!§ && §9!i§())
         {
            this.§1Q§ += param1;
            if(this.§1Q§ >= §@!J§)
            {
               return true;
            }
         }
         else
         {
            this.§1Q§ = 0;
         }
         return false;
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(this.§do §)
         {
            if(§<!]§.toUpperCase() == "BIRD_WHITE")
            {
               _loc3_ = true;
            }
            else if(§<!]§.toUpperCase() == "BIRD_YELLOW" || §<!]§.toUpperCase() == "BIRD_GREEN" || §<!]§.toUpperCase() == "BIRD_RED" || §<!]§.toUpperCase() == "BIRD_RED_BIG")
            {
               if(§?!M§.mTryToFly)
               {
                  _loc3_ = true;
               }
            }
            if(_loc3_)
            {
               if(!§?!M§.mTryToSpecial)
               {
                  §?!M§.mTryToSpecial = true;
                  _loc2_ = true;
               }
            }
            else if(§?!M§.mTryToSpecial)
            {
               §?!M§.mTryToSpecial = false;
               if(§?!M§.mIsSpecial)
               {
                  §?!M§.mIsSpecial = false;
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
         if(§5b§().IsAwake() && §%!R§ == §-!!§)
         {
            if(!§?!M§.mTryToFly)
            {
               §?!M§.mTryToFly = true;
               _loc2_ = true;
            }
            if(§<!]§.toUpperCase() == "BIRD_GREEN")
            {
               _loc3_ = param1 * (!!this.§do § ? 2 : 1) * 360 / 1000;
               §[!b§(§2a§() - _loc3_);
            }
            else if(!(§<!]§.toUpperCase() == "BIRD_WHITE" && this.§do §))
            {
               if(§[!=§)
               {
                  §6&§();
               }
               else if(!§-!R§() && !§+!O§())
               {
                  §[!b§(0);
               }
            }
         }
         else if(§?!M§.mTryToFly)
         {
            §?!M§.mTryToFly = false;
            if(§?!M§.mIsFlying)
            {
               §?!M§.mIsFlying = false;
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
         var _loc1_:§^g§ = § _§.§!6§;
         if(§%!R§ < §-!!§ || §5b§() == null)
         {
            _loc1_.§'Y§(this);
            _loc1_.§"!j§ = false;
            return;
         }
         var _loc2_:Number = x * §^g§.§^!S§;
         var _loc3_:Number = y * §^g§.§^!S§;
         if(_loc1_.§"!j§)
         {
            _loc1_.particles.§ K§(§1!e§.§-!y§,§+F§.§%!W§,§1!e§.§]!e§,_loc2_,_loc3_,-1,"",§1!e§.§+Q§);
            _loc1_.§"!j§ = false;
            this.§4!&§ = 0;
         }
         else if(§]!G§ > 1)
         {
            _loc1_.particles.§ K§(§1!e§.§`!W§,§+F§.§%!W§,§1!e§.§]!e§,_loc2_,_loc3_,-1,"",§1!e§.§+Q§);
         }
         else
         {
            _loc4_ = §1!e§.PARTICLE_NAME_BIRD_TRAIL1;
            if(this.§4!&§ == 1)
            {
               _loc4_ = §1!e§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(this.§4!&§ == 2)
            {
               _loc4_ = §1!e§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            this.§4!&§ = (this.§4!&§ + 1) % 3;
            _loc1_.particles.§ K§(_loc4_,§+F§.§%!W§,§1!e§.§]!e§,_loc2_,_loc3_,-1,"",§1!e§.§+Q§);
         }
         if(§+!P§() > §>!A§.BIRD_LAUNCH_FORCE_GREEN && Math.random() < §3H§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.§ K§(§1!e§.§?A§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x,§5b§().GetPosition().y,1250,"",§1!e§.§"!J§(§<!]§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         if(§?!M§.mTryToFly)
         {
            §@j§(§<!R§.§-!e§);
         }
         else
         {
            super.playScreamingSoundEffect();
         }
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         if(this.§do §)
         {
            return false;
         }
         §@j§(§<!R§.§[U§);
         this.§do § = true;
         return true;
      }
      
      private function §"!M§(param1:int) : int
      {
         return Math.min(§ _§.§!6§.§5!T§,param1);
      }
      
      override public function addDestructionParticles(param1:§+F§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = §#!g§(false) + 1;
         var _loc4_:Number = 90;
         _loc3_ = this.§"!M§(_loc3_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§?!M§.mW * §^g§.§^!S§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§?!M§.mH * §^g§.§^!S§) + Math.random() * -_loc8_ * 2;
            param1.§ K§(§1!e§.§?A§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x + _loc7_,§5b§().GetPosition().y + _loc8_,1500,"",§1!e§.§"!J§(§<!]§),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§+F§, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(§+!O§())
         {
            return;
         }
         if(param2 < 6)
         {
            return;
         }
         var _loc3_:Number = §+!P§() / 10;
         var _loc4_:int = 1 + _loc3_ * §#!g§(false) * 0.12;
         var _loc5_:Number = 90;
         param2 /= scale * scale;
         _loc4_ *= 3 + param2 / 20;
         _loc4_ = this.§"!M§(_loc4_);
         _loc6_ = 0;
         while(_loc6_ < _loc4_ / 3)
         {
            _loc5_ += Math.random() * (720 / _loc4_);
            param1.§ K§(§1!e§.§`!@§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x,§5b§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc3_ + _loc3_ * (Math.random() * 0.5);
            param1.§ K§(§1!e§.§?A§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x,§5b§().GetPosition().y,1250,"",§1!e§.§"!J§(§<!]§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
            _loc6_++;
         }
      }
   }
}
