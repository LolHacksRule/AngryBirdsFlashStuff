package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2Body;
   import §1x§.b2BodyDef;
   import §1x§.b2Fixture;
   import §1x§.b2FixtureDef;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§;+§;
   import §^>§.b2Vec2;
   
   public class §^"!§ extends §0!6§
   {
      
      public static const §^!3§:String = "BLOCK_MIGHTY_FALCON";
       
      
      protected var §<"_§:Number;
      
      protected var § "Y§:Number;
      
      protected var §4#+§:Number;
      
      protected var §@"u§:Number;
      
      protected var §`o§:Number;
      
      protected var §"i§:Number;
      
      protected var §9"-§:Number;
      
      protected var §;H§:Number;
      
      protected var §"r§:Number;
      
      protected var §8!E§:int = 1;
      
      protected var §6"q§:Number;
      
      protected var §>!9§:Number;
      
      protected var §4"#§:int;
      
      protected var §0!r§:Number;
      
      protected var §#a§:String;
      
      protected var §"!z§:Vector.<Number>;
      
      protected var §#U§:int = 0;
      
      public function §^"!§(param1:Sprite, param2:§[a§, param3:b2World, param4:§;+§, param5:§^d§, param6:Number, param7:Number, param8:Number = 1.0)
      {
         this.§"!z§ = new Vector.<Number>();
         this.§<"_§ = param5.x;
         this.§ "Y§ = param5.y;
         this.§4#+§ = param4.getNumberProperty("falconFlyTime") * 1000;
         this.§`o§ = param4.getNumberProperty("movementEllipseWidth");
         this.§"i§ = param4.getNumberProperty("movementEllipseHeight");
         this.§9"-§ = param4.getNumberProperty("movementEllipseOffsetX");
         this.§;H§ = param4.getNumberProperty("movementEllipseOffsetY");
         this.§"r§ = param4.scale * param8;
         this.§6"q§ = param6;
         this.§>!9§ = param7;
         if(this.§ "Y§ < this.§>!9§)
         {
            this.§8!E§ = -1;
         }
         param5.y += 100;
         super(param1,param2,param3,param4,param5,param8);
         this.§4"#§ = param4.getNumberProperty("falconLaserNumberOfShots");
         this.§0!r§ = param4.getNumberProperty("falconLaserShotSpeed");
         this.§#a§ = param4.getProperty("falconLaser");
         var _loc9_:int = 0;
         while(_loc9_ < this.§4"#§)
         {
            this.§"!z§.push(param4.getNumberProperty("falconLaserPattern",_loc9_) * 1000);
            _loc9_++;
         }
         this.§-"n§(1);
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2FixtureDef = new b2FixtureDef();
         _loc1_.shape = §-!f§.shape.getB2Shape(scale);
         _loc1_.§]y§ = true;
         return §#"R§.CreateFixture(_loc1_);
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc3_:b2BodyDef = new b2BodyDef();
         _loc3_.type = b2Body.b2_dynamicBody;
         _loc3_.active = false;
         _loc3_.position.x = param1;
         _loc3_.position.y = param2;
         return _loc3_;
      }
      
      override protected function addDestructionParticles(param1:§""M§) : void
      {
      }
      
      override protected function addTrail(param1:§""M§) : Boolean
      {
         return false;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(isNaN(this.§@"u§))
         {
            this.§@"u§ = §]h§.currentAnimationLengthMilliSeconds / this.§4#+§;
         }
         super.render(param1 * this.§@"u§,param2,param3);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0;
      }
      
      override protected function addParticles(param1:§""M§) : void
      {
      }
      
      override protected function updateShading(param1:§""M§) : void
      {
      }
      
      override protected function move(param1:Number, param2:§""M§) : void
      {
         if(§-=§ > 1)
         {
            this.§-"n§(param1);
            this.§="Z§(param1,param2);
         }
      }
      
      private function §-"n§(param1:Number) : void
      {
         var _loc2_:Number = this.§"!0§(1);
         var _loc3_:Number = this.§7"F§(_loc2_);
         var _loc4_:Number = this.§?"B§(_loc2_);
         var _loc5_:Number = this.§"!0§();
         var _loc6_:Number = this.§7"F§(_loc5_);
         var _loc7_:Number = this.§?"B§(_loc5_);
         var _loc8_:Number = _loc5_ * 0.5 + Math.PI * 1.75;
         if(this.§8!E§ == -1)
         {
            _loc8_ = _loc5_ * 0.5 + Math.PI * 1.25;
         }
         §?"Z§().SetPosition(new b2Vec2(_loc6_,_loc7_));
         §?"Z§().SetAngle(_loc8_);
         §?"Z§().SetLinearVelocity(new b2Vec2((_loc6_ - _loc3_) * 1000,(_loc7_ - _loc4_) * 1000));
         §]h§.setScale(this.§"r§ * Math.sin(_loc5_));
      }
      
      private function §="Z§(param1:Number, param2:§""M§) : void
      {
         var _loc6_:§4"d§ = null;
         var _loc7_:Number = NaN;
         var _loc3_:Number = this.§"!0§();
         var _loc4_:Number = this.§7"F§(_loc3_);
         var _loc5_:Number = this.§?"B§(_loc3_);
         if(this.§#U§ < this.§4"#§)
         {
            if(§-=§ >= this.§"!z§[this.§#U§])
            {
               ++this.§#U§;
               if(_loc6_ = param2 as §4"d§)
               {
                  _loc7_ = Math.atan2(this.§ "Y§ - _loc5_,this.§<"_§ - _loc4_) / Math.PI * 180;
                  _loc6_.§^"L§(this.§#a§,_loc4_,_loc5_,_loc7_,this.§0!r§,true);
               }
            }
         }
      }
      
      private function §"!0§(param1:Number = 0) : Number
      {
         return (§-=§ - param1) / (this.§4#+§ / Math.PI) * this.§8!E§;
      }
      
      private function §7"F§(param1:Number) : Number
      {
         return this.§<"_§ + this.§9"-§ - this.§`o§ * Math.cos(param1);
      }
      
      private function §?"B§(param1:Number) : Number
      {
         return this.§ "Y§ + this.§;H§ * this.§8!E§ - this.§"i§ * Math.sin(param1);
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(§-=§ >= this.§4#+§)
         {
            health = 0;
         }
      }
   }
}
