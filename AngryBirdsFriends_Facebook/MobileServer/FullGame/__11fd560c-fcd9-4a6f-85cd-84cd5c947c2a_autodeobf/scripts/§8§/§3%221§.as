package §8§#8
{
   import § "%§.b2Vec2;
   import §"#i§.b2CircleShape;
   import §4"O§.b2Body;
   import §4"O§.b2Fixture;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §@!M§.§^#p§;
   import §@0§.§%!q§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.geom.Point;
   
   public class §3"1§ extends §4!y§
   {
      
      private static const §>!W§:String = "SnowBallSounds";
      
      private static const §8"0§:int = 1;
      
      private static const §7!H§:Number = 1;
       
      
      private const §5"]§:Number = 5;
      
      private const §8$#§:Number = 0.9;
      
      private const §4c§:Number = 0.01;
      
      private const §'"%§:Number = 0.002;
      
      private const §-"W§:Number = 350;
      
      private var §&"d§:Number = 1;
      
      private var §=!@§:Number = 1;
      
      private var §&$,§:b2Vec2;
      
      private var §8!H§:Number;
      
      private var §7!p§:Number;
      
      private var §7$ §:Number = 1;
      
      private var §+!z§:Boolean = false;
      
      private var §>!z§:Boolean = false;
      
      private var §%"n§:Boolean = false;
      
      private var §;#>§:b2Vec2 = null;
      
      private var §#!<§:§^#p§;
      
      private var §@#G§:Number = 0;
      
      public function §3"1§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §!"p§.§5#4§(§>!W§,§8"0§,§7!H§);
         this.§=!@§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§'#!§();
         this.§7$ § = this.§5"]§ / this.§=!@§;
         this.§1i§();
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
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
         if(!this.§+!z§ || this.§>!z§)
         {
            _loc2_ = getBody().GetPosition();
            _loc3_ = Math.PI * 4 / (30 * (this.§&"d§ / this.§7$ §));
            _loc4_ = this.§&"d§ * this.§=!@§;
            _loc5_ = 0;
            while(_loc5_ < Math.PI * 4)
            {
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               this.§'#f§(Math.round(Math.random() * 7 + 1),_loc2_.x - _loc6_ * Math.random() * _loc4_,_loc2_.y - _loc7_ * Math.random() * _loc4_,-_loc6_ * (6 * Math.random() + 3),-_loc7_ * (6 * Math.random() + 3));
               _loc5_ += _loc3_;
            }
         }
      }
      
      protected function §'#f§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         if(this.§+!z§ && !this.§>!z§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param1 >= health);
      }
      
      override public function collidedWith(param1:§,#5§) : void
      {
         var _loc2_:§?$%§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§4!y§ = null;
         if(this.§+!z§ && !this.§>!z§)
         {
            if(!this.§>!z§ && param1 is §?$%§)
            {
               _loc2_ = param1 as §?$%§;
               this.§>!z§ = true;
               _loc3_ = getBody().GetPosition().Copy();
               _loc3_.§9!s§(param1.getBody().GetPosition());
               _loc3_.Normalize();
               _loc4_ = getBody().GetLinearVelocity().Length();
               _loc5_ = param1.getBody().GetLinearVelocity().Length();
               _loc6_ = (_loc4_ + _loc5_ / 2) * 0.6;
               _loc7_ = new b2Vec2(_loc3_.x * _loc6_,_loc3_.y * _loc6_);
               getBody().SetLinearVelocity(_loc7_);
               param1.getBody().GetLinearVelocity().§8!O§(0.5);
               _loc2_.health = _loc2_.§""5§ - 1;
               param1.getBody().SetAngularVelocity(Math.random() * 10 - 5);
            }
            else if(!this.§>!z§)
            {
               this.§%"n§ = true;
               this.§;#>§ = getBody().GetLinearVelocity().Copy();
            }
         }
         else
         {
            super.collidedWith(param1);
            if((_loc8_ = param1 as §4!y§) && !_loc8_.§]",§)
            {
               this.§&$,§ = getBody().GetPosition().Copy();
               this.§8!H§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§'#!§();
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§&#V§, param2:Boolean) : void
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
         if(this.§%"n§)
         {
            _loc3_ = getBody().GetPosition();
            (_loc4_ = this.§;#>§.§!#k§()).Normalize();
            if((_loc5_ = Math.atan2(_loc4_.y,_loc4_.x)) < 0)
            {
               _loc5_ += Math.PI * 2;
            }
            _loc6_ = 0;
            while(_loc6_ < 15)
            {
               _loc8_ = _loc5_ + (Math.PI / 2 * Math.random() - Math.PI / 4);
               _loc9_ = Math.random() * 12;
               this.§'#f§(Math.round(Math.random() * 4 + 3),_loc3_.x,_loc3_.y,Math.cos(_loc8_) * _loc9_,Math.sin(_loc8_) * _loc9_);
               _loc6_++;
            }
            if((_loc7_ = §3#U§.§#$4§.§!#u§(_loc3_.x,_loc3_.y)).x > 0 && _loc7_.x < §%!q§.§ "+§)
            {
               §!"p§.§%!R§("Snow_Ball_Impact_5");
            }
            param1.addExplosion(§7"L§.§]"2§,_loc3_.x,_loc3_.y);
            param1.removeObject(this);
         }
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(§4$?§ && (getBody().GetFixtureList().GetShape() as b2CircleShape).§'#!§() < this.§5"]§)
         {
            if(!this.§&$,§)
            {
               this.§&$,§ = getBody().GetPosition().Copy();
               this.§8!H§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§'#!§();
            }
            _loc3_ = getBody().GetPosition().Copy();
            _loc3_.§9!s§(this.§&$,§);
            if((_loc5_ = (_loc4_ = _loc3_.Length()) / this.§7!p§ * this.§8$#§) > this.§4c§)
            {
               if(!this.§#!<§)
               {
                  this.§#!<§ = §!"p§.playSound("Sound_Snow_Ball_Rolling_Loop",§>!W§,9999);
               }
               if((_loc6_ = this.§8!H§ + _loc5_) > this.§5"]§)
               {
                  _loc6_ = this.§5"]§;
               }
               this.§="&§(_loc6_);
               if(_loc6_ / this.§=!@§ - this.§&"d§ > this.§'"%§)
               {
                  this.§@#G§ += param1;
               }
               else
               {
                  this.§@#G§ -= param1;
               }
               if(this.§@#G§ > this.§-"W§)
               {
                  if(this.§#!<§)
                  {
                     this.§#!<§.volume = 1;
                  }
               }
               else if(this.§#!<§)
               {
                  this.§#!<§.volume = 0;
               }
               this.§&"d§ = _loc6_ / this.§=!@§;
               §9"6§.setScale(this.§&"d§ * scale);
            }
            else if(this.§#!<§)
            {
               this.§#!<§.volume = 0;
            }
         }
         else
         {
            this.§@#G§ = 0;
            if(this.§#!<§)
            {
               this.§#!<§.volume = 0;
            }
         }
         super.update(param1,param2);
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         if(this.§#!<§)
         {
            this.§#!<§.stop();
            this.§#!<§ = null;
         }
         super.dispose(param1);
      }
      
      private function §="&§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§`h§(param1);
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
         this.§1i§();
      }
      
      private function §1i§() : void
      {
         this.§7!p§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§'#!§() * 2 * Math.PI;
      }
      
      public function set §3#>§(param1:Boolean) : void
      {
         this.§+!z§ = param1;
      }
   }
}
