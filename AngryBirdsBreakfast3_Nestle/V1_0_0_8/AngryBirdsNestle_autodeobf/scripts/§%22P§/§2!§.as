package §"P§
{
   import §!"+§.§!o§;
   import §!"+§.§'!7§;
   import §!f§.§>!s§;
   import §!f§.§@"§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §8q§.§]d§;
   import §9G§.§2F§;
   import §=!c§.b2Body;
   import §=!c§.b2Fixture;
   import §=!c§.b2World;
   import §[K§.b2Vec2;
   import §[e§.b2CircleShape;
   
   public class §2!§ extends §?!§
   {
      
      public static const §+""§:int = 241 * §2F§.§6+§ / 2;
      
      private static const §"!e§:int = 200;
       
      
      private const §[!Z§:Number = -5;
      
      private const §`K§:int = 1500;
      
      private const §"!q§:int = 3500;
      
      private const § ;§:int = 1500;
      
      private var §-!f§:Boolean = false;
      
      private var §8x§:Boolean = false;
      
      private var §?0§:Boolean = false;
      
      private var §6-§:Boolean = false;
      
      private var §]L§:Number = -5;
      
      private var §=!A§:Number = -5;
      
      private var §%=§:Number = -5;
      
      private var §package§:Number = 0;
      
      private var §?!j§:int = 0;
      
      private var §8A§:Number = 0;
      
      private var §@O§:Number = 0;
      
      private var §3!R§:Number = 0;
      
      private var §7t§:Number = 1000;
      
      private var §@!b§:Boolean = false;
      
      public function §2!§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§3!R§ = 0;
      }
      
      private function get §1!P§() : Number
      {
         return §+""§ * scale;
      }
      
      override public function addDamageParticles(param1:§0w§, param2:int) : void
      {
         if(param2 < 2 || this.§7t§ < §"!e§)
         {
            return;
         }
         if(this.§=!A§ != this.§[!Z§ || param2 > 20)
         {
            this.§=!P§(param1,1,param2 > 20);
         }
         this.§7t§ = 0;
      }
      
      override public function activateSpecialPower(param1:§0w§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§;!l§(param1))
         {
            return false;
         }
         var _loc4_:Number = §7J§().GetPosition().x;
         var _loc5_:Number = §7J§().GetPosition().y;
         param1.§8" §(§@"§.§&L§,§>!s§.§3e§,§@"§.§6!^§,_loc4_,_loc5_,-1,"",§@"§.§7a§);
         this.§=c§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§0w§, param3:§^!x§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§]L§ == this.§[!Z§)
         {
            this.§=c§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§-!f§)
         {
            §5E§(§'!7§.§8H§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§-!f§ = true;
         return _loc5_;
      }
      
      protected function §"!z§(param1:§0w§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§;!l§(null);
            this.§=c§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §=c§(param1:§0w§, param2:Number = -1) : void
      {
         this.§8x§ = true;
         if(param2 == 0)
         {
            this.§]L§ = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.§]L§ = param2;
         }
         else
         {
            this.§]L§ = this.§`K§;
         }
      }
      
      override public function update(param1:Number, param2:§0w§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§7t§ += param1;
         if(this.§8x§)
         {
            this.§&!K§(param1,param2);
         }
         else if(this.§=!A§ != this.§[!Z§)
         {
            if(this.§-!f§)
            {
               this.§=!A§ -= param1;
               if(this.§=!A§ < 0)
               {
                  this.§?0§ = true;
                  this.§=!A§ = this.§[!Z§;
                  this.§%=§ = this.§ ;§;
                  §5E§(§'!7§.§^!Q§);
               }
            }
         }
         else if(this.§?0§)
         {
            this.§+!$§(param1,param2);
         }
      }
      
      protected function §&!K§(param1:Number, param2:§0w§) : void
      {
         this.§]L§ -= param1;
         if(this.§]L§ <= 0)
         {
            if(!this.§6-§)
            {
               param2.§=!Y§(§7"$§.§22§,§7J§().GetPosition().x,§7J§().GetPosition().y,id);
               this.§;!l§(null);
               §"!C§(param2.§2!f§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§3!R§;
               sprite.scaleY = this.§3!R§;
               this.§6-§ = true;
               return;
            }
            if(this.§3!R§ >= 1)
            {
               this.§8x§ = false;
               this.§3!R§ = 1;
               this.§&!&§(this.§1!P§);
               this.§=!A§ = this.§"!q§;
            }
            else
            {
               this.§3!R§ += 0.2;
            }
            this.§&!&§(this.§1!P§ * this.§3!R§,§6!-§.getItemDensity(),§6!-§.getItemFriction(),§6!-§.getItemRestitution());
            §9!t§.setScale(this.§3!R§ * scale);
         }
      }
      
      protected function §+!$§(param1:Number, param2:§0w§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§%=§ > 0)
         {
            this.§%=§ -= param1;
            this.§package§ -= param1;
            if(this.§package§ <= 0)
            {
               this.§package§ = this.§ ;§ / 5;
               this.§8A§ = (Math.random() * 100 - 50) * 10;
               this.§@O§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§%=§ / this.§ ;§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§?!j§;
            if(this.§?!j§ % 3 == 0)
            {
               §9!t§.setScale(_loc3_ * _loc3_);
               this.§&!&§(this.§1!P§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §7J§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§8A§,this.§@O§),§7J§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§=!P§(param2,0.02,true);
            }
         }
         else
         {
            this.§@!b§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §&!&§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §7J§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§%?§(param1);
         if(param2 >= 0)
         {
            _loc6_.§#Y§(param2);
            _loc5_.§<!r§();
         }
         if(param3 >= 0)
         {
            _loc6_.§,!v§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§'!`§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§0w§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §=!P§(param1:§0w§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§7J§().GetFixtureList().GetShape() as b2CircleShape).§=!K§();
         var _loc5_:Number = §7J§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §`z§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§1!P§;
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
            _loc9_ = (Math.random() * this.§1!P§ - this.§1!P§ / 2) * 2 * _loc8_;
            param1.§8" §(§@"§.§^V§,§>!s§.§>M§,§@"§.§7![§,§7J§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§7J§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§1!P§ - this.§1!P§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§8" §(§@"§.§]!w§,§>!s§.§>M§,§@"§.§7![§,§7J§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§7J§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§@"§.§@!$§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §;!l§(param1:§0w§) : Boolean
      {
         if(§=!O§)
         {
            return false;
         }
         §]d§.§;!X§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §=!O§ = true;
         return true;
      }
   }
}
