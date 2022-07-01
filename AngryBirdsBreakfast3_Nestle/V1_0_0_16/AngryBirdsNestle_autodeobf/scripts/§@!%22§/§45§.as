package §@!"§
{
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0"!§.b2Body;
   import §0"!§.b2Fixture;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §=!!§.b2CircleShape;
   import §@!E§.b2Vec2;
   import §@V§.§#=§;
   import §[!Z§.§>D§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   
   public class §45§ extends §^"2§
   {
      
      public static const §[!d§:int = 241 * §#=§.§^!2§ / 2;
      
      private static const §2,§:int = 200;
       
      
      private const §5F§:Number = -5;
      
      private const §-!?§:int = 1500;
      
      private const §9"%§:int = 3500;
      
      private const §!"+§:int = 1500;
      
      private var §-!>§:Boolean = false;
      
      private var §1P§:Boolean = false;
      
      private var §]h§:Boolean = false;
      
      private var §'@§:Boolean = false;
      
      private var §]8§:Number = -5;
      
      private var §<"'§:Number = -5;
      
      private var §&!c§:Number = -5;
      
      private var §3!j§:Number = 0;
      
      private var § use§:int = 0;
      
      private var §#t§:Number = 0;
      
      private var §#l§:Number = 0;
      
      private var §%r§:Number = 0;
      
      private var §#!@§:Number = 1000;
      
      private var §-!I§:Boolean = false;
      
      public function §45§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§%r§ = 0;
      }
      
      private function get §3Q§() : Number
      {
         return §[!d§ * scale;
      }
      
      override public function addDamageParticles(param1:§`!m§, param2:int) : void
      {
         if(param2 < 2 || this.§#!@§ < §2,§)
         {
            return;
         }
         if(this.§<"'§ != this.§5F§ || param2 > 20)
         {
            this.§<!b§(param1,1,param2 > 20);
         }
         this.§#!@§ = 0;
      }
      
      override public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§]!@§(param1))
         {
            return false;
         }
         var _loc4_:Number = §!!I§().GetPosition().x;
         var _loc5_:Number = §!!I§().GetPosition().y;
         param1.§9!@§(§`""§.§6"6§,§"w§.§6$§,§`""§.§ -§,_loc4_,_loc5_,-1,"",§`""§.§4F§);
         this.§0!P§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§]8§ == this.§5F§)
         {
            this.§0!P§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§-!>§)
         {
            §8!U§(§89§.§&7§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§-!>§ = true;
         return _loc5_;
      }
      
      protected function §8P§(param1:§`!m§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§]!@§(null);
            this.§0!P§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §0!P§(param1:§`!m§, param2:Number = -1) : void
      {
         this.§1P§ = true;
         if(param2 == 0)
         {
            this.§]8§ = 0;
         }
         else if(param2 > 0)
         {
            this.§]8§ = param2;
         }
         else
         {
            this.§]8§ = this.§-!?§;
         }
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§#!@§ += param1;
         if(this.§1P§)
         {
            this.§ D§(param1,param2);
         }
         else if(this.§<"'§ != this.§5F§)
         {
            if(this.§-!>§)
            {
               this.§<"'§ -= param1;
               if(this.§<"'§ < 0)
               {
                  this.§]h§ = true;
                  this.§<"'§ = this.§5F§;
                  this.§&!c§ = this.§!"+§;
                  §8!U§(§89§.§6K§);
               }
            }
         }
         else if(this.§]h§)
         {
            this.§"!1§(param1,param2);
         }
      }
      
      protected function § D§(param1:Number, param2:§`!m§) : void
      {
         this.§]8§ -= param1;
         if(this.§]8§ <= 0)
         {
            if(!this.§'@§)
            {
               param2.§<!Q§(§=q§.§2Y§,§!!I§().GetPosition().x,§!!I§().GetPosition().y,id);
               this.§]!@§(null);
               §!+§(param2.§+"%§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§%r§;
               sprite.scaleY = this.§%r§;
               this.§'@§ = true;
               return;
            }
            if(this.§%r§ >= 1)
            {
               this.§1P§ = false;
               this.§%r§ = 1;
               this.§+D§(this.§3Q§);
               this.§<"'§ = this.§9"%§;
            }
            else
            {
               this.§%r§ += 0.2;
            }
            this.§+D§(this.§3Q§ * this.§%r§,§93§.getItemDensity(),§93§.getItemFriction(),§93§.getItemRestitution());
            §=K§.setScale(this.§%r§ * scale);
         }
      }
      
      protected function §"!1§(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§&!c§ > 0)
         {
            this.§&!c§ -= param1;
            this.§3!j§ -= param1;
            if(this.§3!j§ <= 0)
            {
               this.§3!j§ = this.§!"+§ / 5;
               this.§#t§ = (Math.random() * 100 - 50) * 10;
               this.§#l§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§&!c§ / this.§!"+§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§ use§;
            if(this.§ use§ % 3 == 0)
            {
               §=K§.setScale(_loc3_ * _loc3_);
               this.§+D§(this.§3Q§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §!!I§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§#t§,this.§#l§),§!!I§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§<!b§(param2,0.02,true);
            }
         }
         else
         {
            this.§-!I§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §+D§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §!!I§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§0!J§(param1);
         if(param2 >= 0)
         {
            _loc6_.§ !u§(param2);
            _loc5_.§&!g§();
         }
         if(param3 >= 0)
         {
            _loc6_.§-!e§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§,!C§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§`!m§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §<!b§(param1:§`!m§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§!!I§().GetFixtureList().GetShape() as b2CircleShape).§%<§();
         var _loc5_:Number = §!!I§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §&!a§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§3Q§;
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
            _loc9_ = (Math.random() * this.§3Q§ - this.§3Q§ / 2) * 2 * _loc8_;
            param1.§9!@§(§`""§.§-!0§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§!!I§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§3Q§ - this.§3Q§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§9!@§(§`""§.§-J§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§!!I§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§`""§.§8a§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §]!@§(param1:§`!m§) : Boolean
      {
         if(§>!6§)
         {
            return false;
         }
         §>D§.§4W§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §>!6§ = true;
         return true;
      }
   }
}
