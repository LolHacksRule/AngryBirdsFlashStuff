package §`!G§
{
   import §!"3§.b2MassData;
   import §!"3§.b2PolygonShape;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   import flash.geom.Point;
   
   public class §<E§ extends §>o§
   {
       
      
      private const §8"&§:int = 2000;
      
      private const §#!<§:int = 0;
      
      private const §!"!§:int = 2000;
      
      public var §"V§:Point;
      
      public var §8!M§:Point;
      
      public var §-!4§:Point;
      
      private var §4!A§:b2Vec2;
      
      private var §6M§:Boolean = false;
      
      private var §?"L§:Number;
      
      private var §!"Z§:Number = 0;
      
      private var §=!<§:Boolean = false;
      
      private var §-"-§:§8"=§;
      
      private var §4!-§:Boolean = false;
      
      private var §>"<§:Point;
      
      private var §&L§:Number = 0.05;
      
      private const §1E§:Number = 2.0;
      
      private var §&"R§:Number = 0;
      
      private var §0!W§:Point;
      
      private const §0B§:Number = 3.65;
      
      private const §'+§:Number = 1.8859999;
      
      private var § j§:Boolean = false;
      
      private var §@b§:Number = 1.0;
      
      private var §=O§:Boolean = false;
      
      private var §,"&§:b2PolygonShape;
      
      public function §<E§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         param10 = 0.1;
         param2.scaleY = 0.1;
         param2.scaleX = 0.1;
         this.§0!W§ = new Point(0,0);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,"PARTICLE_WONDERLAND_MUSHROOM",3);
         this.§,"&§ = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
         this.§-"-§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§?"L§ = this.§8"&§;
         this.§!"Z§ = this.§!"!§;
         this.sprite.visible = false;
         §]"K§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §'!S§.§2"<§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §'!S§.§2"<§ - sprite.y;
         this.§>"<§ = new Point(_loc3_,_loc4_);
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = Math.min(10,Math.max(1,§`!A§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2!8§.mW * §'!S§.§2"<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2!8§.mH * §'!S§.§2"<§) + Math.random() * -_loc8_ * 2;
            _loc9_ = Math.random();
            _loc10_ = 1 + Math.floor(Math.random() * §!"F§);
            param1.§@6§(§0"9§ + "_" + _loc10_,§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§1!9§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§@x§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50,_loc9_);
            _loc5_++;
         }
      }
      
      public function §4&§() : void
      {
         §?l§.§'h§.objects.§^!#§.removeChild(sprite);
         (§?l§.§'h§.objects as §]"'§).§!!Z§.addChild(sprite);
      }
      
      public function §]"J§(param1:Point, param2:Point) : void
      {
         this.§6M§ = true;
         this.§-!4§ = param1;
         this.§8!M§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§-!4§.x - this.§8!M§.x,this.§-!4§.y - this.§8!M§.y));
         this.§4!A§ = _loc3_.GetPosition().Copy();
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         if(this.§!"Z§ > 0)
         {
            this.§!"Z§ -= param1;
            if(this.§!"Z§ <= 0)
            {
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.§!"Z§ <= 200 && !this.§=O§)
            {
               this.§=O§ = true;
               §?l§.§'h§.particles.§@6§("SMOKE_BIG",§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.§,G§,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§4!A§.x,this.§4!A§.y,2000,"",§0i§.§?"Z§,0,0,0,0,1.5,20,true);
            }
            return;
         }
         if(this.§6M§)
         {
            this.§?"L§ -= param1;
            if(this.§?"L§ <= 0)
            {
               if(!this.§=!<§)
               {
                  this.reset();
               }
               if(this.§?"L§ <= -this.§#!<§)
               {
                  this.§6M§ = false;
               }
            }
            if(!this.§=!<§ && this.§6M§)
            {
               _loc2_ = 0;
               while(_loc2_ < 1)
               {
                  _loc3_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc4_ = this.§8!M§.x * Math.cos(_loc3_) - this.§8!M§.y * Math.sin(_loc3_);
                  _loc5_ = this.§8!M§.x * Math.sin(_loc3_) + this.§8!M§.y * Math.cos(_loc3_);
                  §?l§.§'h§.particles.§@6§("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§-!4§.x + -this.§8!M§.y * (Math.random() * 2),this.§-!4§.y + this.§8!M§.x * (Math.random() * 2),800,"",0,_loc4_ * (Math.random() * 6 + 3),_loc5_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc2_++;
               }
            }
         }
         else
         {
            this.reset();
         }
         if(this.§&"R§ <= this.§8"&§)
         {
            this.§&"R§ += param1;
            this.§ U§();
            _loc6_ = new b2Vec2(this.§4!A§.x + this.§8!M§.x + this.§0!W§.x,this.§4!A§.y + this.§8!M§.y + this.§0!W§.y);
            getBody().SetPosition(_loc6_);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         return super.applyDamage(param1,param2,param3,param4,param5,param6);
      }
      
      private function § U§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var _loc2_:Vector.<b2Vec2> = _loc1_.§,!N§();
         var _loc3_:Number = 1 - this.§?"L§ / this.§8"&§;
         if(_loc3_ > this.scaleModifier)
         {
            _loc3_ = this.scaleModifier;
            this.§6M§ = false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.§,"&§.§,!N§()[_loc4_].x * _loc3_ * 10;
            _loc6_ = this.§,"&§.§,!N§()[_loc4_].y * _loc3_ * 10;
            _loc2_[_loc4_].x = _loc5_;
            _loc2_[_loc4_].y = _loc6_;
            _loc4_++;
         }
         if(_loc3_ < this.scaleModifier)
         {
            sprite.scaleX = sprite.scaleY = sprite.scaleY + this.§&L§ * 5.5 * §'!S§.§2"<§;
            sprite.pivotY = 0;
            this.§0!W§.y -= 0.05;
            getBody().ResetMassData();
         }
      }
      
      private function reset() : void
      {
         if(!this.§4!-§)
         {
            this.§4!-§ = true;
            this.§=!<§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
      
      public function get scaleModifier() : Number
      {
         return this.§@b§;
      }
      
      public function set scaleModifier(param1:Number) : void
      {
         this.§@b§ = param1;
      }
   }
}
