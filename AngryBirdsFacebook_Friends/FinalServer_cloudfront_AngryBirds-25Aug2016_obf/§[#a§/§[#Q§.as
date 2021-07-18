package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §52§.§#!,§;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2Body;
   import §=#n§.b2World;
   import §?!c§.b2MassData;
   import §?!c§.b2PolygonShape;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   import flash.geom.Point;
   
   public class §[#Q§ extends §=,§
   {
      
      private static const §>+§:int = 2000;
      
      private static const §&n§:int = 0;
      
      private static const §=#M§:int = 2000;
       
      
      public var §!$2§:Point;
      
      public var §3"8§:Point;
      
      public var §,$1§:Point;
      
      private var §1"-§:b2Vec2;
      
      private var §7$9§:Boolean = false;
      
      private var §##;§:Number;
      
      private var §26§:Number = 0;
      
      private var §"#-§:Boolean = false;
      
      private var §^"u§:Boolean = false;
      
      private var §"!N§:Point;
      
      private var §2"#§:Number = 0.05;
      
      private const §;!A§:Number = 2.0;
      
      private var §=$;§:Number = 0;
      
      private var §0"!§:Point;
      
      private const §%!a§:Number = 3.65;
      
      private const §]#?§:Number = 1.8859999;
      
      private var §>"H§:Boolean = false;
      
      private var §?!U§:Number = 1.0;
      
      private var §=q§:Boolean = false;
      
      private var §-"j§:b2PolygonShape;
      
      public function §[#Q§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         param6 = 0.1;
         param1.scaleX = param1.scaleY = 0.1;
         this.§0"!§ = new Point(0,0);
         this.§##;§ = §>+§;
         this.§26§ = §=#M§;
         super(param1,param2,param3,param4,param5,param6);
         this.§-"j§ = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
         this.init();
      }
      
      public static function get §;B§() : int
      {
         return §>+§ + §=#M§ + §&n§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§9$4§();
         this.sprite.visible = false;
         §]B§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §#!,§.§?$#§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §#!,§.§?$#§ - sprite.y;
         this.§"!N§ = new Point(_loc3_,_loc4_);
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(10,Math.max(1,§[r§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§'"s§.width * §#!,§.§?$#§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§'"s§.height * §#!,§.§?$#§) + Math.random() * -_loc8_ * 2;
            _loc9_ = Math.random();
            _loc10_ = 1 + Math.floor(Math.random() * 2);
            if(param1)
            {
               param1.addParticle("PARTICLE_WONDERLAND_MUSHROOM_" + _loc10_.toString(),§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§=$4§.getParticleMaterialFromEngineMaterial("MISC_FB_EASTER_MUSHROOM"),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50,_loc9_);
            }
            _loc5_++;
         }
      }
      
      public function § "O§() : void
      {
         §>"$§.§3#'§.objects.final.removeChild(sprite);
         (§>"$§.§3#'§.objects as §=#]§).§'n§.addChild(sprite);
      }
      
      public function §^"U§(param1:Point, param2:Point) : void
      {
         this.§7$9§ = true;
         this.§,$1§ = param1;
         this.§3"8§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§,$1§.x - this.§3"8§.x,this.§,$1§.y - this.§3"8§.y));
         this.§1"-§ = _loc3_.GetPosition().Copy();
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         if(!§>"$§.§3#'§.§?"x§)
         {
            return;
         }
         if(this.§26§ > 0)
         {
            this.§26§ -= param1;
            if(this.§26§ <= 0)
            {
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.§26§ <= 200 && !this.§=q§)
            {
               this.§=q§ = true;
               §>"$§.§3#'§.particles.addSimpleParticle("SMOKE_BIG",§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.§4"8§,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§1"-§.x,this.§1"-§.y,2000,"",§=$4§.§-!0§,0,0,0,0,1.5,20,true);
            }
            return;
         }
         if(this.§7$9§)
         {
            this.§##;§ -= param1;
            if(this.§##;§ <= 0)
            {
               if(!this.§"#-§)
               {
                  this.reset();
               }
               if(this.§##;§ <= -§&n§)
               {
                  this.§7$9§ = false;
               }
            }
            if(!this.§"#-§ && this.§7$9§)
            {
               _loc3_ = 0;
               while(_loc3_ < 1)
               {
                  _loc4_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc5_ = this.§3"8§.x * Math.cos(_loc4_) - this.§3"8§.y * Math.sin(_loc4_);
                  _loc6_ = this.§3"8§.x * Math.sin(_loc4_) + this.§3"8§.y * Math.cos(_loc4_);
                  §>"$§.§3#'§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE",§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§,$1§.x + -this.§3"8§.y * (Math.random() * 2),this.§,$1§.y + this.§3"8§.y * (Math.random() * 2),800,"",0,_loc5_ * (Math.random() * 6 + 3),_loc6_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc3_++;
               }
            }
         }
         else
         {
            this.reset();
         }
         if(this.§=$;§ <= §>+§)
         {
            this.§=$;§ += param1;
            this.§9$4§();
            _loc7_ = new b2Vec2(this.§1"-§.x + this.§3"8§.x + this.§0"!§.x,this.§1"-§.y + this.§3"8§.y + this.§0"!§.y);
            getBody().SetPosition(_loc7_);
         }
         super.update(param1,param2);
      }
      
      private function §9$4§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var _loc2_:Vector.<b2Vec2> = _loc1_.§?$1§();
         var _loc3_:Number = 1 - this.§##;§ / §>+§;
         if(_loc3_ > this.scaleModifier)
         {
            _loc3_ = this.scaleModifier;
            this.§7$9§ = false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.§-"j§.§?$1§()[_loc4_].x * _loc3_ * 10;
            _loc6_ = this.§-"j§.§?$1§()[_loc4_].y * _loc3_ * 10;
            _loc2_[_loc4_].x = _loc5_;
            _loc2_[_loc4_].y = _loc6_;
            _loc4_++;
         }
         if(_loc3_ < this.scaleModifier)
         {
            sprite.scaleX = sprite.scaleY = sprite.scaleY + this.§2"#§ * 5 * §#!,§.§?$#§;
            sprite.pivotY = 0;
            this.§0"!§.y -= 0.05;
            getBody().SetAwake(true);
            getBody().ResetMassData();
         }
      }
      
      private function reset() : void
      {
         if(!this.§^"u§)
         {
            this.§^"u§ = true;
            this.§"#-§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      public function get scaleModifier() : Number
      {
         return this.§?!U§;
      }
      
      public function set scaleModifier(param1:Number) : void
      {
         this.§?!U§ = param1;
      }
   }
}
