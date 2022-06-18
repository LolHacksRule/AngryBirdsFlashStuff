package §4n§
{
   import § `§.§"N§;
   import §#]§.§'5§;
   import §8T§.§@o§;
   import §9!#§.§+5§;
   import §9!#§.§-!'§;
   import §9!#§.§5y§;
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import §[!=§.§3r§;
   import §[!=§.§>Z§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §<!9§ extends §>!4§
   {
      
      public static const §>F§:int = 241 * §?!D§.§@!I§ / 2;
      
      private static const §<4§:int = 200;
       
      
      private const §&8§:Number = -5;
      
      private const § [§:int = 1500;
      
      private const §6m§:int = 3500;
      
      private const §'x§:int = 1500;
      
      private var §@!<§:Boolean = false;
      
      private var §=Z§:Boolean = false;
      
      private var §@m§:Number = -5;
      
      private var § =§:Number = -5;
      
      private var §8A§:Number = -5;
      
      private var §=]§:Number = 0;
      
      private var §4&§:int = 0;
      
      private var §;!-§:Number = 0;
      
      private var §"<§:Number = 0;
      
      private var §8`§:Number = 0;
      
      private var §#o§:Number = 1000;
      
      private var §5!3§:Boolean = false;
      
      private var §+§:§8y§;
      
      public function §<!9§(param1:§8y§, param2:Sprite, param3:b2World, param4:§?!D§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§+§ = param1;
         §`V§.mTryToFly = true;
         this.§8`§ = 0;
      }
      
      private function get §;=§() : Number
      {
         return §>F§ * scale;
      }
      
      override public function addDamageParticles(param1:§3r§, param2:int) : void
      {
         if(param2 < 2 || this.§#o§ < §<4§)
         {
            return;
         }
         if(this.§ =§ != this.§&8§ || param2 > 20)
         {
            this.§6N§(1,param2 > 20);
         }
         this.§#o§ = 0;
      }
      
      override public function activateSpecialPower(param1:§8y§) : Boolean
      {
         if(!this.§;j§(param1))
         {
            return false;
         }
         §'5§.§^;§.particles.§48§(§>Z§.§8!I§,§3r§.§+W§,§>Z§.§5T§,§^C§().GetPosition().x,§^C§().GetPosition().y,-1,"",§>Z§.§]9§);
         this.§9!1§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§8m§ && this.§@m§ == this.§&8§)
         {
            this.§9!1§();
         }
         if(param1 < 12 && param1 > 5 && this.§@!<§)
         {
            §2!%§(§+5§.§5!-§);
            _loc7_ = §'s§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§@!<§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§8m§)
         {
            this.§;j§(null);
            §"u§ = true;
            this.§9!1§(0);
            return true;
         }
         return false;
      }
      
      private function §9!1§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§@m§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§@m§ = param1;
         }
         else
         {
            this.§@m§ = this.§ [§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§@!4§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§#o§ += param1;
         §"u§ = true;
         if(this.§@m§ != this.§&8§)
         {
            this.§@m§ -= param1;
            if(this.§@m§ < 0)
            {
               if(this.§8`§ >= 1)
               {
                  this.§@m§ = this.§&8§;
                  this.§8`§ = 1;
                  this.§'M§(this.§;=§);
                  this.§ =§ = this.§6m§;
                  §"N§.§=3§(false);
               }
               else
               {
                  this.§8`§ += 0.2;
               }
               this.§'M§(this.§;=§ * this.§8`§,§'>§.material.mValues[§-!'§.§>"§],§'>§.material.mValues[§-!'§.§[-§],§'>§.material.mValues[§-!'§.§@!&§]);
               §`V§.setScale(this.§8`§ * scale);
            }
            else if(this.§@m§ <= param1)
            {
               _loc2_ = new Vector.<§@!4§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§!b§.§5!E§,§^C§().GetPosition().x,§^C§().GetPosition().y,_loc2_);
               this.§;j§(null);
               §"!!§ = "BIRD_ORANGE_BIG";
               §'>§ = §5y§.§6!%§(§"!!§);
               sprite.scaleX = this.§8`§;
               sprite.scaleY = this.§8`§;
            }
         }
         else if(this.§ =§ != this.§&8§)
         {
            if(this.§@!<§)
            {
               this.§ =§ -= param1;
               if(this.§ =§ < 0)
               {
                  this.§=Z§ = true;
                  this.§ =§ = this.§&8§;
                  this.§8A§ = this.§'x§;
                  §2!%§(§+5§.§1s§);
               }
            }
         }
         else if(this.§=Z§)
         {
            if(this.§8A§ > 0)
            {
               this.§8A§ -= param1;
               this.§=]§ -= param1;
               if(this.§=]§ <= 0)
               {
                  this.§=]§ = this.§'x§ / 5;
                  this.§;!-§ = (Math.random() * 100 - 50) * 10;
                  this.§"<§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§8A§ / this.§'x§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§4&§;
               if(this.§4&§ % 3 == 0)
               {
                  §`V§.setScale(_loc3_ * scale);
                  this.§'M§(this.§;=§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = §^C§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§;!-§,this.§"<§),§^C§().GetPosition());
                  _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§6N§(0.02,true);
               }
            }
            else
            {
               this.§5!3§ = true;
               this.§+§.§ t§(this);
            }
         }
      }
      
      private function §'M§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §^C§()).GetFixtureList()).GetShape() as b2CircleShape;
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
         if(!§8m§)
         {
            super.addTrail();
         }
      }
      
      private function §6N§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§^C§().GetFixtureList().GetShape() as b2CircleShape).GetRadius();
         var _loc4_:Number = §+$§() / 40;
         var _loc5_:int = 1 + _loc4_ * §<o§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§;=§;
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
            _loc8_ = (Math.random() * this.§;=§ - this.§;=§ / 2) * 2 * _loc7_;
            §'5§.§^;§.particles.§48§(§>Z§.§=P§,§3r§.§"H§,§>Z§.§%t§,§^C§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§^C§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §&!D§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§;=§ - this.§;=§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §'5§.§^;§.particles.§48§(§>Z§.§5e§,§3r§.§"H§,§>Z§.§%t§,§^C§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§^C§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§>Z§.§,R§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§8m§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §;j§(param1:§8y§) : Boolean
      {
         if(§&!2§)
         {
            return false;
         }
         §@o§.§@F§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §&!2§ = true;
         return true;
      }
   }
}
