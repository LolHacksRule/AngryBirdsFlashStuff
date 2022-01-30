package §4!#§
{
   import §!R§.§8u§;
   import §!R§.§>"=§;
   import §#?§.§%!O§;
   import §#?§.§8!§;
   import §#?§.§?![§;
   import §&!M§.b2Body;
   import §&!M§.b2Fixture;
   import §&!M§.b2World;
   import §,Y§.b2CircleShape;
   import §3!t§.b2Vec2;
   import §7"1§.§%W§;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   
   public class §?!5§ extends §@!m§
   {
      
      public static const §?K§:int = 241 * §"d§.§2!]§ / 2;
      
      private static const §<q§:int = 200;
       
      
      private const §!!r§:Number = -5;
      
      private const §[!_§:int = 1500;
      
      private const §=!Q§:int = 3500;
      
      private const §5T§:int = 1500;
      
      private var §&-§:Boolean = false;
      
      private var §<!U§:Boolean = false;
      
      private var §#"%§:Number = -5;
      
      private var §]"3§:Number = -5;
      
      private var §!!j§:Number = -5;
      
      private var §+!<§:Number = 0;
      
      private var §[%§:int = 0;
      
      private var §&4§:Number = 0;
      
      private var §[0§:Number = 0;
      
      private var §,g§:Number = 1000;
      
      private var §@x§:Boolean = false;
      
      private var §!!m§:§[R§;
      
      public function §?!5§(param1:§[R§, param2:Sprite, param3:b2World, param4:§"d§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§!!m§ = param1;
         §8!5§.mTryToFly = true;
      }
      
      private function get §7%§() : Number
      {
         return §?K§ * scale;
      }
      
      override public function addDamageParticles(param1:§>"=§, param2:int) : void
      {
         if(param2 < 2 || this.§,g§ < §<q§)
         {
            return;
         }
         if(this.§]"3§ != this.§!!r§)
         {
            this.§!@§();
         }
         this.§,g§ = 0;
      }
      
      override public function activateSpecialPower(param1:§[R§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §%W§.§5"8§.particles.§""#§(§8u§.§6-§,§>"=§.§ J§,§8u§.§6!8§,getBody().GetPosition().x,getBody().GetPosition().y,-1,"",§8u§.§^t§);
         this.§-!E§(0);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = NaN;
         if(!§3!b§ && this.§#"%§ == this.§!!r§)
         {
            this.§-!E§();
         }
         if(param1 < 12 && param1 > 5 && this.§&-§)
         {
            §6B§(§?![§.§-"§);
            _loc7_ = §2E§;
         }
         else
         {
            _loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         this.§&-§ = true;
         return _loc7_;
      }
      
      override public function explode() : Boolean
      {
         if(!§3!b§)
         {
            super.activateSpecialPower(null);
            §'L§ = true;
            this.§-!E§(0);
            return true;
         }
         return false;
      }
      
      private function §-!E§(param1:Number = -1) : void
      {
         if(param1 == 0)
         {
            this.§#"%§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§#"%§ = param1;
         }
         else
         {
            this.§#"%§ = this.§[!_§;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§60§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         this.§,g§ += param1;
         §'L§ = true;
         if(this.§#"%§ != this.§!!r§)
         {
            this.§#"%§ -= param1;
            if(this.§#"%§ < 0)
            {
               this.§=!X§(this.§7%§);
               this.§#"%§ = this.§!!r§;
               this.§]"3§ = this.§=!Q§;
               sprite.scaleX = 1;
               sprite.scaleY = 1;
               §8!5§.setScale(1 * scale);
            }
            else if(this.§#"%§ <= param1)
            {
               _loc2_ = new Vector.<§60§>(1,true);
               _loc2_[0] = this;
               container.addExplosions(§]!v§.§^w§,getBody().GetPosition().x,getBody().GetPosition().y,_loc2_);
               super.activateSpecialPower(null);
               §%!t§ = "BIRD_ORANGE_BIG";
               §4o§ = §%!O§.§2<§(§%!t§);
               this.§=!X§(this.§7%§ * 0.5,§4o§.material.mValues[§8!§.§+S§],§4o§.material.mValues[§8!§.§`t§],§4o§.material.mValues[§8!§.§-"'§]);
               §8!5§.setScale(0.5 * scale);
            }
         }
         else if(this.§]"3§ != this.§!!r§)
         {
            if(this.§&-§)
            {
               this.§]"3§ -= param1;
               if(this.§]"3§ < 0)
               {
                  this.§<!U§ = true;
                  this.§]"3§ = this.§!!r§;
                  this.§!!j§ = this.§5T§;
                  §6B§(§?![§.§[!+§);
               }
            }
         }
         else if(this.§<!U§)
         {
            if(this.§!!j§ > 0)
            {
               this.§!!j§ -= param1;
               this.§+!<§ -= param1;
               if(this.§+!<§ <= 0)
               {
                  this.§+!<§ = this.§5T§ / 5;
                  this.§&4§ = (Math.random() * 100 - 50) * 10;
                  this.§[0§ = (Math.random() * 100 - 50) * 10;
               }
               _loc3_ = this.§!!j§ / this.§5T§;
               if(_loc3_ > 1)
               {
                  _loc3_ = 1;
               }
               ++this.§[%§;
               if(this.§[%§ % 3 == 0)
               {
                  §8!5§.setScale(_loc3_ * scale);
                  this.§=!X§(this.§7%§ * _loc3_);
                  _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
                  _loc4_.ApplyImpulse(new b2Vec2(this.§&4§,this.§[0§),getBody().GetPosition());
                  _loc4_.§["5§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                  this.§!@§(0.02);
               }
            }
            else
            {
               this.§@x§ = true;
               this.§!!m§.removeObject(this);
            }
         }
      }
      
      private function §=!X§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§9!'§(param1);
         if(param2 >= 0)
         {
            _loc6_.§2!'§(param2);
            _loc5_.§!L§();
         }
         if(param3 >= 0)
         {
            _loc6_.§+"%§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§4!;§(param4);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         if(!§3!b§)
         {
            super.addTrail();
         }
      }
      
      private function §!@§(param1:Number = 1) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc2_:Number = §+!M§() / 40;
         var _loc3_:int = 1 + _loc2_ * § !l§(false) * 0.9;
         var _loc4_:Number = Math.PI / 2;
         var _loc5_:Number = (getBody().GetFixtureList().GetShape() as b2CircleShape).§&!2§() / this.§7%§;
         _loc3_ *= _loc5_ * 3 * param1;
         if(_loc3_ > 30)
         {
            _loc3_ = 30;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc3_ / 3)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            _loc6_ = (Math.random() * this.§7%§ - this.§7%§ / 2) * 2 * _loc5_;
            §%W§.§5"8§.particles.§""#§(§8u§.§'!4§,§>"=§.§3%§,§8u§.§@9§,getBody().GetPosition().x + Math.cos(_loc4_) * _loc6_,getBody().GetPosition().y + Math.sin(_loc4_) * _loc6_,1000,"",0,0,0,5,_loc2_ * 5,Math.random() * 0.75 + 0.25);
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < _loc3_)
         {
            _loc8_ = (_loc4_ += §`!r§(Math.random() * (720 / _loc3_))) / (180 / Math.PI);
            _loc6_ = (Math.random() * this.§7%§ - this.§7%§ / 2) * 2 * _loc5_;
            _loc9_ = 0.5 * _loc2_ + _loc2_ * (Math.random() * 0.5);
            §%W§.§5"8§.particles.§""#§(§8u§.§=!H§,§>"=§.§3%§,§8u§.§@9§,getBody().GetPosition().x + Math.cos(_loc4_) * _loc6_,getBody().GetPosition().y + Math.sin(_loc4_) * _loc6_,1250,"",§8u§.§'#§,_loc9_ * Math.cos(_loc8_) * _loc5_,-_loc9_ * Math.sin(_loc8_) * _loc5_,5,_loc9_ * 20,1);
            _loc7_++;
         }
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(§3!b§)
         {
            return 1;
         }
         return -1;
      }
   }
}
