package §&!P§
{
   import §"J§.b2Body;
   import §"J§.b2Fixture;
   import §"J§.b2World;
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   import §2k§.b2CircleShape;
   import §<!a§.b2Vec2;
   import §]";§.§!<§;
   import §]";§.§0A§;
   import §]";§.§34§;
   import §]§.§?h§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   
   public class §0!Z§ extends §9`§
   {
      
      public static const §>D§:int = 241 * §,4§.§,^§ / 2;
      
      private static const §5!m§:int = 200;
       
      
      private const §#"4§:Number = -5;
      
      private const §3!t§:int = 1500;
      
      private const §&!B§:int = 3500;
      
      private const §^Q§:int = 1500;
      
      private var §=%§:Boolean = false;
      
      private var §'"-§:Boolean = false;
      
      private var §->§:Number = -5;
      
      private var §?!I§:Number = -5;
      
      private var §+!B§:Number = -5;
      
      private var §2Z§:Number = 0;
      
      private var §5q§:int = 0;
      
      private var §`u§:Number = 0;
      
      private var §[!L§:Number = 0;
      
      private var §#V§:Number = 0;
      
      private var §0";§:Number = 1000;
      
      private var §<!u§:Boolean = false;
      
      private var § !§:§^!!§;
      
      public function §0!Z§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§ !§ = param1;
         §8C§.mTryToFly = true;
         this.§#V§ = 0;
      }
      
      private function get §<!E§() : Number
      {
         return §>D§ * scale;
      }
      
      override public function addDamageParticles(param1:§6!Q§, param2:int) : void
      {
         if(param2 < 2 || this.§0";§ < §5!m§)
         {
            return;
         }
         if(this.§?!I§ != this.§#"4§)
         {
            this.§9!B§();
         }
         this.§0";§ = 0;
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         if(!this.§9&§(param1))
         {
            return false;
         }
         §'_§.§=M§.particles.§'p§(§`!E§.§"!2§,§6!Q§.§;"#§,§`!E§.§+"=§,getBody().GetPosition().x,getBody().GetPosition().y,-1,"",§`!E§.§6!O§);
         this.§^>§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§+^§ && this.§->§ == this.§#"4§)
         {
            this.§^>§();
         }
         if(param1 < 12 && param1 > 5 && this.§=%§)
         {
            §^!x§(§34§.§do§);
            _loc7_ = §8W§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§=%§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§+^§)
         {
            this.§9&§(null);
            §[r§ = true;
            this.§^>§(0);
            return true;
         }
         return false;
      }
      
      private function §^>§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§->§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§->§ = param1;
         }
         else
         {
            this.§->§ = this.§3!t§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§``§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§0";§ += param1;
         §[r§ = true;
         if(this.§->§ != this.§#"4§)
         {
            this.§->§ -= param1;
            if(this.§->§ < 0)
            {
               if(this.§#V§ >= 1)
               {
                  this.§->§ = this.§#"4§;
                  this.§#V§ = 1;
                  this.§+!Q§(this.§<!E§);
                  this.§?!I§ = this.§&!B§;
                  §?h§.§^I§(false);
               }
               else
               {
                  this.§#V§ += 0.2;
               }
               this.§+!Q§(this.§<!E§ * this.§#V§,§@!G§.material.mValues[§0A§.§3U§],§@!G§.material.mValues[§0A§.§8!@§],§@!G§.material.mValues[§0A§.§4&§]);
               §8C§.setScale(this.§#V§ * scale);
            }
            else if(this.§->§ <= param1)
            {
               _loc2_ = new Vector.<§``§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§=!Y§.§?!>§,getBody().GetPosition().x,getBody().GetPosition().y,_loc2_);
               this.§9&§(null);
               §+!A§ = "BIRD_ORANGE_BIG";
               §@!G§ = §!<§.§[!@§(§+!A§);
               sprite.scaleX = this.§#V§;
               sprite.scaleY = this.§#V§;
            }
         }
         else if(this.§?!I§ != this.§#"4§)
         {
            if(this.§=%§)
            {
               this.§?!I§ -= param1;
               if(this.§?!I§ < 0)
               {
                  this.§'"-§ = true;
                  this.§?!I§ = this.§#"4§;
                  this.§+!B§ = this.§^Q§;
                  §^!x§(§34§.§,!t§);
               }
            }
         }
         else if(this.§'"-§)
         {
            if(this.§+!B§ > 0)
            {
               this.§+!B§ -= param1;
               this.§2Z§ -= param1;
               if(this.§2Z§ <= 0)
               {
                  this.§2Z§ = this.§^Q§ / 5;
                  this.§`u§ = (Math.random() * 100 - 50) * 10;
                  this.§[!L§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§+!B§ / this.§^Q§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§5q§;
               if(this.§5q§ % 3 == 0)
               {
                  §8C§.setScale(_loc3_ * scale);
                  this.§+!Q§(this.§<!E§ * _loc3_,0.00001,0,0);
                  _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§`u§,this.§[!L§),getBody().GetPosition());
                  _loc4_.§4!Y§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§9!B§(0.02,true);
               }
            }
            else
            {
               this.§<!u§ = true;
               this.§ !§.removeObject(this);
            }
         }
      }
      
      private function §+!Q§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§`^§(param1);
         if(param2 >= 0)
         {
            _loc6_.§5`§(param2);
            _loc5_.§"!N§();
         }
         if(param3 >= 0)
         {
            _loc6_.§!!#§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§1!2§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§+^§)
         {
            super.addTrail();
         }
      }
      
      private function §9!B§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§?!L§();
         var _loc4_:Number = §[!_§() / 40;
         var _loc5_:int = 1 + _loc4_ * §9!3§(true) * 0.9;
         var _loc6_:Number = Math.PI / 2;
         var _loc7_:Number = _loc3_ / this.§<!E§;
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
            _loc8_ = (Math.random() * this.§<!E§ - this.§<!E§ / 2) * 2 * _loc7_;
            §'_§.§=M§.particles.§'p§(§`!E§.§5!p§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x + Math.cos(_loc6_) * _loc8_,getBody().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = (_loc6_ += §^t§(Math.random() * (720 / _loc5_))) / (180 / Math.PI);
            _loc8_ = (Math.random() * this.§<!E§ - this.§<!E§ / 2) * 2 * _loc7_;
            _loc11_ = 0.5 * _loc4_ + _loc4_ * (Math.random() * 0.5);
            §'_§.§=M§.particles.§'p§(§`!E§.§@!1§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x + Math.cos(_loc6_) * _loc8_,getBody().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§`!E§.§;P§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
            _loc9_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§+^§)
         {
            return 1;
         }
         return -1;
      }
      
      private function §9&§(param1:§^!!§) : Boolean
      {
         if(§3H§)
         {
            return false;
         }
         §0"#§.§<!&§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
         §3H§ = true;
         return true;
      }
   }
}
