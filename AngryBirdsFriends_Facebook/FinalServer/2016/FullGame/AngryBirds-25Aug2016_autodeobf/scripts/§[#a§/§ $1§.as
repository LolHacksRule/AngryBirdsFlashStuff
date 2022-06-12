package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §52§.§#!,§;
   import §8§.§#$+§;
   import §8§.§@!"§;
   import §9$§.Sprite;
   import §=#n§.b2Body;
   import §=#n§.b2Fixture;
   import §=#n§.b2World;
   import §?!c§.b2CircleShape;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   import flash.geom.Point;
   
   public class § $1§ extends §="@§
   {
      
      private static const §&!`§:String = "SnowBallSounds";
      
      private static const §<"]§:int = 1;
      
      private static const §%$%§:Number = 1;
       
      
      private const §1#q§:Number = 5;
      
      private const §'g§:Number = 0.9;
      
      private const §@$7§:Number = 0.01;
      
      private const §"#d§:Number = 0.002;
      
      private const §<"j§:Number = 350;
      
      private var §>!E§:Number = 1;
      
      private var §-!]§:Number = 1;
      
      private var §0!g§:int = 0;
      
      private var §'#0§:b2Vec2;
      
      private var §"w§:Number;
      
      private var § !Y§:Number;
      
      private var §7p§:Number = 1;
      
      private var §`S§:Boolean = false;
      
      private var §,+§:Boolean = false;
      
      private var §;!Y§:Boolean = false;
      
      private var §6!§:b2Vec2 = null;
      
      private var §>!P§:§@!"§;
      
      private var §!!C§:Number = 0;
      
      public function § $1§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §#$+§.§9"]§(§&!`§,§<"]§,§%$%§);
         this.§-!]§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§'![§();
         this.§7p§ = this.§1#q§ / this.§-!]§;
         this.§'#$§();
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
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
         if(!this.§`S§ || this.§,+§)
         {
            _loc2_ = getBody().GetPosition();
            _loc3_ = Math.PI * 4 / (30 * (this.§>!E§ / this.§7p§));
            _loc4_ = this.§>!E§ * this.§-!]§;
            _loc5_ = 0;
            while(_loc5_ < Math.PI * 4)
            {
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               this.§1#O§(Math.round(Math.random() * 7 + 1),_loc2_.x - _loc6_ * Math.random() * _loc4_,_loc2_.y - _loc7_ * Math.random() * _loc4_,-_loc6_ * (6 * Math.random() + 3),-_loc7_ * (6 * Math.random() + 3));
               _loc5_ += _loc3_;
            }
         }
      }
      
      protected function §1#O§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         if(this.§`S§ && !this.§,+§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param1 >= health);
      }
      
      override public function collidedWith(param1:§<"H§) : void
      {
         var _loc2_:§-k§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§="@§ = null;
         if(this.§`S§ && !this.§,+§)
         {
            if(!this.§,+§ && param1 is §-k§)
            {
               _loc2_ = param1 as §-k§;
               this.§,+§ = true;
               _loc3_ = getBody().GetPosition().Copy();
               _loc3_.§%#d§(param1.getBody().GetPosition());
               _loc3_.Normalize();
               _loc4_ = getBody().GetLinearVelocity().Length();
               _loc5_ = param1.getBody().GetLinearVelocity().Length();
               _loc6_ = (_loc4_ + _loc5_ / 2) * 0.6;
               _loc7_ = new b2Vec2(_loc3_.x * _loc6_,_loc3_.y * _loc6_);
               getBody().SetLinearVelocity(_loc7_);
               param1.getBody().GetLinearVelocity().§2#<§(0.5);
               _loc2_.health = _loc2_.§2!w§ - 1;
               param1.getBody().SetAngularVelocity(Math.random() * 10 - 5);
            }
            else if(!this.§,+§)
            {
               this.§;!Y§ = true;
               this.§6!§ = getBody().GetLinearVelocity().Copy();
            }
         }
         else if((_loc8_ = param1 as §="@§) && !_loc8_.§]7§)
         {
            this.§3#;§();
         }
      }
      
      override public function collisionEnded(param1:§<"H§) : void
      {
         var _loc2_:§="@§ = param1 as §="@§;
         if(_loc2_ && !_loc2_.§]7§)
         {
            this.§8#Q§();
         }
      }
      
      protected function §3#;§() : void
      {
         this.§'#0§ = getBody().GetPosition().Copy();
         this.§"w§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§'![§();
         ++this.§0!g§;
      }
      
      public function §8#Q§() : void
      {
         --this.§0!g§;
         if(this.§0!g§ < 0)
         {
            this.§0!g§ = 0;
         }
      }
      
      override public function updateBeforeRemoving(param1:§7!O§, param2:Boolean) : void
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
         if(this.§;!Y§)
         {
            _loc3_ = getBody().GetPosition();
            (_loc4_ = this.§6!§.§6#5§()).Normalize();
            if((_loc5_ = Math.atan2(_loc4_.y,_loc4_.x)) < 0)
            {
               _loc5_ += Math.PI * 2;
            }
            _loc6_ = 0;
            while(_loc6_ < 15)
            {
               _loc8_ = _loc5_ + (Math.PI / 2 * Math.random() - Math.PI / 4);
               _loc9_ = Math.random() * 12;
               this.§1#O§(Math.round(Math.random() * 4 + 3),_loc3_.x,_loc3_.y,Math.cos(_loc8_) * _loc9_,Math.sin(_loc8_) * _loc9_);
               _loc6_++;
            }
            if((_loc7_ = §>"$§.§3#'§.§each §(_loc3_.x,_loc3_.y)).x > 0 && _loc7_.x < §#!,§.§%"9§)
            {
               §#$+§.§=#P§("Snow_Ball_Impact_5");
            }
            param1.§#Q§(§3#Z§.§2#j§,_loc3_.x,_loc3_.y);
            param1.removeObject(this);
         }
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(getBody().IsAwake() && this.§["i§() && (getBody().GetFixtureList().GetShape() as b2CircleShape).§'![§() < this.§1#q§)
         {
            _loc3_ = getBody().GetPosition().Copy();
            _loc3_.§%#d§(this.§'#0§);
            if((_loc5_ = _loc3_.Length() / this.§ !Y§ * this.§'g§) > this.§@$7§)
            {
               if(!this.§>!P§)
               {
                  this.§>!P§ = §#$+§.playSound("Sound_Snow_Ball_Rolling_Loop",§&!`§,9999);
               }
               if((_loc6_ = this.§"w§ + _loc5_) > this.§1#q§)
               {
                  _loc6_ = this.§1#q§;
               }
               this.§%y§(_loc6_);
               if(_loc6_ / this.§-!]§ - this.§>!E§ > this.§"#d§)
               {
                  this.§!!C§ += param1;
               }
               else
               {
                  this.§!!C§ -= param1;
               }
               if(this.§!!C§ > this.§<"j§)
               {
                  if(this.§>!P§)
                  {
                     this.§>!P§.volume = 1;
                  }
               }
               else if(this.§>!P§)
               {
                  this.§>!P§.volume = 0;
               }
               this.§>!E§ = _loc6_ / this.§-!]§;
               §'"s§.setScale(this.§>!E§ * scale);
            }
            else if(this.§>!P§)
            {
               this.§>!P§.volume = 0;
            }
         }
         else
         {
            this.§!!C§ = 0;
            if(this.§>!P§)
            {
               this.§>!P§.volume = 0;
            }
         }
         super.update(param1,param2);
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         if(this.§>!P§)
         {
            this.§>!P§.stop();
            this.§>!P§ = null;
         }
         super.dispose(param1);
      }
      
      public function §["i§() : Boolean
      {
         return this.§0!g§ > 0;
      }
      
      private function §%y§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§<#$§(param1);
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
         this.§'#$§();
      }
      
      private function §'#$§() : void
      {
         this.§ !Y§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§'![§() * 2 * Math.PI;
      }
      
      public function set §6"B§(param1:Boolean) : void
      {
         this.§`S§ = param1;
      }
   }
}
