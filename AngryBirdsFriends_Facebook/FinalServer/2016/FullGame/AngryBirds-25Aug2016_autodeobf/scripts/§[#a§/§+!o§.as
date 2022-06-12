package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §52§.§#!,§;
   import §8§.§#$+§;
   import §9$§.DisplayObjectContainer;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2Body;
   import §=#n§.b2World;
   import §?!c§.b2CircleShape;
   import §?!c§.b2MassData;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   import flash.geom.Point;
   
   public class §+!o§ extends §3a§
   {
       
      
      private const §>+§:int = 2000;
      
      private const §&n§:int = 0;
      
      private const §=#M§:int = 3000;
      
      public var §!$2§:Point;
      
      public var §3"8§:Point;
      
      public var §,$1§:Point;
      
      private var §1"-§:b2Vec2;
      
      private var §7$9§:Boolean = false;
      
      private var §##;§:Number;
      
      private var §26§:Number = 0;
      
      private var §=q§:Boolean = false;
      
      private var §"#-§:Boolean = false;
      
      private var §^"u§:Boolean = false;
      
      private var §"!N§:Point;
      
      public var §!!1§:Number;
      
      public function §+!o§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0)
      {
         this.§##;§ = this.§>+§;
         this.§26§ = this.§=#M§;
         super(param1,param2,param3,param4,param5,param6);
         this.init();
      }
      
      private function get §`!o§() : Number
      {
         return -this.§!!1§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§!!1§ = (_loc1_.GetFixtureList().GetShape() as b2CircleShape).§'![§();
         _loc1_.SetActive(false);
         this.sprite.visible = false;
         §]B§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §#!,§.§?$#§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §#!,§.§?$#§ - sprite.y;
         this.§"!N§ = new Point(_loc3_,_loc4_);
      }
      
      public function §^"U§(param1:Point, param2:Point) : void
      {
         this.§7$9§ = true;
         this.§,$1§ = param1;
         this.§3"8§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§,$1§.x - this.§3"8§.x * this.§!!1§,this.§,$1§.y - this.§3"8§.y * this.§!!1§));
         this.§1"-§ = _loc3_.GetPosition().Copy();
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         if(this.§7$9§)
         {
            return §2!w§;
         }
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0)
         {
            this.reset();
         }
         return _loc5_;
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§26§ > 0)
         {
            this.§26§ -= param1;
            if(this.§26§ <= 0)
            {
               §#$+§.§=#P§("zombie_pig_transform_var2","ChannelPig");
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               sprite.visible = true;
               §=#]§(param2).backgroundSprite.addChild(sprite);
            }
            else if(this.§26§ <= 200 && !this.§=q§)
            {
               this.§=q§ = true;
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
               if(this.§##;§ <= -this.§&n§)
               {
                  this.§7$9§ = false;
               }
            }
            else
            {
               _loc3_ = 1 - this.§##;§ / this.§>+§;
               _loc4_ = new b2Vec2(this.§1"-§.x + this.§3"8§.x * (-this.§`!o§ * 2 * _loc3_) + Math.random() * 0.2,this.§1"-§.y + this.§3"8§.y * (-this.§`!o§ * 2 * _loc3_) + Math.random() * 0.2);
               getBody().SetPosition(_loc4_);
            }
            if(!this.§"#-§)
            {
               _loc5_ = 0;
               while(_loc5_ < 1)
               {
                  _loc6_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc7_ = this.§3"8§.x * Math.cos(_loc6_) - this.§3"8§.y * Math.sin(_loc6_);
                  _loc8_ = this.§3"8§.x * Math.sin(_loc6_) + this.§3"8§.y * Math.cos(_loc6_);
                  §>"$§.§3#'§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§,$1§.x + -this.§3"8§.y * (Math.random() * this.§`!o§ * 2 - this.§`!o§),this.§,$1§.y + this.§3"8§.x * (Math.random() * this.§`!o§ * 2 - this.§`!o§),1500,"",0,_loc7_ * (Math.random() * 6 + 3),_loc8_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
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
         if(!this.§^"u§)
         {
            this.§^"u§ = true;
            this.§"#-§ = true;
            _loc1_ = sprite.parent;
            if(_loc1_)
            {
               sprite.removeFromParent();
               sprite.z = 10;
               _loc1_.§,!,§(sprite);
            }
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
   }
}
