package §`!G§
{
   import §!"3§.b2CircleShape;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §-f§.§8!<§;
   import §-f§.§@!M§;
   import §-f§.§[!J§;
   import §-p§.§4!`§;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2Fixture;
   import §6"1§.b2World;
   import §8m§.§@"M§;
   import §@!"§.§?l§;
   
   public class §&!5§ extends §2"L§
   {
      
      public static const §,!I§:int = 241 * §'!S§.§2"<§ / 2;
      
      private static const §'"!§:int = 200;
       
      
      private const §," §:Number = -5;
      
      private const §-!I§:int = 1500;
      
      private const §#"7§:int = 3500;
      
      private const §5y§:int = 1500;
      
      private var §#!f§:Boolean = false;
      
      private var §"!#§:Boolean = false;
      
      private var §?!-§:Number = -5;
      
      private var §7e§:Number = -5;
      
      private var §7!<§:Number = -5;
      
      private var §=!6§:Number = 0;
      
      private var §+!4§:int = 0;
      
      private var §#! §:Number = 0;
      
      private var §8!m§:Number = 0;
      
      private var §[A§:Number = 0;
      
      private var §00§:Number = 1000;
      
      private var §<"$§:Boolean = false;
      
      private var §-"-§:§8"=§;
      
      public function §&!5§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§-"-§ = param1;
         §2!8§.mTryToFly = true;
         this.§[A§ = 0;
      }
      
      private function get §?!o§() : Number
      {
         return §,!I§ * scale;
      }
      
      override public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
         if(param2 < 2 || this.§00§ < §'"!§)
         {
            return;
         }
         if(this.§7e§ != this.§," § || param2 > 20)
         {
            this.§%!`§(1,param2 > 20);
         }
         this.§00§ = 0;
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         if(!this.§!!b§(param1))
         {
            return false;
         }
         §?l§.§'h§.particles.§"!J§(§0i§.§4"[§,§6!O§.§-4§,§0i§.§>!c§,getBody().GetPosition().x,getBody().GetPosition().y,-1,"",§0i§.§7!z§);
         this.§ "7§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§#P§ && this.§?!-§ == this.§," §)
         {
            this.§ "7§();
         }
         if(param1 < 12 && param1 > 5 && this.§#!f§)
         {
            §8X§(§[!J§.§`!r§);
            _loc7_ = § d§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§#!f§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§#P§)
         {
            this.§!!b§(null);
            §,d§ = true;
            this.§ "7§(0);
            return true;
         }
         return false;
      }
      
      private function § "7§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§?!-§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§?!-§ = param1;
         }
         else
         {
            this.§?!-§ = this.§-!I§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§[!8§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§00§ += param1;
         §,d§ = true;
         if(this.§?!-§ != this.§," §)
         {
            this.§?!-§ -= param1;
            if(this.§?!-§ < 0)
            {
               if(this.§[A§ >= 1)
               {
                  this.§?!-§ = this.§," §;
                  this.§[A§ = 1;
                  this.§1!b§(this.§?!o§);
                  this.§7e§ = this.§#"7§;
                  §4!`§.§!e§(false);
               }
               else
               {
                  this.§[A§ += 0.2;
               }
               this.§1!b§(this.§?!o§ * this.§[A§,§!L§.material.mValues[§@!M§.§4r§],§!L§.material.mValues[§@!M§.§>a§],§!L§.material.mValues[§@!M§.§1$§]);
               §2!8§.setScale(this.§[A§ * scale);
            }
            else if(this.§?!-§ <= param1)
            {
               _loc2_ = new Vector.<§[!8§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§6!M§.§var§,getBody().GetPosition().x,getBody().GetPosition().y,_loc2_);
               this.§!!b§(null);
               §@x§ = "BIRD_ORANGE_BIG";
               §!L§ = §8!<§.§3"[§(§@x§);
               sprite.scaleX = this.§[A§;
               sprite.scaleY = this.§[A§;
            }
         }
         else if(this.§7e§ != this.§," §)
         {
            if(this.§#!f§)
            {
               this.§7e§ -= param1;
               if(this.§7e§ < 0)
               {
                  this.§"!#§ = true;
                  this.§7e§ = this.§," §;
                  this.§7!<§ = this.§5y§;
                  §8X§(§[!J§.§2!M§);
               }
            }
         }
         else if(this.§"!#§)
         {
            if(this.§7!<§ > 0)
            {
               this.§7!<§ -= param1;
               this.§=!6§ -= param1;
               if(this.§=!6§ <= 0)
               {
                  this.§=!6§ = this.§5y§ / 5;
                  this.§#! § = (Math.random() * 100 - 50) * 10;
                  this.§8!m§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§7!<§ / this.§5y§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§+!4§;
               if(this.§+!4§ % 3 == 0)
               {
                  §2!8§.setScale(_loc3_ * scale);
                  this.§1!b§(this.§?!o§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§#! §,this.§8!m§),getBody().GetPosition());
                  _loc4_.§^!c§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§%!`§(0.02,true);
               }
            }
            else
            {
               this.§<"$§ = true;
               this.§-"-§.§8`§(this);
            }
         }
      }
      
      private function §1!b§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§;#§(param1);
         if(param2 >= 0)
         {
            _loc6_.§'!+§(param2);
            _loc5_.ResetMassData();
         }
         if(param3 >= 0)
         {
            _loc6_.§5L§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§-!e§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§#P§)
         {
            super.addTrail();
         }
      }
      
      private function §%!`§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§;"9§();
         var _loc4_:Number = §4"Q§() / 40;
         var _loc5_:int = 1 + _loc4_ * §`!A§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§?!o§;
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
            _loc8_ = (Math.random() * this.§?!o§ - this.§?!o§ / 2) * 2 * _loc7_;
            §?l§.§'h§.particles.§"!J§(§0i§.§'!N§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc6_) * _loc8_,getBody().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §""@§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§?!o§ - this.§?!o§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §?l§.§'h§.particles.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc6_) * _loc8_,getBody().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§0i§.§]!6§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§#P§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §!!b§(param1:§8"=§) : Boolean
      {
         if(§<k§)
         {
            return false;
         }
         §@"M§.§"!0§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §<k§ = true;
         return true;
      }
   }
}
