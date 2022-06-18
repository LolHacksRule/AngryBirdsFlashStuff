package §^0§
{
   import §#Z§.DisplayObjectContainer;
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §,!T§.b2CircleShape;
   import §,!T§.b2MassData;
   import §-!j§.§-"8§;
   import §3#h§.b2Body;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §[!v§ extends §&"e§
   {
       
      
      private const §#?§:int = 2000;
      
      private const §""d§:int = 0;
      
      private const §%!h§:int = 3000;
      
      public var §!#7§:Point;
      
      public var §,"q§:Point;
      
      public var §'"t§:Point;
      
      private var §]"+§:b2Vec2;
      
      private var §;!B§:Boolean = false;
      
      private var §7"'§:Number;
      
      private var §[!5§:Number = 0;
      
      private var §^$ §:Boolean = false;
      
      private var §"#'§:Boolean = false;
      
      private var §[#Q§:Boolean = false;
      
      private var §8#S§:Point;
      
      public var §"!'§:Number;
      
      public function §[!v§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0)
      {
         this.§7"'§ = this.§#?§;
         this.§[!5§ = this.§%!h§;
         super(param1,param2,param3,param4,param5,param6);
         this.init();
      }
      
      private function get §+7§() : Number
      {
         return -this.§"!'§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§"!'§ = (_loc1_.GetFixtureList().GetShape() as b2CircleShape).§]$-§();
         _loc1_.SetActive(false);
         this.sprite.visible = false;
         §@"<§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §<d§.§6@§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §<d§.§6@§ - sprite.y;
         this.§8#S§ = new Point(_loc3_,_loc4_);
         if(!§8!'§.soundResource)
         {
            §8!'§.soundResource = §+!p§.§`?§.levelItemManager.getSoundResource("ZOMBIE_PIG_SET");
         }
      }
      
      public function §8!Q§(param1:Point, param2:Point) : void
      {
         this.§;!B§ = true;
         this.§'"t§ = param1;
         this.§,"q§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§'"t§.x - this.§,"q§.x * this.§"!'§,this.§'"t§.y - this.§,"q§.y * this.§"!'§));
         this.§]"+§ = _loc3_.GetPosition().Copy();
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(this.§;!B§)
         {
            return §,D§;
         }
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) <= 0)
         {
            this.reset();
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§[!5§ > 0)
         {
            this.§[!5§ -= param1;
            if(this.§[!5§ <= 0)
            {
               §&"?§();
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               sprite.visible = true;
               §3!U§(param2).backgroundSprite.addChild(sprite);
            }
            else if(this.§[!5§ <= 200 && !this.§^$ §)
            {
               this.§^$ § = true;
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
               if(this.§7"'§ <= -this.§""d§)
               {
                  this.§;!B§ = false;
               }
            }
            else
            {
               _loc3_ = 1 - this.§7"'§ / this.§#?§;
               _loc4_ = new b2Vec2(this.§]"+§.x + this.§,"q§.x * (-this.§+7§ * 2 * _loc3_) + Math.random() * 0.2,this.§]"+§.y + this.§,"q§.y * (-this.§+7§ * 2 * _loc3_) + Math.random() * 0.2);
               getBody().SetPosition(_loc4_);
            }
            if(!this.§"#'§)
            {
               _loc5_ = 0;
               while(_loc5_ < 1)
               {
                  _loc6_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc7_ = this.§,"q§.x * Math.cos(_loc6_) - this.§,"q§.y * Math.sin(_loc6_);
                  _loc8_ = this.§,"q§.x * Math.sin(_loc6_) + this.§,"q§.y * Math.cos(_loc6_);
                  §+!p§.§`?§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§'"t§.x + -this.§,"q§.y * (Math.random() * this.§+7§ * 2 - this.§+7§),this.§'"t§.y + this.§,"q§.x * (Math.random() * this.§+7§ * 2 - this.§+7§),1500,"",0,_loc7_ * (Math.random() * 6 + 3),_loc8_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
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
         if(!this.§[#Q§)
         {
            this.§[#Q§ = true;
            this.§"#'§ = true;
            _loc1_ = sprite.parent;
            if(_loc1_)
            {
               sprite.removeFromParent();
               sprite.z = 10;
               _loc1_.§'!Q§(sprite);
            }
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
   }
}
