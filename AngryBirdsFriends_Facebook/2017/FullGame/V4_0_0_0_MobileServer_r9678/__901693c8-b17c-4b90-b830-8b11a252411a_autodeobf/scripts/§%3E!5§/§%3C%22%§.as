package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+#f§.b2CircleShape;
   import §1!+§.b2Body;
   import §1!+§.b2Fixture;
   import §1!+§.b2World;
   import §1#W§.§!#&§;
   import §1#W§.§="D§;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import flash.geom.Point;
   
   public class §<"%§ extends §^"9§
   {
      
      private static const § #N§:String = "SnowBallSounds";
      
      private static const §&!,§:int = 1;
      
      private static const §?#;§:Number = 1;
       
      
      private const §!$§:Number = 5;
      
      private const §]j§:Number = 0.9;
      
      private const §""=§:Number = 0.01;
      
      private const §?"y§:Number = 0.002;
      
      private const §5">§:Number = 350;
      
      private var §;"B§:Number = 1;
      
      private var §%#L§:Number = 1;
      
      private var §9#i§:b2Vec2;
      
      private var §<!C§:Number;
      
      private var §2D§:Number;
      
      private var §5#z§:Number = 1;
      
      private var §]K§:Boolean = false;
      
      private var §1#-§:Boolean = false;
      
      private var §^"F§:Boolean = false;
      
      private var §9!q§:b2Vec2 = null;
      
      private var §3#L§:§="D§;
      
      private var §2"V§:Number = 0;
      
      public function §<"%§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §!#&§.§!"k§(§ #N§,§&!,§,§?#;§);
         this.§%#L§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§+#_§();
         this.§5#z§ = this.§!$§ / this.§%#L§;
         this.§0"@§();
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
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
         if(!this.§]K§ || this.§1#-§)
         {
            _loc2_ = getBody().GetPosition();
            _loc3_ = Math.PI * 4 / (30 * (this.§;"B§ / this.§5#z§));
            _loc4_ = this.§;"B§ * this.§%#L§;
            _loc5_ = 0;
            while(_loc5_ < Math.PI * 4)
            {
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               this.§<!Q§(Math.round(Math.random() * 7 + 1),_loc2_.x - _loc6_ * Math.random() * _loc4_,_loc2_.y - _loc7_ * Math.random() * _loc4_,-_loc6_ * (6 * Math.random() + 3),-_loc7_ * (6 * Math.random() + 3));
               _loc5_ += _loc3_;
            }
         }
      }
      
      protected function §<!Q§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         if(this.§]K§ && !this.§1#-§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param1 >= health);
      }
      
      override public function collidedWith(param1:§#-§) : void
      {
         var _loc2_:§"7§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§^"9§ = null;
         if(this.§]K§ && !this.§1#-§)
         {
            if(!this.§1#-§ && param1 is §"7§)
            {
               _loc2_ = param1 as §"7§;
               this.§1#-§ = true;
               _loc3_ = getBody().GetPosition().Copy();
               _loc3_.§%"_§(param1.getBody().GetPosition());
               _loc3_.Normalize();
               _loc4_ = getBody().GetLinearVelocity().Length();
               _loc5_ = param1.getBody().GetLinearVelocity().Length();
               _loc6_ = (_loc4_ + _loc5_ / 2) * 0.6;
               _loc7_ = new b2Vec2(_loc3_.x * _loc6_,_loc3_.y * _loc6_);
               getBody().SetLinearVelocity(_loc7_);
               param1.getBody().GetLinearVelocity().§@o§(0.5);
               _loc2_.health = _loc2_.§##6§ - 1;
               param1.getBody().SetAngularVelocity(Math.random() * 10 - 5);
            }
            else if(!this.§1#-§)
            {
               this.§^"F§ = true;
               this.§9!q§ = getBody().GetLinearVelocity().Copy();
            }
         }
         else
         {
            super.collidedWith(param1);
            if((_loc8_ = param1 as §^"9§) && !_loc8_.§'!§)
            {
               this.§9#i§ = getBody().GetPosition().Copy();
               this.§<!C§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§+#_§();
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§-!S§, param2:Boolean) : void
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
         if(this.§^"F§)
         {
            _loc3_ = getBody().GetPosition();
            (_loc4_ = this.§9!q§.§',§()).Normalize();
            if((_loc5_ = Math.atan2(_loc4_.y,_loc4_.x)) < 0)
            {
               _loc5_ += Math.PI * 2;
            }
            _loc6_ = 0;
            while(_loc6_ < 15)
            {
               _loc8_ = _loc5_ + (Math.PI / 2 * Math.random() - Math.PI / 4);
               _loc9_ = Math.random() * 12;
               this.§<!Q§(Math.round(Math.random() * 4 + 3),_loc3_.x,_loc3_.y,Math.cos(_loc8_) * _loc9_,Math.sin(_loc8_) * _loc9_);
               _loc6_++;
            }
            if((_loc7_ = §!#A§.§#F§.§7$3§(_loc3_.x,_loc3_.y)).x > 0 && _loc7_.x < §!!S§.§6" §)
            {
               §!#&§.§2!A§("Snow_Ball_Impact_5");
            }
            param1.§<!>§(§?$'§.§=$+§,_loc3_.x,_loc3_.y);
            param1.removeObject(this);
         }
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(§5#R§ && (getBody().GetFixtureList().GetShape() as b2CircleShape).§+#_§() < this.§!$§)
         {
            _loc3_ = getBody().GetPosition().Copy();
            _loc3_.§%"_§(this.§9#i§);
            if((_loc5_ = (_loc4_ = _loc3_.Length()) / this.§2D§ * this.§]j§) > this.§""=§)
            {
               if(!this.§3#L§)
               {
                  this.§3#L§ = §!#&§.playSound("Sound_Snow_Ball_Rolling_Loop",§ #N§,9999);
               }
               if((_loc6_ = this.§<!C§ + _loc5_) > this.§!$§)
               {
                  _loc6_ = this.§!$§;
               }
               this.§?"R§(_loc6_);
               if(_loc6_ / this.§%#L§ - this.§;"B§ > this.§?"y§)
               {
                  this.§2"V§ += param1;
               }
               else
               {
                  this.§2"V§ -= param1;
               }
               if(this.§2"V§ > this.§5">§)
               {
                  if(this.§3#L§)
                  {
                     this.§3#L§.volume = 1;
                  }
               }
               else if(this.§3#L§)
               {
                  this.§3#L§.volume = 0;
               }
               this.§;"B§ = _loc6_ / this.§%#L§;
               §implements§.setScale(this.§;"B§ * scale);
            }
            else if(this.§3#L§)
            {
               this.§3#L§.volume = 0;
            }
         }
         else
         {
            this.§2"V§ = 0;
            if(this.§3#L§)
            {
               this.§3#L§.volume = 0;
            }
         }
         super.update(param1,param2);
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         if(this.§3#L§)
         {
            this.§3#L§.stop();
            this.§3#L§ = null;
         }
         super.dispose(param1);
      }
      
      private function §?"R§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§#"M§(param1);
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
         this.§0"@§();
      }
      
      private function §0"@§() : void
      {
         this.§2D§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§+#_§() * 2 * Math.PI;
      }
      
      public function set §&"D§(param1:Boolean) : void
      {
         this.§]K§ = param1;
      }
   }
}
