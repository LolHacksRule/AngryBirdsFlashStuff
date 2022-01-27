package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§5!M§;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2Body;
   import §>"_§.b2BodyDef;
   import §>"_§.b2Fixture;
   import §>"_§.b2FixtureDef;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §["0§ extends §0"t§
   {
      
      public static const §5!L§:String = "BLOCK_MIGHTY_FALCON";
       
      
      protected var §#v§:Number;
      
      protected var §8",§:Number;
      
      protected var §="!§:Number;
      
      protected var §"E§:Number;
      
      protected var §62§:Number;
      
      protected var §^!1§:Number;
      
      protected var §@+§:Number;
      
      protected var §4!d§:Number;
      
      protected var §#"5§:Number;
      
      protected var §7"#§:int = 1;
      
      protected var §7!4§:Number;
      
      protected var §`!,§:Number;
      
      protected var §]!3§:int;
      
      protected var § "E§:Number;
      
      protected var §&X§:String;
      
      protected var §2#0§:Vector.<Number>;
      
      protected var §;M§:int = 0;
      
      public function §["0§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§5!M§, param5:§9v§, param6:Number, param7:Number, param8:Number = 1.0)
      {
         this.§2#0§ = new Vector.<Number>();
         this.§#v§ = param5.x;
         this.§8",§ = param5.y;
         this.§="!§ = param4.getNumberProperty("falconFlyTime") * 1000;
         this.§62§ = param4.getNumberProperty("movementEllipseWidth");
         this.§^!1§ = param4.getNumberProperty("movementEllipseHeight");
         this.§@+§ = param4.getNumberProperty("movementEllipseOffsetX");
         this.§4!d§ = param4.getNumberProperty("movementEllipseOffsetY");
         this.§#"5§ = param4.scale * param8;
         this.§7!4§ = param6;
         this.§`!,§ = param7;
         if(this.§8",§ < this.§`!,§)
         {
            this.§7"#§ = -1;
         }
         param5.y += 100;
         super(param1,param2,param3,param4,param5,param8);
         this.§]!3§ = param4.getNumberProperty("falconLaserNumberOfShots");
         this.§ "E§ = param4.getNumberProperty("falconLaserShotSpeed");
         this.§&X§ = param4.getProperty("falconLaser");
         var _loc9_:int = 0;
         while(_loc9_ < this.§]!3§)
         {
            this.§2#0§.push(param4.getNumberProperty("falconLaserPattern",_loc9_) * 1000);
            _loc9_++;
         }
         this.§,!Y§(1);
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2FixtureDef = new b2FixtureDef();
         _loc1_.shape = §+!j§.shape.getB2Shape(scale);
         _loc1_.§ !$§ = true;
         return §-#6§.CreateFixture(_loc1_);
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
      
      override protected function addDestructionParticles(param1:§'=§) : void
      {
      }
      
      override protected function addTrail(param1:§'=§) : Boolean
      {
         return false;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(isNaN(this.§"E§))
         {
            this.§"E§ = §]!g§.currentAnimationLengthMilliSeconds / this.§="!§;
         }
         super.render(param1 * this.§"E§,param2,param3);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0;
      }
      
      override protected function addParticles(param1:§'=§) : void
      {
      }
      
      override protected function updateShading(param1:§'=§) : void
      {
      }
      
      override protected function move(param1:Number, param2:§'=§) : void
      {
         if(§<!"§ > 1)
         {
            this.§,!Y§(param1);
            this.§%`§(param1,param2);
         }
      }
      
      private function §,!Y§(param1:Number) : void
      {
         var _loc2_:Number = this.§2,§(1);
         var _loc3_:Number = this.§ K§(_loc2_);
         var _loc4_:Number = this.§<!'§(_loc2_);
         var _loc5_:Number = this.§2,§();
         var _loc6_:Number = this.§ K§(_loc5_);
         var _loc7_:Number = this.§<!'§(_loc5_);
         var _loc8_:Number = _loc5_ * 0.5 + Math.PI * 1.75;
         if(this.§7"#§ == -1)
         {
            _loc8_ = _loc5_ * 0.5 + Math.PI * 1.25;
         }
         §3"s§().SetPosition(new b2Vec2(_loc6_,_loc7_));
         §3"s§().SetAngle(_loc8_);
         §3"s§().SetLinearVelocity(new b2Vec2((_loc6_ - _loc3_) * 1000,(_loc7_ - _loc4_) * 1000));
         §]!g§.setScale(this.§#"5§ * Math.sin(_loc5_));
      }
      
      private function §%`§(param1:Number, param2:§'=§) : void
      {
         var _loc6_:§;"9§ = null;
         var _loc7_:Number = NaN;
         var _loc3_:Number = this.§2,§();
         var _loc4_:Number = this.§ K§(_loc3_);
         var _loc5_:Number = this.§<!'§(_loc3_);
         if(this.§;M§ < this.§]!3§)
         {
            if(§<!"§ >= this.§2#0§[this.§;M§])
            {
               ++this.§;M§;
               if(_loc6_ = param2 as §;"9§)
               {
                  _loc7_ = Math.atan2(this.§8",§ - _loc5_,this.§#v§ - _loc4_) / Math.PI * 180;
                  _loc6_.§=-§(this.§&X§,_loc4_,_loc5_,_loc7_,this.§ "E§,true);
               }
            }
         }
      }
      
      private function §2,§(param1:Number = 0) : Number
      {
         return (§<!"§ - param1) / (this.§="!§ / Math.PI) * this.§7"#§;
      }
      
      private function § K§(param1:Number) : Number
      {
         return this.§#v§ + this.§@+§ - this.§62§ * Math.cos(param1);
      }
      
      private function §<!'§(param1:Number) : Number
      {
         return this.§8",§ + this.§4!d§ * this.§7"#§ - this.§^!1§ * Math.sin(param1);
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(§<!"§ >= this.§="!§)
         {
            health = 0;
         }
      }
   }
}
