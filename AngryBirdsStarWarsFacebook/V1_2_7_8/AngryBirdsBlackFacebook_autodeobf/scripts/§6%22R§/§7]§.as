package §6"R§
{
   import §,"v§.§@§;
   import §1"s§.Sprite;
   import §1x§.b2Body;
   import §1x§.b2Fixture;
   import §1x§.b2World;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§3"X§;
   import §>P§.§&s§;
   import §>P§.§=!,§;
   import §[!L§.b2CircleShape;
   import §^>§.b2Vec2;
   
   public class §7]§ extends §%!0§
   {
      
      public static const §#-§:int = 241 * §3"X§.§;"l§ / 2;
      
      private static const §>"L§:int = 200;
       
      
      private const §2"C§:Number = -5;
      
      private const §?!?§:int = 1500;
      
      private const §!!f§:int = 3500;
      
      private const §7!f§:int = 1500;
      
      private var §2# §:Boolean = false;
      
      private var §?6§:Boolean = false;
      
      private var §+R§:Boolean = false;
      
      private var §!"D§:Boolean = false;
      
      private var § R§:Number = -5;
      
      private var §=O§:Number = -5;
      
      private var §19§:Number = -5;
      
      private var §4'§:Number = 0;
      
      private var §>"R§:int = 0;
      
      private var §5#$§:Number = 0;
      
      private var §-!J§:Number = 0;
      
      private var §#!I§:Number = 0;
      
      private var §5!h§:Number = 1000;
      
      private var §%!@§:Boolean = false;
      
      public function §7]§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§#!I§ = 0;
      }
      
      private function get §3![§() : Number
      {
         return §#-§ * scale;
      }
      
      override public function addDamageParticles(param1:§""M§, param2:int) : void
      {
         if(param2 < 2 || this.§5!h§ < §>"L§)
         {
            return;
         }
         if(this.§=O§ != this.§2"C§ || param2 > 20)
         {
            this.§0"K§(param1,1,param2 > 20);
         }
         this.§5!h§ = 0;
      }
      
      override public function activateSpecialPower(param1:§""M§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§#"C§(param1))
         {
            return false;
         }
         var _loc4_:Number = §?"Z§().GetPosition().x;
         var _loc5_:Number = §?"Z§().GetPosition().y;
         param1.§[#$§(§;6§.§[!A§,§#"m§.§["A§,§;6§.§3!1§,_loc4_,_loc5_,-1,"",§;6§.§+![§);
         this.§2e§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§ R§ == this.§2"C§)
         {
            this.§2e§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§2# §)
         {
            §#!D§(§&s§.§ "s§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§2# § = true;
         return _loc5_;
      }
      
      protected function §6"?§(param1:§""M§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§#"C§(null);
            this.§2e§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §2e§(param1:§""M§, param2:Number = -1) : void
      {
         this.§?6§ = true;
         if(param2 == 0)
         {
            this.§ R§ = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.§ R§ = param2;
         }
         else
         {
            this.§ R§ = this.§?!?§;
         }
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§5!h§ += param1;
         if(this.§?6§)
         {
            this.§5"9§(param1,param2);
         }
         else if(this.§=O§ != this.§2"C§)
         {
            if(this.§2# §)
            {
               this.§=O§ -= param1;
               if(this.§=O§ < 0)
               {
                  this.§+R§ = true;
                  this.§=O§ = this.§2"C§;
                  this.§19§ = this.§7!f§;
                  §#!D§(§&s§.§9!x§);
               }
            }
         }
         else if(this.§+R§)
         {
            this.§?`§(param1,param2);
         }
      }
      
      protected function §5"9§(param1:Number, param2:§""M§) : void
      {
         this.§ R§ -= param1;
         if(this.§ R§ <= 0)
         {
            if(!this.§!"D§)
            {
               param2.§""L§(§<!<§.§>#'§,§?"Z§().GetPosition().x,§?"Z§().GetPosition().y,id);
               this.§#"C§(null);
               §^W§(param2.§%!`§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§#!I§;
               sprite.scaleY = this.§#!I§;
               this.§!"D§ = true;
               return;
            }
            if(this.§#!I§ >= 1)
            {
               this.§?6§ = false;
               this.§#!I§ = 1;
               this.§%!Q§(this.§3![§);
               this.§=O§ = this.§!!f§;
            }
            else
            {
               this.§#!I§ += 0.2;
            }
            this.§%!Q§(this.§3![§ * this.§#!I§,§-!f§.getItemDensity(),§-!f§.getItemFriction(),§-!f§.getItemRestitution());
            §]h§.setScale(this.§#!I§ * scale);
         }
      }
      
      protected function §?`§(param1:Number, param2:§""M§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§19§ > 0)
         {
            this.§19§ -= param1;
            this.§4'§ -= param1;
            if(this.§4'§ <= 0)
            {
               this.§4'§ = this.§7!f§ / 5;
               this.§5#$§ = (Math.random() * 100 - 50) * 10;
               this.§-!J§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§19§ / this.§7!f§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§>"R§;
            if(this.§>"R§ % 3 == 0)
            {
               §]h§.setScale(_loc3_ * _loc3_);
               this.§%!Q§(this.§3![§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §?"Z§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§5#$§,this.§-!J§),§?"Z§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§0"K§(param2,0.02,true);
            }
         }
         else
         {
            this.§%!@§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §%!Q§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §?"Z§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§=!h§(param1);
         if(param2 >= 0)
         {
            _loc6_.SetDensity(param2);
            _loc5_.ResetMassData();
         }
         if(param3 >= 0)
         {
            _loc6_.§1!M§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§!"W§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§""M§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §0"K§(param1:§""M§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§?"Z§().GetFixtureList().GetShape() as b2CircleShape).§#"=§();
         var _loc5_:Number = §?"Z§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §!!D§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§3![§;
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
            _loc9_ = (Math.random() * this.§3![§ - this.§3![§ / 2) * 2 * _loc8_;
            param1.§[#$§(§;6§.§1"`§,§#"m§.§=!"§,§;6§.§7'§,§?"Z§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§?"Z§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§3![§ - this.§3![§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§[#$§(§;6§.§>!B§,§#"m§.§=!"§,§;6§.§7'§,§?"Z§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§?"Z§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§;6§.§"!<§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §#"C§(param1:§""M§) : Boolean
      {
         if(§`!8§)
         {
            return false;
         }
         §@§.§9!5§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §`!8§ = true;
         return true;
      }
   }
}
