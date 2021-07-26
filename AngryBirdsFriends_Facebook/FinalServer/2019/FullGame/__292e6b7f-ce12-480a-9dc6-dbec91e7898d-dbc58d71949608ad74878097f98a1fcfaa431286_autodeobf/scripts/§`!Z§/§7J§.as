package §`!Z§
{
   import § !N§.§5"?§;
   import §'"b§.§ #F§;
   import §'#K§.b2FilterData;
   import §'#K§.b2Fixture;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §2"u§.§#!u§;
   import §2"u§.§3"X§;
   import §4§.§1#$§;
   import §4§.§<!`§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §;!=§.§"#-§;
   import §;!=§.§1!y§;
   import §;!=§.§>"G§;
   import §;!=§.§]!m§;
   import §?#z§.§]$?§;
   
   public class §7J§ extends §1!y§
   {
      
      private static const §#!!§:int = 1000;
      
      public static const §>[§:String = "COLLECTIBLE_ITEM";
      
      public static const §`$=§:String = "COLLECTIBLE_ITEM_DEFAULT";
       
      
      private var §7$"§:b2Vec2;
      
      private var §,!7§:Number;
      
      private var §?!S§:Number;
      
      private var §""u§:Boolean;
      
      private var §+!h§:§3"X§;
      
      public function §7J§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
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
         this.§""u§ = false;
         sprite.visible = false;
         §@#z§ = §"#-§.§@"z§;
         this.§+!h§ = new §3"X§(mWorld);
         var _loc1_:§1#$§ = (§]$?§.§2#§.camera as §<!`§).§'#"§;
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
               _loc9_ = this.§^p§(_loc8_,_loc6_);
               _loc4_.push({
                  "x":_loc8_,
                  "y":_loc6_,
                  "closestDist":_loc9_
               });
               _loc7_++;
            }
            _loc5_++;
         }
         _loc4_.sort(this.§#$-§);
         this.§,!7§ = _loc4_[_loc4_.length - 1].x;
         this.§?!S§ = _loc4_[_loc4_.length - 1].y;
         this.§7$"§ = new b2Vec2(this.§,!7§,this.§?!S§);
         getBody().SetPosition(this.§7$"§);
      }
      
      private function §#$-§(param1:Object, param2:Object) : int
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
      
      private function §^p§(param1:Number, param2:Number) : Number
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§#!u§ = null;
         var _loc5_:Number = Number(10);
         var _loc6_:Array = new Array();
         var _loc7_:int = 1;
         while(_loc7_ < 32)
         {
            _loc8_ = _loc7_ / 32 * Math.PI * 2;
            _loc9_ = param1 + Math.cos(_loc8_) * 10;
            _loc10_ = param2 + Math.sin(_loc8_) * 10;
            this.§+!h§.§null§(param1,param2,_loc9_,_loc10_);
            if(this.§+!h§.§4#9§ > 0)
            {
               _loc12_ = this.§+!h§.§6$E§(0);
               _loc6_.push({
                  "x":_loc12_.§`"b§.x,
                  "y":_loc12_.§`"b§.y
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
         this.§""u§ = true;
         sprite.visible = true;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§<L§ = 65535;
         §`"=§(_loc1_);
         §]$?§.§2#§.particles.addSimpleParticle(§=,§.§%!m§,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§=,§.§ a§);
         §]!?§();
      }
      
      public function §-"<§() : void
      {
         var _loc1_:§=!7§ = § #F§.§+!,§.§4#P§() as §=!7§;
         if(_loc1_)
         {
            _loc1_.§9"Z§(this);
         }
         health = 0;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = super.createFixture();
         _loc1_.§`R§(true);
         return _loc1_;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§<L§ = 0;
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         playDestroyedSound();
         §]$?§.§2#§.particles.addSimpleParticle(§=,§.§%!m§,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§=,§.§ a§);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§7$"§)
         {
            _loc3_ = Math.sin(§1!j§ / 1000 * 1.5) * 0.5;
            _loc4_ = Math.sin(§1!j§ / 1000 * 3) * 0.5;
            this.§7$"§.x = this.§,!7§ + _loc3_;
            this.§7$"§.y = this.§?!S§ + _loc4_;
            getBody().SetPosition(this.§7$"§);
         }
         if(!this.§""u§ && §1!j§ > §#!!§)
         {
            this.activate();
         }
      }
   }
}
