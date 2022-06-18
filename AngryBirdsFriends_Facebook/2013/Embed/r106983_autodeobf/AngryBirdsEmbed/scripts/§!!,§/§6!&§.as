package §!!,§
{
   import §!D§.§5O§;
   import §!D§.§7D§;
   import §#!@§.Sprite;
   import §'0§.§]!2§;
   import §3u§.§7b§;
   import §6h§.§[!4§;
   import §9s§.§^9§;
   import §;!'§.§3!6§;
   import §;!'§.§4&§;
   import §;!'§.§=j§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §6!&§ extends §0!E§
   {
      
      public static const §<!C§:int = 241 * §^9§.§5T§ / 2;
      
      private static const §-S§:int = 200;
       
      
      private const §7!+§:Number = -5;
      
      private const §3!N§:int = 1500;
      
      private const §!,§:int = 3500;
      
      private const §=n§:int = 1500;
      
      private var §?!K§:Boolean = false;
      
      private var §<n§:Boolean = false;
      
      private var §51§:Number = -5;
      
      private var § var§:Number = -5;
      
      private var §?0§:Number = -5;
      
      private var §9y§:Number = 0;
      
      private var §8f§:int = 0;
      
      private var §7!'§:Number = 0;
      
      private var §=g§:Number = 0;
      
      private var §,!$§:Number = 0;
      
      private var §`!E§:Number = 1000;
      
      private var §4]§:Boolean = false;
      
      private var §7!H§:§^!0§;
      
      public function §6!&§(param1:§^!0§, param2:Sprite, param3:b2World, param4:§^9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§7!H§ = param1;
         §!t§.mTryToFly = true;
         this.§,!$§ = 0;
      }
      
      private function get §6z§() : Number
      {
         return §<!C§ * scale;
      }
      
      override public function addDamageParticles(param1:§5O§, param2:int) : void
      {
         if(param2 < 2 || this.§`!E§ < §-S§)
         {
            return;
         }
         if(this.§ var§ != this.§7!+§ || param2 > 20)
         {
            this.§+^§(1,param2 > 20);
         }
         this.§`!E§ = 0;
      }
      
      override public function activateSpecialPower(param1:§^!0§) : Boolean
      {
         if(!this.§"!O§(param1))
         {
            return false;
         }
         §[!4§.§continue§.particles.§3S§(§7D§.§!!K§,§5O§.§#!K§,§7D§.§+!L§,§ 7§().GetPosition().x,§ 7§().GetPosition().y,-1,"",§7D§.§-N§);
         this.§;t§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§-!A§ && this.§51§ == this.§7!+§)
         {
            this.§;t§();
         }
         if(param1 < 12 && param1 > 5 && this.§?!K§)
         {
            §<!I§(§4&§.§0!=§);
            _loc7_ = §;U§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§?!K§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§-!A§)
         {
            this.§"!O§(null);
            §8w§ = true;
            this.§;t§(0);
            return true;
         }
         return false;
      }
      
      private function §;t§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§51§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§51§ = param1;
         }
         else
         {
            this.§51§ = this.§3!N§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§`Q§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§`!E§ += param1;
         §8w§ = true;
         if(this.§51§ != this.§7!+§)
         {
            this.§51§ -= param1;
            if(this.§51§ < 0)
            {
               if(this.§,!$§ >= 1)
               {
                  this.§51§ = this.§7!+§;
                  this.§,!$§ = 1;
                  this.§@]§(this.§6z§);
                  this.§ var§ = this.§!,§;
                  §7b§.§]J§(false);
               }
               else
               {
                  this.§,!$§ += 0.2;
               }
               this.§@]§(this.§6z§ * this.§,!$§,§=q§.material.mValues[§3!6§.§4I§],§=q§.material.mValues[§3!6§.§;!2§],§=q§.material.mValues[§3!6§.§6!H§]);
               §!t§.setScale(this.§,!$§ * scale);
            }
            else if(this.§51§ <= param1)
            {
               _loc2_ = new Vector.<§`Q§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§-n§.§!k§,§ 7§().GetPosition().x,§ 7§().GetPosition().y,_loc2_);
               this.§"!O§(null);
               §#+§ = "BIRD_ORANGE_BIG";
               §=q§ = §=j§.§=c§(§#+§);
               sprite.scaleX = this.§,!$§;
               sprite.scaleY = this.§,!$§;
            }
         }
         else if(this.§ var§ != this.§7!+§)
         {
            if(this.§?!K§)
            {
               this.§ var§ -= param1;
               if(this.§ var§ < 0)
               {
                  this.§<n§ = true;
                  this.§ var§ = this.§7!+§;
                  this.§?0§ = this.§=n§;
                  §<!I§(§4&§.§catch§);
               }
            }
         }
         else if(this.§<n§)
         {
            if(this.§?0§ > 0)
            {
               this.§?0§ -= param1;
               this.§9y§ -= param1;
               if(this.§9y§ <= 0)
               {
                  this.§9y§ = this.§=n§ / 5;
                  this.§7!'§ = (Math.random() * 100 - 50) * 10;
                  this.§=g§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§?0§ / this.§=n§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§8f§;
               if(this.§8f§ % 3 == 0)
               {
                  §!t§.setScale(_loc3_ * scale);
                  this.§@]§(this.§6z§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = § 7§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§7!'§,this.§=g§),§ 7§().GetPosition());
                  _loc4_.SetAngle(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§+^§(0.02,true);
               }
            }
            else
            {
               this.§4]§ = true;
               this.§7!H§.§10§(this);
            }
         }
      }
      
      private function §@]§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = § 7§()).GetFixtureList()).GetShape() as b2CircleShape;
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
         if(!§-!A§)
         {
            super.addTrail();
         }
      }
      
      private function §+^§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§ 7§().GetFixtureList().GetShape() as b2CircleShape).GetRadius();
         var _loc4_:Number = §5!2§() / 40;
         var _loc5_:int = 1 + _loc4_ * §,!@§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§6z§;
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
            _loc8_ = (Math.random() * this.§6z§ - this.§6z§ / 2) * 2 * _loc7_;
            §[!4§.§continue§.particles.§3S§(§7D§.§[N§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,§ 7§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§ 7§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §`L§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§6z§ - this.§6z§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §[!4§.§continue§.particles.§3S§(§7D§.§!W§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,§ 7§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§ 7§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§7D§.§1!%§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§-!A§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §"!O§(param1:§^!0§) : Boolean
      {
         if(§,!N§)
         {
            return false;
         }
         §]!2§.§>!;§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §,!N§ = true;
         return true;
      }
   }
}
