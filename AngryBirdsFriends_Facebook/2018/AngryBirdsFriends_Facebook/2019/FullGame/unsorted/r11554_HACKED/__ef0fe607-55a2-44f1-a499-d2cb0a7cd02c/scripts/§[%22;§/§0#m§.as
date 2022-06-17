package §[";§
{
   import §!!T§.§1"9§;
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §%_§.§+#l§;
   import §%_§.§9#b§;
   import §-!!§.§ #'§;
   import §-!!§.§,!h§;
   import §-!!§.§-#L§;
   import §-!!§.§8"J§;
   import §1i§.§<#I§;
   import §1i§.§`#z§;
   import §8#t§.b2FilterData;
   import §8#t§.b2Fixture;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §0#m§ extends §,!h§
   {
      
      private static const §?!t§:int = 1000;
      
      public static const §!"v§:String = "COLLECTIBLE_ITEM";
      
      public static const §+",§:String = "COLLECTIBLE_ITEM_DEFAULT";
       
      
      private var §5"=§:b2Vec2;
      
      private var §`"j§:Number;
      
      private var §>"3§:Number;
      
      private var §'"V§:Boolean;
      
      private var §06§:§<#I§;
      
      public function §0#m§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
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
         this.§'"V§ = false;
         sprite.visible = false;
         §&"X§ = §-#L§.§;"P§;
         this.§06§ = new §<#I§(mWorld);
         var _loc1_:§+#l§ = (§%"T§.§;`§.camera as §9#b§).§%!r§;
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
               _loc9_ = this.§,"l§(_loc8_,_loc6_);
               _loc4_.push({
                  "x":_loc8_,
                  "y":_loc6_,
                  "closestDist":_loc9_
               });
               _loc7_++;
            }
            _loc5_++;
         }
         _loc4_.sort(this.§1"h§);
         this.§`"j§ = _loc4_[_loc4_.length - 1].x;
         this.§>"3§ = _loc4_[_loc4_.length - 1].y;
         this.§5"=§ = new b2Vec2(this.§`"j§,this.§>"3§);
         getBody().SetPosition(this.§5"=§);
      }
      
      private function §1"h§(param1:Object, param2:Object) : int
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
      
      private function §,"l§(param1:Number, param2:Number) : Number
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§`#z§ = null;
         var _loc5_:Number = Number(10);
         var _loc6_:Array = new Array();
         var _loc7_:int = 1;
         while(_loc7_ < 32)
         {
            _loc8_ = _loc7_ / 32 * Math.PI * 2;
            _loc9_ = param1 + Math.cos(_loc8_) * 10;
            _loc10_ = param2 + Math.sin(_loc8_) * 10;
            this.§06§.§%$E§(param1,param2,_loc9_,_loc10_);
            if(this.§06§.§9#<§ > 0)
            {
               _loc12_ = this.§06§.§>!§(0);
               _loc6_.push({
                  "x":_loc12_.§-V§.x,
                  "y":_loc12_.§-V§.y
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
         this.§'"V§ = true;
         sprite.visible = true;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§#"5§ = 65535;
         §5#y§(_loc1_);
         §%"T§.§;`§.particles.addSimpleParticle(§'Y§.§>$?§,§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§'Y§.§,"A§);
         § !W§();
      }
      
      public function §'%§() : void
      {
         var _loc1_:§8!n§ = §1"9§.§?q§.§[!8§() as §8!n§;
         if(_loc1_)
         {
            _loc1_.§'"l§(this);
         }
         health = 0;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = super.createFixture();
         _loc1_.§'" §(true);
         return _loc1_;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§#"5§ = 0;
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         playDestroyedSound();
         §%"T§.§;`§.particles.addSimpleParticle(§'Y§.§>$?§,§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§'Y§.§,"A§);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§5"=§)
         {
            _loc3_ = Math.sin(§>"&§ / 1000 * 1.5) * 0.5;
            _loc4_ = Math.sin(§>"&§ / 1000 * 3) * 0.5;
            this.§5"=§.x = this.§`"j§ + _loc3_;
            this.§5"=§.y = this.§>"3§ + _loc4_;
            getBody().SetPosition(this.§5"=§);
         }
         if(!this.§'"V§ && §>"&§ > §?!t§)
         {
            this.activate();
         }
      }
   }
}
