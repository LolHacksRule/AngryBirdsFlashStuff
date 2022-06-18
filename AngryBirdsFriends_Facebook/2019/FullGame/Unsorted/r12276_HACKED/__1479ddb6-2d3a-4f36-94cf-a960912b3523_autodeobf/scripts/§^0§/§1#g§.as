package §^0§
{
   import § "v§.§+o§;
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   import §,!T§.b2CircleShape;
   import §-!j§.§-"8§;
   import §3#h§.b2Body;
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §1#g§ extends §=Q§
   {
      
      private static const §;#]§:String = "SnowBallSounds";
      
      private static const §5!b§:int = 1;
      
      private static const §?"y§:Number = 1;
       
      
      private const §3!Y§:Number = 5;
      
      private const §8d§:Number = 0.9;
      
      private const §!!^§:Number = 0.01;
      
      private const §+#R§:Number = 0.002;
      
      private const §0$C§:Number = 350;
      
      private var §>!L§:Number = 1;
      
      private var §%#E§:Number = 1;
      
      private var §4!J§:b2Vec2;
      
      private var §%!3§:Number;
      
      private var §?"?§:Number;
      
      private var §0i§:Number = 1;
      
      private var §,$?§:Boolean = false;
      
      private var §?!`§:Boolean = false;
      
      private var §1"&§:Boolean = false;
      
      private var §%#!§:b2Vec2 = null;
      
      private var §4!F§:§+o§;
      
      private var §7$<§:Number = 0;
      
      public function §1#g§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §4$4§.§<!A§(§;#]§,§5!b§,§?"y§);
         this.§%#E§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§]$-§();
         this.§0i§ = this.§3!Y§ / this.§%#E§;
         this.§<"c§();
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(!this.§,$?§ || this.§?!`§)
         {
            _loc2_ = getBody().GetPosition();
            _loc3_ = Math.PI * 4 / (30 * (this.§>!L§ / this.§0i§));
            _loc4_ = this.§>!L§ * this.§%#E§;
            _loc5_ = 0;
            while(_loc5_ < Math.PI * 4)
            {
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               this.§"#f§(Math.round(Math.random() * 7 + 1),_loc2_.x - _loc6_ * Math.random() * _loc4_,_loc2_.y - _loc7_ * Math.random() * _loc4_,-_loc6_ * (6 * Math.random() + 3),-_loc7_ * (6 * Math.random() + 3));
               _loc5_ += _loc3_;
            }
         }
      }
      
      protected function §"#f§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(this.§,$?§ && !this.§?!`§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param1 >= health,param5);
      }
      
      override public function collidedWith(param1:§4!t§) : void
      {
         var _loc2_:§[# § = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§=Q§ = null;
         if(this.§,$?§ && !this.§?!`§)
         {
            if(!this.§?!`§ && param1 is §[# §)
            {
               _loc2_ = param1 as §[# §;
               this.§?!`§ = true;
               _loc3_ = getBody().GetPosition().Copy();
               _loc3_.§ !<§(param1.getBody().GetPosition());
               _loc3_.Normalize();
               _loc4_ = getBody().GetLinearVelocity().Length();
               _loc5_ = param1.getBody().GetLinearVelocity().Length();
               _loc6_ = (_loc4_ + _loc5_ / 2) * 0.6;
               _loc7_ = new b2Vec2(_loc3_.x * _loc6_,_loc3_.y * _loc6_);
               getBody().SetLinearVelocity(_loc7_);
               param1.getBody().GetLinearVelocity().§%!G§(0.5);
               _loc2_.health = _loc2_.§,D§ - 1;
               param1.getBody().SetAngularVelocity(Math.random() * 10 - 5);
            }
            else if(!this.§?!`§)
            {
               this.§1"&§ = true;
               this.§%#!§ = getBody().GetLinearVelocity().Copy();
            }
         }
         else
         {
            super.collidedWith(param1);
            if((_loc8_ = param1 as §=Q§) && !_loc8_.§>"W§)
            {
               this.§4!J§ = getBody().GetPosition().Copy();
               this.§%!3§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§]$-§();
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§>"T§, param2:Boolean) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Point = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         if(!param1)
         {
            return;
         }
         if(this.§1"&§)
         {
            _loc3_ = getBody().GetPosition();
            (_loc4_ = this.§%#!§.§ !T§()).Normalize();
            if((_loc5_ = Math.atan2(_loc4_.y,_loc4_.x)) < 0)
            {
               _loc5_ += Math.PI * 2;
            }
            _loc6_ = 0;
            while(_loc6_ < 15)
            {
               _loc8_ = _loc5_ + (Math.PI / 2 * Math.random() - Math.PI / 4);
               _loc9_ = Math.random() * 12;
               this.§"#f§(Math.round(Math.random() * 4 + 3),_loc3_.x,_loc3_.y,Math.cos(_loc8_) * _loc9_,Math.sin(_loc8_) * _loc9_);
               _loc6_++;
            }
            if((_loc7_ = §+!p§.§`?§.§ "8§(_loc3_.x,_loc3_.y)).x > 0 && _loc7_.x < §<d§.§=2§)
            {
               §4$4§.§'"j§("Snow_Ball_Impact_5");
            }
            param1.addExplosion(§1!M§.§%!v§,_loc3_.x,_loc3_.y);
            param1.removeObject(this);
         }
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(§+#q§ && (getBody().GetFixtureList().GetShape() as b2CircleShape).§]$-§() < this.§3!Y§)
         {
            if(!this.§4!J§)
            {
               this.§4!J§ = getBody().GetPosition().Copy();
               this.§%!3§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§]$-§();
            }
            _loc3_ = getBody().GetPosition().Copy();
            _loc3_.§ !<§(this.§4!J§);
            if((_loc5_ = _loc3_.Length() / this.§?"?§ * this.§8d§) > this.§!!^§)
            {
               if(!this.§4!F§)
               {
                  this.§4!F§ = §4$4§.playSound("Sound_Snow_Ball_Rolling_Loop",§;#]§,9999);
               }
               if((_loc6_ = this.§%!3§ + _loc5_) > this.§3!Y§)
               {
                  _loc6_ = this.§3!Y§;
               }
               this.§<!<§(_loc6_);
               if(_loc6_ / this.§%#E§ - this.§>!L§ > this.§+#R§)
               {
                  this.§7$<§ += param1;
               }
               else
               {
                  this.§7$<§ -= param1;
               }
               if(this.§7$<§ > this.§0$C§)
               {
                  if(this.§4!F§)
                  {
                     this.§4!F§.volume = 1;
                  }
               }
               else if(this.§4!F§)
               {
                  this.§4!F§.volume = 0;
               }
               this.§>!L§ = _loc6_ / this.§%#E§;
               §-"p§.setScale(this.§>!L§ * scale);
            }
            else if(this.§4!F§)
            {
               this.§4!F§.volume = 0;
            }
         }
         else
         {
            this.§7$<§ = 0;
            if(this.§4!F§)
            {
               this.§4!F§.volume = 0;
            }
         }
         super.update(param1,param2);
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         if(this.§4!F§)
         {
            this.§4!F§.stop();
            this.§4!F§ = null;
         }
         super.dispose(param1);
      }
      
      private function §<!<§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§9!R§(param1);
         if(param2 >= 0)
         {
            _loc6_.SetDensity(param2);
         }
         if(param3 >= 0)
         {
            _loc6_.SetFriction(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.SetRestitution(param4);
         }
         _loc5_.ResetMassData();
         this.§<"c§();
      }
      
      private function §<"c§() : void
      {
         this.§?"?§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§]$-§() * 2 * Math.PI;
      }
      
      public function set §>#m§(param1:Boolean) : void
      {
         this.§,$?§ = param1;
      }
   }
}
