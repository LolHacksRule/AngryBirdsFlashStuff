package §4j§
{
   import § !J§.§%M§;
   import §+S§.b2Vec2;
   import §-h§.§ use§;
   import §7F§.§2M§;
   import §8T§.b2Body;
   import §8T§.b2Fixture;
   import §8T§.b2World;
   import §9!§.§']§;
   import §9!§.§,!l§;
   import §9!§.§9'§;
   import §<!D§.b2CircleShape;
   import §[!4§.§-#§;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §`!n§.Sprite;
   
   public class §!!C§ extends §@!K§
   {
      
      public static const §5-§:int = 241 * §%M§.§'!Y§ / 2;
      
      private static const §[!K§:int = 200;
       
      
      private const §;Q§:Number = -5;
      
      private const §%!>§:int = 1500;
      
      private const §+!i§:int = 3500;
      
      private const §>^§:int = 1500;
      
      private var §^!b§:Boolean = false;
      
      private var §=U§:Boolean = false;
      
      private var § Q§:Number = -5;
      
      private var §[x§:Number = -5;
      
      private var §`b§:Number = -5;
      
      private var §<l§:Number = 0;
      
      private var §[J§:int = 0;
      
      private var §`!+§:Number = 0;
      
      private var §]!a§:Number = 0;
      
      private var §,!-§:Number = 0;
      
      private var §05§:Number = 1000;
      
      private var §7"§:Boolean = false;
      
      private var §9!J§:§0K§;
      
      public function §!!C§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§9!J§ = param1;
         §%!$§.mTryToFly = true;
         this.§,!-§ = 0;
      }
      
      private function get §1!]§() : Number
      {
         return §5-§ * scale;
      }
      
      override public function addDamageParticles(param1:§7!N§, param2:int) : void
      {
         if(param2 < 2 || this.§05§ < §[!K§)
         {
            return;
         }
         if(this.§[x§ != this.§;Q§)
         {
            this.§2%§();
         }
         this.§05§ = 0;
      }
      
      override public function activateSpecialPower(param1:§0K§) : Boolean
      {
         if(!this.§-c§(param1))
         {
            return false;
         }
         §2M§.§1?§.particles.§3X§(§,]§.§@C§,§7!N§.§<E§,§,]§.§#r§,§3H§().GetPosition().x,§3H§().GetPosition().y,-1,"",§,]§.§!o§);
         this.§@!P§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§8![§ && this.§ Q§ == this.§;Q§)
         {
            this.§@!P§();
         }
         if(param1 < 12 && param1 > 5 && this.§^!b§)
         {
            §@!!§(§9'§.§,!"§);
            _loc7_ = §4!6§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§^!b§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§8![§)
         {
            this.§-c§(null);
            §-8§ = true;
            this.§@!P§(0);
            return true;
         }
         return false;
      }
      
      private function §@!P§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§ Q§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§ Q§ = param1;
         }
         else
         {
            this.§ Q§ = this.§%!>§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§9M§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§05§ += param1;
         §-8§ = true;
         if(this.§ Q§ != this.§;Q§)
         {
            this.§ Q§ -= param1;
            if(this.§ Q§ < 0)
            {
               if(this.§,!-§ >= 1)
               {
                  this.§ Q§ = this.§;Q§;
                  this.§,!-§ = 1;
                  this.§[v§(this.§1!]§);
                  this.§[x§ = this.§+!i§;
                  § use§.§]![§(false);
               }
               else
               {
                  this.§,!-§ += 0.2;
               }
               this.§[v§(this.§1!]§ * this.§,!-§,§!!E§.material.mValues[§']§.§<F§],§!!E§.material.mValues[§']§.§'>§],§!!E§.material.mValues[§']§.§4!§]);
               §%!$§.setScale(this.§,!-§ * scale);
            }
            else if(this.§ Q§ <= param1)
            {
               _loc2_ = new Vector.<§9M§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§%!?§.§4!V§,§3H§().GetPosition().x,§3H§().GetPosition().y,_loc2_);
               this.§-c§(null);
               §`!p§ = "BIRD_ORANGE_BIG";
               §!!E§ = §,!l§.§<!<§(§`!p§);
               sprite.scaleX = this.§,!-§;
               sprite.scaleY = this.§,!-§;
            }
         }
         else if(this.§[x§ != this.§;Q§)
         {
            if(this.§^!b§)
            {
               this.§[x§ -= param1;
               if(this.§[x§ < 0)
               {
                  this.§=U§ = true;
                  this.§[x§ = this.§;Q§;
                  this.§`b§ = this.§>^§;
                  §@!!§(§9'§.§0,§);
               }
            }
         }
         else if(this.§=U§)
         {
            if(this.§`b§ > 0)
            {
               this.§`b§ -= param1;
               this.§<l§ -= param1;
               if(this.§<l§ <= 0)
               {
                  this.§<l§ = this.§>^§ / 5;
                  this.§`!+§ = (Math.random() * 100 - 50) * 10;
                  this.§]!a§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§`b§ / this.§>^§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§[J§;
               if(this.§[J§ % 3 == 0)
               {
                  §%!$§.setScale(_loc3_ * scale);
                  this.§[v§(this.§1!]§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = §3H§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§`!+§,this.§]!a§),§3H§().GetPosition());
                  _loc4_.§ !;§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§2%§(0.02,true);
               }
            }
            else
            {
               this.§7"§ = true;
               this.§9!J§.§8<§(this);
            }
         }
      }
      
      private function §[v§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §3H§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§<!6§(param1);
         if(param2 >= 0)
         {
            _loc6_.§4!"§(param2);
            _loc5_.§-!<§();
         }
         if(param3 >= 0)
         {
            _loc6_.§`N§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§'!L§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§8![§)
         {
            super.addTrail();
         }
      }
      
      private function §2%§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§3H§().GetFixtureList().GetShape() as b2CircleShape).§&!8§();
         var _loc4_:Number = §"g§() / 40;
         var _loc5_:int = 1 + _loc4_ * §>+§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§1!]§;
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
            _loc8_ = (Math.random() * this.§1!]§ - this.§1!]§ / 2) * 2 * _loc7_;
            §2M§.§1?§.particles.§3X§(§,]§.§3#§,§7!N§.§<!Z§,§,]§.§in §,§3H§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§3H§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §&!I§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§1!]§ - this.§1!]§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §2M§.§1?§.particles.§3X§(§,]§.§"@§,§7!N§.§<!Z§,§,]§.§in §,§3H§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§3H§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§,]§.§[S§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§8![§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §-c§(param1:§0K§) : Boolean
      {
         if(§0Q§)
         {
            return false;
         }
         §-#§.§"Q§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §0Q§ = true;
         return true;
      }
   }
}
