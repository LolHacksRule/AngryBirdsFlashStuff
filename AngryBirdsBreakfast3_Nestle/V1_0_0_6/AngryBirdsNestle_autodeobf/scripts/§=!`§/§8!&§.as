package §=!`§
{
   import §#!4§.§0!q§;
   import §#!4§.§=f§;
   import §%z§.§9!n§;
   import §%z§.§;#§;
   import §,!q§.Sprite;
   import §,v§.b2Body;
   import §,v§.b2Fixture;
   import §,v§.b2World;
   import §-!A§.b2Vec2;
   import §-!b§.§<W§;
   import §3!4§.b2CircleShape;
   import §@!6§.§3!5§;
   import §]k§.§<S§;
   
   public class §8!&§ extends §6!-§
   {
      
      public static const §>!I§:int = 241 * §<S§.§;!Q§ / 2;
      
      private static const §"!n§:int = 200;
       
      
      private const §0!?§:Number = -5;
      
      private const §1!n§:int = 1500;
      
      private const §?" §:int = 3500;
      
      private const §]!2§:int = 1500;
      
      private var §!_§:Boolean = false;
      
      private var §=!=§:Boolean = false;
      
      private var §^!k§:Boolean = false;
      
      private var §3"$§:Boolean = false;
      
      private var §""$§:Number = -5;
      
      private var §[!f§:Number = -5;
      
      private var §<,§:Number = -5;
      
      private var §^!X§:Number = 0;
      
      private var §=!K§:int = 0;
      
      private var §0@§:Number = 0;
      
      private var §]!Y§:Number = 0;
      
      private var §>%§:Number = 0;
      
      private var §%!F§:Number = 1000;
      
      private var §]!l§:Boolean = false;
      
      public function §8!&§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.§>%§ = 0;
      }
      
      private function get §1!H§() : Number
      {
         return §>!I§ * scale;
      }
      
      override public function addDamageParticles(param1:§'`§, param2:int) : void
      {
         if(param2 < 2 || this.§%!F§ < §"!n§)
         {
            return;
         }
         if(this.§[!f§ != this.§0!?§ || param2 > 20)
         {
            this.§7a§(param1,1,param2 > 20);
         }
         this.§%!F§ = 0;
      }
      
      override public function activateSpecialPower(param1:§'`§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§<"%§(param1))
         {
            return false;
         }
         var _loc4_:Number = §^",§().GetPosition().x;
         var _loc5_:Number = §^",§().GetPosition().y;
         param1.§6!=§(§=f§.§>!A§,§0!q§.§-g§,§=f§.§"!Y§,_loc4_,_loc5_,-1,"",§=f§.§"!2§);
         this.§ !-§(param1,0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§'`§, param3:§^^§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = NaN;
         if(!specialPowerUsed && this.§""$§ == this.§0!?§)
         {
            this.§ !-§(param2);
         }
         if(param1 < 12 && param1 > 5 && this.§!_§)
         {
            §&!z§(§;#§.§%!T§);
            _loc5_ = health;
         }
         else
         {
            _loc5_ = super.applyDamage(param1,param2,param3,param4);
         }
         this.§!_§ = true;
         return _loc5_;
      }
      
      protected function §#R§(param1:§'`§) : Boolean
      {
         if(!specialPowerUsed)
         {
            this.§<"%§(null);
            this.§ !-§(param1,0);
            return true;
         }
         return false;
      }
      
      private function § !-§(param1:§'`§, param2:Number = -1) : void
      {
         this.§=!=§ = true;
         if(param2 == 0)
         {
            this.§""$§ = 0;
            this.update(0,param1);
         }
         else if(param2 > 0)
         {
            this.§""$§ = param2;
         }
         else
         {
            this.§""$§ = this.§1!n§;
         }
      }
      
      override public function update(param1:Number, param2:§'`§) : void
      {
         if(!param2)
         {
            return;
         }
         super.update(param1,param2);
         this.§%!F§ += param1;
         if(this.§=!=§)
         {
            this.§7!S§(param1,param2);
         }
         else if(this.§[!f§ != this.§0!?§)
         {
            if(this.§!_§)
            {
               this.§[!f§ -= param1;
               if(this.§[!f§ < 0)
               {
                  this.§^!k§ = true;
                  this.§[!f§ = this.§0!?§;
                  this.§<,§ = this.§]!2§;
                  §&!z§(§;#§.§]X§);
               }
            }
         }
         else if(this.§^!k§)
         {
            this.§'w§(param1,param2);
         }
      }
      
      protected function §7!S§(param1:Number, param2:§'`§) : void
      {
         this.§""$§ -= param1;
         if(this.§""$§ <= 0)
         {
            if(!this.§3"$§)
            {
               param2.§=P§(§,F§.§2!0§,§^",§().GetPosition().x,§^",§().GetPosition().y,id);
               this.§<"%§(null);
               §9!c§(param2.§@"+§("BIRD_ORANGE_BIG"));
               sprite.scaleX = this.§>%§;
               sprite.scaleY = this.§>%§;
               this.§3"$§ = true;
               return;
            }
            if(this.§>%§ >= 1)
            {
               this.§=!=§ = false;
               this.§>%§ = 1;
               this.§7!$§(this.§1!H§);
               this.§[!f§ = this.§?" §;
            }
            else
            {
               this.§>%§ += 0.2;
            }
            this.§7!$§(this.§1!H§ * this.§>%§,§<9§.getItemDensity(),§<9§.getItemFriction(),§<9§.getItemRestitution());
            §8!p§.setScale(this.§>%§ * scale);
         }
      }
      
      protected function §'w§(param1:Number, param2:§'`§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(this.§<,§ > 0)
         {
            this.§<,§ -= param1;
            this.§^!X§ -= param1;
            if(this.§^!X§ <= 0)
            {
               this.§^!X§ = this.§]!2§ / 5;
               this.§0@§ = (Math.random() * 100 - 50) * 10;
               this.§]!Y§ = (Math.random() * 100 - 50) * 10;
            }
            _loc3_ = this.§<,§ / this.§]!2§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            ++this.§=!K§;
            if(this.§=!K§ % 3 == 0)
            {
               §8!p§.setScale(_loc3_ * _loc3_);
               this.§7!$§(this.§1!H§ * _loc3_,0.00001,0,0);
               _loc5_ = (_loc4_ = §^",§()).GetLinearVelocity();
               _loc4_.ApplyImpulse(new b2Vec2(this.§0@§,this.§]!Y§),§^",§().GetPosition());
               _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
               this.§7a§(param2,0.02,true);
            }
         }
         else
         {
            this.§]!l§ = true;
            param2.removeObject(this);
         }
      }
      
      private function §7!$§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §^",§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§[Q§(param1);
         if(param2 >= 0)
         {
            _loc6_.§+F§(param2);
            _loc5_.§#!B§();
         }
         if(param3 >= 0)
         {
            _loc6_.§8!_§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§#!X§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override protected function addTrail(param1:§'`§) : Boolean
      {
         if(!specialPowerUsed)
         {
            return super.addTrail(param1);
         }
         return false;
      }
      
      private function §7a§(param1:§'`§, param2:Number = 1, param3:Boolean = false) : void
      {
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:Number = (§^",§().GetFixtureList().GetShape() as b2CircleShape).§>i§();
         var _loc5_:Number = §^",§().GetLinearVelocity().Length() / 40;
         var _loc6_:int = 1 + _loc5_ * §@0§(true) * 0.9;
         var _loc7_:Number = Math.PI / 2;
         var _loc8_:Number = _loc4_ / this.§1!H§;
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
            _loc9_ = (Math.random() * this.§1!H§ - this.§1!H§ / 2) * 2 * _loc8_;
            param1.§6!=§(§=f§.§<#§,§0!q§.§[!V§,§=f§.§@m§,§^",§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§^",§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1000,"",0,0,0,5,_loc5_ * 5,Math.random() * 0.75 + 0.25);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_ += Math.random() * (Math.PI * 4 / _loc6_);
            _loc9_ = (Math.random() * this.§1!H§ - this.§1!H§ / 2) * 2 * _loc8_;
            _loc11_ = 0.5 * _loc5_ + _loc5_ * (Math.random() * 0.5);
            param1.§6!=§(§=f§.§,!3§,§0!q§.§[!V§,§=f§.§@m§,§^",§().GetPosition().x + Math.cos(_loc7_) * _loc9_,§^",§().GetPosition().y + Math.sin(_loc7_) * _loc9_,1250,"",§=f§.§3!@§,_loc11_ * Math.cos(_loc7_) * _loc8_,-_loc11_ * Math.sin(_loc7_) * _loc8_,5,_loc11_ * 20,1);
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
      
      private function §<"%§(param1:§'`§) : Boolean
      {
         if(§?,§)
         {
            return false;
         }
         §3!5§.§class§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §?,§ = true;
         return true;
      }
   }
}
