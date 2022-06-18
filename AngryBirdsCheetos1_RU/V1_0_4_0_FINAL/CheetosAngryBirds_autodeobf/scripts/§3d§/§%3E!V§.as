package §3d§
{
   import §&C§.§7!1§;
   import §&C§.§[b§;
   import §&C§.§`=§;
   import §0V§.§`!O§;
   import §3§.Sprite;
   import §9t§.b2Body;
   import §9t§.b2Fixture;
   import §9t§.b2World;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   import §[!E§.b2CircleShape;
   import §^Q§.§,^§;
   import §^q§.b2Vec2;
   
   public class §>!V§ extends §6!7§
   {
      
      public static const §0n§:int = 241 * §`!O§.§?!O§ / 2;
       
      
      private const §;!T§:Number = -5;
      
      private const §#a§:int = 1500;
      
      private const §!Y§:int = 3500;
      
      private const § ,§:int = 1500;
      
      private var §@!6§:Boolean = false;
      
      private var §+!;§:Boolean = false;
      
      private var §+!V§:Number = -5;
      
      private var §0U§:Number = -5;
      
      private var §@!]§:Number = -5;
      
      private var §=!A§:Number = 0;
      
      private var §=!1§:int = 0;
      
      private var §'[§:Number = 0;
      
      private var §-P§:Number = 0;
      
      private var §?!X§:Boolean = false;
      
      private var §@!a§:§@?§;
      
      public function §>!V§(param1:§@?§, param2:Sprite, param3:b2World, param4:§`!O§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§@!a§ = param1;
         §5!@§.mTryToFly = true;
      }
      
      private function get §!Z§() : Number
      {
         return §0n§ * scale;
      }
      
      override public function addDamageParticles(param1:§"^§, param2:int) : void
      {
         if(param2 < 6)
         {
            return;
         }
         if(this.§0U§ != this.§;!T§)
         {
            this.§8!8§();
         }
      }
      
      override public function activateSpecialPower(param1:§@?§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §,^§.§0K§.particles.addParticle(§7!%§.§,b§,§"^§.§ $§,§7!%§.§9!?§,§=!,§().GetPosition().x,§=!,§().GetPosition().y,-1,"",§7!%§.§?!]§);
         this.§!?§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 < 12 && param1 > 5)
         {
            §96§(§7!1§.§2!3§);
            _loc7_ = §2>§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         if(!§4r§)
         {
            this.§!?§();
         }
         this.§@!6§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§4r§)
         {
            super.activateSpecialPower(null);
            §!>§ = true;
            this.§!?§(0);
            return true;
         }
         return false;
      }
      
      private function §!?§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§+!V§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§+!V§ = param1;
         }
         else
         {
            this.§+!V§ = this.§#a§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§20§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         §!>§ = true;
         if(this.§+!V§ != this.§;!T§)
         {
            this.§+!V§ -= param1;
            if(this.§+!V§ < 0)
            {
               this.§%v§(this.§!Z§);
               this.§+!V§ = this.§;!T§;
               this.§0U§ = this.§!Y§;
               sprite.scaleX = 1;
               sprite.scaleY = 1;
               §5!@§.setScale(1 * scale);
            }
            else if(this.§+!V§ <= param1)
            {
               _loc2_ = new Vector.<§20§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§6!9§.§%!]§,§=!,§().GetPosition().x,§=!,§().GetPosition().y,_loc2_);
               super.activateSpecialPower(null);
               §6O§ = "BIRD_ORANGE_BIG";
               §>!C§ = §[b§.§9R§(§6O§);
               this.§%v§(this.§!Z§ * 0.5,§>!C§.material.mValues[§`=§.§'e§],§>!C§.material.mValues[§`=§.§5$§],§>!C§.material.mValues[§`=§.§[e§]);
               §5!@§.setScale(0.5 * scale);
            }
         }
         else if(this.§0U§ != this.§;!T§)
         {
            if(this.§@!6§)
            {
               this.§0U§ -= param1;
               if(this.§0U§ < 0)
               {
                  this.§+!;§ = true;
                  this.§0U§ = this.§;!T§;
                  this.§@!]§ = this.§ ,§;
                  §96§(§7!1§.§=S§);
               }
            }
         }
         else if(this.§+!;§)
         {
            if(this.§@!]§ > 0)
            {
               this.§@!]§ -= param1;
               this.§=!A§ -= param1;
               if(this.§=!A§ <= 0)
               {
                  this.§=!A§ = this.§ ,§ / 5;
                  this.§'[§ = (Math.random() * 100 - 50) * 10;
                  this.§-P§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§@!]§ / this.§ ,§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§=!1§;
               if(this.§=!1§ % 3 == 0)
               {
                  §5!@§.setScale(_loc3_ * scale);
                  this.§%v§(this.§!Z§ * _loc3_);
                  _loc5_ = (_loc4_ = §=!,§()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§'[§,this.§-P§),§=!,§().GetPosition());
                  _loc4_.§"N§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§8!8§(0.02);
               }
            }
            else
            {
               this.§?!X§ = true;
               this.§@!a§.§#z§(this);
            }
         }
      }
      
      private function §%v§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §=!,§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§^n§(param1);
         if(param2 >= 0)
         {
            _loc6_.§1`§(param2);
            _loc5_.§]!^§();
         }
         if(param3 >= 0)
         {
            _loc6_.§-7§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§5!"§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§4r§)
         {
            super.addTrail();
         }
      }
      
      private function §8!8§(param1:Number = 1) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:Number = §#;§() / 40;
         var _loc3_:int = 1 + _loc2_ * §6p§(false) * 1;
         var _loc4_:Number = 90;
         var _loc5_:Number = (§=!,§().GetFixtureList().GetShape() as b2CircleShape).§-h§() / this.§!Z§;
         _loc3_ *= _loc5_ * 3 * param1;
         if(_loc3_ > 30)
         {
            _loc3_ = 30;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc3_ / 3)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            §,^§.§0K§.particles.addParticle(§7!%§.§'!W§,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x + (Math.random() * this.§!Z§ - this.§!Z§ / 2) * 2 * _loc5_,§=!,§().GetPosition().y + (Math.random() * this.§!Z§ - this.§!Z§ / 2) * 2 * _loc5_,1000,"",0,0,0,5,_loc2_ * 5,Math.random() * 0.75 + 0.25);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc2_ + _loc2_ * (Math.random() * 0.5);
            §,^§.§0K§.particles.addParticle(§7!%§.§7,§,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x + (Math.random() * this.§!Z§ - this.§!Z§ / 2) * 2 * _loc5_,§=!,§().GetPosition().y + (Math.random() * this.§!Z§ - this.§!Z§ / 2) * 2 * _loc5_,1250,"",§7!%§.§<!X§,_loc8_ * Math.cos(_loc7_) * _loc5_,-_loc8_ * Math.sin(_loc7_) * _loc5_,5,_loc8_ * 20,1);
            _loc6_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§4r§)
         {
            return 1;
         }
         return -1;
      }
   }
}
