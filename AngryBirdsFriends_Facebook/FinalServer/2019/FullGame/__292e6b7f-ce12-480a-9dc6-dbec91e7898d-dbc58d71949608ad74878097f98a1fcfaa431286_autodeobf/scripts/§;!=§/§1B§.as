package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2Body;
   import §'#K§.b2Fixture;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §1#I§.b2CircleShape;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   
   public class §1B§ extends §[!k§
   {
      
      public static const §6"4§:Number = 7.5;
      
      private static const §<!F§:int = 200;
       
      
      private const §[!e§:Number = -5;
      
      private const §##X§:int = 1500;
      
      private const §=#p§:int = 1500;
      
      private const §5!j§:int = 1500;
      
      private var §0"H§:Boolean = false;
      
      private var §2M§:Boolean = false;
      
      private var § =§:Boolean = false;
      
      private var §-<§:Boolean = false;
      
      private var §6S§:Number = -5;
      
      private var §""6§:Number = -5;
      
      private var §#!V§:Number = -5;
      
      private var §,#l§:Number = 0;
      
      private var § #G§:int = 0;
      
      private var §"$5§:Number = 0;
      
      private var §!!n§:Number = 0;
      
      private var §3"G§:Number = 1000;
      
      private var §?!v§:Boolean = false;
      
      public function §1B§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private function get §"!@§() : Number
      {
         return §6"4§ * scale;
      }
      
      override public function addDamageParticles(param1:§]!m§, param2:int) : void
      {
         if(param2 < 2 || this.§3"G§ < §<!F§)
         {
            return;
         }
         if(this.§""6§ != this.§[!e§ || param2 > 20)
         {
            this.§0L§(param1,1,param2 > 20);
         }
         this.§3"G§ = 0;
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§4#u§(param1))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         param1.addParticle(§=,§.§+! §,§##P§.§`#q§,§=,§.§;!0§,_loc4_,_loc5_,-1,"",§=,§.§'!H§);
         this.§&$C§(param1,0);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = NaN;
         §§push(!specialPowerUsed && this.§6S§ == this.§[!e§);
         if(!specialPowerUsed && this.§6S§ == this.§[!e§)
         {
            §§pop();
            if(param3 && !param3.levelItem.specialtyAvailableAfterCollision)
            {
               this.§&$C§(param2);
            }
            if(param1 < 12 && param1 > 5 && this.§0"H§)
            {
               _loc6_ = health;
            }
            else
            {
               _loc6_ = super.applyDamage(param1,param2,param3,param4,param5);
            }
            if(param3 && !param3.levelItem.specialtyAvailableAfterCollision)
            {
               this.§0"H§ = true;
            }
            return _loc6_;
         }
         §§goto(addr143);
      }
      
      protected function § #n§(param1:§]!m§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§4#u§(null);
            this.§&$C§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §&$C§(param1:§]!m§, param2:Number = -1) : void
      {
         this.§2M§ = true;
         if(param2 == 0)
         {
            this.§6S§ = 0;
         }
         else if(param2 > 0)
         {
            this.§6S§ = param2;
         }
         else
         {
            this.§6S§ = this.§##X§;
         }
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§3"G§ += param1;
         if(this.§2M§)
         {
            this.§9#f§(param1,param2);
         }
         else if(this.§""6§ != this.§[!e§)
         {
            if(this.§0"H§)
            {
               this.§""6§ -= param1;
               if(this.§""6§ < 0)
               {
                  this.§ =§ = true;
                  this.§""6§ = this.§[!e§;
                  this.§#!V§ = this.§5!j§;
                  § b§.playSound("Globe_Bird_Death_remove_1",§]h§.soundResource.channelName);
               }
            }
         }
         else if(this.§ =§)
         {
            this.§["^§(param1,param2);
         }
      }
      
      protected function §9#f§(param1:Number, param2:§]!m§) : void
      {
         this.§6S§ -= param1;
         if(this.§6S§ <= 0)
         {
            if(!this.§-<§)
            {
               param2.addExplosion(§-!J§.§[K§,getBody().GetPosition().x,getBody().GetPosition().y,id);
               this.§4#u§(null);
               §2# §(param2.§0!l§("BIRD_ORANGE_BIG"));
               this.§-<§ = true;
               this.§2M§ = false;
               this.§]j§(this.§"!@§);
               this.§""6§ = this.§=#p§;
               this.§]j§(this.§"!@§,§]h§.getItemDensity(),§]h§.getItemFriction(),§]h§.getItemRestitution());
               sprite.scaleY = 1;
               sprite.scaleX = 1;
               §]$"§.setScale(scale);
            }
         }
      }
      
      protected function §["^§(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§#!V§ > 0)
         {
            this.§#!V§ -= param1;
            this.§,#l§ -= param1;
            if(this.§,#l§ <= 0)
            {
               this.§,#l§ = this.§5!j§ / 5;
               this.§"$5§ = (Math.random() * 100 - 50) * 10;
               this.§!!n§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§#!V§ / this.§5!j§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§ #G§;
            if(this.§ #G§ % 3 == 0)
            {
               §]$"§.setScale(_loc3_ * _loc3_);
               this.§]j§(this.§"!@§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§"$5§,this.§!!n§),getBody().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§0L§(param2,0.02,true);
            }
         }
         else
         {
            this.§?!v§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §]j§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§`#5§(param1);
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
      
      override protected function addTrail(param1:§]!m§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §0L§(param1:§]!m§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§0#Y§();
         var _loc5_:Number = getBody().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §>#@§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§"!@§;
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
            _loc9_ = (Math.random() * this.§"!@§ - this.§"!@§ / 2) * 2 * _loc8_;
            param1.addParticle(§?#r§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§"!@§ - this.§"!@§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.addParticle(§=,§.§^#Y§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§=,§.§-!m§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §4#u§(param1:§]!m§) : Boolean
      {
         if(§5#T§)
         {
            return false;
         }
         §%$%§();
         §5#T§ = true;
         return true;
      }
   }
}
