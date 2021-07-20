package §3!#§
{
   import §&!Y§.b2Body;
   import §&!Y§.b2Fixture;
   import §&!Y§.b2World;
   import §+!d§.b2CircleShape;
   import §0!2§.§5"L§;
   import §5!G§.§&2§;
   import §70§.§^!>§;
   import §7F§.b2Vec2;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §=%§.§7!g§;
   import §=%§.§=!C§;
   import §=%§.§>"-§;
   import §>s§.§+m§;
   import §]!v§.Sprite;
   
   public class §;!§ extends §!!k§
   {
      
      public static const §9!z§:int = 241 * §5"L§.§@>§ / 2;
      
      private static const §9]§:int = 200;
       
      
      private const §-!t§:Number = -5;
      
      private const §?S§:int = 1500;
      
      private const §5!6§:int = 3500;
      
      private const §3!y§:int = 1500;
      
      private var §6!E§:Boolean = false;
      
      private var §%!u§:Boolean = false;
      
      private var §!!d§:Number = -5;
      
      private var §&!q§:Number = -5;
      
      private var §9"J§:Number = -5;
      
      private var §6" §:Number = 0;
      
      private var §2"A§:int = 0;
      
      private var §4!4§:Number = 0;
      
      private var §3!f§:Number = 0;
      
      private var § "A§:Number = 0;
      
      private var § "'§:Number = 1000;
      
      private var §<!r§:Boolean = false;
      
      private var §8!3§:§04§;
      
      public function §;!§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§8!3§ = param1;
         §<!K§.mTryToFly = true;
         this.§ "A§ = 0;
      }
      
      private function get §'!L§() : Number
      {
         return §9!z§ * scale;
      }
      
      override public function addDamageParticles(param1:§3!p§, param2:int) : void
      {
         if(param2 < 2 || this.§ "'§ < §9]§)
         {
            return;
         }
         if(this.§&!q§ != this.§-!t§ || param2 > 20)
         {
            this.§]Q§(1,param2 > 20);
         }
         this.§ "'§ = 0;
      }
      
      override public function activateSpecialPower(param1:§04§) : Boolean
      {
         if(!this.§+!y§(param1))
         {
            return false;
         }
         §&2§.§],§.particles.§`"6§(§4! §.§-!B§,§3!p§.§"z§,§4! §.§1!G§,§`!y§().GetPosition().x,§`!y§().GetPosition().y,-1,"",§4! §.§in §);
         this.§!" §(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§'!G§ && this.§!!d§ == this.§-!t§)
         {
            this.§!" §();
         }
         if(param1 < 12 && param1 > 5 && this.§6!E§)
         {
            §!?§(§7!g§.§<q§);
            _loc7_ = §!!U§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§6!E§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§'!G§)
         {
            this.§+!y§(null);
            §'b§ = true;
            this.§!" §(0);
            return true;
         }
         return false;
      }
      
      private function §!" §(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§!!d§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§!!d§ = param1;
         }
         else
         {
            this.§!!d§ = this.§?S§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§5"A§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§ "'§ += param1;
         §'b§ = true;
         if(this.§!!d§ != this.§-!t§)
         {
            this.§!!d§ -= param1;
            if(this.§!!d§ < 0)
            {
               if(this.§ "A§ >= 1)
               {
                  this.§!!d§ = this.§-!t§;
                  this.§ "A§ = 1;
                  this.§?H§(this.§'!L§);
                  this.§&!q§ = this.§5!6§;
                  §^!>§.§;"K§(false);
               }
               else
               {
                  this.§ "A§ += 0.2;
               }
               this.§?H§(this.§'!L§ * this.§ "A§,§8a§.material.mValues[§=!C§.§"T§],§8a§.material.mValues[§=!C§.§[,§],§8a§.material.mValues[§=!C§.§1"$§]);
               §<!K§.setScale(this.§ "A§ * scale);
            }
            else if(this.§!!d§ <= param1)
            {
               _loc2_ = new Vector.<§5"A§>(1,true);
               _loc2_[0] = this;
               §@H§.addExplosions(§0"A§.§5"=§,§`!y§().GetPosition().x,§`!y§().GetPosition().y,_loc2_);
               this.§+!y§(null);
               §=-§ = "BIRD_ORANGE_BIG";
               §8a§ = §>"-§.§0@§(§=-§);
               sprite.scaleX = this.§ "A§;
               sprite.scaleY = this.§ "A§;
            }
         }
         else if(this.§&!q§ != this.§-!t§)
         {
            if(this.§6!E§)
            {
               this.§&!q§ -= param1;
               if(this.§&!q§ < 0)
               {
                  this.§%!u§ = true;
                  this.§&!q§ = this.§-!t§;
                  this.§9"J§ = this.§3!y§;
                  §!?§(§7!g§.§0"#§);
               }
            }
         }
         else if(this.§%!u§)
         {
            if(this.§9"J§ > 0)
            {
               this.§9"J§ -= param1;
               this.§6" § -= param1;
               if(this.§6" § <= 0)
               {
                  this.§6" § = this.§3!y§ / 5;
                  this.§4!4§ = (Math.random() * 100 - 50) * 10;
                  this.§3!f§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§9"J§ / this.§3!y§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§2"A§;
               if(this.§2"A§ % 3 == 0)
               {
                  §<!K§.setScale(_loc3_ * scale);
                  this.§?H§(this.§'!L§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = §`!y§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§4!4§,this.§3!f§),§`!y§().GetPosition());
                  _loc4_.§6j§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§]Q§(0.02,true);
               }
            }
            else
            {
               this.§<!r§ = true;
               this.§8!3§.§ !"§(this);
            }
         }
      }
      
      private function §?H§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §`!y§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§8!U§(param1);
         if(param2 >= 0)
         {
            _loc6_.§0"9§(param2);
            _loc5_.§;!l§();
         }
         if(param3 >= 0)
         {
            _loc6_.§"R§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§"!t§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§'!G§)
         {
            super.addTrail();
         }
      }
      
      private function §]Q§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§`!y§().GetFixtureList().GetShape() as b2CircleShape).§%!5§();
         var _loc4_:Number = §3l§() / 40;
         var _loc5_:int = 1 + _loc4_ * §+p§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§'!L§;
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
            _loc8_ = (Math.random() * this.§'!L§ - this.§'!L§ / 2) * 2 * _loc7_;
            §&2§.§],§.particles.§`"6§(§4! §.§#"#§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,§`!y§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§`!y§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §5p§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§'!L§ - this.§'!L§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §&2§.§],§.particles.§`"6§(§4! §.§<2§,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,§`!y§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§`!y§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§4! §.§<!Z§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§'!G§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §+!y§(param1:§04§) : Boolean
      {
         if(§^d§)
         {
            return false;
         }
         §+m§.§'!k§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §^d§ = true;
         return true;
      }
   }
}
