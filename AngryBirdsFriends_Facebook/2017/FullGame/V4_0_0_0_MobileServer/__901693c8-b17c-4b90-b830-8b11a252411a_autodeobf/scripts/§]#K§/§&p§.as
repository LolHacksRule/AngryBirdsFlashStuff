package §]#K§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §1!+§.b2FilterData;
   import §1!+§.b2Fixture;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §9$<§.§4!q§;
   import §9$<§.§4p§;
   import §<#r§.§4$5§;
   import §<#r§.§[$5§;
   import §<u§.§ "a§;
   import §>!5§.§-!S§;
   import §>!5§.§4@§;
   import §>!5§.§;"i§;
   import §>!5§.§^"9§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   
   public class §&p§ extends §;"i§
   {
      
      private static const §!"-§:int = 1000;
      
      public static const §+"N§:String = "COLLECTIBLE_ITEM";
      
      public static const §"$>§:String = "COLLECTIBLE_ITEM_DEFAULT";
       
      
      private var §-"D§:b2Vec2;
      
      private var §?#"§:Number;
      
      private var §?#J§:Number;
      
      private var §=f§:Boolean;
      
      private var §"F§:§[$5§;
      
      public function §&p§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
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
         this.§=f§ = false;
         sprite.visible = false;
         §>#j§ = §4@§.§+!4§;
         this.§"F§ = new §[$5§(mWorld);
         var _loc1_:§4!q§ = (§!#A§.§#F§.camera as §4p§).§-l§;
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
               _loc9_ = this.§^#[§(_loc8_,_loc6_);
               _loc4_.push({
                  "x":_loc8_,
                  "y":_loc6_,
                  "closestDist":_loc9_
               });
               _loc7_++;
            }
            _loc5_++;
         }
         _loc4_.sort(this.§ !%§);
         this.§?#"§ = _loc4_[_loc4_.length - 1].x;
         this.§?#J§ = _loc4_[_loc4_.length - 1].y;
         this.§-"D§ = new b2Vec2(this.§?#"§,this.§?#J§);
         getBody().SetPosition(this.§-"D§);
      }
      
      private function § !%§(param1:Object, param2:Object) : int
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
      
      private function §^#[§(param1:Number, param2:Number) : Number
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§4$5§ = null;
         var _loc5_:Number = Number(10);
         var _loc6_:Array = new Array();
         var _loc7_:int = 1;
         while(_loc7_ < 32)
         {
            _loc8_ = _loc7_ / 32 * Math.PI * 2;
            _loc9_ = param1 + Math.cos(_loc8_) * 10;
            _loc10_ = param2 + Math.sin(_loc8_) * 10;
            this.§"F§.§3"0§(param1,param2,_loc9_,_loc10_);
            if(this.§"F§.§[8§ > 0)
            {
               _loc12_ = this.§"F§.§8#L§(0);
               _loc6_.push({
                  "x":_loc12_.§=!t§.x,
                  "y":_loc12_.§=!t§.y
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
         this.§=f§ = true;
         sprite.visible = true;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§4"?§ = 65535;
         §+!Q§(_loc1_);
         §!#A§.§#F§.particles.addSimpleParticle(§2"^§.§<$+§,§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§2"^§.§9Z§);
         §'#=§();
      }
      
      public function §&!E§() : void
      {
         var _loc1_:§>#x§ = § "a§.§ "D§.§^W§() as §>#x§;
         if(_loc1_)
         {
            _loc1_.§%c§(this);
         }
         health = 0;
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = super.createFixture();
         _loc1_.§9!`§(true);
         return _loc1_;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§4"?§ = 0;
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         playDestroyedSound();
         §!#A§.§#F§.particles.addSimpleParticle(§2"^§.§<$+§,§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§2"^§.§9Z§);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§-"D§)
         {
            _loc3_ = Math.sin(§`"b§ / 1000 * 1.5) * 0.5;
            _loc4_ = Math.sin(§`"b§ / 1000 * 3) * 0.5;
            this.§-"D§.x = this.§?#"§ + _loc3_;
            this.§-"D§.y = this.§?#J§ + _loc4_;
            getBody().SetPosition(this.§-"D§);
         }
         if(!this.§=f§ && §`"b§ > §!"-§)
         {
            this.activate();
         }
      }
   }
}
