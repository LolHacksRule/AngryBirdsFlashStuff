package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§8§;
   import §'#K§.b2Body;
   import §'#K§.b2Fixture;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §1#I§.b2CircleShape;
   import §3"V§.§ b§;
   import §3"V§.§9$8§;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   
   public class §;#5§ extends §>"G§
   {
      
      private static const §5!i§:String = "SnowBallSounds";
      
      private static const §^#l§:int = 1;
      
      private static const §,!n§:Number = 1;
       
      
      private const §`#<§:Number = 5;
      
      private const §0"e§:Number = 0.9;
      
      private const §^!i§:Number = 0.01;
      
      private const §]#c§:Number = 0.002;
      
      private const §?"M§:Number = 350;
      
      private var §,$ §:Number = 1;
      
      private var §-#$§:Number = 1;
      
      private var §7#q§:b2Vec2;
      
      private var §4$B§:Number;
      
      private var §3#;§:Number;
      
      private var §"$7§:Number = 1;
      
      private var § $D§:Boolean = false;
      
      private var §2!C§:Boolean = false;
      
      private var §""z§:Boolean = false;
      
      private var §5"§:b2Vec2 = null;
      
      private var §@$&§:§9$8§;
      
      private var §6"P§:Number = 0;
      
      public function §;#5§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         § b§.§%#C§(§5!i§,§^#l§,§,!n§);
         this.§-#$§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§0#Y§();
         this.§"$7§ = this.§`#<§ / this.§-#$§;
         this.§ #u§();
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
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
         if(!this.§ $D§ || this.§2!C§)
         {
            _loc2_ = getBody().GetPosition();
            _loc3_ = Math.PI * 4 / (30 * (this.§,$ § / this.§"$7§));
            _loc4_ = this.§,$ § * this.§-#$§;
            _loc5_ = 0;
            while(_loc5_ < Math.PI * 4)
            {
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               this.§=#r§(Math.round(Math.random() * 7 + 1),_loc2_.x - _loc6_ * Math.random() * _loc4_,_loc2_.y - _loc7_ * Math.random() * _loc4_,-_loc6_ * (6 * Math.random() + 3),-_loc7_ * (6 * Math.random() + 3));
               _loc5_ += _loc3_;
            }
         }
      }
      
      protected function §=#r§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(this.§ $D§ && !this.§2!C§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param1 >= health,param5);
      }
      
      override public function collidedWith(param1:§'#N§) : void
      {
         var _loc2_:§[!k§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§>"G§ = null;
         if(this.§ $D§ && !this.§2!C§)
         {
            if(!this.§2!C§ && param1 is §[!k§)
            {
               _loc2_ = param1 as §[!k§;
               this.§2!C§ = true;
               _loc3_ = getBody().GetPosition().Copy();
               _loc3_.§3l§(param1.getBody().GetPosition());
               _loc3_.Normalize();
               _loc4_ = getBody().GetLinearVelocity().Length();
               _loc5_ = param1.getBody().GetLinearVelocity().Length();
               _loc6_ = (_loc4_ + _loc5_ / 2) * 0.6;
               _loc7_ = new b2Vec2(_loc3_.x * _loc6_,_loc3_.y * _loc6_);
               getBody().SetLinearVelocity(_loc7_);
               param1.getBody().GetLinearVelocity().§#"I§(0.5);
               _loc2_.health = _loc2_.§+#_§ - 1;
               param1.getBody().SetAngularVelocity(Math.random() * 10 - 5);
            }
            else if(!this.§2!C§)
            {
               this.§""z§ = true;
               this.§5"§ = getBody().GetLinearVelocity().Copy();
            }
         }
         else
         {
            super.collidedWith(param1);
            if((_loc8_ = param1 as §>"G§) && !_loc8_.§,y§)
            {
               this.§7#q§ = getBody().GetPosition().Copy();
               this.§4$B§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§0#Y§();
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§]!m§, param2:Boolean) : void
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
         if(this.§""z§)
         {
            _loc3_ = getBody().GetPosition();
            (_loc4_ = this.§5"§.§7!5§()).Normalize();
            if((_loc5_ = Math.atan2(_loc4_.y,_loc4_.x)) < 0)
            {
               _loc5_ += Math.PI * 2;
            }
            _loc6_ = 0;
            while(_loc6_ < 15)
            {
               _loc8_ = _loc5_ + (Math.PI / 2 * Math.random() - Math.PI / 4);
               _loc9_ = Math.random() * 12;
               this.§=#r§(Math.round(Math.random() * 4 + 3),_loc3_.x,_loc3_.y,Math.cos(_loc8_) * _loc9_,Math.sin(_loc8_) * _loc9_);
               _loc6_++;
            }
            if((_loc7_ = §]$?§.§2#§.§9![§(_loc3_.x,_loc3_.y)).x > 0 && _loc7_.x < §8#3§.§"#I§)
            {
               § b§.§^"8§("Snow_Ball_Impact_5");
            }
            param1.addExplosion(§,c§.§&!"§,_loc3_.x,_loc3_.y);
            param1.removeObject(this);
         }
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(§[!g§ && (getBody().GetFixtureList().GetShape() as b2CircleShape).§0#Y§() < this.§`#<§)
         {
            if(!this.§7#q§)
            {
               this.§7#q§ = getBody().GetPosition().Copy();
               this.§4$B§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§0#Y§();
            }
            _loc3_ = getBody().GetPosition().Copy();
            _loc3_.§3l§(this.§7#q§);
            if((_loc5_ = (_loc4_ = _loc3_.Length()) / this.§3#;§ * this.§0"e§) > this.§^!i§)
            {
               if(!this.§@$&§)
               {
                  this.§@$&§ = § b§.playSound("Sound_Snow_Ball_Rolling_Loop",§5!i§,9999);
               }
               if((_loc6_ = this.§4$B§ + _loc5_) > this.§`#<§)
               {
                  _loc6_ = this.§`#<§;
               }
               this.§]j§(_loc6_);
               if(_loc6_ / this.§-#$§ - this.§,$ § > this.§]#c§)
               {
                  this.§6"P§ += param1;
               }
               else
               {
                  this.§6"P§ -= param1;
               }
               if(this.§6"P§ > this.§?"M§)
               {
                  if(this.§@$&§)
                  {
                     this.§@$&§.volume = 1;
                  }
               }
               else if(this.§@$&§)
               {
                  this.§@$&§.volume = 0;
               }
               this.§,$ § = _loc6_ / this.§-#$§;
               §]$"§.setScale(this.§,$ § * scale);
            }
            else if(this.§@$&§)
            {
               this.§@$&§.volume = 0;
            }
         }
         else
         {
            this.§6"P§ = 0;
            if(this.§@$&§)
            {
               this.§@$&§.volume = 0;
            }
         }
         super.update(param1,param2);
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         if(this.§@$&§)
         {
            this.§@$&§.stop();
            this.§@$&§ = null;
         }
         super.dispose(param1);
      }
      
      private function §]j§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§`#5§(param1);
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
         this.§ #u§();
      }
      
      private function § #u§() : void
      {
         this.§3#;§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§0#Y§() * 2 * Math.PI;
      }
      
      public function set §=i§(param1:Boolean) : void
      {
         this.§ $D§ = param1;
      }
   }
}
