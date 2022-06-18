package §-!!§
{
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2Body;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §]!o§.b2CircleShape;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §^!o§ extends §5"W§
   {
      
      public static const §'#D§:Number = 7.5;
      
      private static const §-#D§:int = 200;
       
      
      private const §]#g§:Number = -5;
      
      private const §,#3§:int = 1500;
      
      private const §9"v§:int = 1500;
      
      private const §8#S§:int = 1500;
      
      private var §%$@§:Boolean = false;
      
      private var §'#i§:Boolean = false;
      
      private var § "%§:Boolean = false;
      
      private var §##V§:Boolean = false;
      
      private var §,"F§:Number = -5;
      
      private var §'!]§:Number = -5;
      
      private var §;"6§:Number = -5;
      
      private var §+!j§:Number = 0;
      
      private var §;"j§:int = 0;
      
      private var §!h§:Number = 0;
      
      private var §1"l§:Number = 0;
      
      private var §6u§:Number = 1000;
      
      private var §-p§:Boolean = false;
      
      public function §^!o§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private function get §!"j§() : Number
      {
         return §'#D§ * scale;
      }
      
      override public function addDamageParticles(param1:§ #'§, param2:int) : void
      {
         if(param2 < 2 || this.§6u§ < §-#D§)
         {
            return;
         }
         if(this.§'!]§ != this.§]#g§ || param2 > 20)
         {
            this.§'#A§(param1,1,param2 > 20);
         }
         this.§6u§ = 0;
      }
      
      override public function activateSpecialPower(param1:§ #'§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§"!E§(param1))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         param1.addParticle(§'Y§.§2!n§,§>F§.§ 4§,§'Y§.§1"J§,_loc4_,_loc5_,-1,"",§'Y§.§0=§);
         this.§'#m§(param1,0);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = NaN;
         if(!specialPowerUsed && this.§,"F§ == this.§]#g§ && (param3 && !param3.levelItem.specialtyAvailableAfterCollision))
         {
            this.§'#m§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§%$@§)
         {
            _loc6_ = health;
         }
         else
         {
            _loc6_ = super.applyDamage(param1,param2,param3,param4,param5);
         }
         if(param3 && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§%$@§ = true;
         }
         return _loc6_;
      }
      
      protected function §@"4§(param1:§ #'§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§"!E§(null);
            this.§'#m§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §'#m§(param1:§ #'§, param2:Number = -1) : void
      {
         this.§'#i§ = true;
         if(param2 == 0)
         {
            this.§,"F§ = 0;
         }
         else if(param2 > 0)
         {
            this.§,"F§ = param2;
         }
         else
         {
            this.§,"F§ = this.§,#3§;
         }
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§6u§ += param1;
         if(this.§'#i§)
         {
            this.§9!q§(param1,param2);
         }
         else if(this.§'!]§ != this.§]#g§)
         {
            if(this.§%$@§)
            {
               this.§'!]§ -= param1;
               if(this.§'!]§ < 0)
               {
                  this.§ "%§ = true;
                  this.§'!]§ = this.§]#g§;
                  this.§;"6§ = this.§8#S§;
                  §[#%§.playSound("Globe_Bird_Death_remove_1",§!!H§.soundResource.channelName);
               }
            }
         }
         else if(this.§ "%§)
         {
            this.§@l§(param1,param2);
         }
      }
      
      protected function §9!q§(param1:Number, param2:§ #'§) : void
      {
         this.§,"F§ -= param1;
         if(this.§,"F§ <= 0)
         {
            if(!this.§##V§)
            {
               param2.addExplosion(§]" §.§9'§,getBody().GetPosition().x,getBody().GetPosition().y,id);
               this.§"!E§(null);
               §'! §(param2.§1"k§("BIRD_ORANGE_BIG"));
               this.§##V§ = true;
               this.§'#i§ = false;
               this.§]L§(this.§!"j§);
               this.§'!]§ = this.§9"v§;
               this.§]L§(this.§!"j§,§!!H§.getItemDensity(),§!!H§.getItemFriction(),§!!H§.getItemRestitution());
               sprite.scaleY = 1;
               sprite.scaleX = 1;
               §]+§.setScale(scale);
            }
         }
      }
      
      protected function §@l§(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§;"6§ > 0)
         {
            this.§;"6§ -= param1;
            this.§+!j§ -= param1;
            if(this.§+!j§ <= 0)
            {
               this.§+!j§ = this.§8#S§ / 5;
               this.§!h§ = (Math.random() * 100 - 50) * 10;
               this.§1"l§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§;"6§ / this.§8#S§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§;"j§;
            if(this.§;"j§ % 3 == 0)
            {
               §]+§.setScale(_loc3_ * _loc3_);
               this.§]L§(this.§!"j§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§!h§,this.§1"l§),getBody().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§'#A§(param2,0.02,true);
            }
         }
         else
         {
            this.§-p§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §]L§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§<!k§(param1);
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
      
      override protected function addTrail(param1:§ #'§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §'#A§(param1:§ #'§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§7"z§();
         var _loc5_:Number = getBody().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §`$5§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§!"j§;
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
            _loc9_ = (Math.random() * this.§!"j§ - this.§!"j§ / 2) * 2 * _loc8_;
            param1.addParticle(§<#r§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§!"j§ - this.§!"j§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.addParticle(§'Y§.§7!s§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§'Y§.§+$?§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §"!E§(param1:§ #'§) : Boolean
      {
         if(§,"W§)
         {
            return false;
         }
         §7#?§();
         §,"W§ = true;
         return true;
      }
   }
}
