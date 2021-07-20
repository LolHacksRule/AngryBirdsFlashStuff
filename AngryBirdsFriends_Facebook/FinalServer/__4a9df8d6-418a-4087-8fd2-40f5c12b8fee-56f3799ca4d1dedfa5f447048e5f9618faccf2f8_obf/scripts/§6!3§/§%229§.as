package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §-#X§.§0!H§;
   import §-#X§.§9#J§;
   import §6#H§.Sprite;
   import §8#K§.§3Z§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2FilterData;
   import §@!S§.b2Fixture;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   import flash.geom.Point;
   
   public class §"9§ extends §;!U§
   {
      
      private static const § "@§:Number = 0.5;
      
      private static const §!#6§:Number = 0.15;
      
      private static const §@"z§:Number = 9;
      
      private static const §7";§:Number = 6;
       
      
      private var §"v§:§;!U§;
      
      private var §&$!§:Number = 0;
      
      private var §]$8§:Boolean;
      
      private var §>!s§:Number;
      
      private var §^!F§:§9#J§;
      
      public function §"9§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§]$8§ = false;
         this.§>!s§ = 2 * Math.PI * Math.random();
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
         _loc1_.§`"!§ = §1"r§;
         _loc1_.§#!+§ = 65535;
         return _loc1_;
      }
      
      public function init(param1:b2Vec2, param2:Number) : void
      {
         getBody().SetLinearVelocity(param1);
         getBody().SetLinearDamping(param2);
      }
      
      public function §+Q§(param1:§;!U§) : void
      {
         if(this.§"v§)
         {
            this.§ !s§();
         }
         this.§"v§ = param1;
         var _loc2_:§0!H§ = new §0!H§(§0!H§.§9"V§,this.§"v§.id,this.id,new Point(0,0),new Point(0,0),false,false,-2 * Math.PI,2 * Math.PI);
         _loc2_.coordinateType = 2;
         this.§^!F§ = (§7n§.§6#K§.levelObjects as §4!o§).§--§(_loc2_);
         if(this.§"v§ && this.§"v§.§3!F§ == §9"+§.§"!F§)
         {
            this.§"v§.§3!F§ = §9"+§.DEFAULT;
         }
         if(§3!F§ == §9"+§.§"!F§)
         {
            §3!F§ = §9"+§.DEFAULT;
         }
         §3Z§.playSound("parachute_deployed_01","ChannelPowerups",0,0.5);
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 && param3 != this.§"v§ && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§ !s§();
         }
         return health;
      }
      
      public function § !s§() : void
      {
         this.§]$8§ = true;
         if(this.§^!F§)
         {
            §7n§.§6#K§.mLevelEngine.mWorld.§>"Q§(this.§^!F§.§ !§);
         }
         this.§"v§ = null;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§#!+§ = 0;
         §4!`§(_loc1_);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         super.update(param1,param2);
         this.§&$!§ += param1;
         if(this.§&$!§ == 0)
         {
            return;
         }
         if(this.§]$8§)
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
            _loc3_ = this.§>!s§ + this.§&$!§ / 500 * Math.PI * § "@§;
            _loc4_ = Math.sin(_loc3_);
            _loc5_ = Math.cos(_loc3_) * §!#6§;
            getBody().SetAngle(_loc5_);
            if((_loc6_ = getBody().GetLinearVelocity()).y > §@"z§)
            {
               _loc6_.y = §@"z§;
            }
            _loc6_.x = _loc4_ * §7";§;
            getBody().SetLinearVelocity(_loc6_);
         }
      }
      
      public function get §0"k§() : Boolean
      {
         return this.§]$8§;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         this.§ !s§();
         super.dispose(param1);
      }
   }
}
