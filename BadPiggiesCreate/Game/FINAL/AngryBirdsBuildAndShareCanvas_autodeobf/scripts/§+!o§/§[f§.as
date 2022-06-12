package §+!o§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"!9§.b2CircleShape;
   import §%c§.§=!X§;
   import §+S§.b2Body;
   import §+S§.b2Fixture;
   import §+S§.b2World;
   import §,a§.§+!Z§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §[f§ extends §>G§
   {
      
      public static const §@r§:int = 241 * §!w§.§4!-§ / 2;
      
      private static const §9!z§:int = 200;
       
      
      private const §"x§:Number = -5;
      
      private const §-a§:int = 1500;
      
      private const §#!v§:int = 3500;
      
      private const §,!s§:int = 1500;
      
      private var §#!`§:Boolean = false;
      
      private var §;]§:Boolean = false;
      
      private var §]!m§:Number = -5;
      
      private var §4!Q§:Number = -5;
      
      private var §60§:Number = -5;
      
      private var §&!g§:Number = 0;
      
      private var §4!x§:int = 0;
      
      private var §>9§:Number = 0;
      
      private var §%!k§:Number = 0;
      
      private var §30§:Number = 0;
      
      private var §16§:Number = 1000;
      
      private var §else §:Boolean = false;
      
      private var §^<§:§?"-§;
      
      public function §[f§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§^<§ = param1;
         §[!g§.mTryToFly = true;
         this.§30§ = 0;
      }
      
      private function get §1!=§() : Number
      {
         return §@r§ * scale;
      }
      
      override public function addDamageParticles(param1:§-5§, param2:int) : void
      {
         if(param2 < 2 || this.§16§ < §9!z§)
         {
            return;
         }
         if(this.§4!Q§ != this.§"x§)
         {
            this.§9"-§();
         }
         this.§16§ = 0;
      }
      
      override public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §=!X§.§!'§.particles.§[b§(§&!>§.§5"5§,§-5§.§&b§,§&!>§.§?"0§,getBody().GetPosition().x,getBody().GetPosition().y,-1,"",§&!>§.§`!g§);
         this.§^!C§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§6S§ && this.§]!m§ == this.§"x§)
         {
            this.§^!C§();
         }
         if(param1 < 12 && param1 > 5 && this.§#!`§)
         {
            §"!a§(§+"&§.§`!!§);
            _loc7_ = §@!P§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§#!`§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§6S§)
         {
            super.activateSpecialPower(null);
            §46§ = true;
            this.§^!C§(0);
            return true;
         }
         return false;
      }
      
      private function §^!C§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§]!m§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§]!m§ = param1;
         }
         else
         {
            this.§]!m§ = this.§-a§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§]"5§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§16§ += param1;
         §46§ = true;
         if(this.§]!m§ != this.§"x§)
         {
            this.§]!m§ -= param1;
            if(this.§]!m§ < 0)
            {
               if(this.§30§ >= 1)
               {
                  this.§]!m§ = this.§"x§;
                  this.§30§ = 1;
                  this.§^!,§(this.§1!=§);
                  this.§4!Q§ = this.§#!v§;
               }
               else
               {
                  this.§30§ += 0.2;
               }
               this.§^!,§(this.§1!=§ * this.§30§,§6"'§.material.mValues[§+!Z§.§8";§],§6"'§.material.mValues[§+!Z§.§,!>§],§6"'§.material.mValues[§+!Z§.§9",§]);
               §[!g§.setScale(this.§30§ * scale);
            }
            else if(this.§]!m§ <= param1)
            {
               _loc2_ = new Vector.<§]"5§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§]!i§.§2";§,getBody().GetPosition().x,getBody().GetPosition().y,_loc2_);
               super.activateSpecialPower(null);
               §!F§ = "BIRD_ORANGE_BIG";
               §6"'§ = §<!m§.§"!F§(§!F§);
               sprite.scaleX = this.§30§;
               sprite.scaleY = this.§30§;
            }
         }
         else if(this.§4!Q§ != this.§"x§)
         {
            if(this.§#!`§)
            {
               this.§4!Q§ -= param1;
               if(this.§4!Q§ < 0)
               {
                  this.§;]§ = true;
                  this.§4!Q§ = this.§"x§;
                  this.§60§ = this.§,!s§;
                  §"!a§(§+"&§.§<!k§);
               }
            }
         }
         else if(this.§;]§)
         {
            if(this.§60§ > 0)
            {
               this.§60§ -= param1;
               this.§&!g§ -= param1;
               if(this.§&!g§ <= 0)
               {
                  this.§&!g§ = this.§,!s§ / 5;
                  this.§>9§ = (Math.random() * 100 - 50) * 10;
                  this.§%!k§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§60§ / this.§,!s§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§4!x§;
               if(this.§4!x§ % 3 == 0)
               {
                  §[!g§.setScale(_loc3_ * scale);
                  this.§^!,§(this.§1!=§ * _loc3_);
                  _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§>9§,this.§%!k§),getBody().GetPosition());
                  _loc4_.§-!7§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§9"-§(0.02);
               }
            }
            else
            {
               this.§else § = true;
               this.§^<§.removeObject(this);
            }
         }
      }
      
      private function §^!,§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§7s§(param1);
         if(param2 >= 0)
         {
            _loc6_.§,!p§(param2);
            _loc5_.§3!L§();
         }
         if(param3 >= 0)
         {
            _loc6_.§=!i§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§8!^§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§6S§)
         {
            super.addTrail();
         }
      }
      
      private function §9"-§(param1:Number = 1) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:Number = §0$§() / 40;
         var _loc3_:int = 1 + _loc2_ * §0&§(false) * 0.9;
         var _loc4_:Number = Math.PI / 2;
         var _loc5_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§4!P§() / this.§1!=§;
         _loc3_ *= _loc5_ * 3 * param1;
         if(_loc3_ > 30)
         {
            _loc3_ = 30;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc3_ / 3)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            _loc6_ = (Math.random() * this.§1!=§ - this.§1!=§ / 2) * 2 * _loc5_;
            §=!X§.§!'§.particles.§[b§(§&!>§.§^!R§,§-5§.§5Q§,§&!>§.§&W§,getBody().GetPosition().x + Math.cos(_loc4_) * _loc6_,getBody().GetPosition().y + Math.sin(_loc4_) * _loc6_,1000,"",0,0,0,5,_loc2_ * 5,Math.random() * 0.75 + 0.25);
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc3_)
         {
            _loc8_ = (_loc4_ += §#!V§(Math.random() * (720 / _loc3_))) / (180 / Math.PI);
            _loc6_ = (Math.random() * this.§1!=§ - this.§1!=§ / 2) * 2 * _loc5_;
            _loc9_ = 0.5 * _loc2_ + _loc2_ * (Math.random() * 0.5);
            §=!X§.§!'§.particles.§[b§(§&!>§.§]!c§,§-5§.§5Q§,§&!>§.§&W§,getBody().GetPosition().x + Math.cos(_loc4_) * _loc6_,getBody().GetPosition().y + Math.sin(_loc4_) * _loc6_,1250,"",§&!>§.§7+§,_loc9_ * Math.cos(_loc8_) * _loc5_,-_loc9_ * Math.sin(_loc8_) * _loc5_,5,_loc9_ * 20,1);
            _loc7_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§6S§)
         {
            return 1;
         }
         return -1;
      }
   }
}
