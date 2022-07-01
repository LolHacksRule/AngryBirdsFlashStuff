package §]!q§
{
   import §&!>§.§3!k§;
   import §-!f§.Sprite;
   import §-%§.b2Vec2;
   import §0I§.§!!p§;
   import §3g§.§?!d§;
   import §3g§.§`O§;
   import §5!7§.§3!Y§;
   import §5!7§.§7!R§;
   import §6_§.§6k§;
   import §9"5§.b2Body;
   import §9"5§.b2Fixture;
   import §9"5§.b2World;
   import §>"&§.b2CircleShape;
   
   public class §#!d§ extends §,6§
   {
      
      public static const §<U§:int = 241 * §!!p§.§6L§ / 2;
      
      private static const §,!R§:int = 200;
       
      
      private const §89§:Number = -5;
      
      private const §;",§:int = 1500;
      
      private const §[!y§:int = 3500;
      
      private const §!%§:int = 1500;
      
      private var §`!^§:Boolean = false;
      
      private var §1"#§:Boolean = false;
      
      private var § 8§:Boolean = false;
      
      private var §>,§:Boolean = false;
      
      private var §7!$§:Number = -5;
      
      private var §,"$§:Number = -5;
      
      private var §[L§:Number = -5;
      
      private var §'V§:Number = 0;
      
      private var §&2§:int = 0;
      
      private var §>g§:Number = 0;
      
      private var §+K§:Number = 0;
      
      private var §]!H§:Number = 0;
      
      private var §-L§:Number = 1000;
      
      private var §4!"§:Boolean = false;
      
      public function §#!d§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.§]!H§ = 0;
      }
      
      private function get §1B§() : Number
      {
         return §<U§ * scale;
      }
      
      override public function addDamageParticles(param1:§5z§, param2:int) : void
      {
         if(param2 < 2 || this.§-L§ < §,!R§)
         {
            return;
         }
         if(this.§,"$§ != this.§89§ || param2 > 20)
         {
            this.§1!3§(param1,1,param2 > 20);
         }
         this.§-L§ = 0;
      }
      
      override public function activateSpecialPower(param1:§5z§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§!!v§(param1))
         {
            return false;
         }
         var _loc4_:Number = §4!7§().GetPosition().x;
         var _loc5_:Number = §4!7§().GetPosition().y;
         param1.§`q§(§?!d§.§;j§,§`O§.§<s§,§?!d§.§41§,_loc4_,_loc5_,-1,"",§?!d§.§=",§);
         this.§!!M§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§5z§, param3:§,[§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§7!$§ == this.§89§)
         {
            this.§!!M§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§`!^§)
         {
            §?[§(§7!R§.§@!v§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§`!^§ = true;
         return _loc5_;
      }
      
      protected function §<!k§(param1:§5z§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§!!v§(null);
            this.§!!M§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §!!M§(param1:§5z§, param2:Number = -1) : void
      {
         this.§1"#§ = true;
         if(param2 == 0)
         {
            this.§7!$§ = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.§7!$§ = param2;
         }
         else
         {
            this.§7!$§ = this.§;",§;
         }
      }
      
      override public function update(param1:Number, param2:§5z§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§-L§ += param1;
         if(this.§1"#§)
         {
            this.§#!N§(param1,param2);
         }
         else if(this.§,"$§ != this.§89§)
         {
            if(this.§`!^§)
            {
               this.§,"$§ -= param1;
               if(this.§,"$§ < 0)
               {
                  this.§ 8§ = true;
                  this.§,"$§ = this.§89§;
                  this.§[L§ = this.§!%§;
                  §?[§(§7!R§.§[e§);
               }
            }
         }
         else if(this.§ 8§)
         {
            this.§+!D§(param1,param2);
         }
      }
      
      protected function §#!N§(param1:Number, param2:§5z§) : void
      {
         this.§7!$§ -= param1;
         if(this.§7!$§ <= 0)
         {
            if(!this.§>,§)
            {
               param2.§9!§(§6!m§.§%!@§,§4!7§().GetPosition().x,§4!7§().GetPosition().y,id);
               this.§!!v§(null);
               §>]§(param2.§2!A§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§]!H§;
               sprite.scaleY = this.§]!H§;
               this.§>,§ = true;
               return;
            }
            if(this.§]!H§ >= 1)
            {
               this.§1"#§ = false;
               this.§]!H§ = 1;
               this.§&!]§(this.§1B§);
               this.§,"$§ = this.§[!y§;
            }
            else
            {
               this.§]!H§ += 0.2;
            }
            this.§&!]§(this.§1B§ * this.§]!H§,§9!w§.getItemDensity(),§9!w§.getItemFriction(),§9!w§.getItemRestitution());
            §3<§.setScale(this.§]!H§ * scale);
         }
      }
      
      protected function §+!D§(param1:Number, param2:§5z§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§[L§ > 0)
         {
            this.§[L§ -= param1;
            this.§'V§ -= param1;
            if(this.§'V§ <= 0)
            {
               this.§'V§ = this.§!%§ / 5;
               this.§>g§ = (Math.random() * 100 - 50) * 10;
               this.§+K§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§[L§ / this.§!%§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§&2§;
            if(this.§&2§ % 3 == 0)
            {
               §3<§.setScale(_loc3_ * _loc3_);
               this.§&!]§(this.§1B§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §4!7§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§>g§,this.§+K§),§4!7§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§1!3§(param2,0.02,true);
            }
         }
         else
         {
            this.§4!"§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §&!]§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §4!7§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§2!=§(param1);
         if(param2 >= 0)
         {
            _loc6_.§+J§(param2);
            _loc5_.§`A§();
         }
         if(param3 >= 0)
         {
            _loc6_.§+!Q§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§%C§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§5z§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §1!3§(param1:§5z§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§4!7§().GetFixtureList().GetShape() as b2CircleShape).§!=§();
         var _loc5_:Number = §4!7§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §3[§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§1B§;
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
            _loc9_ = (Math.random() * this.§1B§ - this.§1B§ / 2) * 2 * _loc8_;
            param1.§`q§(§?!d§.§9%§,§`O§.§#!`§,§?!d§.§!!I§,§4!7§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§4!7§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§1B§ - this.§1B§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§`q§(§?!d§.§="+§,§`O§.§#!`§,§?!d§.§!!I§,§4!7§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§4!7§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§?!d§.§?a§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §!!v§(param1:§5z§) : Boolean
      {
         if(§&!n§)
         {
            return false;
         }
         §3!k§.§;5§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §&!n§ = true;
         return true;
      }
   }
}
