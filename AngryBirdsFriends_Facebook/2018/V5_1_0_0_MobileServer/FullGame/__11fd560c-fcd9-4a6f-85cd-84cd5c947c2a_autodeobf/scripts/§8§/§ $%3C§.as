package §8§#8
{
   import § "%§.b2Vec2;
   import §4"O§.b2FilterData;
   import §4"O§.b2Fixture;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§#H§;
   import §>M§.§3!1§;
   import §>M§.§["z§;
   import §@!M§.§!"p§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.geom.Point;
   
   public class § $<§ extends §4!y§
   {
      
      private static const §>#;§:Number = 0.5;
      
      private static const §"!o§:Number = 0.15;
      
      private static const §?#T§:Number = 9;
      
      private static const §'#`§:Number = 6;
       
      
      private var §0!E§:§4!y§;
      
      private var §"!>§:Number = 0;
      
      private var §7#v§:Boolean;
      
      private var §5"%§:Number;
      
      private var §;!>§:§#H§;
      
      public function § $<§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§7#v§ = false;
         this.§5"%§ = 2 * Math.PI * Math.random();
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
         _loc1_.§+"p§ = §+"'§;
         _loc1_.§5!H§ = 65535;
         return _loc1_;
      }
      
      public function init(param1:b2Vec2, param2:Number) : void
      {
         getBody().SetLinearVelocity(param1);
         getBody().SetLinearDamping(param2);
      }
      
      public function §0#7§(param1:§4!y§) : void
      {
         if(this.§0!E§)
         {
            this.§^#t§();
         }
         this.§0!E§ = param1;
         var _loc2_:§3!1§ = new §3!1§(§3!1§.§8#z§,this.§0!E§.id,this.id,new Point(0,0),new Point(0,0),false,false,-2 * Math.PI,2 * Math.PI);
         _loc2_.coordinateType = 2;
         this.§;!>§ = (§3#U§.§#$4§.levelObjects as §;Y§).§1$!§(_loc2_);
         if(this.§0!E§ && this.§0!E§.§>"H§ == §3"8§.§![§)
         {
            this.§0!E§.§>"H§ = §3"8§.DEFAULT;
         }
         if(§>"H§ == §3"8§.§![§)
         {
            §>"H§ = §3"8§.DEFAULT;
         }
         §!"p§.playSound("parachute_deployed_01","ChannelPowerups",0,0.5);
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         if(param3 != this.§0!E§)
         {
            this.§^#t§();
         }
         return health;
      }
      
      public function §^#t§() : void
      {
         this.§7#v§ = true;
         if(this.§;!>§)
         {
            §3#U§.§#$4§.mLevelEngine.mWorld.§[!N§(this.§;!>§.§%#Z§);
         }
         this.§0!E§ = null;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§5!H§ = 0;
         §+"n§(_loc1_);
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         super.update(param1,param2);
         this.§"!>§ += param1;
         if(this.§"!>§ == 0)
         {
            return;
         }
         if(this.§7#v§)
         {
            if(getBody().GetAngularVelocity() < 1)
            {
               getBody().SetAngularVelocity(1);
            }
            sprite.alpha = Math.max(0,sprite.alpha - param1 / 500);
            if(sprite.alpha == 0)
            {
               health = 0;
            }
         }
         else
         {
            _loc3_ = this.§5"%§ + this.§"!>§ / 500 * Math.PI * §>#;§;
            _loc4_ = Math.sin(_loc3_);
            _loc5_ = Math.cos(_loc3_) * §"!o§;
            getBody().SetAngle(_loc5_);
            if((_loc6_ = getBody().GetLinearVelocity()).y > §?#T§)
            {
               _loc6_.y = §?#T§;
            }
            _loc6_.x = _loc4_ * §'#`§;
            getBody().SetLinearVelocity(_loc6_);
         }
      }
      
      public function get §[P§() : Boolean
      {
         return this.§7#v§;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         this.§^#t§();
         super.dispose(param1);
      }
   }
}
