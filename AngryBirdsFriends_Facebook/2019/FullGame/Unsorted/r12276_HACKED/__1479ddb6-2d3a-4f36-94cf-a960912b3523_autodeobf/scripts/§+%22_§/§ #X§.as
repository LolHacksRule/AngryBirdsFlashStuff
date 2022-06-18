package §+"_§
{
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2FilterData;
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §4"Y§.§6$A§;
   import §4"Y§.§]!m§;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   import §]M§.§=!a§;
   import §^0§.§%N§;
   import §^0§.§=Q§;
   import §^0§.§>"T§;
   import §^0§.§`"p§;
   import §`$=§.§<Q§;
   import §`$=§.§]"U§;
   
   public class § #X§ extends §%N§
   {
      
      private static const §"#S§:int = 1000;
      
      public static const §4" §:String = "COLLECTIBLE_ITEM";
      
      public static const § !6§:String = "COLLECTIBLE_ITEM_DEFAULT";
       
      
      private var §'# §:b2Vec2;
      
      private var §@#G§:Number;
      
      private var § #!§:Number;
      
      private var §=!4§:Boolean;
      
      private var §!!F§:§]!m§;
      
      public function § #X§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
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
         this.§=!4§ = false;
         sprite.visible = false;
         §<!x§ = §`"p§.§6$6§;
         this.§!!F§ = new §]!m§(mWorld);
         var _loc1_:§]"U§ = (§+!p§.§`?§.camera as §<Q§).§?!e§;
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
               _loc9_ = this.§#m§(_loc8_,_loc6_);
               _loc4_.push({
                  "x":_loc8_,
                  "y":_loc6_,
                  "closestDist":_loc9_
               });
               _loc7_++;
            }
            _loc5_++;
         }
         _loc4_.sort(this.§2P§);
         this.§@#G§ = _loc4_[_loc4_.length - 1].x;
         this.§ #!§ = _loc4_[_loc4_.length - 1].y;
         this.§'# § = new b2Vec2(this.§@#G§,this.§ #!§);
         getBody().SetPosition(this.§'# §);
      }
      
      private function §2P§(param1:Object, param2:Object) : int
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
      
      private function §#m§(param1:Number, param2:Number) : Number
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§6$A§ = null;
         var _loc5_:Number = Number(10);
         var _loc6_:Array = new Array();
         var _loc7_:int = 1;
         while(_loc7_ < 32)
         {
            _loc8_ = _loc7_ / 32 * Math.PI * 2;
            _loc9_ = param1 + Math.cos(_loc8_) * 10;
            _loc10_ = param2 + Math.sin(_loc8_) * 10;
            this.§!!F§.§0=§(param1,param2,_loc9_,_loc10_);
            if(this.§!!F§.§+5§ > 0)
            {
               _loc12_ = this.§!!F§.§'$8§(0);
               _loc6_.push({
                  "x":_loc12_.§^##§.x,
                  "y":_loc12_.§^##§.y
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
         this.§=!4§ = true;
         sprite.visible = true;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§@>§ = 65535;
         §,z§(_loc1_);
         §+!p§.§`?§.particles.addSimpleParticle(§`#I§.§1!h§,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§`#I§.§&#p§);
         §&"?§();
      }
      
      public function §@x§() : void
      {
         var _loc1_:§>"%§ = §=!a§.§3"1§.§>"Q§() as §>"%§;
         if(_loc1_)
         {
            _loc1_.§>#'§(this);
         }
         health = 0;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = super.createFixture();
         _loc1_.§3# §(true);
         return _loc1_;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§@>§ = 0;
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         playDestroyedSound();
         §+!p§.§`?§.particles.addSimpleParticle(§`#I§.§1!h§,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§`#I§.§&#p§);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§'# §)
         {
            _loc3_ = Math.sin(§<K§ / 1000 * 1.5) * 0.5;
            _loc4_ = Math.sin(§<K§ / 1000 * 3) * 0.5;
            this.§'# §.x = this.§@#G§ + _loc3_;
            this.§'# §.y = this.§ #!§ + _loc4_;
            getBody().SetPosition(this.§'# §);
         }
         if(!this.§=!4§ && §<K§ > §"#S§)
         {
            this.activate();
         }
      }
   }
}
