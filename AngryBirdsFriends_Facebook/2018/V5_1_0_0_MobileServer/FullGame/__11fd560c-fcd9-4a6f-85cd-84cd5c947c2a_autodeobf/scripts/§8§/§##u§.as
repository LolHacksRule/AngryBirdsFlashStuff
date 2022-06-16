package §8§#8
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §"#i§.b2CircleShape;
   import §"#i§.b2MassData;
   import §4"O§.b2Body;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@0§.§%!q§;
   import §^"S§.DisplayObjectContainer;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.geom.Point;
   
   public class §##u§ extends §6!H§
   {
       
      
      private const §##7§:int = 2000;
      
      private const §9#e§:int = 0;
      
      private const §4L§:int = 3000;
      
      public var §#!C§:Point;
      
      public var §-![§:Point;
      
      public var §;#N§:Point;
      
      private var §+!a§:b2Vec2;
      
      private var §[]§:Boolean = false;
      
      private var §9$4§:Number;
      
      private var §"!v§:Number = 0;
      
      private var §["G§:Boolean = false;
      
      private var §1"m§:Boolean = false;
      
      private var §%#_§:Boolean = false;
      
      private var §7!?§:Point;
      
      public var §4#&§:Number;
      
      public function §##u§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0)
      {
         this.§9$4§ = this.§##7§;
         this.§"!v§ = this.§4L§;
         super(param1,param2,param3,param4,param5,param6);
         this.init();
      }
      
      private function get §'q§() : Number
      {
         return -this.§4#&§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§4#&§ = (_loc1_.GetFixtureList().GetShape() as b2CircleShape).§'#!§();
         _loc1_.SetActive(false);
         this.sprite.visible = false;
         §[#x§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §%!q§.§6q§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §%!q§.§6q§ - sprite.y;
         this.§7!?§ = new Point(_loc3_,_loc4_);
      }
      
      public function §7i§(param1:Point, param2:Point) : void
      {
         this.§[]§ = true;
         this.§;#N§ = param1;
         this.§-![§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§;#N§.x - this.§-![§.x * this.§4#&§,this.§;#N§.y - this.§-![§.y * this.§4#&§));
         this.§+!a§ = _loc3_.GetPosition().Copy();
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         if(this.§[]§)
         {
            return §""5§;
         }
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0)
         {
            this.reset();
         }
         return _loc5_;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§"!v§ > 0)
         {
            this.§"!v§ -= param1;
            if(this.§"!v§ <= 0)
            {
               § r§();
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               sprite.visible = true;
               §;Y§(param2).backgroundSprite.addChild(sprite);
            }
            else if(this.§"!v§ <= 200 && !this.§["G§)
            {
               this.§["G§ = true;
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
               if(this.§9$4§ <= -this.§9#e§)
               {
                  this.§[]§ = false;
               }
            }
            else
            {
               _loc3_ = 1 - this.§9$4§ / this.§##7§;
               _loc4_ = new b2Vec2(this.§+!a§.x + this.§-![§.x * (-this.§'q§ * 2 * _loc3_) + Math.random() * 0.2,this.§+!a§.y + this.§-![§.y * (-this.§'q§ * 2 * _loc3_) + Math.random() * 0.2);
               getBody().SetPosition(_loc4_);
            }
            if(!this.§1"m§)
            {
               _loc5_ = 0;
               while(_loc5_ < 1)
               {
                  _loc6_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc7_ = this.§-![§.x * Math.cos(_loc6_) - this.§-![§.y * Math.sin(_loc6_);
                  _loc8_ = this.§-![§.x * Math.sin(_loc6_) + this.§-![§.y * Math.cos(_loc6_);
                  §3#U§.§#$4§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§;#N§.x + -this.§-![§.y * (Math.random() * this.§'q§ * 2 - this.§'q§),this.§;#N§.y + this.§-![§.x * (Math.random() * this.§'q§ * 2 - this.§'q§),1500,"",0,_loc7_ * (Math.random() * 6 + 3),_loc8_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc5_++;
               }
            }
         }
         else
         {
            this.reset();
         }
      }
      
      private function reset() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         if(!this.§%#_§)
         {
            this.§%#_§ = true;
            this.§1"m§ = true;
            _loc1_ = sprite.parent;
            if(_loc1_)
            {
               sprite.removeFromParent();
               sprite.z = 10;
               _loc1_.§0#L§(sprite);
            }
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
   }
}
