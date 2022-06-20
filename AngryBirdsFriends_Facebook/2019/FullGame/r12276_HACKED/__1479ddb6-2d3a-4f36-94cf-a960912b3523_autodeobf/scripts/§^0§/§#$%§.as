package §^0§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2FilterData;
   import §3#h§.b2Fixture;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§0$=§;
   import §@"v§.§6$D§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §#$%§ extends §=Q§
   {
      
      private static const §6!-§:Number = 0.5;
      
      private static const §"#+§:Number = 0.15;
      
      private static const §5#"§:Number = 9;
      
      private static const §'#5§:Number = 6;
       
      
      private var §?U§:§=Q§;
      
      private var §=Z§:Number = 0;
      
      private var §?"N§:Boolean;
      
      private var §0#!§:Number;
      
      private var §1"S§:§6$D§;
      
      public function §#$%§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§?"N§ = false;
         this.§0#!§ = 2 * Math.PI * Math.random();
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
         _loc1_.§1$3§ = §%#L§;
         _loc1_.§@>§ = 65535;
         return _loc1_;
      }
      
      public function init(param1:b2Vec2, param2:Number) : void
      {
         getBody().SetLinearVelocity(param1);
         getBody().SetLinearDamping(param2);
      }
      
      public function §@"`§(param1:§=Q§) : void
      {
         if(this.§?U§)
         {
            this.§4"6§();
         }
         this.§?U§ = param1;
         var _loc2_:§0$=§ = new §0$=§(§0$=§.§%!A§,this.§?U§.id,this.id,new Point(0,0),new Point(0,0),false,false,-2 * Math.PI,2 * Math.PI);
         _loc2_.coordinateType = 2;
         this.§1"S§ = (§+!p§.§`?§.levelObjects as §3!U§).§+"'§(_loc2_);
         if(this.§?U§ && this.§?U§.§<!x§ == §`"p§.§##+§)
         {
            this.§?U§.§<!x§ = §`"p§.DEFAULT;
         }
         if(§<!x§ == §`"p§.§##+§)
         {
            §<!x§ = §`"p§.DEFAULT;
         }
         §4$4§.playSound("parachute_deployed_01","ChannelPowerups",0,0.5);
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(param3 && param3 != this.§?U§ && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§4"6§();
         }
         return health;
      }
      
      public function §4"6§() : void
      {
         this.§?"N§ = true;
         if(this.§1"S§)
         {
            §+!p§.§`?§.mLevelEngine.mWorld.§<"<§(this.§1"S§.§<!"§);
         }
         this.§?U§ = null;
         var _loc1_:b2FilterData = new b2FilterData();
         _loc1_.§@>§ = 0;
         §,z§(_loc1_);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         super.update(param1,param2);
         this.§=Z§ += param1;
         if(this.§=Z§ == 0)
         {
            return;
         }
         if(this.§?"N§)
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
            _loc3_ = this.§0#!§ + this.§=Z§ / 500 * Math.PI * §6!-§;
            _loc4_ = Math.sin(_loc3_);
            _loc5_ = Math.cos(_loc3_) * §"#+§;
            getBody().SetAngle(_loc5_);
            if((_loc6_ = getBody().GetLinearVelocity()).y > §5#"§)
            {
               _loc6_.y = §5#"§;
            }
            _loc6_.x = _loc4_ * §'#5§;
            getBody().SetLinearVelocity(_loc6_);
         }
      }
      
      public function get §5"7§() : Boolean
      {
         return this.§?"N§;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         this.§4"6§();
         super.dispose(param1);
      }
   }
}
