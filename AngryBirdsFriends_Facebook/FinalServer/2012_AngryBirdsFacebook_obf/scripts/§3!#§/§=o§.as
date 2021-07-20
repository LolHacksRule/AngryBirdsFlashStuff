package §3!#§
{
   import §&!Y§.b2Body;
   import §&!Y§.b2Fixture;
   import §&!Y§.b2World;
   import §+!d§.b2CircleShape;
   import §0!2§.§5"L§;
   import §5!G§.§&2§;
   import §7F§.b2Vec2;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §>s§.§+m§;
   import §>s§.§9!u§;
   import §]!v§.Sprite;
   import flash.geom.Point;
   
   public class §=o§ extends §5"A§
   {
      
      private static const §5M§:String = "SnowBallSounds";
      
      private static const §!!A§:int = 1;
      
      private static const §6"8§:Number = 1;
       
      
      private const §0"0§:Number = 5;
      
      private const §+$§:Number = 0.9;
      
      private const §<t§:Number = 0.01;
      
      private const §&C§:Number = 0.002;
      
      private const §!f§:Number = 350;
      
      private var §0[§:Number = 1;
      
      private var §0!v§:Number = 1;
      
      private var §4j§:int = 0;
      
      private var §&h§:b2Vec2;
      
      private var §3'§:Number;
      
      private var §8!3§:§<!g§;
      
      private var §@1§:Number;
      
      private var §@S§:Number = 1;
      
      private var §6!f§:Boolean = false;
      
      private var §6!I§:Boolean = false;
      
      private var §7!=§:Boolean = false;
      
      private var §"!?§:b2Vec2 = null;
      
      private var §4!P§:§9!u§;
      
      private var §4!b§:Number = 0;
      
      public function §=o§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §+m§.§9!g§(§5M§,§!!A§,§6"8§);
         this.§8!3§ = param1 as §<!g§;
         this.§0!v§ = (§`!y§().GetFixtureList().GetShape() as b2CircleShape).§%!5§();
         this.§@S§ = this.§0"0§ / this.§0!v§;
         this.§^"4§();
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§6!f§ && !this.§6!I§)
         {
            return §!!U§;
         }
         var _loc7_:Number = super.applyDamage(param1,param1 >= §!!U§,param3,param4,param5,param6);
         if(!this.§6!f§ || this.§6!I§)
         {
            if(_loc7_ <= 0)
            {
               _loc8_ = §`!y§().GetPosition();
               _loc9_ = Math.PI * 4 / (30 * (this.§0[§ / this.§@S§));
               _loc10_ = this.§0[§ * this.§0!v§;
               _loc11_ = 0;
               while(_loc11_ < Math.PI * 4)
               {
                  _loc12_ = Math.cos(_loc11_);
                  _loc13_ = Math.sin(_loc11_);
                  §&2§.§],§.particles.§-!O§("PARTICLE_SNOW_" + Math.round(Math.random() * 7 + 1),§4! §.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,_loc8_.x + -_loc12_ * Math.random() * _loc10_,_loc8_.y + -_loc13_ * Math.random() * _loc10_,1000,"",0,-_loc12_ * (6 * Math.random() + 3),-_loc13_ * (6 * Math.random() + 3),10,Math.random() * 180,1);
                  _loc11_ += _loc9_;
               }
            }
         }
         return _loc7_;
      }
      
      public function §5!w§(param1:§5"A§) : Boolean
      {
         var _loc2_:b2Vec2 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         if(this.§6!f§ && !this.§6!I§)
         {
            if(!this.§6!I§ && param1.§3q§())
            {
               this.§6!I§ = true;
               _loc2_ = §`!y§().GetPosition().Copy();
               _loc2_.§7!,§(param1.§`!y§().GetPosition());
               _loc2_.Normalize();
               _loc3_ = §`!y§().GetLinearVelocity().Length();
               _loc4_ = param1.§`!y§().GetLinearVelocity().Length();
               _loc5_ = (_loc3_ + _loc4_ / 2) * 0.6;
               _loc6_ = new b2Vec2(_loc2_.x * _loc5_,_loc2_.y * _loc5_);
               §`!y§().SetLinearVelocity(_loc6_);
               param1.§`!y§().GetLinearVelocity().§ !>§(0.5);
               param1.applyDamage(1,false);
               param1.§`!y§().§23§(Math.random() * 10 - 5);
               return true;
            }
            if(!this.§6!I§)
            {
               this.§7!=§ = true;
               this.§"!?§ = §`!y§().GetLinearVelocity().Copy();
            }
         }
         else if(!param1.§=!D§)
         {
            this.§^!d§(param1);
         }
         return false;
      }
      
      public function §3+§(param1:§5"A§) : void
      {
         if(!param1.§=!D§)
         {
            this.§^!]§(param1);
         }
      }
      
      public function §^!d§(param1:§5"A§) : void
      {
         this.§&h§ = §`!y§().GetPosition().Copy();
         this.§3'§ = (§`!y§().GetFixtureList().GetShape() as b2CircleShape).§%!5§();
         ++this.§4j§;
      }
      
      public function §^!]§(param1:§5"A§) : void
      {
         --this.§4j§;
         if(this.§4j§ < 0)
         {
            this.§4j§ = 0;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:b2Vec2 = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:b2Vec2 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(this.§7!=§)
         {
            _loc2_ = §`!y§().GetPosition();
            _loc3_ = this.§"!?§.§7E§();
            _loc3_.Normalize();
            if((_loc4_ = Math.atan2(_loc3_.y,_loc3_.x)) < 0)
            {
               _loc4_ += Math.PI * 2;
            }
            _loc5_ = 0;
            while(_loc5_ < 15)
            {
               _loc7_ = _loc4_ + (Math.PI / 2 * Math.random() - Math.PI / 4);
               _loc8_ = Math.random() * 12;
               §&2§.§],§.particles.§-!O§("PARTICLE_SNOW_" + Math.round(Math.random() * 4 + 3),§4! §.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§3!p§.PARTICLE_GROUP_GAME_EFFECTS,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_.x,_loc2_.y,1000,"",0,Math.cos(_loc7_) * _loc8_,Math.sin(_loc7_) * _loc8_,10,Math.random() * 180,1);
               _loc5_++;
            }
            if((_loc6_ = §&2§.§],§.§'w§(_loc2_.x,_loc2_.y)).x > 0 && _loc6_.x < §5"L§.§9"D§)
            {
               §+m§.§'!k§("Snow_Ball_Impact_5");
            }
            this.§8!3§.addExplosions(§=J§.§`!"§,_loc2_.x,_loc2_.y);
            this.§8!3§.§ !"§(this);
         }
         else if(§`!y§().IsAwake() && this.§6@§() && (§`!y§().GetFixtureList().GetShape() as b2CircleShape).§%!5§() < this.§0"0§)
         {
            (_loc9_ = §`!y§().GetPosition().Copy()).§7!,§(this.§&h§);
            if((_loc11_ = (_loc10_ = _loc9_.Length()) / this.§@1§ * this.§+$§) > this.§<t§)
            {
               if(!this.§4!P§)
               {
                  this.§4!P§ = §+m§.§]!N§("Sound_Snow_Ball_Rolling_Loop",§5M§,9999);
               }
               if((_loc12_ = this.§3'§ + _loc11_) > this.§0"0§)
               {
                  _loc12_ = this.§0"0§;
               }
               this.§?H§(_loc12_);
               if(_loc12_ / this.§0!v§ - this.§0[§ > this.§&C§)
               {
                  this.§4!b§ += param1;
               }
               else
               {
                  this.§4!b§ -= param1;
               }
               if(this.§4!b§ > this.§!f§)
               {
                  if(this.§4!P§)
                  {
                     this.§4!P§.volume = 1;
                  }
               }
               else if(this.§4!P§)
               {
                  this.§4!P§.volume = 0;
               }
               this.§0[§ = _loc12_ / this.§0!v§;
               §<!K§.setScale(this.§0[§ * scale);
            }
            else if(this.§4!P§)
            {
               this.§4!P§.volume = 0;
            }
         }
         else
         {
            this.§4!b§ = 0;
            if(this.§4!P§)
            {
               this.§4!P§.volume = 0;
            }
         }
         super.update(param1);
      }
      
      override public function dispose() : void
      {
         if(this.§4!P§)
         {
            this.§4!P§.stop();
            this.§4!P§ = null;
         }
         super.dispose();
      }
      
      public function §6@§() : Boolean
      {
         return this.§4j§ > 0;
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
      
      private function §?H§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §`!y§()).GetFixtureList()).GetShape() as b2CircleShape;
         _loc5_.SetAwake(true);
         _loc7_.§8!U§(param1);
         if(param2 >= 0)
         {
            _loc6_.§0"9§(param2);
         }
         if(param3 >= 0)
         {
            _loc6_.§"R§(param3);
         }
         if(param4 >= 0)
         {
            _loc6_.§"!t§(param4);
         }
         _loc5_.§;!l§();
         this.§^"4§();
      }
      
      private function §^"4§() : void
      {
         this.§@1§ = (§`!y§().GetFixtureList().GetShape() as b2CircleShape).§%!5§() * 2 * Math.PI;
      }
      
      public function §5"F§(param1:Boolean) : void
      {
         this.§6!f§ = param1;
      }
   }
}
