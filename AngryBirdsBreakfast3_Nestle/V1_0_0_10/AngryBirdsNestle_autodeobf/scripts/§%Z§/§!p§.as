package §%Z§
{
   import § 2§.§=+§;
   import §!m§.§'!P§;
   import §!m§.§2!k§;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §2!s§.§2!_§;
   import §8+§.§5"-§;
   import §9!Z§.b2Body;
   import §9!Z§.b2Fixture;
   import §9!Z§.b2World;
   import §;X§.§4!@§;
   import §?"'§.b2Vec2;
   import §`!B§.Sprite;
   import §`!C§.b2CircleShape;
   
   public class §!p§ extends §=!V§
   {
      
      public static const §'"#§:int = 241 * §=+§.§5!w§ / 2;
      
      private static const §[!h§:int = 200;
       
      
      private const §,!!§:Number = -5;
      
      private const §'^§:int = 1500;
      
      private const §0" §:int = 3500;
      
      private const §=1§:int = 1500;
      
      private var §4"$§:Boolean = false;
      
      private var §&G§:Boolean = false;
      
      private var §%!%§:Boolean = false;
      
      private var §4!d§:Boolean = false;
      
      private var §2!#§:Number = -5;
      
      private var §-!y§:Number = -5;
      
      private var §#"2§:Number = -5;
      
      private var §>C§:Number = 0;
      
      private var §`4§:int = 0;
      
      private var §<!B§:Number = 0;
      
      private var §>" §:Number = 0;
      
      private var § [§:Number = 0;
      
      private var §%"'§:Number = 1000;
      
      private var §9!2§:Boolean = false;
      
      public function §!p§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§ [§ = 0;
      }
      
      private function get §%!f§() : Number
      {
         return §'"#§ * scale;
      }
      
      override public function addDamageParticles(param1:§8!m§, param2:int) : void
      {
         if(param2 < 2 || this.§%"'§ < §[!h§)
         {
            return;
         }
         if(this.§-!y§ != this.§,!!§ || param2 > 20)
         {
            this.§[!+§(param1,1,param2 > 20);
         }
         this.§%"'§ = 0;
      }
      
      override public function activateSpecialPower(param1:§8!m§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§;M§(param1))
         {
            return false;
         }
         var _loc4_:Number = §-!N§().GetPosition().x;
         var _loc5_:Number = §-!N§().GetPosition().y;
         param1.§+<§(§'!P§.§1[§,§2!k§.§`]§,§'!P§.§?+§,_loc4_,_loc5_,-1,"",§'!P§.§]!R§);
         this.§2!o§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§8!m§, param3:§&!-§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§2!#§ == this.§,!!§)
         {
            this.§2!o§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§4"$§)
         {
            §9!9§(§2!_§.§!!I§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§4"$§ = true;
         return _loc5_;
      }
      
      protected function §!5§(param1:§8!m§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§;M§(null);
            this.§2!o§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §2!o§(param1:§8!m§, param2:Number = -1) : void
      {
         this.§&G§ = true;
         if(param2 == 0)
         {
            this.§2!#§ = 0;
         }
         else if(param2 > 0)
         {
            this.§2!#§ = param2;
         }
         else
         {
            this.§2!#§ = this.§'^§;
         }
      }
      
      override public function update(param1:Number, param2:§8!m§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§%"'§ += param1;
         if(this.§&G§)
         {
            this.§<!k§(param1,param2);
         }
         else if(this.§-!y§ != this.§,!!§)
         {
            if(this.§4"$§)
            {
               this.§-!y§ -= param1;
               if(this.§-!y§ < 0)
               {
                  this.§%!%§ = true;
                  this.§-!y§ = this.§,!!§;
                  this.§#"2§ = this.§=1§;
                  §9!9§(§2!_§.§ V§);
               }
            }
         }
         else if(this.§%!%§)
         {
            this.§[W§(param1,param2);
         }
      }
      
      protected function §<!k§(param1:Number, param2:§8!m§) : void
      {
         this.§2!#§ -= param1;
         if(this.§2!#§ <= 0)
         {
            if(!this.§4!d§)
            {
               param2.§8!U§(§9!,§.§4L§,§-!N§().GetPosition().x,§-!N§().GetPosition().y,id);
               this.§;M§(null);
               §^!U§(param2.§^m§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§ [§;
               sprite.scaleY = this.§ [§;
               this.§4!d§ = true;
               return;
            }
            if(this.§ [§ >= 1)
            {
               this.§&G§ = false;
               this.§ [§ = 1;
               this.§4!V§(this.§%!f§);
               this.§-!y§ = this.§0" §;
            }
            else
            {
               this.§ [§ += 0.2;
            }
            this.§4!V§(this.§%!f§ * this.§ [§,§,!$§.getItemDensity(),§,!$§.getItemFriction(),§,!$§.getItemRestitution());
            §41§.setScale(this.§ [§ * scale);
         }
      }
      
      protected function §[W§(param1:Number, param2:§8!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§#"2§ > 0)
         {
            this.§#"2§ -= param1;
            this.§>C§ -= param1;
            if(this.§>C§ <= 0)
            {
               this.§>C§ = this.§=1§ / 5;
               this.§<!B§ = (Math.random() * 100 - 50) * 10;
               this.§>" § = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§#"2§ / this.§=1§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§`4§;
            if(this.§`4§ % 3 == 0)
            {
               §41§.setScale(_loc3_ * _loc3_);
               this.§4!V§(this.§%!f§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §-!N§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§<!B§,this.§>" §),§-!N§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§[!+§(param2,0.02,true);
            }
         }
         else
         {
            this.§9!2§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §4!V§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §-!N§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§,!m§(param1);
         if(param2 >= 0)
         {
            _loc6_.§2!z§(param2);
            _loc5_.§5!p§();
         }
         if(param3 >= 0)
         {
            _loc6_.§-j§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§?!Y§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§8!m§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §[!+§(param1:§8!m§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§-!N§().GetFixtureList().GetShape() as b2CircleShape).§?"3§();
         var _loc5_:Number = §-!N§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §3!K§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§%!f§;
         if((_loc6_ *= _loc8_ * 3 * param2) > 30)
         {
            _loc6_ = 30;
         }
         if(param3)
         {
            _loc6_ = 8;
            _loc5_ = 8;
         }
         var _loc10_:int = 0;
         _loc10_ = 0;
         while(_loc10_ < _loc6_ / 3)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§%!f§ - this.§%!f§ / 2) * 2 * _loc8_;
            param1.§+<§(§'!P§.§#!G§,§2!k§.§ g§,§'!P§.§>]§,§-!N§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§-!N§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§%!f§ - this.§%!f§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§+<§(§'!P§.§^3§,§2!k§.§ g§,§'!P§.§>]§,§-!N§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§-!N§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§'!P§.§1!+§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
            _loc10_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(specialPowerUsed)
         {
            return 1;
         }
         return -1;
      }
      
      private function §;M§(param1:§8!m§) : Boolean
      {
         if(§1A§)
         {
            return false;
         }
         §4!@§.§#"§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §1A§ = true;
         return true;
      }
   }
}
