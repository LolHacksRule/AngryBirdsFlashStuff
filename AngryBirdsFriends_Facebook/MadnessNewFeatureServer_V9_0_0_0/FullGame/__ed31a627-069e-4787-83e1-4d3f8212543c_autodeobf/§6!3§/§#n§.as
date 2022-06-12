package §6!3§
{
   import §!H§.b2CircleShape;
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §8#K§.§-!o§;
   import §8#K§.§3Z§;
   import §>2§.§!6§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2Body;
   import §@!S§.b2Fixture;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   import flash.geom.Point;
   
   public class §#n§ extends §;!U§
   {
      
      private static const §""n§:String = "SnowBallSounds";
      
      private static const §[#"§:int = 1;
      
      private static const §@!R§:Number = 1;
       
      
      private const §0"1§:Number = 5;
      
      private const §%#X§:Number = 0.9;
      
      private const §=#4§:Number = 0.01;
      
      private const §!#l§:Number = 0.002;
      
      private const §^#L§:Number = 350;
      
      private var §"2§:Number = 1;
      
      private var §@c§:Number = 1;
      
      private var §+#<§:b2Vec2;
      
      private var §^"Y§:Number;
      
      private var §;Y§:Number;
      
      private var §,6§:Number = 1;
      
      private var §4#n§:Boolean = false;
      
      private var §0^§:Boolean = false;
      
      private var §8!>§:Boolean = false;
      
      private var §!#q§:b2Vec2 = null;
      
      private var §;#e§:§-!o§;
      
      private var §@!8§:Number = 0;
      
      public function §#n§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §3Z§.§'#E§(§""n§,§[#"§,§@!R§);
         this.§@c§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§[§();
         this.§,6§ = this.§0"1§ / this.§@c§;
         this.§;!3§();
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
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
         if(!this.§4#n§ || this.§0^§)
         {
            _loc2_ = getBody().GetPosition();
            _loc3_ = Math.PI * 4 / (30 * (this.§"2§ / this.§,6§));
            _loc4_ = this.§"2§ * this.§@c§;
            _loc5_ = 0;
            while(_loc5_ < Math.PI * 4)
            {
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               this.§5l§(Math.round(Math.random() * 7 + 1),_loc2_.x - _loc6_ * Math.random() * _loc4_,_loc2_.y - _loc7_ * Math.random() * _loc4_,-_loc6_ * (6 * Math.random() + 3),-_loc7_ * (6 * Math.random() + 3));
               _loc5_ += _loc3_;
            }
         }
      }
      
      protected function §5l§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(this.§4#n§ && !this.§0^§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param1 >= health,param5);
      }
      
      override public function collidedWith(param1:§!y§) : void
      {
         var _loc2_:§,s§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§;!U§ = null;
         if(this.§4#n§ && !this.§0^§)
         {
            if(!this.§0^§ && param1 is §,s§)
            {
               _loc2_ = param1 as §,s§;
               this.§0^§ = true;
               _loc3_ = getBody().GetPosition().Copy();
               _loc3_.§48§(param1.getBody().GetPosition());
               _loc3_.Normalize();
               _loc4_ = getBody().GetLinearVelocity().Length();
               _loc5_ = param1.getBody().GetLinearVelocity().Length();
               _loc6_ = (_loc4_ + _loc5_ / 2) * 0.6;
               _loc7_ = new b2Vec2(_loc3_.x * _loc6_,_loc3_.y * _loc6_);
               getBody().SetLinearVelocity(_loc7_);
               param1.getBody().GetLinearVelocity().§?$'§(0.5);
               _loc2_.health = _loc2_.§6"k§ - 1;
               param1.getBody().SetAngularVelocity(Math.random() * 10 - 5);
            }
            else if(!this.§0^§)
            {
               this.§8!>§ = true;
               this.§!#q§ = getBody().GetLinearVelocity().Copy();
            }
         }
         else
         {
            super.collidedWith(param1);
            if((_loc8_ = param1 as §;!U§) && !_loc8_.§0"w§)
            {
               this.§+#<§ = getBody().GetPosition().Copy();
               this.§^"Y§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§[§();
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§8$B§, param2:Boolean) : void
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
         if(this.§8!>§)
         {
            _loc3_ = getBody().GetPosition();
            (_loc4_ = this.§!#q§.§ !X§()).Normalize();
            if((_loc5_ = Math.atan2(_loc4_.y,_loc4_.x)) < 0)
            {
               _loc5_ += Math.PI * 2;
            }
            _loc6_ = 0;
            while(_loc6_ < 15)
            {
               _loc8_ = _loc5_ + (Math.PI / 2 * Math.random() - Math.PI / 4);
               _loc9_ = Math.random() * 12;
               this.§5l§(Math.round(Math.random() * 4 + 3),_loc3_.x,_loc3_.y,Math.cos(_loc8_) * _loc9_,Math.sin(_loc8_) * _loc9_);
               _loc6_++;
            }
            if((_loc7_ = §7n§.§6#K§.§@"X§(_loc3_.x,_loc3_.y)).x > 0 && _loc7_.x < §!6§.§+#P§)
            {
               §3Z§.§8!K§("Snow_Ball_Impact_5");
            }
            param1.addExplosion(§@"e§.§=#N§,_loc3_.x,_loc3_.y);
            param1.removeObject(this);
         }
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(§ Z§ && (getBody().GetFixtureList().GetShape() as b2CircleShape).§[§() < this.§0"1§)
         {
            if(!this.§+#<§)
            {
               this.§+#<§ = getBody().GetPosition().Copy();
               this.§^"Y§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§[§();
            }
            _loc3_ = getBody().GetPosition().Copy();
            _loc3_.§48§(this.§+#<§);
            if((_loc5_ = (_loc4_ = _loc3_.Length()) / this.§;Y§ * this.§%#X§) > this.§=#4§)
            {
               if(!this.§;#e§)
               {
                  this.§;#e§ = §3Z§.playSound("Sound_Snow_Ball_Rolling_Loop",§""n§,9999);
               }
               if((_loc6_ = this.§^"Y§ + _loc5_) > this.§0"1§)
               {
                  _loc6_ = this.§0"1§;
               }
               this.§"!I§(_loc6_);
               if(_loc6_ / this.§@c§ - this.§"2§ > this.§!#l§)
               {
                  this.§@!8§ += param1;
               }
               else
               {
                  this.§@!8§ -= param1;
               }
               if(this.§@!8§ > this.§^#L§)
               {
                  if(this.§;#e§)
                  {
                     this.§;#e§.volume = 1;
                  }
               }
               else if(this.§;#e§)
               {
                  this.§;#e§.volume = 0;
               }
               this.§"2§ = _loc6_ / this.§@c§;
               §="!§.setScale(this.§"2§ * scale);
            }
            else if(this.§;#e§)
            {
               this.§;#e§.volume = 0;
            }
         }
         else
         {
            this.§@!8§ = 0;
            if(this.§;#e§)
            {
               this.§;#e§.volume = 0;
            }
         }
         super.update(param1,param2);
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         if(this.§;#e§)
         {
            this.§;#e§.stop();
            this.§;#e§ = null;
         }
         super.dispose(param1);
      }
      
      private function §"!I§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§+$'§(param1);
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
         this.§;!3§();
      }
      
      private function §;!3§() : void
      {
         this.§;Y§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§[§() * 2 * Math.PI;
      }
      
      public function set §-#-§(param1:Boolean) : void
      {
         this.§4#n§ = param1;
      }
   }
}
