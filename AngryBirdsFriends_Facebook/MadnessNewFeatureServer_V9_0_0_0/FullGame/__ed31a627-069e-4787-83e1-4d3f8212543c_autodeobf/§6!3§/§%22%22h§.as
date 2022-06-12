package §6!3§
{
   import §!H§.b2CircleShape;
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§3Z§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2Body;
   import §@!S§.b2Fixture;
   import §@!S§.b2World;
   
   public class §""h§ extends §,s§
   {
      
      public static const §8p§:Number = 7.5;
      
      private static const §5"n§:int = 200;
       
      
      private const §7"k§:Number = -5;
      
      private const §5!,§:int = 1500;
      
      private const §-t§:int = 1500;
      
      private const §1"^§:int = 1500;
      
      private var §3"6§:Boolean = false;
      
      private var §^!u§:Boolean = false;
      
      private var §3#E§:Boolean = false;
      
      private var §?#l§:Boolean = false;
      
      private var §%#k§:Number = -5;
      
      private var §1"j§:Number = -5;
      
      private var §&$>§:Number = -5;
      
      private var §>"J§:Number = 0;
      
      private var §8$<§:int = 0;
      
      private var §`#Y§:Number = 0;
      
      private var §&#_§:Number = 0;
      
      private var §,"D§:Number = 1000;
      
      private var §""]§:Boolean = false;
      
      public function §""h§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private function get §>"U§() : Number
      {
         return §8p§ * scale;
      }
      
      override public function addDamageParticles(param1:§8$B§, param2:int) : void
      {
         if(param2 < 2 || this.§,"D§ < §5"n§)
         {
            return;
         }
         if(this.§1"j§ != this.§7"k§ || param2 > 20)
         {
            this.§5"p§(param1,1,param2 > 20);
         }
         this.§,"D§ = 0;
      }
      
      override public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§-!y§(param1))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         param1.addParticle(§6!9§.§>w§,§<#]§.§@"5§,§6!9§.§1"g§,_loc4_,_loc5_,-1,"",§6!9§.§`$ §);
         this.§7q§(param1,0);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = NaN;
         §§push(!specialPowerUsed && this.§%#k§ == this.§7"k§);
         if(!specialPowerUsed && this.§%#k§ == this.§7"k§)
         {
            §§pop();
            if(param3 && !param3.levelItem.specialtyAvailableAfterCollision)
            {
               this.§7q§(param2);
            }
            if(param1 < 12 && param1 > 5 && this.§3"6§)
            {
               _loc6_ = health;
            }
            else
            {
               _loc6_ = super.applyDamage(param1,param2,param3,param4,param5);
            }
            if(param3 && !param3.levelItem.specialtyAvailableAfterCollision)
            {
               this.§3"6§ = true;
            }
            return _loc6_;
         }
         §§goto(addr143);
      }
      
      protected function § #K§(param1:§8$B§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§-!y§(null);
            this.§7q§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §7q§(param1:§8$B§, param2:Number = -1) : void
      {
         this.§^!u§ = true;
         if(param2 == 0)
         {
            this.§%#k§ = 0;
         }
         else if(param2 > 0)
         {
            this.§%#k§ = param2;
         }
         else
         {
            this.§%#k§ = this.§5!,§;
         }
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§,"D§ += param1;
         if(this.§^!u§)
         {
            this.§[#;§(param1,param2);
         }
         else if(this.§1"j§ != this.§7"k§)
         {
            if(this.§3"6§)
            {
               this.§1"j§ -= param1;
               if(this.§1"j§ < 0)
               {
                  this.§3#E§ = true;
                  this.§1"j§ = this.§7"k§;
                  this.§&$>§ = this.§1"^§;
                  §3Z§.playSound("Globe_Bird_Death_remove_1",§"#6§.soundResource.channelName);
               }
            }
         }
         else if(this.§3#E§)
         {
            this.§%!w§(param1,param2);
         }
      }
      
      protected function §[#;§(param1:Number, param2:§8$B§) : void
      {
         this.§%#k§ -= param1;
         if(this.§%#k§ <= 0)
         {
            if(!this.§?#l§)
            {
               param2.addExplosion(§>#x§.§0#6§,getBody().GetPosition().x,getBody().GetPosition().y,id);
               this.§-!y§(null);
               §"%§(param2.§?e§("BIRD_ORANGE_BIG"));
               this.§?#l§ = true;
               this.§^!u§ = false;
               this.§"!I§(this.§>"U§);
               this.§1"j§ = this.§-t§;
               this.§"!I§(this.§>"U§,§"#6§.getItemDensity(),§"#6§.getItemFriction(),§"#6§.getItemRestitution());
               sprite.scaleY = 1;
               sprite.scaleX = 1;
               §="!§.setScale(scale);
            }
         }
      }
      
      protected function §%!w§(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§&$>§ > 0)
         {
            this.§&$>§ -= param1;
            this.§>"J§ -= param1;
            if(this.§>"J§ <= 0)
            {
               this.§>"J§ = this.§1"^§ / 5;
               this.§`#Y§ = (Math.random() * 100 - 50) * 10;
               this.§&#_§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§&$>§ / this.§1"^§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§8$<§;
            if(this.§8$<§ % 3 == 0)
            {
               §="!§.setScale(_loc3_ * _loc3_);
               this.§"!I§(this.§>"U§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§`#Y§,this.§&#_§),getBody().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§5"p§(param2,0.02,true);
            }
         }
         else
         {
            this.§""]§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §"!I§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§+$'§(param1);
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
      
      override protected function addTrail(param1:§8$B§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §5"p§(param1:§8$B§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§[§();
         var _loc5_:Number = getBody().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §'"l§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§>"U§;
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
            _loc9_ = (Math.random() * this.§>"U§ - this.§>"U§ / 2) * 2 * _loc8_;
            param1.addParticle(§[#5§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§>"U§ - this.§>"U§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.addParticle(§6!9§.§?!R§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§6!9§.§-r§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §-!y§(param1:§8$B§) : Boolean
      {
         if(§8#Y§)
         {
            return false;
         }
         §[#w§();
         §8#Y§ = true;
         return true;
      }
   }
}
