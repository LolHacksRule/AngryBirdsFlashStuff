package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2Body;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §]!o§.b2MassData;
   import §]!o§.b2PolygonShape;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §7+§ extends §,!h§
   {
      
      private static const §4#>§:int = 2000;
      
      private static const §]#I§:int = 0;
      
      private static const §switch§:int = 2000;
       
      
      public var §+#L§:Point;
      
      public var §'!8§:Point;
      
      public var §<e§:Point;
      
      private var §-o§:b2Vec2;
      
      private var §@"T§:Boolean = false;
      
      private var §,#V§:Number;
      
      private var §="S§:Number = 0;
      
      private var §]"O§:Boolean = false;
      
      private var §1#d§:Boolean = false;
      
      private var §?"N§:Point;
      
      private var §[!1§:Number = 0.05;
      
      private const §,#v§:Number = 2.0;
      
      private var §0"P§:Number = 0;
      
      private var §?#<§:Point;
      
      private const §]"p§:Number = 3.65;
      
      private const §6$;§:Number = 1.8859999;
      
      private var §,#_§:Boolean = false;
      
      private var §<#W§:Number = 1.0;
      
      private var §5"&§:Boolean = false;
      
      private var §6E§:b2PolygonShape;
      
      public function §7+§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         param6 = 0.1;
         param1.scaleY = 0.1;
         param1.scaleX = 0.1;
         this.§?#<§ = new Point(0,0);
         this.§,#V§ = §4#>§;
         this.§="S§ = §switch§;
         super(param1,param2,param3,param4,param5,param6);
         this.§6E§ = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
         this.init();
      }
      
      public static function get §^!1§() : int
      {
         return §4#>§ + §switch§ + §]#I§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§7#%§();
         this.sprite.visible = false;
         §^#v§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §'"u§.§'#e§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §'"u§.§'#e§ - sprite.y;
         this.§?"N§ = new Point(_loc3_,_loc4_);
      }
      
      override protected function addDestructionParticles(param1:§ #'§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = Math.min(10,Math.max(1,§`$5§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§]+§.width * §'"u§.§'#e§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§]+§.height * §'"u§.§'#e§) + Math.random() * -_loc8_ * 2;
            _loc9_ = Math.random();
            _loc10_ = 1 + Math.floor(Math.random() * 2);
            if(param1)
            {
               param1.addParticle("PARTICLE_WONDERLAND_MUSHROOM_" + _loc10_.toString(),§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§'Y§.getParticleMaterialFromEngineMaterial("MISC_FB_EASTER_MUSHROOM"),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50,_loc9_);
            }
            _loc5_++;
         }
      }
      
      public function §>#<§() : void
      {
         §%"T§.§;`§.objects.§8!&§.removeChild(sprite);
         (§%"T§.§;`§.objects as §`h§).§^"T§.addChild(sprite);
      }
      
      public function §[!X§(param1:Point, param2:Point) : void
      {
         this.§@"T§ = true;
         this.§<e§ = param1;
         this.§'!8§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§<e§.x - this.§'!8§.x,this.§<e§.y - this.§'!8§.y));
         this.§-o§ = _loc3_.GetPosition().Copy();
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         if(!§%"T§.§;`§.§=#S§)
         {
            return;
         }
         if(this.§="S§ > 0)
         {
            this.§="S§ -= param1;
            if(this.§="S§ <= 0)
            {
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.§="S§ <= 200 && !this.§5"&§)
            {
               this.§5"&§ = true;
               §%"T§.§;`§.particles.addSimpleParticle("SMOKE_BIG",§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§-o§.x,this.§-o§.y,2000,"",§'Y§.§,"A§,0,0,0,0,1.5,20,true);
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
               if(this.§,#V§ <= -§]#I§)
               {
                  this.§@"T§ = false;
               }
            }
            if(!this.§]"O§ && this.§@"T§)
            {
               _loc3_ = 0;
               while(_loc3_ < 1)
               {
                  _loc4_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc5_ = this.§'!8§.x * Math.cos(_loc4_) - this.§'!8§.y * Math.sin(_loc4_);
                  _loc6_ = this.§'!8§.x * Math.sin(_loc4_) + this.§'!8§.y * Math.cos(_loc4_);
                  §%"T§.§;`§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE",§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§<e§.x + -this.§'!8§.y * (Math.random() * 2),this.§<e§.y + this.§'!8§.y * (Math.random() * 2),800,"",0,_loc5_ * (Math.random() * 6 + 3),_loc6_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc3_++;
               }
            }
         }
         else
         {
            this.reset();
         }
         if(this.§0"P§ <= §4#>§)
         {
            this.§0"P§ += param1;
            this.§7#%§();
            _loc7_ = new b2Vec2(this.§-o§.x + this.§'!8§.x + this.§?#<§.x,this.§-o§.y + this.§'!8§.y + this.§?#<§.y);
            getBody().SetPosition(_loc7_);
         }
         super.update(param1,param2);
      }
      
      private function §7#%§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var _loc2_:Vector.<b2Vec2> = _loc1_.§[f§();
         var _loc3_:Number = 1 - this.§,#V§ / §4#>§;
         if(_loc3_ > this.scaleModifier)
         {
            _loc3_ = this.scaleModifier;
            this.§@"T§ = false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.§6E§.§[f§()[_loc4_].x * _loc3_ * 10;
            _loc6_ = this.§6E§.§[f§()[_loc4_].y * _loc3_ * 10;
            _loc2_[_loc4_].x = _loc5_;
            _loc2_[_loc4_].y = _loc6_;
            _loc4_++;
         }
         if(_loc3_ < this.scaleModifier)
         {
            sprite.scaleX = sprite.scaleY = sprite.scaleY + this.§[!1§ * 5 * §'"u§.§'#e§;
            sprite.pivotY = 0;
            this.§?#<§.y -= 0.05;
            getBody().SetAwake(true);
            getBody().ResetMassData();
         }
      }
      
      private function reset() : void
      {
         if(!this.§1#d§)
         {
            this.§1#d§ = true;
            this.§]"O§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      public function get scaleModifier() : Number
      {
         return this.§<#W§;
      }
      
      public function set scaleModifier(param1:Number) : void
      {
         this.§<#W§ = param1;
      }
   }
}
