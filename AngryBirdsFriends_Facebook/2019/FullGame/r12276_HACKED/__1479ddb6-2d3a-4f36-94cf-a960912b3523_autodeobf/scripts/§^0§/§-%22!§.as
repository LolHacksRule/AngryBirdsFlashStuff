package §^0§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §,!T§.b2CircleShape;
   import §-!j§.§-"8§;
   import §3#h§.b2Body;
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §-"!§ extends §[# §
   {
      
      public static const §5!k§:Number = 7.5;
      
      private static const §-#Y§:int = 200;
       
      
      private const §%"f§:Number = -5;
      
      private const §?$E§:int = 1500;
      
      private const §`a§:int = 1500;
      
      private const §&#G§:int = 1500;
      
      private var §`"3§:Boolean = false;
      
      private var §["Y§:Boolean = false;
      
      private var §"#K§:Boolean = false;
      
      private var §-!A§:Boolean = false;
      
      private var §'N§:Number = -5;
      
      private var §&"t§:Number = -5;
      
      private var §8"$§:Number = -5;
      
      private var §4"i§:Number = 0;
      
      private var §-#L§:int = 0;
      
      private var §2!P§:Number = 0;
      
      private var §5"T§:Number = 0;
      
      private var §@#L§:Number = 1000;
      
      private var §["-§:Boolean = false;
      
      public function §-"!§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private function get §="D§() : Number
      {
         return §5!k§ * scale;
      }
      
      override public function addDamageParticles(param1:§>"T§, param2:int) : void
      {
         if(param2 < 2 || this.§@#L§ < §-#Y§)
         {
            return;
         }
         if(this.§&"t§ != this.§%"f§ || param2 > 20)
         {
            this.§?#`§(param1,1,param2 > 20);
         }
         this.§@#L§ = 0;
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§+!^§(param1))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         param1.addParticle(§`#I§.§1J§,§2#Z§.§,!]§,§`#I§.§%"D§,_loc4_,_loc5_,-1,"",§`#I§.§!!6§);
         this.§1"<§(param1,0);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = NaN;
         if(!specialPowerUsed && this.§'N§ == this.§%"f§ && (param3 && !param3.levelItem.specialtyAvailableAfterCollision))
         {
            this.§1"<§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§`"3§)
         {
            _loc6_ = health;
         }
         else
         {
            _loc6_ = super.applyDamage(param1,param2,param3,param4,param5);
         }
         if(param3 && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§`"3§ = true;
         }
         return _loc6_;
      }
      
      protected function §&"s§(param1:§>"T§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§+!^§(null);
            this.§1"<§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §1"<§(param1:§>"T§, param2:Number = -1) : void
      {
         this.§["Y§ = true;
         if(param2 == 0)
         {
            this.§'N§ = 0;
         }
         else if(param2 > 0)
         {
            this.§'N§ = param2;
         }
         else
         {
            this.§'N§ = this.§?$E§;
         }
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§@#L§ += param1;
         if(this.§["Y§)
         {
            this.§+h§(param1,param2);
         }
         else if(this.§&"t§ != this.§%"f§)
         {
            if(this.§`"3§)
            {
               this.§&"t§ -= param1;
               if(this.§&"t§ < 0)
               {
                  this.§"#K§ = true;
                  this.§&"t§ = this.§%"f§;
                  this.§8"$§ = this.§&#G§;
                  §4$4§.playSound("Globe_Bird_Death_remove_1",§8!'§.soundResource.channelName);
               }
            }
         }
         else if(this.§"#K§)
         {
            this.§"#A§(param1,param2);
         }
      }
      
      protected function §+h§(param1:Number, param2:§>"T§) : void
      {
         this.§'N§ -= param1;
         if(this.§'N§ <= 0)
         {
            if(!this.§-!A§)
            {
               param2.addExplosion(§0#;§.§>8§,getBody().GetPosition().x,getBody().GetPosition().y,id);
               this.§+!^§(null);
               §1"i§(param2.§`##§("BIRD_ORANGE_BIG"));
               this.§-!A§ = true;
               this.§["Y§ = false;
               this.§<!<§(this.§="D§);
               this.§&"t§ = this.§`a§;
               this.§<!<§(this.§="D§,§8!'§.getItemDensity(),§8!'§.getItemFriction(),§8!'§.getItemRestitution());
               sprite.scaleY = 1;
               sprite.scaleX = 1;
               §-"p§.setScale(scale);
            }
         }
      }
      
      protected function §"#A§(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§8"$§ > 0)
         {
            this.§8"$§ -= param1;
            this.§4"i§ -= param1;
            if(this.§4"i§ <= 0)
            {
               this.§4"i§ = this.§&#G§ / 5;
               this.§2!P§ = (Math.random() * 100 - 50) * 10;
               this.§5"T§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§8"$§ / this.§&#G§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§-#L§;
            if(this.§-#L§ % 3 == 0)
            {
               §-"p§.setScale(_loc3_ * _loc3_);
               this.§<!<§(this.§="D§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§2!P§,this.§5"T§),getBody().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§?#`§(param2,0.02,true);
            }
         }
         else
         {
            this.§["-§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §<!<§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§9!R§(param1);
         if(param2 >= 0)
         {
            _loc6_.SetDensity(param2);
            _loc5_.ResetMassData();
         }
         if(param3 >= 0)
         {
            _loc6_.SetFriction(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.SetRestitution(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§>"T§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §?#`§(param1:§>"T§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§]$-§();
         var _loc5_:Number = getBody().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §%$$§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§="D§;
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
            _loc9_ = (Math.random() * this.§="D§ - this.§="D§ / 2) * 2 * _loc8_;
            param1.addParticle(§##M§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§="D§ - this.§="D§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.addParticle(§`#I§.§5$"§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§`#I§.§`!B§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §+!^§(param1:§>"T§) : Boolean
      {
         if(§8#n§)
         {
            return false;
         }
         §9$ §();
         §8#n§ = true;
         return true;
      }
   }
}
