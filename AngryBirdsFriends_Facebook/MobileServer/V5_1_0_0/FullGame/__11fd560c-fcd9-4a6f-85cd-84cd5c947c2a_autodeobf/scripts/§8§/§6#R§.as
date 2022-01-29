package §8§#8
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §"#i§.b2CircleShape;
   import §4"O§.b2Body;
   import §4"O§.b2Fixture;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §6#R§ extends §?$%§
   {
      
      public static const §>!P§:Number = 7.5;
      
      private static const §03§:int = 200;
       
      
      private const §0!F§:Number = -5;
      
      private const §]"%§:int = 1500;
      
      private const §5##§:int = 1500;
      
      private const §^`§:int = 1500;
      
      private var §>!C§:Boolean = false;
      
      private var §+#5§:Boolean = false;
      
      private var §0#H§:Boolean = false;
      
      private var §=!N§:Boolean = false;
      
      private var §?!@§:Number = -5;
      
      private var § "D§:Number = -5;
      
      private var §8$9§:Number = -5;
      
      private var §3#q§:Number = 0;
      
      private var §>"D§:int = 0;
      
      private var §9-§:Number = 0;
      
      private var §+!V§:Number = 0;
      
      private var §,!N§:Number = 1000;
      
      private var §7"R§:Boolean = false;
      
      public function §6#R§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private function get §@h§() : Number
      {
         return §>!P§ * scale;
      }
      
      override public function addDamageParticles(param1:§&#V§, param2:int) : void
      {
         if(param2 < 2 || this.§,!N§ < §03§)
         {
            return;
         }
         if(this.§ "D§ != this.§0!F§ || param2 > 20)
         {
            this.§=#i§(param1,1,param2 > 20);
         }
         this.§,!N§ = 0;
      }
      
      override public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§^!g§(param1))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         param1.addParticle(§@>§.§4T§,§[p§.§7"+§,§@>§.§3!E§,_loc4_,_loc5_,-1,"",§@>§.§%#5§);
         this.§-"H§(param1,0);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed;
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§?!@§ == this.§0!F§)
         {
            this.§-"H§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§>!C§)
         {
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§>!C§ = true;
         return _loc5_;
      }
      
      protected function §""Y§(param1:§&#V§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§^!g§(null);
            this.§-"H§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §-"H§(param1:§&#V§, param2:Number = -1) : void
      {
         this.§+#5§ = true;
         if(param2 == 0)
         {
            this.§?!@§ = 0;
         }
         else if(param2 > 0)
         {
            this.§?!@§ = param2;
         }
         else
         {
            this.§?!@§ = this.§]"%§;
         }
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§,!N§ += param1;
         if(this.§+#5§)
         {
            this.§&I§(param1,param2);
         }
         else if(this.§ "D§ != this.§0!F§)
         {
            if(this.§>!C§)
            {
               this.§ "D§ -= param1;
               if(this.§ "D§ < 0)
               {
                  this.§0#H§ = true;
                  this.§ "D§ = this.§0!F§;
                  this.§8$9§ = this.§^`§;
                  §!"p§.playSound("Globe_Bird_Death_remove_1",§'!i§.soundResource.channelName);
               }
            }
         }
         else if(this.§0#H§)
         {
            this.§"!x§(param1,param2);
         }
      }
      
      protected function §&I§(param1:Number, param2:§&#V§) : void
      {
         this.§?!@§ -= param1;
         if(this.§?!@§ <= 0)
         {
            if(!this.§=!N§)
            {
               param2.addExplosion(§2#%§.§>!Y§,getBody().GetPosition().x,getBody().GetPosition().y,id);
               this.§^!g§(null);
               §8"<§(param2.§%"c§("BIRD_ORANGE_BIG"));
               this.§=!N§ = true;
               this.§+#5§ = false;
               this.§="&§(this.§@h§);
               this.§ "D§ = this.§5##§;
               this.§="&§(this.§@h§,§'!i§.getItemDensity(),§'!i§.getItemFriction(),§'!i§.getItemRestitution());
               sprite.scaleY = 1;
               sprite.scaleX = 1;
               §9"6§.setScale(scale);
            }
         }
      }
      
      protected function §"!x§(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§8$9§ > 0)
         {
            this.§8$9§ -= param1;
            this.§3#q§ -= param1;
            if(this.§3#q§ <= 0)
            {
               this.§3#q§ = this.§^`§ / 5;
               this.§9-§ = (Math.random() * 100 - 50) * 10;
               this.§+!V§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§8$9§ / this.§^`§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§>"D§;
            if(this.§>"D§ % 3 == 0)
            {
               §9"6§.setScale(_loc3_ * _loc3_);
               this.§="&§(this.§@h§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§9-§,this.§+!V§),getBody().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§=#i§(param2,0.02,true);
            }
         }
         else
         {
            this.§7"R§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §="&§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§`h§(param1);
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
      
      override protected function addTrail(param1:§&#V§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §=#i§(param1:§&#V§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§'#!§();
         var _loc5_:Number = getBody().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §3"C§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§@h§;
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
            _loc9_ = (Math.random() * this.§@h§ - this.§@h§ / 2) * 2 * _loc8_;
            param1.addParticle(§&"g§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§@h§ - this.§@h§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.addParticle(§@>§.§5Y§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§@>§.§>#^§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §^!g§(param1:§&#V§) : Boolean
      {
         if(§1#,§)
         {
            return false;
         }
         §5#C§();
         §1#,§ = true;
         return true;
      }
   }
}
