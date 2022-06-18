package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+#f§.b2CircleShape;
   import §1!+§.b2Body;
   import §1!+§.b2Fixture;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   
   public class §@#p§ extends §"7§
   {
      
      public static const §!#R§:Number = 7.5;
      
      private static const §!!c§:int = 200;
       
      
      private const §%!Y§:Number = -5;
      
      private const §=#+§:int = 1500;
      
      private const §@#r§:int = 1500;
      
      private const §6$5§:int = 1500;
      
      private var §=#D§:Boolean = false;
      
      private var §3#U§:Boolean = false;
      
      private var §[!i§:Boolean = false;
      
      private var §]"b§:Boolean = false;
      
      private var §-#5§:Number = -5;
      
      private var §2!m§:Number = -5;
      
      private var §6+§:Number = -5;
      
      private var §2"d§:Number = 0;
      
      private var §@F§:int = 0;
      
      private var §7L§:Number = 0;
      
      private var §[!O§:Number = 0;
      
      private var §2!C§:Number = 1000;
      
      private var §^!>§:Boolean = false;
      
      public function §@#p§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      private function get §##d§() : Number
      {
         return §!#R§ * scale;
      }
      
      override public function addDamageParticles(param1:§-!S§, param2:int) : void
      {
         if(param2 < 2 || this.§2!C§ < §!!c§)
         {
            return;
         }
         if(this.§2!m§ != this.§%!Y§ || param2 > 20)
         {
            this.§<#G§(param1,1,param2 > 20);
         }
         this.§2!C§ = 0;
      }
      
      override public function activateSpecialPower(param1:§-!S§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§[b§(param1))
         {
            return false;
         }
         var _loc4_:Number = getBody().GetPosition().x;
         var _loc5_:Number = getBody().GetPosition().y;
         param1.addParticle(§2"^§.§'!Z§,§7"6§.§>C§,§2"^§.§""'§,_loc4_,_loc5_,-1,"",§2"^§.§;"%§);
         this.§3"K§(param1,0);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed;
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§-#5§ == this.§%!Y§)
         {
            this.§3"K§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§=#D§)
         {
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§=#D§ = true;
         return _loc5_;
      }
      
      protected function §<"D§(param1:§-!S§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§[b§(null);
            this.§3"K§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §3"K§(param1:§-!S§, param2:Number = -1) : void
      {
         this.§3#U§ = true;
         if(param2 == 0)
         {
            this.§-#5§ = 0;
         }
         else if(param2 > 0)
         {
            this.§-#5§ = param2;
         }
         else
         {
            this.§-#5§ = this.§=#+§;
         }
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§2!C§ += param1;
         if(this.§3#U§)
         {
            this.§6$,§(param1,param2);
         }
         else if(this.§2!m§ != this.§%!Y§)
         {
            if(this.§=#D§)
            {
               this.§2!m§ -= param1;
               if(this.§2!m§ < 0)
               {
                  this.§[!i§ = true;
                  this.§2!m§ = this.§%!Y§;
                  this.§6+§ = this.§6$5§;
                  §!#&§.playSound("Globe_Bird_Death_remove_1",§8"3§.soundResource.channelName);
               }
            }
         }
         else if(this.§[!i§)
         {
            this.§0N§(param1,param2);
         }
      }
      
      protected function §6$,§(param1:Number, param2:§-!S§) : void
      {
         this.§-#5§ -= param1;
         if(this.§-#5§ <= 0)
         {
            if(!this.§]"b§)
            {
               param2.§<!>§(§+!H§.§;!t§,getBody().GetPosition().x,getBody().GetPosition().y,id);
               this.§[b§(null);
               §3!R§(param2.§]#3§("BIRD_ORANGE_BIG"));
               this.§]"b§ = true;
               this.§3#U§ = false;
               this.§?"R§(this.§##d§);
               this.§2!m§ = this.§@#r§;
               this.§?"R§(this.§##d§,§8"3§.getItemDensity(),§8"3§.getItemFriction(),§8"3§.getItemRestitution());
               sprite.scaleY = 1;
               sprite.scaleX = 1;
               §implements§.setScale(scale);
            }
         }
      }
      
      protected function §0N§(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§6+§ > 0)
         {
            this.§6+§ -= param1;
            this.§2"d§ -= param1;
            if(this.§2"d§ <= 0)
            {
               this.§2"d§ = this.§6$5§ / 5;
               this.§7L§ = (Math.random() * 100 - 50) * 10;
               this.§[!O§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§6+§ / this.§6$5§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§@F§;
            if(this.§@F§ % 3 == 0)
            {
               §implements§.setScale(_loc3_ * _loc3_);
               this.§?"R§(this.§##d§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§7L§,this.§[!O§),getBody().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§<#G§(param2,0.02,true);
            }
         }
         else
         {
            this.§^!>§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §?"R§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§#"M§(param1);
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
      
      override protected function addTrail(param1:§-!S§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §<#G§(param1:§-!S§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§+#_§();
         var _loc5_:Number = getBody().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §'Y§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§##d§;
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
            _loc9_ = (Math.random() * this.§##d§ - this.§##d§ / 2) * 2 * _loc8_;
            param1.addParticle(§7##§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§##d§ - this.§##d§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.addParticle(§2"^§.§?w§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + Math.cos(_loc7_) * _loc9_,getBody().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§2"^§.§!"[§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §[b§(param1:§-!S§) : Boolean
      {
         if(§!"i§)
         {
            return false;
         }
         §@"Y§();
         §!"i§ = true;
         return true;
      }
   }
}
