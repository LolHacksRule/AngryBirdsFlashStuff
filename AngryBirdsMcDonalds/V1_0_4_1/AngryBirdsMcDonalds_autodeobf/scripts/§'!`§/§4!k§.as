package §'!`§
{
   import §%!5§.§7;§;
   import §+!o§.b2CircleShape;
   import §-0§.b2Body;
   import §-0§.b2Fixture;
   import §-0§.b2World;
   import §0@§.Sprite;
   import §55§.§>![§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   import §^!%§.b2Vec2;
   
   public class §4!k§ extends §3C§
   {
       
      
      private const §'!S§:int = 241 * §>![§.§%!k§ / 2;
      
      private const §`h§:Number = -5;
      
      private const §%!q§:int = 1500;
      
      private const §9"§:int = 3500;
      
      private const §@t§:int = 1500;
      
      private var §0!m§:Boolean = false;
      
      private var §3@§:Boolean = false;
      
      private var §@#§:Number = -5;
      
      private var §"n§:Number = -5;
      
      private var §2! §:Number = -5;
      
      private var §'!c§:Number = 0;
      
      private var §4Z§:int = 0;
      
      private var §0!]§:Number = 0;
      
      private var §@!]§:Number = 0;
      
      private var §0!f§:Boolean = false;
      
      private var §#H§:Boolean = false;
      
      private var §-X§:§for§;
      
      public function §4!k§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§-X§ = param1;
      }
      
      private function get §9!N§() : Number
      {
         return this.§'!S§ * scale;
      }
      
      override public function addDamageParticles(param1:§,!j§, param2:int) : void
      {
         if(param2 < 6)
         {
            return;
         }
         if(this.§"n§ != this.§`h§)
         {
            this.§-h§();
         }
      }
      
      override public function activateSpecialPower(param1:§for§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §7;§.§1h§.particles.§4!2§(§3!f§.§;§,§,!j§.§`!F§,§3!f§.§%<§,§&!p§().GetPosition().x,§&!p§().GetPosition().y,-1,"",§3!f§.§[0§);
         this.§throw§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§%!Y§)
         {
            this.§throw§();
         }
         this.§0!m§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§%!Y§)
         {
            this.§throw§(0);
            return true;
         }
         return false;
      }
      
      private function §throw§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§@#§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§@#§ = param1;
         }
         else
         {
            this.§@#§ = this.§%!q§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:b2Body = null;
         var _loc4_:b2Vec2 = null;
         §9H§ = true;
         if(this.§@#§ != this.§`h§)
         {
            this.§@#§ -= param1;
            if(this.§@#§ < 0)
            {
               this.§+r§(this.§9!N§);
               this.§@#§ = this.§`h§;
               this.§"n§ = this.§9"§;
               sprite.scaleX = 1;
               sprite.scaleY = 1;
               §@!5§.setScale(1 * scale);
            }
            else if(this.§@#§ <= param1)
            {
               super.activateSpecialPower(null);
               super.activateSpecialPower(null);
               this.§+r§(this.§9!N§ * 0.5);
               §@!5§.setScale(0.5 * scale);
            }
         }
         else if(this.§"n§ != this.§`h§)
         {
            §9H§ = false;
            if(this.§0!m§)
            {
               this.§"n§ -= param1;
               if(this.§"n§ < 0)
               {
                  this.§3@§ = true;
                  this.§"n§ = this.§`h§;
                  this.§2! § = this.§@t§;
               }
            }
         }
         else if(this.§3@§)
         {
            if(this.§2! § > 0)
            {
               this.§2! § -= param1;
               this.§'!c§ -= param1;
               if(this.§'!c§ <= 0)
               {
                  this.§'!c§ = this.§@t§ / 5;
                  this.§0!]§ = (Math.random() * 100 - 50) * 10;
                  this.§@!]§ = (Math.random() * 100 - 50) * 10;
               }
               _loc2_ = this.§2! § / this.§@t§;
               if(_loc2_ > 1)
               {
                  _loc2_ = 1;
               }
               ++this.§4Z§;
               if(this.§4Z§ % 3 == 0)
               {
                  §@!5§.setScale(_loc2_ * scale);
                  this.§+r§(this.§9!N§ * _loc2_,0.1,0.5,0);
                  _loc3_ = §&!p§();
                  _loc4_ = _loc3_.GetLinearVelocity();
                  _loc3_.ApplyImpulse(new b2Vec2(this.§0!]§,this.§@!]§),§&!p§().GetPosition());
                  _loc3_.§1!<§(Math.atan2(-_loc4_.x,_loc4_.y) - Math.PI / 2);
                  this.§-h§(0.02);
               }
            }
            else
            {
               this.§0!f§ = true;
            }
         }
      }
      
      private function §+r§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §&!p§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§0P§(param1);
         if(param2 >= 0)
         {
            _loc6_.§ N§(param2);
            _loc5_.§;!a§();
         }
         if(param3 >= 0)
         {
            _loc6_.§^!7§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§+[§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return this.§0!f§;
      }
      
      override public function addTrail() : void
      {
         if(!§%!Y§)
         {
            super.addTrail();
         }
      }
      
      private function §-h§(param1:Number = 1) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:Number = §,8§() / 40;
         var _loc3_:int = 1 + _loc2_ * § !$§(false) * 1;
         var _loc4_:Number = 90;
         var _loc5_:Number = (§&!p§().GetFixtureList().GetShape() as b2CircleShape).§!-§() / this.§9!N§;
         _loc3_ *= _loc5_ * 3 * param1;
         if(_loc3_ > 30)
         {
            _loc3_ = 30;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc3_ / 3)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            §7;§.§1h§.particles.§4!2§(§3!f§.§>v§,§,!j§.§++§,§3!f§.§"!&§,§&!p§().GetPosition().x + (Math.random() * this.§9!N§ - this.§9!N§ / 2) * 2 * _loc5_,§&!p§().GetPosition().y + (Math.random() * this.§9!N§ - this.§9!N§ / 2) * 2 * _loc5_,1000,"",0,0,0,5,_loc2_ * 5,Math.random() * 0.75 + 0.25);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc8_ = 0.5 * _loc2_ + _loc2_ * (Math.random() * 0.5);
            §7;§.§1h§.particles.§4!2§(§3!f§.§1w§,§,!j§.§++§,§3!f§.§"!&§,§&!p§().GetPosition().x + (Math.random() * this.§9!N§ - this.§9!N§ / 2) * 2 * _loc5_,§&!p§().GetPosition().y + (Math.random() * this.§9!N§ - this.§9!N§ / 2) * 2 * _loc5_,1250,"",§3!f§.§-!Z§(§8+§),_loc8_ * Math.cos(_loc7_) * _loc5_,-_loc8_ * Math.sin(_loc7_) * _loc5_,5,_loc8_ * 20,1);
            _loc6_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§%!Y§)
         {
            return 1;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(§%!Y§)
         {
            return 101;
         }
         return 0;
      }
   }
}
