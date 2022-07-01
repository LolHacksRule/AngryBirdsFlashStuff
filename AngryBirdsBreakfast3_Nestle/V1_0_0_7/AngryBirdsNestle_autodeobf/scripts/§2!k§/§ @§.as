package §2!k§
{
   import § !=§.Sprite;
   import §-!2§.b2Vec2;
   import §0!j§.b2Body;
   import §0!j§.b2Fixture;
   import §0!j§.b2World;
   import §8!K§.b2CircleShape;
   import §;L§.§=l§;
   import §;Z§.§3?§;
   import §;Z§.§@!`§;
   import §;s§.§%!c§;
   import §[^§.§>"§;
   import §[^§.§`!M§;
   import §]A§.§[d§;
   
   public class § @§ extends §6",§
   {
      
      public static const §9§:int = 241 * §[d§.§]!U§ / 2;
      
      private static const §5i§:int = 200;
       
      
      private const §5s§:Number = -5;
      
      private const §+!u§:int = 1500;
      
      private const §?-§:int = 3500;
      
      private const §>I§:int = 1500;
      
      private var §%D§:Boolean = false;
      
      private var §-!^§:Boolean = false;
      
      private var §#J§:Boolean = false;
      
      private var §?",§:Boolean = false;
      
      private var §6G§:Number = -5;
      
      private var §0@§:Number = -5;
      
      private var §<!m§:Number = -5;
      
      private var §7!'§:Number = 0;
      
      private var §"!"§:int = 0;
      
      private var §=§:Number = 0;
      
      private var §>!d§:Number = 0;
      
      private var §&!B§:Number = 0;
      
      private var §!!l§:Number = 1000;
      
      private var §%U§:Boolean = false;
      
      public function § @§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.§&!B§ = 0;
      }
      
      private function get §1#§() : Number
      {
         return §9§ * scale;
      }
      
      override public function addDamageParticles(param1:§?N§, param2:int) : void
      {
         if(param2 < 2 || this.§!!l§ < §5i§)
         {
            return;
         }
         if(this.§0@§ != this.§5s§ || param2 > 20)
         {
            this.§'i§(param1,1,param2 > 20);
         }
         this.§!!l§ = 0;
      }
      
      override public function activateSpecialPower(param1:§?N§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§;!X§(param1))
         {
            return false;
         }
         var _loc4_:Number = § 2§().GetPosition().x;
         var _loc5_:Number = § 2§().GetPosition().y;
         param1.§;$§(§3?§.§%j§,§@!`§.§?M§,§3?§.§5!!§,_loc4_,_loc5_,-1,"",§3?§.§"!H§);
         this.§!!J§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§?N§, param3:§;;§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§6G§ == this.§5s§)
         {
            this.§!!J§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§%D§)
         {
            §,y§(§>"§.§@!e§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§%D§ = true;
         return _loc5_;
      }
      
      protected function §+9§(param1:§?N§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§;!X§(null);
            this.§!!J§(param1,0);
            return true;
         }
         return false;
      }
      
      private function §!!J§(param1:§?N§, param2:Number = -1) : void
      {
         this.§-!^§ = true;
         if(param2 == 0)
         {
            this.§6G§ = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.§6G§ = param2;
         }
         else
         {
            this.§6G§ = this.§+!u§;
         }
      }
      
      override public function update(param1:Number, param2:§?N§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§!!l§ += param1;
         if(this.§-!^§)
         {
            this.§#+§(param1,param2);
         }
         else if(this.§0@§ != this.§5s§)
         {
            if(this.§%D§)
            {
               this.§0@§ -= param1;
               if(this.§0@§ < 0)
               {
                  this.§#J§ = true;
                  this.§0@§ = this.§5s§;
                  this.§<!m§ = this.§>I§;
                  §,y§(§>"§.§@4§);
               }
            }
         }
         else if(this.§#J§)
         {
            this.§!O§(param1,param2);
         }
      }
      
      protected function §#+§(param1:Number, param2:§?N§) : void
      {
         this.§6G§ -= param1;
         if(this.§6G§ <= 0)
         {
            if(!this.§?",§)
            {
               param2.§`!0§(§]D§.§;!8§,§ 2§().GetPosition().x,§ 2§().GetPosition().y,id);
               this.§;!X§(null);
               §"o§(param2.§&!S§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§&!B§;
               sprite.scaleY = this.§&!B§;
               this.§?",§ = true;
               return;
            }
            if(this.§&!B§ >= 1)
            {
               this.§-!^§ = false;
               this.§&!B§ = 1;
               this.§'!b§(this.§1#§);
               this.§0@§ = this.§?-§;
            }
            else
            {
               this.§&!B§ += 0.2;
            }
            this.§'!b§(this.§1#§ * this.§&!B§,§>!A§.getItemDensity(),§>!A§.getItemFriction(),§>!A§.getItemRestitution());
            § !@§.setScale(this.§&!B§ * scale);
         }
      }
      
      protected function §!O§(param1:Number, param2:§?N§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§<!m§ > 0)
         {
            this.§<!m§ -= param1;
            this.§7!'§ -= param1;
            if(this.§7!'§ <= 0)
            {
               this.§7!'§ = this.§>I§ / 5;
               this.§=§ = (Math.random() * 100 - 50) * 10;
               this.§>!d§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§<!m§ / this.§>I§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§"!"§;
            if(this.§"!"§ % 3 == 0)
            {
               § !@§.setScale(_loc3_ * _loc3_);
               this.§'!b§(this.§1#§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = § 2§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§=§,this.§>!d§),§ 2§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§'i§(param2,0.02,true);
            }
         }
         else
         {
            this.§%U§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §'!b§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = § 2§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§3!b§(param1);
         if(param2 >= 0)
         {
            _loc6_.§?1§(param2);
            _loc5_.§]!Z§();
         }
         if(param3 >= 0)
         {
            _loc6_.§1!J§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§5P§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§?N§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §'i§(param1:§?N§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§ 2§().GetFixtureList().GetShape() as b2CircleShape).§<!V§();
         var _loc5_:Number = § 2§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §0!s§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§1#§;
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
            _loc9_ = (Math.random() * this.§1#§ - this.§1#§ / 2) * 2 * _loc8_;
            param1.§;$§(§3?§.§#!I§,§@!`§.§<<§,§3?§.§72§,§ 2§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§ 2§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§1#§ - this.§1#§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§;$§(§3?§.§3f§,§@!`§.§<<§,§3?§.§72§,§ 2§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§ 2§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§3?§.§0+§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §;!X§(param1:§?N§) : Boolean
      {
         if(§[!s§)
         {
            return false;
         }
         §%!c§.§!c§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §[!s§ = true;
         return true;
      }
   }
}
