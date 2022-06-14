package §9"%§
{
   import §#]§.b2Vec2;
   import §%Q§.§6G§;
   import §%Q§.§9!n§;
   import §%Q§.§;!y§;
   import §1!$§.Sprite;
   import §3![§.§^"1§;
   import §48§.b2Body;
   import §48§.b2Fixture;
   import §48§.b2World;
   import §6!B§.§>!E§;
   import §9"!§.§9"3§;
   import §<!`§.b2CircleShape;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   
   public class §,!8§ extends § H§
   {
      
      public static const §9!3§:int = 241 * §9"3§.§'"F§ / 2;
      
      private static const §5!g§:int = 200;
       
      
      private const §8!8§:Number = -5;
      
      private const §9!R§:int = 1500;
      
      private const §with§:int = 3500;
      
      private const §#!v§:int = 1500;
      
      private var §1!k§:Boolean = false;
      
      private var §#4§:Boolean = false;
      
      private var §<3§:Number = -5;
      
      private var §4!p§:Number = -5;
      
      private var §-"3§:Number = -5;
      
      private var §#J§:Number = 0;
      
      private var §@!Z§:int = 0;
      
      private var §-!p§:Number = 0;
      
      private var §!"<§:Number = 0;
      
      private var §0'§:Number = 0;
      
      private var § !x§:Number = 1000;
      
      private var §-!0§:Boolean = false;
      
      private var §`@§:§]a§;
      
      public function §,!8§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§`@§ = param1;
         §"!&§.mTryToFly = true;
         this.§0'§ = 0;
      }
      
      private function get §-!8§() : Number
      {
         return §9!3§ * scale;
      }
      
      override public function addDamageParticles(param1:§^!f§, param2:int) : void
      {
         if(param2 < 2 || this.§ !x§ < §5!g§)
         {
            return;
         }
         if(this.§4!p§ != this.§8!8§)
         {
            this.§?!z§();
         }
         this.§ !x§ = 0;
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         if(!this.§+n§(param1))
         {
            return false;
         }
         §#6§.§6!z§.particles.§;!u§(§'G§.§5!&§,§^!f§.§?i§,§'G§.§9"4§,§=!y§().GetPosition().x,§=!y§().GetPosition().y,-1,"",§'G§.§9!q§);
         this.§<"2§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§-!a§ && this.§<3§ == this.§8!8§)
         {
            this.§<"2§();
         }
         if(param1 < 12 && param1 > 5 && this.§1!k§)
         {
            §&x§(§;!y§.§#!w§);
            _loc7_ = §[" §;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§1!k§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§-!a§)
         {
            this.§+n§(null);
            §'!Z§ = true;
            this.§<"2§(0);
            return true;
         }
         return false;
      }
      
      private function §<"2§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§<3§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§<3§ = param1;
         }
         else
         {
            this.§<3§ = this.§9!R§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§&!r§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§ !x§ += param1;
         §'!Z§ = true;
         if(this.§<3§ != this.§8!8§)
         {
            this.§<3§ -= param1;
            if(this.§<3§ < 0)
            {
               if(this.§0'§ >= 1)
               {
                  this.§<3§ = this.§8!8§;
                  this.§0'§ = 1;
                  this.§"!R§(this.§-!8§);
                  this.§4!p§ = this.§with§;
                  §^"1§.§1!g§(false);
               }
               else
               {
                  this.§0'§ += 0.2;
               }
               this.§"!R§(this.§-!8§ * this.§0'§,§=a§.material.mValues[§9!n§.§4!,§],§=a§.material.mValues[§9!n§.§#!_§],§=a§.material.mValues[§9!n§.§5"-§]);
               §"!&§.setScale(this.§0'§ * scale);
            }
            else if(this.§<3§ <= param1)
            {
               _loc2_ = new Vector.<§&!r§>(1,true);
               _loc2_[0] = this;
               §%4§.addExplosions(§^!x§.§`§,§=!y§().GetPosition().x,§=!y§().GetPosition().y,_loc2_);
               this.§+n§(null);
               §2!>§ = "BIRD_ORANGE_BIG";
               §=a§ = §6G§.§1!P§(§2!>§);
               sprite.scaleX = this.§0'§;
               sprite.scaleY = this.§0'§;
            }
         }
         else if(this.§4!p§ != this.§8!8§)
         {
            if(this.§1!k§)
            {
               this.§4!p§ -= param1;
               if(this.§4!p§ < 0)
               {
                  this.§#4§ = true;
                  this.§4!p§ = this.§8!8§;
                  this.§-"3§ = this.§#!v§;
                  §&x§(§;!y§.§@v§);
               }
            }
         }
         else if(this.§#4§)
         {
            if(this.§-"3§ > 0)
            {
               this.§-"3§ -= param1;
               this.§#J§ -= param1;
               if(this.§#J§ <= 0)
               {
                  this.§#J§ = this.§#!v§ / 5;
                  this.§-!p§ = (Math.random() * 100 - 50) * 10;
                  this.§!"<§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§-"3§ / this.§#!v§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§@!Z§;
               if(this.§@!Z§ % 3 == 0)
               {
                  §"!&§.setScale(_loc3_ * scale);
                  this.§"!R§(this.§-!8§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = §=!y§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§-!p§,this.§!"<§),§=!y§().GetPosition());
                  _loc4_.§>"4§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§?!z§(0.02,true);
               }
            }
            else
            {
               this.§-!0§ = true;
               this.§`@§.§-!,§(this);
            }
         }
      }
      
      private function §"!R§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §=!y§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§^!i§(param1);
         if(param2 >= 0)
         {
            _loc6_.§1"0§(param2);
            _loc5_.§5"4§();
         }
         if(param3 >= 0)
         {
            _loc6_.§[!<§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§54§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§-!a§)
         {
            super.addTrail();
         }
      }
      
      private function §?!z§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§=!y§().GetFixtureList().GetShape() as b2CircleShape).§ u§();
         var _loc4_:Number = §#%§() / 40;
         var _loc5_:int = 1 + _loc4_ * §;!"§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§-!8§;
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
            _loc8_ = (Math.random() * this.§-!8§ - this.§-!8§ / 2) * 2 * _loc7_;
            §#6§.§6!z§.particles.§;!u§(§'G§.§0!;§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§=!y§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §<2§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§-!8§ - this.§-!8§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §#6§.§6!z§.particles.§;!u§(§'G§.§`!O§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§=!y§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§'G§.§45§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§-!a§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §+n§(param1:§]a§) : Boolean
      {
         if(§%!q§)
         {
            return false;
         }
         §>!E§.§@"8§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §%!q§ = true;
         return true;
      }
   }
}
