package §8§#8
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §"#i§.b2MassData;
   import §"#i§.b2PolygonShape;
   import §4"O§.b2Body;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@0§.§%!q§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.geom.Point;
   
   public class §<#,§ extends §]o§
   {
      
      private static const §##7§:int = 2000;
      
      private static const §9#e§:int = 0;
      
      private static const §4L§:int = 2000;
       
      
      public var §#!C§:Point;
      
      public var §-![§:Point;
      
      public var §;#N§:Point;
      
      private var §+!a§:b2Vec2;
      
      private var §[]§:Boolean = false;
      
      private var §9$4§:Number;
      
      private var §"!v§:Number = 0;
      
      private var §1"m§:Boolean = false;
      
      private var §%#_§:Boolean = false;
      
      private var §7!?§:Point;
      
      private var § $2§:Number = 0.05;
      
      private const §^"t§:Number = 2.0;
      
      private var §8"i§:Number = 0;
      
      private var §`"%§:Point;
      
      private const §=!5§:Number = 3.65;
      
      private const §!#S§:Number = 1.8859999;
      
      private var §1#'§:Boolean = false;
      
      private var §]#E§:Number = 1.0;
      
      private var §["G§:Boolean = false;
      
      private var §+%§:b2PolygonShape;
      
      public function §<#,§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         param6 = 0.1;
         param1.scaleY = 0.1;
         param1.scaleX = 0.1;
         this.§`"%§ = new Point(0,0);
         this.§9$4§ = §##7§;
         this.§"!v§ = §4L§;
         super(param1,param2,param3,param4,param5,param6);
         this.§+%§ = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
         this.init();
      }
      
      public static function get §5"Q§() : int
      {
         return §##7§ + §4L§ + §9#e§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§]$-§();
         this.sprite.visible = false;
         §[#x§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §%!q§.§6q§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §%!q§.§6q§ - sprite.y;
         this.§7!?§ = new Point(_loc3_,_loc4_);
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = Math.min(10,Math.max(1,§3"C§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§9"6§.width * §%!q§.§6q§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§9"6§.height * §%!q§.§6q§) + Math.random() * -_loc8_ * 2;
            _loc9_ = Math.random();
            _loc10_ = 1 + Math.floor(Math.random() * 2);
            if(param1)
            {
               param1.addParticle("PARTICLE_WONDERLAND_MUSHROOM_" + _loc10_.toString(),§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§@>§.getParticleMaterialFromEngineMaterial("MISC_FB_EASTER_MUSHROOM"),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50,_loc9_);
            }
            _loc5_++;
         }
      }
      
      public function §]#?§() : void
      {
         §3#U§.§#$4§.objects.§`#T§.removeChild(sprite);
         (§3#U§.§#$4§.objects as §;Y§).§[$>§.addChild(sprite);
      }
      
      public function §7i§(param1:Point, param2:Point) : void
      {
         this.§[]§ = true;
         this.§;#N§ = param1;
         this.§-![§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§;#N§.x - this.§-![§.x,this.§;#N§.y - this.§-![§.y));
         this.§+!a§ = _loc3_.GetPosition().Copy();
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         if(!§3#U§.§#$4§.§]!`§)
         {
            return;
         }
         if(this.§"!v§ > 0)
         {
            this.§"!v§ -= param1;
            if(this.§"!v§ <= 0)
            {
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.§"!v§ <= 200 && !this.§["G§)
            {
               this.§["G§ = true;
               §3#U§.§#$4§.particles.addSimpleParticle("SMOKE_BIG",§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§+!a§.x,this.§+!a§.y,2000,"",§@>§.§&_§,0,0,0,0,1.5,20,true);
            }
            return;
         }
         if(this.§[]§)
         {
            this.§9$4§ -= param1;
            if(this.§9$4§ <= 0)
            {
               if(!this.§1"m§)
               {
                  this.reset();
               }
               if(this.§9$4§ <= -§9#e§)
               {
                  this.§[]§ = false;
               }
            }
            if(!this.§1"m§ && this.§[]§)
            {
               _loc3_ = 0;
               while(_loc3_ < 1)
               {
                  _loc4_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc5_ = this.§-![§.x * Math.cos(_loc4_) - this.§-![§.y * Math.sin(_loc4_);
                  _loc6_ = this.§-![§.x * Math.sin(_loc4_) + this.§-![§.y * Math.cos(_loc4_);
                  §3#U§.§#$4§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE",§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§;#N§.x + -this.§-![§.y * (Math.random() * 2),this.§;#N§.y + this.§-![§.y * (Math.random() * 2),800,"",0,_loc5_ * (Math.random() * 6 + 3),_loc6_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc3_++;
               }
            }
         }
         else
         {
            this.reset();
         }
         if(this.§8"i§ <= §##7§)
         {
            this.§8"i§ += param1;
            this.§]$-§();
            _loc7_ = new b2Vec2(this.§+!a§.x + this.§-![§.x + this.§`"%§.x,this.§+!a§.y + this.§-![§.y + this.§`"%§.y);
            getBody().SetPosition(_loc7_);
         }
         super.update(param1,param2);
      }
      
      private function §]$-§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var _loc2_:Vector.<b2Vec2> = _loc1_.§2!Z§();
         var _loc3_:Number = 1 - this.§9$4§ / §##7§;
         if(_loc3_ > this.scaleModifier)
         {
            _loc3_ = this.scaleModifier;
            this.§[]§ = false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.§+%§.§2!Z§()[_loc4_].x * _loc3_ * 10;
            _loc6_ = this.§+%§.§2!Z§()[_loc4_].y * _loc3_ * 10;
            _loc2_[_loc4_].x = _loc5_;
            _loc2_[_loc4_].y = _loc6_;
            _loc4_++;
         }
         if(_loc3_ < this.scaleModifier)
         {
            sprite.scaleX = sprite.scaleY = sprite.scaleY + this.§ $2§ * 5 * §%!q§.§6q§;
            sprite.pivotY = 0;
            this.§`"%§.y -= 0.05;
            getBody().SetAwake(true);
            getBody().ResetMassData();
         }
      }
      
      private function reset() : void
      {
         if(!this.§%#_§)
         {
            this.§%#_§ = true;
            this.§1"m§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      public function get scaleModifier() : Number
      {
         return this.§]#E§;
      }
      
      public function set scaleModifier(param1:Number) : void
      {
         this.§]#E§ = param1;
      }
   }
}
