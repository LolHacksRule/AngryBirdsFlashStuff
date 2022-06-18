package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §,!T§.b2MassData;
   import §,!T§.b2PolygonShape;
   import §-!j§.§-"8§;
   import §3#h§.b2Body;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §5#y§ extends §%N§
   {
      
      private static const §#?§:int = 2000;
      
      private static const §""d§:int = 0;
      
      private static const §%!h§:int = 2000;
       
      
      public var §!#7§:Point;
      
      public var §,"q§:Point;
      
      public var §'"t§:Point;
      
      private var §]"+§:b2Vec2;
      
      private var §;!B§:Boolean = false;
      
      private var §7"'§:Number;
      
      private var §[!5§:Number = 0;
      
      private var §"#'§:Boolean = false;
      
      private var §[#Q§:Boolean = false;
      
      private var §8#S§:Point;
      
      private var §]!?§:Number = 0.05;
      
      private const §6#p§:Number = 2.0;
      
      private var §%"[§:Number = 0;
      
      private var §>"7§:Point;
      
      private const §+"D§:Number = 3.65;
      
      private const §!"o§:Number = 1.8859999;
      
      private var § !f§:Boolean = false;
      
      private var §50§:Number = 1.0;
      
      private var §^$ §:Boolean = false;
      
      private var §1"§:b2PolygonShape;
      
      public function §5#y§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         param6 = 0.1;
         param1.scaleY = 0.1;
         param1.scaleX = 0.1;
         this.§>"7§ = new Point(0,0);
         this.§7"'§ = §#?§;
         this.§[!5§ = §%!h§;
         super(param1,param2,param3,param4,param5,param6);
         this.§1"§ = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
         this.init();
      }
      
      public static function get §9b§() : int
      {
         return §#?§ + §%!h§ + §""d§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§3!b§();
         this.sprite.visible = false;
         §@"<§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §<d§.§6@§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §<d§.§6@§ - sprite.y;
         this.§8#S§ = new Point(_loc3_,_loc4_);
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = Math.min(10,Math.max(1,§%$$§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§-"p§.width * §<d§.§6@§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§-"p§.height * §<d§.§6@§) + Math.random() * -_loc8_ * 2;
            _loc9_ = Math.random();
            _loc10_ = 1 + Math.floor(Math.random() * 2);
            if(param1)
            {
               param1.addParticle("PARTICLE_WONDERLAND_MUSHROOM_" + _loc10_.toString(),§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§`#I§.getParticleMaterialFromEngineMaterial("MISC_FB_EASTER_MUSHROOM"),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50,_loc9_);
            }
            _loc5_++;
         }
      }
      
      public function §,#0§() : void
      {
         §+!p§.§`?§.objects.§8!k§.removeChild(sprite);
         (§+!p§.§`?§.objects as §3!U§).§]#L§.addChild(sprite);
      }
      
      public function §8!Q§(param1:Point, param2:Point) : void
      {
         this.§;!B§ = true;
         this.§'"t§ = param1;
         this.§,"q§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§'"t§.x - this.§,"q§.x,this.§'"t§.y - this.§,"q§.y));
         this.§]"+§ = _loc3_.GetPosition().Copy();
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         if(!§+!p§.§`?§.§`"A§)
         {
            return;
         }
         if(this.§[!5§ > 0)
         {
            this.§[!5§ -= param1;
            if(this.§[!5§ <= 0)
            {
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.§[!5§ <= 200 && !this.§^$ §)
            {
               this.§^$ § = true;
               §+!p§.§`?§.particles.addSimpleParticle("SMOKE_BIG",§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§]"+§.x,this.§]"+§.y,2000,"",§`#I§.§&#p§,0,0,0,0,1.5,20,true);
            }
            return;
         }
         if(this.§;!B§)
         {
            this.§7"'§ -= param1;
            if(this.§7"'§ <= 0)
            {
               if(!this.§"#'§)
               {
                  this.reset();
               }
               if(this.§7"'§ <= -§""d§)
               {
                  this.§;!B§ = false;
               }
            }
            if(!this.§"#'§ && this.§;!B§)
            {
               _loc3_ = 0;
               while(_loc3_ < 1)
               {
                  _loc4_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc5_ = this.§,"q§.x * Math.cos(_loc4_) - this.§,"q§.y * Math.sin(_loc4_);
                  _loc6_ = this.§,"q§.x * Math.sin(_loc4_) + this.§,"q§.y * Math.cos(_loc4_);
                  §+!p§.§`?§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE",§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§'"t§.x + -this.§,"q§.y * (Math.random() * 2),this.§'"t§.y + this.§,"q§.y * (Math.random() * 2),800,"",0,_loc5_ * (Math.random() * 6 + 3),_loc6_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc3_++;
               }
            }
         }
         else
         {
            this.reset();
         }
         if(this.§%"[§ <= §#?§)
         {
            this.§%"[§ += param1;
            this.§3!b§();
            _loc7_ = new b2Vec2(this.§]"+§.x + this.§,"q§.x + this.§>"7§.x,this.§]"+§.y + this.§,"q§.y + this.§>"7§.y);
            getBody().SetPosition(_loc7_);
         }
         super.update(param1,param2);
      }
      
      private function §3!b§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var _loc2_:Vector.<b2Vec2> = _loc1_.§;"j§();
         var _loc3_:Number = 1 - this.§7"'§ / §#?§;
         if(_loc3_ > this.scaleModifier)
         {
            _loc3_ = this.scaleModifier;
            this.§;!B§ = false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.§1"§.§;"j§()[_loc4_].x * _loc3_ * 10;
            _loc6_ = this.§1"§.§;"j§()[_loc4_].y * _loc3_ * 10;
            _loc2_[_loc4_].x = _loc5_;
            _loc2_[_loc4_].y = _loc6_;
            _loc4_++;
         }
         if(_loc3_ < this.scaleModifier)
         {
            sprite.scaleX = sprite.scaleY = sprite.scaleY + this.§]!?§ * 5 * §<d§.§6@§;
            sprite.pivotY = 0;
            this.§>"7§.y -= 0.05;
            getBody().SetAwake(true);
            getBody().ResetMassData();
         }
      }
      
      private function reset() : void
      {
         if(!this.§[#Q§)
         {
            this.§[#Q§ = true;
            this.§"#'§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      public function get scaleModifier() : Number
      {
         return this.§50§;
      }
      
      public function set scaleModifier(param1:Number) : void
      {
         this.§50§ = param1;
      }
   }
}
