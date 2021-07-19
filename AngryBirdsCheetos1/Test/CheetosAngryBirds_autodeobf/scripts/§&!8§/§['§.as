package §&!8§
{
   import § g§.§<n§;
   import § o§.b2Body;
   import § o§.b2Fixture;
   import § o§.b2World;
   import §!r§.§"B§;
   import §!r§.§3!!§;
   import §!r§.§9!,§;
   import §,§.§ p§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §]!S§.b2CircleShape;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §['§ extends §]V§
   {
      
      public static const §%^§:int = 241 * § p§.§]!E§ / 2;
      
      private static const §8F§:int = 200;
       
      
      private const §0w§:Number = -5;
      
      private const §>!C§:int = 1500;
      
      private const §&!`§:int = 3500;
      
      private const §[!1§:int = 1500;
      
      private var §#!S§:Boolean = false;
      
      private var §;!O§:Boolean = false;
      
      private var §-,§:Number = -5;
      
      private var §7!g§:Number = -5;
      
      private var §@!Y§:Number = -5;
      
      private var §&e§:Number = 0;
      
      private var §+$§:int = 0;
      
      private var §4Y§:Number = 0;
      
      private var §;!A§:Number = 0;
      
      private var §"q§:Number = 0;
      
      private var §#!<§:Number = 1000;
      
      private var §`!'§:Boolean = false;
      
      private var §8! §:§+!6§;
      
      public function §['§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§8! § = param1;
         §5d§.mTryToFly = true;
         this.§"q§ = 0;
      }
      
      private function get §+U§() : Number
      {
         return §%^§ * scale;
      }
      
      override public function addDamageParticles(param1:§do§, param2:int) : void
      {
         if(param2 < 2 || this.§#!<§ < §8F§)
         {
            return;
         }
         if(this.§7!g§ != this.§0w§ || param2 > 20)
         {
            this.§0m§(1,param2 > 20);
         }
         this.§#!<§ = 0;
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         if(!this.§^!?§(param1))
         {
            return false;
         }
         §@!Z§.§;!,§.particles.addParticle(§7!?§.§`f§,§do§.§[N§,§7!?§.§<!h§,§`e§().GetPosition().x,§`e§().GetPosition().y,-1,"",§7!?§.§7^§);
         this.§5!L§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§,B§ && this.§-,§ == this.§0w§)
         {
            this.§5!L§();
         }
         if(param1 < 12 && param1 > 5 && this.§#!S§)
         {
            §0!5§(§"B§.§>!W§);
            _loc7_ = §+_§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§#!S§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§,B§)
         {
            this.§^!?§(null);
            §!]§ = true;
            this.§5!L§(0);
            return true;
         }
         return false;
      }
      
      private function §5!L§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§-,§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§-,§ = param1;
         }
         else
         {
            this.§-,§ = this.§>!C§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§[g§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§#!<§ += param1;
         §!]§ = true;
         if(this.§-,§ != this.§0w§)
         {
            this.§-,§ -= param1;
            if(this.§-,§ < 0)
            {
               if(this.§"q§ >= 1)
               {
                  this.§-,§ = this.§0w§;
                  this.§"q§ = 1;
                  this.§[o§(this.§+U§);
                  this.§7!g§ = this.§&!`§;
                  §<n§.§@B§(false);
               }
               else
               {
                  this.§"q§ += 0.2;
               }
               this.§[o§(this.§+U§ * this.§"q§,§0o§.material.mValues[§9!,§.§?!=§],§0o§.material.mValues[§9!,§.§&b§],§0o§.material.mValues[§9!,§.§3z§]);
               §5d§.setScale(this.§"q§ * scale);
            }
            else if(this.§-,§ <= param1)
            {
               _loc2_ = new Vector.<§[g§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§7@§.§^S§,§`e§().GetPosition().x,§`e§().GetPosition().y,_loc2_);
               this.§^!?§(null);
               §>p§ = "BIRD_ORANGE_BIG";
               §0o§ = §3!!§.§^!-§(§>p§);
               sprite.scaleX = this.§"q§;
               sprite.scaleY = this.§"q§;
            }
         }
         else if(this.§7!g§ != this.§0w§)
         {
            if(this.§#!S§)
            {
               this.§7!g§ -= param1;
               if(this.§7!g§ < 0)
               {
                  this.§;!O§ = true;
                  this.§7!g§ = this.§0w§;
                  this.§@!Y§ = this.§[!1§;
                  §0!5§(§"B§.§!G§);
               }
            }
         }
         else if(this.§;!O§)
         {
            if(this.§@!Y§ > 0)
            {
               this.§@!Y§ -= param1;
               this.§&e§ -= param1;
               if(this.§&e§ <= 0)
               {
                  this.§&e§ = this.§[!1§ / 5;
                  this.§4Y§ = (Math.random() * 100 - 50) * 10;
                  this.§;!A§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§@!Y§ / this.§[!1§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§+$§;
               if(this.§+$§ % 3 == 0)
               {
                  §5d§.setScale(_loc3_ * scale);
                  this.§[o§(this.§+U§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = §`e§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§4Y§,this.§;!A§),§`e§().GetPosition());
                  _loc4_.§@o§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§0m§(0.02,true);
               }
            }
            else
            {
               this.§`!'§ = true;
               this.§8! §.§9?§(this);
            }
         }
      }
      
      private function §[o§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §`e§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§#!3§(param1);
         if(param2 >= 0)
         {
            _loc6_.§?!8§(param2);
            _loc5_.§2!<§();
         }
         if(param3 >= 0)
         {
            _loc6_.§`!f§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§6K§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§,B§)
         {
            super.addTrail();
         }
      }
      
      private function §0m§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (§`e§().GetFixtureList().GetShape() as b2CircleShape).§[!;§();
         var _loc4_:Number = §&L§() / 40;
         var _loc5_:int = 1 + _loc4_ * §>!+§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§+U§;
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
            _loc8_ = (Math.random() * this.§+U§ - this.§+U§ / 2) * 2 * _loc7_;
            §@!Z§.§;!,§.particles.addParticle(§7!?§.§=!H§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§`e§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §?!b§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§+U§ - this.§+U§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §@!Z§.§;!,§.particles.addParticle(§7!?§.§=!E§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§`e§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§7!?§.§`4§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§,B§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §^!?§(param1:§+!6§) : Boolean
      {
         if(§8!d§)
         {
            return false;
         }
         §,!7§.§5%§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §8!d§ = true;
         return true;
      }
   }
}
