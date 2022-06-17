package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.DisplayObjectContainer;
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2Body;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §]!o§.b2CircleShape;
   import §]!o§.b2MassData;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §#"+§ extends §1$<§
   {
       
      
      private const §4#>§:int = 2000;
      
      private const §]#I§:int = 0;
      
      private const §switch§:int = 3000;
      
      public var §+#L§:Point;
      
      public var §'!8§:Point;
      
      public var §<e§:Point;
      
      private var §-o§:b2Vec2;
      
      private var §@"T§:Boolean = false;
      
      private var §,#V§:Number;
      
      private var §="S§:Number = 0;
      
      private var §5"&§:Boolean = false;
      
      private var §]"O§:Boolean = false;
      
      private var §1#d§:Boolean = false;
      
      private var §?"N§:Point;
      
      public var § "=§:Number;
      
      public function §#"+§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0)
      {
         this.§,#V§ = this.§4#>§;
         this.§="S§ = this.§switch§;
         super(param1,param2,param3,param4,param5,param6);
         this.init();
      }
      
      private function get §5N§() : Number
      {
         return -this.§ "=§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§ "=§ = (_loc1_.GetFixtureList().GetShape() as b2CircleShape).§7"z§();
         _loc1_.SetActive(false);
         this.sprite.visible = false;
         §^#v§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §'"u§.§'#e§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §'"u§.§'#e§ - sprite.y;
         this.§?"N§ = new Point(_loc3_,_loc4_);
         if(!§!!H§.soundResource)
         {
            §!!H§.soundResource = §%"T§.§;`§.levelItemManager.getSoundResource("ZOMBIE_PIG_SET");
         }
      }
      
      public function §[!X§(param1:Point, param2:Point) : void
      {
         this.§@"T§ = true;
         this.§<e§ = param1;
         this.§'!8§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§<e§.x - this.§'!8§.x * this.§ "=§,this.§<e§.y - this.§'!8§.y * this.§ "=§));
         this.§-o§ = _loc3_.GetPosition().Copy();
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(this.§@"T§)
         {
            return §1#H§;
         }
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) <= 0)
         {
            this.reset();
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§="S§ > 0)
         {
            this.§="S§ -= param1;
            if(this.§="S§ <= 0)
            {
               § !W§();
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               sprite.visible = true;
               §`h§(param2).backgroundSprite.addChild(sprite);
            }
            else if(this.§="S§ <= 200 && !this.§5"&§)
            {
               this.§5"&§ = true;
            }
            return;
         }
         if(this.§@"T§)
         {
            this.§,#V§ -= param1;
            if(this.§,#V§ <= 0)
            {
               if(!this.§]"O§)
               {
                  this.reset();
               }
               if(this.§,#V§ <= -this.§]#I§)
               {
                  this.§@"T§ = false;
               }
            }
            else
            {
               _loc3_ = 1 - this.§,#V§ / this.§4#>§;
               _loc4_ = new b2Vec2(this.§-o§.x + this.§'!8§.x * (-this.§5N§ * 2 * _loc3_) + Math.random() * 0.2,this.§-o§.y + this.§'!8§.y * (-this.§5N§ * 2 * _loc3_) + Math.random() * 0.2);
               getBody().SetPosition(_loc4_);
            }
            if(!this.§]"O§)
            {
               _loc5_ = 0;
               while(_loc5_ < 1)
               {
                  _loc6_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc7_ = this.§'!8§.x * Math.cos(_loc6_) - this.§'!8§.y * Math.sin(_loc6_);
                  _loc8_ = this.§'!8§.x * Math.sin(_loc6_) + this.§'!8§.y * Math.cos(_loc6_);
                  §%"T§.§;`§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§<e§.x + -this.§'!8§.y * (Math.random() * this.§5N§ * 2 - this.§5N§),this.§<e§.y + this.§'!8§.x * (Math.random() * this.§5N§ * 2 - this.§5N§),1500,"",0,_loc7_ * (Math.random() * 6 + 3),_loc8_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
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
         if(!this.§1#d§)
         {
            this.§1#d§ = true;
            this.§]"O§ = true;
            _loc1_ = sprite.parent;
            if(_loc1_)
            {
               sprite.removeFromParent();
               sprite.z = 10;
               _loc1_.§;r§(sprite);
            }
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
   }
}
