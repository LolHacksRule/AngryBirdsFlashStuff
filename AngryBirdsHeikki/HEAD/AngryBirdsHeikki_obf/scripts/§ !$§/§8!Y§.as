package § !$§
{
   import § A§.§&!#§;
   import § A§.§68§;
   import § A§.§8z§;
   import §+d§.b2Body;
   import §+d§.b2Fixture;
   import §+d§.b2World;
   import §,!A§.§-q§;
   import §,!A§.§0i§;
   import §,!V§.§<!?§;
   import §6!;§.Sprite;
   import §8O§.§&#§;
   import §8`§.b2CircleShape;
   import §9!'§.§0!%§;
   import §^f§.§<q§;
   import §`!^§.b2Vec2;
   
   public class §8!Y§ extends §2!J§
   {
      
      public static const §=H§:int = 241 * §0!%§.§"m§ / 2;
      
      private static const §?!a§:int = 200;
       
      
      private const § try§:Number = -5;
      
      private const §try §:int = 1500;
      
      private const §9O§:int = 3500;
      
      private const §8!Z§:int = 1500;
      
      private var §>!F§:Boolean = false;
      
      private var § V§:Boolean = false;
      
      private var §%!0§:Number = -5;
      
      private var §"!A§:Number = -5;
      
      private var §,!_§:Number = -5;
      
      private var §"+§:Number = 0;
      
      private var §+!J§:int = 0;
      
      private var §3!1§:Number = 0;
      
      private var §9?§:Number = 0;
      
      private var §#!8§:Number = 0;
      
      private var §+!6§:Number = 1000;
      
      private var §%!$§:Boolean = false;
      
      private var §'!f§:§7!!§;
      
      public function §8!Y§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§'!f§ = param1;
         §[m§.mTryToFly = true;
         this.§#!8§ = 0;
      }
      
      private function get §>N§() : Number
      {
         return §=H§ * scale;
      }
      
      override public function addDamageParticles(param1:§0i§, param2:int) : void
      {
         if(param2 < 2 || this.§+!6§ < §?!a§)
         {
            return;
         }
         if(this.§"!A§ != this.§ try§)
         {
            this.§,u§();
         }
         this.§+!6§ = 0;
      }
      
      override public function activateSpecialPower(param1:§7!!§) : Boolean
      {
         if(!this.§9!-§(param1))
         {
            return false;
         }
         §&#§.§3!D§.particles.addParticle(§-q§.§=%§,§0i§.§=R§,§-q§.§#!2§,§]!2§().GetPosition().x,§]!2§().GetPosition().y,-1,"",§-q§.§%u§);
         this.§7!P§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§?!>§ && this.§%!0§ == this.§ try§)
         {
            this.§7!P§();
         }
         if(param1 < 12 && param1 > 5 && this.§>!F§)
         {
            §^!'§(§68§.§3I§);
            _loc7_ = §6!^§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§>!F§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§?!>§)
         {
            this.§9!-§(null);
            §%?§ = true;
            this.§7!P§(0);
            return true;
         }
         return false;
      }
      
      private function §7!P§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§%!0§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§%!0§ = param1;
         }
         else
         {
            this.§%!0§ = this.§try §;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§>C§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§+!6§ += param1;
         §%?§ = true;
         if(this.§%!0§ != this.§ try§)
         {
            this.§%!0§ -= param1;
            if(this.§%!0§ < 0)
            {
               if(this.§#!8§ >= 1)
               {
                  this.§%!0§ = this.§ try§;
                  this.§#!8§ = 1;
                  this.§'!C§(this.§>N§);
                  this.§"!A§ = this.§9O§;
                  §<!?§.§"!N§(false);
               }
               else
               {
                  this.§#!8§ += 0.2;
               }
               this.§'!C§(this.§>N§ * this.§#!8§,§,w§.material.mValues[§&!#§.§?R§],§,w§.material.mValues[§&!#§.§ 7§],§,w§.material.mValues[§&!#§.§>t§]);
               §[m§.setScale(this.§#!8§ * scale);
            }
            else if(this.§%!0§ <= param1)
            {
               _loc2_ = new Vector.<§>C§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§4!<§.§2Z§,§]!2§().GetPosition().x,§]!2§().GetPosition().y,_loc2_);
               this.§9!-§(null);
               § [§ = "BIRD_ORANGE_BIG";
               §,w§ = §8z§.§3Z§(§ [§);
               sprite.scaleX = this.§#!8§;
               sprite.scaleY = this.§#!8§;
            }
         }
         else if(this.§"!A§ != this.§ try§)
         {
            if(this.§>!F§)
            {
               this.§"!A§ -= param1;
               if(this.§"!A§ < 0)
               {
                  this.§ V§ = true;
                  this.§"!A§ = this.§ try§;
                  this.§,!_§ = this.§8!Z§;
                  §^!'§(§68§.§'§);
               }
            }
         }
         else if(this.§ V§)
         {
            if(this.§,!_§ > 0)
            {
               this.§,!_§ -= param1;
               this.§"+§ -= param1;
               if(this.§"+§ <= 0)
               {
                  this.§"+§ = this.§8!Z§ / 5;
                  this.§3!1§ = (Math.random() * 100 - 50) * 10;
                  this.§9?§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§,!_§ / this.§8!Z§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§+!J§;
               if(this.§+!J§ % 3 == 0)
               {
                  §[m§.setScale(_loc3_ * scale);
                  this.§'!C§(this.§>N§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = §]!2§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§3!1§,this.§9?§),§]!2§().GetPosition());
                  _loc4_.§3y§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§,u§(0.02,true);
               }
            }
            else
            {
               this.§%!$§ = true;
               this.§'!f§.§?l§(this);
            }
         }
      }
      
      private function §'!C§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §]!2§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§#!,§(param1);
         if(param2 >= 0)
         {
            _loc6_.§"!-§(param2);
            _loc5_.§;x§();
         }
         if(param3 >= 0)
         {
            _loc6_.§`;§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§8X§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§?!>§)
         {
            super.addTrail();
         }
      }
      
      private function §,u§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§]!2§().GetFixtureList().GetShape() as b2CircleShape).§]9§();
         var _loc4_:Number = §3!+§() / 40;
         var _loc5_:int = 1 + _loc4_ * § `§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§>N§;
         if((_loc5_ *= _loc7_ * 3 * param1) > 30)
         {
            _loc5_ = 30;
         }
         if(param2)
         {
            _loc5_ = 8;
            _loc4_ = 8;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_ / 3)
         {
            _loc6_ += Math.random() * (720 / _loc5_);
            _loc8_ = (Math.random() * this.§>N§ - this.§>N§ / 2) * 2 * _loc7_;
            §&#§.§3!D§.particles.addParticle(§-q§.§3!!§,§0i§.§>E§,§-q§.§5[§,§]!2§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§]!2§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §^W§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§>N§ - this.§>N§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §&#§.§3!D§.particles.addParticle(§-q§.§]!^§,§0i§.§>E§,§-q§.§5[§,§]!2§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§]!2§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§-q§.§ a§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§?!>§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §9!-§(param1:§7!!§) : Boolean
      {
         if(§7u§)
         {
            return false;
         }
         §<q§.§7F§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §7u§ = true;
         return true;
      }
   }
}
