package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§8§;
   import §'#K§.b2Body;
   import §'#K§.b2World;
   import §,#e§.DisplayObjectContainer;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §1#I§.b2CircleShape;
   import §1#I§.b2MassData;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   
   public class §7#1§ extends §#!m§
   {
       
      
      private const §%"O§:int = 2000;
      
      private const §5"c§:int = 0;
      
      private const §&!7§:int = 3000;
      
      public var §@"i§:Point;
      
      public var §4"I§:Point;
      
      public var §^$7§:Point;
      
      private var §1#D§:b2Vec2;
      
      private var §&b§:Boolean = false;
      
      private var §7!u§:Number;
      
      private var §3",§:Number = 0;
      
      private var §3$<§:Boolean = false;
      
      private var §9"m§:Boolean = false;
      
      private var §9#B§:Boolean = false;
      
      private var §,R§:Point;
      
      public var §`!"§:Number;
      
      public function §7#1§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0)
      {
         this.§7!u§ = this.§%"O§;
         this.§3",§ = this.§&!7§;
         super(param1,param2,param3,param4,param5,param6);
         this.init();
      }
      
      private function get §&<§() : Number
      {
         return -this.§`!"§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§`!"§ = (_loc1_.GetFixtureList().GetShape() as b2CircleShape).§0#Y§();
         _loc1_.SetActive(false);
         this.sprite.visible = false;
         §-##§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §8#3§.§2K§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §8#3§.§2K§ - sprite.y;
         this.§,R§ = new Point(_loc3_,_loc4_);
         if(!§]h§.soundResource)
         {
            §]h§.soundResource = §]$?§.§2#§.levelItemManager.getSoundResource("ZOMBIE_PIG_SET");
         }
      }
      
      public function §"!s§(param1:Point, param2:Point) : void
      {
         this.§&b§ = true;
         this.§^$7§ = param1;
         this.§4"I§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§^$7§.x - this.§4"I§.x * this.§`!"§,this.§^$7§.y - this.§4"I§.y * this.§`!"§));
         this.§1#D§ = _loc3_.GetPosition().Copy();
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(this.§&b§)
         {
            return §+#_§;
         }
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) <= 0)
         {
            this.reset();
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§3",§ > 0)
         {
            this.§3",§ -= param1;
            if(this.§3",§ <= 0)
            {
               §]!?§();
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               sprite.visible = true;
               §&"^§(param2).backgroundSprite.addChild(sprite);
            }
            else if(this.§3",§ <= 200 && !this.§3$<§)
            {
               this.§3$<§ = true;
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
               if(this.§7!u§ <= -this.§5"c§)
               {
                  this.§&b§ = false;
               }
            }
            else
            {
               _loc3_ = 1 - this.§7!u§ / this.§%"O§;
               _loc4_ = new b2Vec2(this.§1#D§.x + this.§4"I§.x * (-this.§&<§ * 2 * _loc3_) + Math.random() * 0.2,this.§1#D§.y + this.§4"I§.y * (-this.§&<§ * 2 * _loc3_) + Math.random() * 0.2);
               getBody().SetPosition(_loc4_);
            }
            if(!this.§9"m§)
            {
               _loc5_ = 0;
               while(_loc5_ < 1)
               {
                  _loc6_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc7_ = this.§4"I§.x * Math.cos(_loc6_) - this.§4"I§.y * Math.sin(_loc6_);
                  _loc8_ = this.§4"I§.x * Math.sin(_loc6_) + this.§4"I§.y * Math.cos(_loc6_);
                  §]$?§.§2#§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§^$7§.x + -this.§4"I§.y * (Math.random() * this.§&<§ * 2 - this.§&<§),this.§^$7§.y + this.§4"I§.x * (Math.random() * this.§&<§ * 2 - this.§&<§),1500,"",0,_loc7_ * (Math.random() * 6 + 3),_loc8_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
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
         if(!this.§9#B§)
         {
            this.§9#B§ = true;
            this.§9"m§ = true;
            _loc1_ = sprite.parent;
            if(_loc1_)
            {
               sprite.removeFromParent();
               sprite.z = 10;
               _loc1_.§30§(sprite);
            }
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
   }
}
