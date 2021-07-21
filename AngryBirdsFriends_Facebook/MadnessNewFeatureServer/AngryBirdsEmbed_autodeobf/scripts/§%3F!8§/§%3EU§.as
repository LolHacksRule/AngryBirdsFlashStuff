package §?!8§
{
   import §#+§.§6!C§;
   import §#+§.§@!<§;
   import §+[§.§%G§;
   import §+_§.§7[§;
   import §2E§.§5!8§;
   import §2E§.§96§;
   import §2E§.§]B§;
   import §90§.Sprite;
   import §>!O§.§[+§;
   import §`!4§.§6l§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §>U§ extends §-!1§
   {
      
      public static const §=Q§:int = 241 * §6l§.§%!<§ / 2;
      
      private static const §-o§:int = 200;
       
      
      private const §"c§:Number = -5;
      
      private const §'O§:int = 1500;
      
      private const §7§:int = 1500;
      
      private const §^G§:int = 1500;
      
      private var §<d§:Boolean = false;
      
      private var §`#§:Boolean = false;
      
      private var §9!C§:Number = -5;
      
      private var §9!'§:Number = -5;
      
      private var §0S§:Number = -5;
      
      private var §2!"§:Number = 0;
      
      private var §`n§:int = 0;
      
      private var §[?§:Number = 0;
      
      private var §&b§:Number = 0;
      
      private var §+!2§:Number = 0;
      
      private var §#l§:Number = 1000;
      
      private var §@o§:Boolean = false;
      
      private var §7v§:§#K§;
      
      public function §>U§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§7v§ = param1;
         §2W§.mTryToFly = true;
         this.§+!2§ = 0;
      }
      
      private function get §?!!§() : Number
      {
         return §=Q§ * scale;
      }
      
      override public function addDamageParticles(param1:§6!C§, param2:int) : void
      {
         if(param2 < 2 || this.§#l§ < §-o§)
         {
            return;
         }
         if(this.§9!'§ != this.§"c§ || param2 > 20)
         {
            this.§4O§(1,param2 > 20);
         }
         this.§#l§ = 0;
      }
      
      override public function activateSpecialPower(param1:§#K§) : Boolean
      {
         if(!this.§>@§(param1))
         {
            return false;
         }
         §[+§.§,!&§.particles.§-!$§(§@!<§.§ !D§,§6!C§.§ l§,§@!<§.§50§,§<!9§().GetPosition().x,§<!9§().GetPosition().y,-1,"",§@!<§.§[U§);
         this.§,,§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§8!2§ && this.§9!C§ == this.§"c§)
         {
            this.§,,§();
         }
         if(param1 < 12 && param1 > 5 && this.§<d§)
         {
            §;o§(§96§.§'e§);
            _loc7_ = §`]§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§<d§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§8!2§)
         {
            this.§>@§(null);
            §=!3§ = true;
            this.§,,§(0);
            return true;
         }
         return false;
      }
      
      private function §,,§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§9!C§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§9!C§ = param1;
         }
         else
         {
            this.§9!C§ = this.§'O§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§]f§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§#l§ += param1;
         §=!3§ = true;
         if(this.§9!C§ != this.§"c§)
         {
            this.§9!C§ -= param1;
            if(this.§9!C§ < 0)
            {
               if(this.§+!2§ >= 1)
               {
                  this.§9!C§ = this.§"c§;
                  this.§+!2§ = 1;
                  this.§0N§(this.§?!!§);
                  this.§9!'§ = this.§7§;
                  §7[§.§#!@§(false);
               }
               else
               {
                  this.§+!2§ += 0.2;
               }
               this.§0N§(this.§?!!§ * this.§+!2§,§=#§.material.mValues[§5!8§.§+e§],§=#§.material.mValues[§5!8§.§<A§],§=#§.material.mValues[§5!8§.§?i§]);
               §2W§.setScale(this.§+!2§ * scale);
            }
            else if(this.§9!C§ <= param1)
            {
               _loc2_ = new Vector.<§]f§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§2-§.§7!F§,§<!9§().GetPosition().x,§<!9§().GetPosition().y,_loc2_);
               this.§>@§(null);
               §4h§ = "BIRD_ORANGE_BIG";
               §=#§ = §]B§.§1l§(§4h§);
               sprite.scaleX = this.§+!2§;
               sprite.scaleY = this.§+!2§;
            }
         }
         else if(this.§9!'§ != this.§"c§)
         {
            this.§9!'§ -= param1;
            if(this.§9!'§ < 0)
            {
               this.§`#§ = true;
               this.§9!'§ = this.§"c§;
               this.§0S§ = this.§^G§;
               §;o§(§96§.§7l§);
            }
         }
         else if(this.§`#§)
         {
            if(this.§0S§ > 0)
            {
               this.§0S§ -= param1;
               this.§2!"§ -= param1;
               if(this.§2!"§ <= 0)
               {
                  this.§2!"§ = this.§^G§ / 5;
                  this.§[?§ = (Math.random() * 100 - 50) * 10;
                  this.§&b§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§0S§ / this.§^G§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§`n§;
               if(this.§`n§ % 3 == 0)
               {
                  §2W§.setScale(_loc3_ * scale);
                  this.§0N§(this.§?!!§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = §<!9§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§[?§,this.§&b§),§<!9§().GetPosition());
                  _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§4O§(0.02,true);
               }
            }
            else
            {
               this.§@o§ = true;
               this.§7v§.§`d§(this);
            }
         }
      }
      
      private function §0N§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §<!9§()).GetFixtureList()).GetShape() as b2CircleShape;
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
         if(!§8!2§)
         {
            super.addTrail();
         }
      }
      
      private function §4O§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§<!9§().GetFixtureList().GetShape() as b2CircleShape).GetRadius();
         var _loc4_:Number = §?!+§() / 40;
         var _loc5_:int = 1 + _loc4_ * §?E§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§?!!§;
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
            _loc8_ = (Math.random() * this.§?!!§ - this.§?!!§ / 2) * 2 * _loc7_;
            §[+§.§,!&§.particles.§-!$§(§@!<§.§,6§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,§<!9§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§<!9§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §9_§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§?!!§ - this.§?!!§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §[+§.§,!&§.particles.§-!$§(§@!<§.§!;§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,§<!9§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§<!9§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§@!<§.§;z§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§8!2§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §>@§(param1:§#K§) : Boolean
      {
         if(§null§)
         {
            return false;
         }
         §%G§.§'[§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §null§ = true;
         return true;
      }
   }
}
