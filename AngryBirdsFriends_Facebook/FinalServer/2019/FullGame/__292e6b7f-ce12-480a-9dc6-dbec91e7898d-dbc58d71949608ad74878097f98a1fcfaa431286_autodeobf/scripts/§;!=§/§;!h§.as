package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§8§;
   import §'#K§.b2Body;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §1#I§.b2MassData;
   import §1#I§.b2PolygonShape;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   
   public class §;!h§ extends §1!y§
   {
      
      private static const §%"O§:int = 2000;
      
      private static const §5"c§:int = 0;
      
      private static const §&!7§:int = 2000;
       
      
      public var §@"i§:Point;
      
      public var §4"I§:Point;
      
      public var §^$7§:Point;
      
      private var §1#D§:b2Vec2;
      
      private var §&b§:Boolean = false;
      
      private var §7!u§:Number;
      
      private var §3",§:Number = 0;
      
      private var §9"m§:Boolean = false;
      
      private var §9#B§:Boolean = false;
      
      private var §,R§:Point;
      
      private var §break§:Number = 0.05;
      
      private const §,$0§:Number = 2.0;
      
      private var § #5§:Number = 0;
      
      private var §&j§:Point;
      
      private const §8"X§:Number = 3.65;
      
      private const §<#N§:Number = 1.8859999;
      
      private var §-$@§:Boolean = false;
      
      private var §!$E§:Number = 1.0;
      
      private var §3$<§:Boolean = false;
      
      private var §;#x§:b2PolygonShape;
      
      public function §;!h§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         param6 = 0.1;
         param1.scaleY = 0.1;
         param1.scaleX = 0.1;
         this.§&j§ = new Point(0,0);
         this.§7!u§ = §%"O§;
         this.§3",§ = §&!7§;
         super(param1,param2,param3,param4,param5,param6);
         this.§;#x§ = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
         this.init();
      }
      
      public static function get §!t§() : int
      {
         return §%"O§ + §&!7§ + §5"c§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§5"C§();
         this.sprite.visible = false;
         §-##§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §8#3§.§2K§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §8#3§.§2K§ - sprite.y;
         this.§,R§ = new Point(_loc3_,_loc4_);
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = Math.min(10,Math.max(1,§>#@§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§]$"§.width * §8#3§.§2K§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§]$"§.height * §8#3§.§2K§) + Math.random() * -_loc8_ * 2;
            _loc9_ = Math.random();
            _loc10_ = 1 + Math.floor(Math.random() * 2);
            if(param1)
            {
               param1.addParticle("PARTICLE_WONDERLAND_MUSHROOM_" + _loc10_.toString(),§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§=,§.getParticleMaterialFromEngineMaterial("MISC_FB_EASTER_MUSHROOM"),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50,_loc9_);
            }
            _loc5_++;
         }
      }
      
      public function §4s§() : void
      {
         §]$?§.§2#§.objects.§&!-§.removeChild(sprite);
         (§]$?§.§2#§.objects as §&"^§).§1!o§.addChild(sprite);
      }
      
      public function §"!s§(param1:Point, param2:Point) : void
      {
         this.§&b§ = true;
         this.§^$7§ = param1;
         this.§4"I§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§^$7§.x - this.§4"I§.x,this.§^$7§.y - this.§4"I§.y));
         this.§1#D§ = _loc3_.GetPosition().Copy();
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         if(!§]$?§.§2#§.§>#Y§)
         {
            return;
         }
         if(this.§3",§ > 0)
         {
            this.§3",§ -= param1;
            if(this.§3",§ <= 0)
            {
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.§3",§ <= 200 && !this.§3$<§)
            {
               this.§3$<§ = true;
               §]$?§.§2#§.particles.addSimpleParticle("SMOKE_BIG",§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§1#D§.x,this.§1#D§.y,2000,"",§=,§.§ a§,0,0,0,0,1.5,20,true);
            }
            return;
         }
         if(this.§&b§)
         {
            this.§7!u§ -= param1;
            if(this.§7!u§ <= 0)
            {
               if(!this.§9"m§)
               {
                  this.reset();
               }
               if(this.§7!u§ <= -§5"c§)
               {
                  this.§&b§ = false;
               }
            }
            if(!this.§9"m§ && this.§&b§)
            {
               _loc3_ = 0;
               while(_loc3_ < 1)
               {
                  _loc4_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc5_ = this.§4"I§.x * Math.cos(_loc4_) - this.§4"I§.y * Math.sin(_loc4_);
                  _loc6_ = this.§4"I§.x * Math.sin(_loc4_) + this.§4"I§.y * Math.cos(_loc4_);
                  §]$?§.§2#§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE",§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§^$7§.x + -this.§4"I§.y * (Math.random() * 2),this.§^$7§.y + this.§4"I§.y * (Math.random() * 2),800,"",0,_loc5_ * (Math.random() * 6 + 3),_loc6_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc3_++;
               }
            }
         }
         else
         {
            this.reset();
         }
         if(this.§ #5§ <= §%"O§)
         {
            this.§ #5§ += param1;
            this.§5"C§();
            _loc7_ = new b2Vec2(this.§1#D§.x + this.§4"I§.x + this.§&j§.x,this.§1#D§.y + this.§4"I§.y + this.§&j§.y);
            getBody().SetPosition(_loc7_);
         }
         super.update(param1,param2);
      }
      
      private function §5"C§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var _loc2_:Vector.<b2Vec2> = _loc1_.§ #U§();
         var _loc3_:Number = 1 - this.§7!u§ / §%"O§;
         if(_loc3_ > this.scaleModifier)
         {
            _loc3_ = this.scaleModifier;
            this.§&b§ = false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.§;#x§.§ #U§()[_loc4_].x * _loc3_ * 10;
            _loc6_ = this.§;#x§.§ #U§()[_loc4_].y * _loc3_ * 10;
            _loc2_[_loc4_].x = _loc5_;
            _loc2_[_loc4_].y = _loc6_;
            _loc4_++;
         }
         if(_loc3_ < this.scaleModifier)
         {
            sprite.scaleX = sprite.scaleY = sprite.scaleY + this.§break§ * 5 * §8#3§.§2K§;
            sprite.pivotY = 0;
            this.§&j§.y -= 0.05;
            getBody().SetAwake(true);
            getBody().ResetMassData();
         }
      }
      
      private function reset() : void
      {
         if(!this.§9#B§)
         {
            this.§9#B§ = true;
            this.§9"m§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      public function get scaleModifier() : Number
      {
         return this.§!$E§;
      }
      
      public function set scaleModifier(param1:Number) : void
      {
         this.§!$E§ = param1;
      }
   }
}
