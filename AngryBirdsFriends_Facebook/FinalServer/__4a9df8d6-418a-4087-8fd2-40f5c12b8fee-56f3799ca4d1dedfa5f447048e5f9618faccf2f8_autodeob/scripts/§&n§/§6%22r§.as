package §&n§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §1#u§.§+X§;
   import §1#u§.§6"s§;
   import §6!3§.§8$B§;
   import §6!3§.§9"+§;
   import §6!3§.§;!U§;
   import §6!3§.§^#x§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §9$2§.§7"L§;
   import §9X§.§0!I§;
   import §9X§.§]§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2FilterData;
   import §@!S§.b2Fixture;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §6"r§ extends §^#x§
   {
      
      private static const §6D§:int = 1000;
      
      public static const §;#G§:String = "COLLECTIBLE_ITEM";
      
      public static const §-#e§:String = "COLLECTIBLE_ITEM_DEFAULT";
       
      
      private var §]!E§:b2Vec2;
      
      private var §0"J§:Number;
      
      private var §8# §:Number;
      
      private var §,!_§:Boolean;
      
      private var § #%§:§]#1§;
      
      public function §6"r§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
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
         this.§,!_§ = false;
         sprite.visible = false;
         §3!F§ = §9"+§.§["'§;
         this.§ #%§ = new §]#1§(mWorld);
         var _loc1_:§+X§ = (§7n§.§6#K§.camera as §6"s§).§%!X§;
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
               _loc9_ = this.§0k§(_loc8_,_loc6_);
               _loc4_.push({
                  "x":_loc8_,
                  "y":_loc6_,
                  "closestDist":_loc9_
               });
               _loc7_++;
            }
            _loc5_++;
         }
         _loc4_.sort(this.§+$A§);
         this.§0"J§ = _loc4_[_loc4_.length - 1].x;
         this.§8# § = _loc4_[_loc4_.length - 1].y;
         this.§]!E§ = new b2Vec2(this.§0"J§,this.§8# §);
         getBody().SetPosition(this.§]!E§);
      }
      
      private function §+$A§(param1:Object, param2:Object) : int
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
      
      private function §0k§(param1:Number, param2:Number) : Number
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§0!I§ = null;
         var _loc5_:Number = Number(10);
         var _loc6_:Array = new Array();
         var _loc7_:int = 1;
         while(_loc7_ < 32)
         {
            _loc8_ = _loc7_ / 32 * Math.PI * 2;
            _loc9_ = param1 + Math.cos(_loc8_) * 10;
            _loc10_ = param2 + Math.sin(_loc8_) * 10;
            this.§ #%§.§;"F§(param1,param2,_loc9_,_loc10_);
            if(this.§ #%§.§9"?§ > 0)
            {
               _loc12_ = this.§ #%§.§5!K§(0);
               _loc6_.push({
                  "x":_loc12_.§4!3§.x,
                  "y":_loc12_.§4!3§.y
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
         this.§,!_§ = true;
         sprite.visible = true;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§#!+§ = 65535;
         §4!`§(_loc1_);
         §7n§.§6#K§.particles.addSimpleParticle(§6!9§.§5!L§,§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§6!9§.§'s§);
         §-#"§();
      }
      
      public function §2!>§() : void
      {
         var _loc1_:§]"%§ = §7"L§.§`"H§.§9'§() as §]"%§;
         if(_loc1_)
         {
            _loc1_.§""O§(this);
         }
         health = 0;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         return health;
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2Fixture = super.createFixture();
         _loc1_.§2$7§(true);
         return _loc1_;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§#!+§ = 0;
         return _loc1_;
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         playDestroyedSound();
         §7n§.§6#K§.particles.addSimpleParticle(§6!9§.§5!L§,§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",§6!9§.§'s§);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.update(param1,param2);
         if(this.§]!E§)
         {
            _loc3_ = Math.sin(§7$;§ / 1000 * 1.5) * 0.5;
            _loc4_ = Math.sin(§7$;§ / 1000 * 3) * 0.5;
            this.§]!E§.x = this.§0"J§ + _loc3_;
            this.§]!E§.y = this.§8# § + _loc4_;
            getBody().SetPosition(this.§]!E§);
         }
         if(!this.§,!_§ && §7$;§ > §6D§)
         {
            this.activate();
         }
      }
   }
}
