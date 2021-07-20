package §^!A§
{
   import §#X§.§,!F§;
   import §&o§.Sprite;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §>!7§.§@!+§;
   import §^!L§.§%h§;
   import §^!L§.§5b§;
   import §^!L§.§6<§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=!$§ extends §^`§
   {
      
      public static const §[=§:int = 241 * § !§.§`J§ / 2;
      
      private static const §"!<§:int = 200;
       
      
      private const § use§:Number = -5;
      
      private const §<!E§:int = 1500;
      
      private const §28§:int = 3500;
      
      private const §?Q§:int = 1500;
      
      private var §%!1§:Boolean = false;
      
      private var §@C§:Boolean = false;
      
      private var §7p§:Number = -5;
      
      private var §0d§:Number = -5;
      
      private var §^! §:Number = -5;
      
      private var §@!G§:Number = 0;
      
      private var §[7§:int = 0;
      
      private var §]!+§:Number = 0;
      
      private var §'9§:Number = 0;
      
      private var §^W§:Number = 0;
      
      private var §?O§:Number = 1000;
      
      private var §7!F§:Boolean = false;
      
      private var §+r§:§@H§;
      
      public function §=!$§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§+r§ = param1;
         §;S§.mTryToFly = true;
         this.§^W§ = 0;
      }
      
      private function get §-§() : Number
      {
         return §[=§ * scale;
      }
      
      override public function addDamageParticles(param1:§2!H§, param2:int) : void
      {
         if(param2 < 2 || this.§?O§ < §"!<§)
         {
            return;
         }
         if(this.§0d§ != this.§ use§ || param2 > 20)
         {
            this.§7a§(1,param2 > 20);
         }
         this.§?O§ = 0;
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         if(!this.§,?§(param1))
         {
            return false;
         }
         §=w§.§ o§.particles.§4#§(§<!6§.§7!M§,§2!H§.§+!7§,§<!6§.§8!!§,§'[§().GetPosition().x,§'[§().GetPosition().y,-1,"",§<!6§.§2!2§);
         this.§+w§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§[!E§ && this.§7p§ == this.§ use§)
         {
            this.§+w§();
         }
         if(param1 < 12 && param1 > 5 && this.§%!1§)
         {
            §,H§(§%h§.§=c§);
            _loc7_ = §`Y§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§%!1§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§[!E§)
         {
            this.§,?§(null);
            §[!D§ = true;
            this.§+w§(0);
            return true;
         }
         return false;
      }
      
      private function §+w§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§7p§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§7p§ = param1;
         }
         else
         {
            this.§7p§ = this.§<!E§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§;!%§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§?O§ += param1;
         §[!D§ = true;
         if(this.§7p§ != this.§ use§)
         {
            this.§7p§ -= param1;
            if(this.§7p§ < 0)
            {
               if(this.§^W§ >= 1)
               {
                  this.§7p§ = this.§ use§;
                  this.§^W§ = 1;
                  this.§7@§(this.§-§);
                  this.§0d§ = this.§28§;
                  §@!+§.§`Z§(false);
               }
               else
               {
                  this.§^W§ += 0.2;
               }
               this.§7@§(this.§-§ * this.§^W§,§4>§.material.mValues[§5b§.§>!2§],§4>§.material.mValues[§5b§.§^!0§],§4>§.material.mValues[§5b§.§0!,§]);
               §;S§.setScale(this.§^W§ * scale);
            }
            else if(this.§7p§ <= param1)
            {
               _loc2_ = new Vector.<§;!%§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§[!N§.§%Q§,§'[§().GetPosition().x,§'[§().GetPosition().y,_loc2_);
               this.§,?§(null);
               §1>§ = "BIRD_ORANGE_BIG";
               §4>§ = §6<§.§6H§(§1>§);
               sprite.scaleX = this.§^W§;
               sprite.scaleY = this.§^W§;
            }
         }
         else if(this.§0d§ != this.§ use§)
         {
            if(this.§%!1§)
            {
               this.§0d§ -= param1;
               if(this.§0d§ < 0)
               {
                  this.§@C§ = true;
                  this.§0d§ = this.§ use§;
                  this.§^! § = this.§?Q§;
                  §,H§(§%h§.§"h§);
               }
            }
         }
         else if(this.§@C§)
         {
            if(this.§^! § > 0)
            {
               this.§^! § -= param1;
               this.§@!G§ -= param1;
               if(this.§@!G§ <= 0)
               {
                  this.§@!G§ = this.§?Q§ / 5;
                  this.§]!+§ = (Math.random() * 100 - 50) * 10;
                  this.§'9§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§^! § / this.§?Q§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§[7§;
               if(this.§[7§ % 3 == 0)
               {
                  §;S§.setScale(_loc3_ * scale);
                  this.§7@§(this.§-§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = §'[§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§]!+§,this.§'9§),§'[§().GetPosition());
                  _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§7a§(0.02,true);
               }
            }
            else
            {
               this.§7!F§ = true;
               this.§+r§.§&I§(this);
            }
         }
      }
      
      private function §7@§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §'[§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.SetRadius(param1);
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
      
      override public function addTrail() : void
      {
         if(!§[!E§)
         {
            super.addTrail();
         }
      }
      
      private function §7a§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§'[§().GetFixtureList().GetShape() as b2CircleShape).GetRadius();
         var _loc4_:Number = §8!A§() / 40;
         var _loc5_:int = 1 + _loc4_ * §1!=§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§-§;
         if((_loc5_ *= _loc7_ * 3 * param1) > 30)
         {
            _loc5_ = 30;
         }
         if(param2)
         {
            _loc5_ = 8;
            _loc4_ = 8;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_ / 3)
         {
            _loc6_ += Math.random() * (720 / _loc5_);
            _loc8_ = (Math.random() * this.§-§ - this.§-§ / 2) * 2 * _loc7_;
            §=w§.§ o§.particles.§4#§(§<!6§.§=#§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§'[§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §;!E§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§-§ - this.§-§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §=w§.§ o§.particles.§4#§(§<!6§.§9<§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§'[§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§<!6§.§#4§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§[!E§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §,?§(param1:§@H§) : Boolean
      {
         if(§"f§)
         {
            return false;
         }
         §,!F§.§!!C§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §"f§ = true;
         return true;
      }
   }
}
