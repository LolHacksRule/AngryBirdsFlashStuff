package §'#d§
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §%!P§.§-#i§;
   import §%!P§.§4#b§;
   import §4"O§.b2FilterData;
   import §4"O§.b2Fixture;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §8§.§&#V§;
   import §8§.§3"8§;
   import §8§.§4!y§;
   import §8§.§]o§;
   import §;#D§.§3#U§;
   import §="h§.§`"O§;
   import §>M§.§["z§;
   import §?$9§.§=V§;
   import §?$9§.§^#h§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §##8§ extends §]o§
   {
      
      private static const §2"p§:int = 1000;
      
      public static const §2!^§:String = "COLLECTIBLE_ITEM";
      
      public static const §#!"§:String = "COLLECTIBLE_ITEM_DEFAULT";
       
      
      private var §7!k§:b2Vec2;
      
      private var §]!V§:Number;
      
      private var §0!4§:Number;
      
      private var §'1§:Boolean;
      
      private var §+#%§:§=V§;
      
      public function §##8§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.init();
      }
      
      private function init() : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         this.§'1§ = false;
         sprite.visible = false;
         §>"H§ = §3"8§.§+l§;
         this.§+#%§ = new §=V§(mWorld);
         var _loc1_:§4#b§ = (§3#U§.§#$4§.camera as §-#i§).§`l§;
         var _loc2_:Number = _loc1_.x;
         var _loc3_:Number = _loc1_.y;
         var _loc4_:Array = new Array();
         var _loc5_:int = 1;
         while(_loc5_ < 8)
         {
            _loc6_ = _loc3_ + (0.5 - _loc5_ / 8) * 30;
            _loc7_ = 1;
            while(_loc7_ < 12)
            {
               _loc8_ = _loc2_ - _loc7_ / 12 * 40;
               _loc9_ = this.§^!e§(_loc8_,_loc6_);
               _loc4_.push({
                  "x":_loc8_,
                  "y":_loc6_,
                  "closestDist":_loc9_
               });
               _loc7_++;
            }
            _loc5_++;
         }
         _loc4_.sort(this.§4"h§);
         this.§]!V§ = _loc4_[_loc4_.length - 1].x;
         this.§0!4§ = _loc4_[_loc4_.length - 1].y;
         this.§7!k§ = new b2Vec2(this.§]!V§,this.§0!4§);
         getBody().SetPosition(this.§7!k§);
      }
      
      private function §4"h§(param1:Object, param2:Object) : int
      {
         if(param1.closestDist > 6 && param2.closestDist > 6)
         {
            if(param1.x < param2.x)
            {
               return -1;
            }
            if(param1.x > param2.x)
            {
               return 1;
            }
            return 0;
         }
         if(param1.closestDist < param2.closestDist)
         {
            return -1;
         }
         if(param1.closestDist > param2.closestDist)
         {
            return 1;
         }
         return 0;
      }
      
      private function §^!e§(param1:Number, param2:Number) : Number
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§^#h§ = null;
         var _loc5_:Number = Number(10);
         var _loc6_:Array = new Array();
         var _loc7_:int = 1;
         while(_loc7_ < 32)
         {
            _loc8_ = _loc7_ / 32 * Math.PI * 2;
            _loc9_ = param1 + Math.cos(_loc8_) * 10;
            _loc10_ = param2 + Math.sin(_loc8_) * 10;
            this.§+#%§.§"!1§(param1,param2,_loc9_,_loc10_);
            if(this.§+#%§.§+!6§ > 0)
            {
               _loc12_ = this.§+#%§.§-$8§(0);
               _loc6_.push({
                  "x":_loc12_.§^!x§.x,
                  "y":_loc12_.§^!x§.y
               });
            }
            else
            {
               _loc6_.push({
                  "x":_loc9_,
                  "y":_loc10_
               });
            }
            if((_loc11_ = Math.sqrt((_loc6_[_loc7_ - 1].x - param1) * (_loc6_[_loc7_ - 1].x - param1) + (_loc6_[_loc7_ - 1].y - param2) * (_loc6_[_loc7_ - 1].y - param2))) < _loc5_)
            {
               _loc5_ = _loc11_;
            }
            _loc7_++;
         }
         return _loc5_;
      }
      
      private function activate() : void
      {
         this.§'1§ = true;
         sprite.visible = true;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§5!H§ = 65535;
         §+"n§(_loc1_);
         §3#U§.§#$4§.particles.addSimpleParticle(§@>§.§2c§,§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§@>§.§&_§);
         § r§();
      }
      
      public function §4`§() : void
      {
         var _loc1_:§5!Z§ = §`"O§.§6!§.§!!I§() as §5!Z§;
         if(_loc1_)
         {
            _loc1_.§4"W§(this);
         }
         health = 0;
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = super.createFixture();
         _loc1_.§3$5§(true);
         return _loc1_;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§5!H§ = 0;
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         playDestroyedSound();
         §3#U§.§#$4§.particles.addSimpleParticle(§@>§.§2c§,§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§@>§.§&_§);
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§7!k§)
         {
            _loc3_ = Math.sin(§8G§ / 1000 * 1.5) * 0.5;
            _loc4_ = Math.sin(§8G§ / 1000 * 3) * 0.5;
            this.§7!k§.x = this.§]!V§ + _loc3_;
            this.§7!k§.y = this.§0!4§ + _loc4_;
            getBody().SetPosition(this.§7!k§);
         }
         if(!this.§'1§ && §8G§ > §2"p§)
         {
            this.activate();
         }
      }
   }
}
