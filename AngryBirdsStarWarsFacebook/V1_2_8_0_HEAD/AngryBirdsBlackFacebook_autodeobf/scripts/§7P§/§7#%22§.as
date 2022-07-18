package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2BodyDef;
   import §+#$§.b2Fixture;
   import §+#$§.b2FixtureDef;
   import §+#$§.b2World;
   import §2"Y§.§8!D§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   
   public class §7#"§ extends §'"o§
   {
      
      public static const §+"§:String = "BLOCK_MIGHTY_FALCON";
       
      
      protected var § "]§:Number;
      
      protected var §8U§:Number;
      
      protected var §="Y§:Number;
      
      protected var §18§:Number;
      
      protected var §3!O§:Number;
      
      protected var §5"%§:Number;
      
      protected var §"!s§:Number;
      
      protected var §%"2§:Number;
      
      protected var §8"2§:Number;
      
      protected var §`#'§:int = 1;
      
      protected var §7M§:Number;
      
      protected var §=!F§:Number;
      
      protected var §'#3§:int;
      
      protected var §-#R§:Number;
      
      protected var §%#3§:String;
      
      protected var §8!U§:Vector.<Number>;
      
      protected var §1"u§:int = 0;
      
      public function §7#"§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§8!D§, param5:§94§, param6:Number, param7:Number, param8:Number = 1.0)
      {
         this.§8!U§ = new Vector.<Number>();
         this.§ "]§ = param5.x;
         this.§8U§ = param5.y;
         this.§="Y§ = param4.getNumberProperty("falconFlyTime") * 1000;
         this.§3!O§ = param4.getNumberProperty("movementEllipseWidth");
         this.§5"%§ = param4.getNumberProperty("movementEllipseHeight");
         this.§"!s§ = param4.getNumberProperty("movementEllipseOffsetX");
         this.§%"2§ = param4.getNumberProperty("movementEllipseOffsetY");
         this.§8"2§ = param4.scale * param8;
         this.§7M§ = param6;
         this.§=!F§ = param7;
         if(this.§8U§ < this.§=!F§)
         {
            this.§`#'§ = -1;
         }
         param5.y += 100;
         super(param1,param2,param3,param4,param5,param8);
         this.§'#3§ = param4.getNumberProperty("falconLaserNumberOfShots");
         this.§-#R§ = param4.getNumberProperty("falconLaserShotSpeed");
         this.§%#3§ = param4.getProperty("falconLaser");
         var _loc9_:int = 0;
         while(_loc9_ < this.§'#3§)
         {
            this.§8!U§.push(param4.getNumberProperty("falconLaserPattern",_loc9_) * 1000);
            _loc9_++;
         }
         this.§8"h§(1);
      }
      
      override protected function createFixture() : b2Fixture
      {
         var _loc1_:b2FixtureDef = new b2FixtureDef();
         _loc1_.shape = §;B§.shape.getB2Shape(scale);
         _loc1_.§-"`§ = true;
         return §04§.CreateFixture(_loc1_);
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
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
      {
         return false;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(isNaN(this.§18§))
         {
            this.§18§ = §2N§.currentAnimationLengthMilliSeconds / this.§="Y§;
         }
         super.render(param1 * this.§18§,param2,param3);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return health == 0;
      }
      
      override protected function addParticles(param1:§;$§) : void
      {
      }
      
      override protected function updateShading(param1:§;$§) : void
      {
      }
      
      override protected function move(param1:Number, param2:§;$§) : void
      {
         if(§3! § > 1)
         {
            this.§8"h§(param1);
            this.§%1§(param1,param2);
         }
      }
      
      private function §8"h§(param1:Number) : void
      {
         var _loc2_:Number = this.§!!,§(1);
         var _loc3_:Number = this.§%"0§(_loc2_);
         var _loc4_:Number = this.§7"[§(_loc2_);
         var _loc5_:Number = this.§!!,§();
         var _loc6_:Number = this.§%"0§(_loc5_);
         var _loc7_:Number = this.§7"[§(_loc5_);
         var _loc8_:Number = _loc5_ * 0.5 + Math.PI * 1.75;
         if(this.§`#'§ == -1)
         {
            _loc8_ = _loc5_ * 0.5 + Math.PI * 1.25;
         }
         §3!t§().SetPosition(new b2Vec2(_loc6_,_loc7_));
         §3!t§().SetAngle(_loc8_);
         §3!t§().SetLinearVelocity(new b2Vec2((_loc6_ - _loc3_) * 1000,(_loc7_ - _loc4_) * 1000));
         §2N§.setScale(this.§8"2§ * Math.sin(_loc5_));
      }
      
      private function §%1§(param1:Number, param2:§;$§) : void
      {
         var _loc6_:§ [§ = null;
         var _loc7_:Number = NaN;
         var _loc3_:Number = this.§!!,§();
         var _loc4_:Number = this.§%"0§(_loc3_);
         var _loc5_:Number = this.§7"[§(_loc3_);
         if(this.§1"u§ < this.§'#3§)
         {
            if(§3! § >= this.§8!U§[this.§1"u§])
            {
               ++this.§1"u§;
               if(_loc6_ = param2 as § [§)
               {
                  _loc7_ = Math.atan2(this.§8U§ - _loc5_,this.§ "]§ - _loc4_) / Math.PI * 180;
                  _loc6_.§#!#§(this.§%#3§,_loc4_,_loc5_,_loc7_,this.§-#R§,true);
               }
            }
         }
      }
      
      private function §!!,§(param1:Number = 0) : Number
      {
         return (§3! § - param1) / (this.§="Y§ / Math.PI) * this.§`#'§;
      }
      
      private function §%"0§(param1:Number) : Number
      {
         return this.§ "]§ + this.§"!s§ - this.§3!O§ * Math.cos(param1);
      }
      
      private function §7"[§(param1:Number) : Number
      {
         return this.§8U§ + this.§%"2§ * this.§`#'§ - this.§5"%§ * Math.sin(param1);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(§3! § >= this.§="Y§)
         {
            health = 0;
         }
      }
   }
}
