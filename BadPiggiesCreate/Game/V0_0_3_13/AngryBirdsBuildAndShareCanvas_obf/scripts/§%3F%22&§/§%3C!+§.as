package §?"&§
{
   import § ""§.§4!n§;
   import § ""§.§7Q§;
   import § ""§.§<9§;
   import §1!z§.b2Vec2;
   import §5!]§.b2CircleShape;
   import §7!q§.b2Body;
   import §7!q§.b2Fixture;
   import §7!q§.b2World;
   import §8!E§.§?!X§;
   import §=!<§.§5!U§;
   import §["8§.§ !>§;
   import §["8§.§=!i§;
   import §`L§.Sprite;
   
   public class §<!+§ extends §`!k§
   {
      
      public static const §<!e§:int = 241 * §?!X§.§57§ / 2;
      
      private static const §]F§:int = 200;
       
      
      private const §5!G§:Number = -5;
      
      private const §&!h§:int = 1500;
      
      private const §-!^§:int = 3500;
      
      private const §1!k§:int = 1500;
      
      private var §2!X§:Boolean = false;
      
      private var §7">§:Boolean = false;
      
      private var §,!S§:Number = -5;
      
      private var §6!M§:Number = -5;
      
      private var §%"1§:Number = -5;
      
      private var §<c§:Number = 0;
      
      private var §'!R§:int = 0;
      
      private var § !§:Number = 0;
      
      private var §0V§:Number = 0;
      
      private var §'! §:Number = 1000;
      
      private var §-N§:Boolean = false;
      
      private var §00§:§5b§;
      
      public function §<!+§(param1:§5b§, param2:Sprite, param3:b2World, param4:§?!X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§00§ = param1;
         §!!8§.mTryToFly = true;
      }
      
      private function get §1C§() : Number
      {
         return §<!e§ * scale;
      }
      
      override public function addDamageParticles(param1:§ !>§, param2:int) : void
      {
         if(param2 < 2 || this.§'! § < §]F§)
         {
            return;
         }
         if(this.§6!M§ != this.§5!G§)
         {
            this.§%m§();
         }
         this.§'! § = 0;
      }
      
      override public function activateSpecialPower(param1:§5b§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §5!U§.§,!E§.particles.§-?§(§=!i§.§6&§,§ !>§.§?!T§,§=!i§.§>?§,getBody().GetPosition().x,getBody().GetPosition().y,-1,"",§=!i§.§&f§);
         this.§4"&§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§=!3§ && this.§,!S§ == this.§5!G§)
         {
            this.§4"&§();
         }
         if(param1 < 12 && param1 > 5 && this.§2!X§)
         {
            §@!,§(§<9§.§3=§);
            _loc7_ = §`X§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§2!X§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§=!3§)
         {
            super.activateSpecialPower(null);
            §9!g§ = true;
            this.§4"&§(0);
            return true;
         }
         return false;
      }
      
      private function §4"&§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§,!S§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§,!S§ = param1;
         }
         else
         {
            this.§,!S§ = this.§&!h§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§"!q§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§'! § += param1;
         §9!g§ = true;
         if(this.§,!S§ != this.§5!G§)
         {
            this.§,!S§ -= param1;
            if(this.§,!S§ < 0)
            {
               this.§=!n§(this.§1C§);
               this.§,!S§ = this.§5!G§;
               this.§6!M§ = this.§-!^§;
               sprite.scaleX = 1;
               sprite.scaleY = 1;
               §!!8§.setScale(1 * scale);
            }
            else if(this.§,!S§ <= param1)
            {
               _loc2_ = new Vector.<§"!q§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§?!l§.§@!7§,getBody().GetPosition().x,getBody().GetPosition().y,_loc2_);
               super.activateSpecialPower(null);
               §=!+§ = "BIRD_ORANGE_BIG";
               §<@§ = §4!n§.§]4§(§=!+§);
               this.§=!n§(this.§1C§ * 0.5,§<@§.material.mValues[§7Q§.§[i§],§<@§.material.mValues[§7Q§.§ S§],§<@§.material.mValues[§7Q§.§4!q§]);
               §!!8§.setScale(0.5 * scale);
            }
         }
         else if(this.§6!M§ != this.§5!G§)
         {
            if(this.§2!X§)
            {
               this.§6!M§ -= param1;
               if(this.§6!M§ < 0)
               {
                  this.§7">§ = true;
                  this.§6!M§ = this.§5!G§;
                  this.§%"1§ = this.§1!k§;
                  §@!,§(§<9§.§%!b§);
               }
            }
         }
         else if(this.§7">§)
         {
            if(this.§%"1§ > 0)
            {
               this.§%"1§ -= param1;
               this.§<c§ -= param1;
               if(this.§<c§ <= 0)
               {
                  this.§<c§ = this.§1!k§ / 5;
                  this.§ !§ = (Math.random() * 100 - 50) * 10;
                  this.§0V§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§%"1§ / this.§1!k§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§'!R§;
               if(this.§'!R§ % 3 == 0)
               {
                  §!!8§.setScale(_loc3_ * scale);
                  this.§=!n§(this.§1C§ * _loc3_);
                  _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§ !§,this.§0V§),getBody().GetPosition());
                  _loc4_.§4z§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§%m§(0.02);
               }
            }
            else
            {
               this.§-N§ = true;
               this.§00§.removeObject(this);
            }
         }
      }
      
      private function §=!n§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§^!F§(param1);
         if(param2 >= 0)
         {
            _loc6_.§["3§(param2);
            _loc5_.§3`§();
         }
         if(param3 >= 0)
         {
            _loc6_.§"!#§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§'!c§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§=!3§)
         {
            super.addTrail();
         }
      }
      
      private function §%m§(param1:Number = 1) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:Number = §]X§() / 40;
         var _loc3_:int = 1 + _loc2_ * §,!U§(false) * 0.9;
         var _loc4_:Number = Math.PI / 2;
         var _loc5_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§,f§() / this.§1C§;
         _loc3_ *= _loc5_ * 3 * param1;
         if(_loc3_ > 30)
         {
            _loc3_ = 30;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc3_ / 3)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            _loc6_ = (Math.random() * this.§1C§ - this.§1C§ / 2) * 2 * _loc5_;
            §5!U§.§,!E§.particles.§-?§(§=!i§.§+1§,§ !>§.§!!]§,§=!i§.§^!3§,getBody().GetPosition().x + Math.cos(_loc4_) * _loc6_,getBody().GetPosition().y + Math.sin(_loc4_) * _loc6_,1000,"",0,0,0,5,_loc2_ * 5,Math.random() * 0.75 + 0.25);
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc3_)
         {
            _loc8_ = (_loc4_ += §,![§(Math.random() * (720 / _loc3_))) / (180 / Math.PI);
            _loc6_ = (Math.random() * this.§1C§ - this.§1C§ / 2) * 2 * _loc5_;
            _loc9_ = 0.5 * _loc2_ + _loc2_ * (Math.random() * 0.5);
            §5!U§.§,!E§.particles.§-?§(§=!i§.§#!+§,§ !>§.§!!]§,§=!i§.§^!3§,getBody().GetPosition().x + Math.cos(_loc4_) * _loc6_,getBody().GetPosition().y + Math.sin(_loc4_) * _loc6_,1250,"",§=!i§.§&!Y§,_loc9_ * Math.cos(_loc8_) * _loc5_,-_loc9_ * Math.sin(_loc8_) * _loc5_,5,_loc9_ * 20,1);
            _loc7_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§=!3§)
         {
            return 1;
         }
         return -1;
      }
   }
}
