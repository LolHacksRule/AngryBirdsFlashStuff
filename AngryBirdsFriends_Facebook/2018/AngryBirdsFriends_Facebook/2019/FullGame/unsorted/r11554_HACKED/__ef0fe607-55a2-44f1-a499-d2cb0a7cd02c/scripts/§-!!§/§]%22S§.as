package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.Sprite;
   import §8#t§.b2Body;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §>"9§.§1"T§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §]!o§.b2CircleShape;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §]"S§ extends §8"J§
   {
      
      private static const § #9§:String = "SnowBallSounds";
      
      private static const §%!H§:int = 1;
      
      private static const §>#7§:Number = 1;
       
      
      private const §3!4§:Number = 5;
      
      private const §5$-§:Number = 0.9;
      
      private const §0#u§:Number = 0.01;
      
      private const §^"I§:Number = 0.002;
      
      private const §[#&§:Number = 350;
      
      private var §;#`§:Number = 1;
      
      private var §-K§:Number = 1;
      
      private var §"$"§:b2Vec2;
      
      private var §4$5§:Number;
      
      private var §=" §:Number;
      
      private var §@!%§:Number = 1;
      
      private var § #L§:Boolean = false;
      
      private var §7"U§:Boolean = false;
      
      private var §3!e§:Boolean = false;
      
      private var §>!]§:b2Vec2 = null;
      
      private var §'J§:§1"T§;
      
      private var §6!S§:Number = 0;
      
      public function §]"S§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         §[#%§.§8!3§(§ #9§,§%!H§,§>#7§);
         this.§-K§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§7"z§();
         this.§@!%§ = this.§3!4§ / this.§-K§;
         this.§>#E§();
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
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
         if(!this.§ #L§ || this.§7"U§)
         {
            _loc2_ = getBody().GetPosition();
            _loc3_ = Math.PI * 4 / (30 * (this.§;#`§ / this.§@!%§));
            _loc4_ = this.§;#`§ * this.§-K§;
            _loc5_ = 0;
            while(_loc5_ < Math.PI * 4)
            {
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               this.§+!3§(Math.round(Math.random() * 7 + 1),_loc2_.x - _loc6_ * Math.random() * _loc4_,_loc2_.y - _loc7_ * Math.random() * _loc4_,-_loc6_ * (6 * Math.random() + 3),-_loc7_ * (6 * Math.random() + 3));
               _loc5_ += _loc3_;
            }
         }
      }
      
      protected function §+!3§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(this.§ #L§ && !this.§7"U§)
         {
            return health;
         }
         return super.applyDamage(param1,param2,param3,param1 >= health,param5);
      }
      
      override public function collidedWith(param1:§1#B§) : void
      {
         var _loc2_:§5"W§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:§8"J§ = null;
         if(this.§ #L§ && !this.§7"U§)
         {
            if(!this.§7"U§ && param1 is §5"W§)
            {
               _loc2_ = param1 as §5"W§;
               this.§7"U§ = true;
               _loc3_ = getBody().GetPosition().Copy();
               _loc3_.§6#"§(param1.getBody().GetPosition());
               _loc3_.Normalize();
               _loc4_ = getBody().GetLinearVelocity().Length();
               _loc5_ = param1.getBody().GetLinearVelocity().Length();
               _loc6_ = (_loc4_ + _loc5_ / 2) * 0.6;
               _loc7_ = new b2Vec2(_loc3_.x * _loc6_,_loc3_.y * _loc6_);
               getBody().SetLinearVelocity(_loc7_);
               param1.getBody().GetLinearVelocity().§<#3§(0.5);
               _loc2_.health = _loc2_.§1#H§ - 1;
               param1.getBody().SetAngularVelocity(Math.random() * 10 - 5);
            }
            else if(!this.§7"U§)
            {
               this.§3!e§ = true;
               this.§>!]§ = getBody().GetLinearVelocity().Copy();
            }
         }
         else
         {
            super.collidedWith(param1);
            if((_loc8_ = param1 as §8"J§) && !_loc8_.§""f§)
            {
               this.§"$"§ = getBody().GetPosition().Copy();
               this.§4$5§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§7"z§();
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§ #'§, param2:Boolean) : void
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
         if(this.§3!e§)
         {
            _loc3_ = getBody().GetPosition();
            (_loc4_ = this.§>!]§.§%!C§()).Normalize();
            if((_loc5_ = Math.atan2(_loc4_.y,_loc4_.x)) < 0)
            {
               _loc5_ += Math.PI * 2;
            }
            _loc6_ = 0;
            while(_loc6_ < 15)
            {
               _loc8_ = _loc5_ + (Math.PI / 2 * Math.random() - Math.PI / 4);
               _loc9_ = Math.random() * 12;
               this.§+!3§(Math.round(Math.random() * 4 + 3),_loc3_.x,_loc3_.y,Math.cos(_loc8_) * _loc9_,Math.sin(_loc8_) * _loc9_);
               _loc6_++;
            }
            if((_loc7_ = §%"T§.§;`§.§=#M§(_loc3_.x,_loc3_.y)).x > 0 && _loc7_.x < §'"u§.§]!F§)
            {
               §[#%§.§!"0§("Snow_Ball_Impact_5");
            }
            param1.addExplosion(§"#6§.§90§,_loc3_.x,_loc3_.y);
            param1.removeObject(this);
         }
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(§,#E§ && (getBody().GetFixtureList().GetShape() as b2CircleShape).§7"z§() < this.§3!4§)
         {
            if(!this.§"$"§)
            {
               this.§"$"§ = getBody().GetPosition().Copy();
               this.§4$5§ = (getBody().GetFixtureList().GetShape() as b2CircleShape).§7"z§();
            }
            _loc3_ = getBody().GetPosition().Copy();
            _loc3_.§6#"§(this.§"$"§);
            if((_loc5_ = _loc3_.Length() / this.§=" § * this.§5$-§) > this.§0#u§)
            {
               if(!this.§'J§)
               {
                  this.§'J§ = §[#%§.playSound("Sound_Snow_Ball_Rolling_Loop",§ #9§,9999);
               }
               if((_loc6_ = this.§4$5§ + _loc5_) > this.§3!4§)
               {
                  _loc6_ = this.§3!4§;
               }
               this.§]L§(_loc6_);
               if(_loc6_ / this.§-K§ - this.§;#`§ > this.§^"I§)
               {
                  this.§6!S§ += param1;
               }
               else
               {
                  this.§6!S§ -= param1;
               }
               if(this.§6!S§ > this.§[#&§)
               {
                  if(this.§'J§)
                  {
                     this.§'J§.volume = 1;
                  }
               }
               else if(this.§'J§)
               {
                  this.§'J§.volume = 0;
               }
               this.§;#`§ = _loc6_ / this.§-K§;
               §]+§.setScale(this.§;#`§ * scale);
            }
            else if(this.§'J§)
            {
               this.§'J§.volume = 0;
            }
         }
         else
         {
            this.§6!S§ = 0;
            if(this.§'J§)
            {
               this.§'J§.volume = 0;
            }
         }
         super.update(param1,param2);
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         if(this.§'J§)
         {
            this.§'J§.stop();
            this.§'J§ = null;
         }
         super.dispose(param1);
      }
      
      private function §]L§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§<!k§(param1);
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
         this.§>#E§();
      }
      
      private function §>#E§() : void
      {
         this.§=" § = (getBody().GetFixtureList().GetShape() as b2CircleShape).§7"z§() * 2 * Math.PI;
      }
      
      public function set §?$"§(param1:Boolean) : void
      {
         this.§ #L§ = param1;
      }
   }
}
