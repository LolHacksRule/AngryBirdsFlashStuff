package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+#f§.b2MassData;
   import §+#f§.b2PolygonShape;
   import §1!+§.b2Body;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   import flash.geom.Point;
   
   public class §2#%§ extends §;"i§
   {
      
      private static const §&!Z§:int = 2000;
      
      private static const §5"d§:int = 0;
      
      private static const §^k§:int = 2000;
       
      
      public var §[#O§:Point;
      
      public var §?#,§:Point;
      
      public var §`#O§:Point;
      
      private var §?#n§:b2Vec2;
      
      private var §!"'§:Boolean = false;
      
      private var § #n§:Number;
      
      private var §-$+§:Number = 0;
      
      private var §+"F§:Boolean = false;
      
      private var §"h§:Boolean = false;
      
      private var §["y§:Point;
      
      private var §+c§:Number = 0.05;
      
      private const §%#E§:Number = 2.0;
      
      private var §,#=§:Number = 0;
      
      private var §4k§:Point;
      
      private const §-,§:Number = 3.65;
      
      private const §!#w§:Number = 1.8859999;
      
      private var §?"f§:Boolean = false;
      
      private var §`!z§:Number = 1.0;
      
      private var §&"L§:Boolean = false;
      
      private var §-!7§:b2PolygonShape;
      
      public function §2#%§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         param6 = 0.1;
         param1.scaleY = 0.1;
         param1.scaleX = 0.1;
         this.§4k§ = new Point(0,0);
         this.§ #n§ = §&!Z§;
         this.§-$+§ = §^k§;
         super(param1,param2,param3,param4,param5,param6);
         this.§-!7§ = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
         this.init();
      }
      
      public static function get §9!=§() : int
      {
         return §&!Z§ + §^k§ + §5"d§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§=m§();
         this.sprite.visible = false;
         §0#l§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §!!S§.§,"3§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §!!S§.§,"3§ - sprite.y;
         this.§["y§ = new Point(_loc3_,_loc4_);
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = Math.min(10,Math.max(1,§'Y§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§implements§.width * §!!S§.§,"3§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§implements§.height * §!!S§.§,"3§) + Math.random() * -_loc8_ * 2;
            _loc9_ = Math.random();
            _loc10_ = 1 + Math.floor(Math.random() * 2);
            if(param1)
            {
               param1.addParticle("PARTICLE_WONDERLAND_MUSHROOM_" + _loc10_.toString(),§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2"^§.getParticleMaterialFromEngineMaterial("MISC_FB_EASTER_MUSHROOM"),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50,_loc9_);
            }
            _loc5_++;
         }
      }
      
      public function §'4§() : void
      {
         §!#A§.§#F§.objects.§'"Z§.removeChild(sprite);
         (§!#A§.§#F§.objects as §<j§).§,"i§.addChild(sprite);
      }
      
      public function §8"i§(param1:Point, param2:Point) : void
      {
         this.§!"'§ = true;
         this.§`#O§ = param1;
         this.§?#,§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§`#O§.x - this.§?#,§.x,this.§`#O§.y - this.§?#,§.y));
         this.§?#n§ = _loc3_.GetPosition().Copy();
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         if(!§!#A§.§#F§.§-#O§)
         {
            return;
         }
         if(this.§-$+§ > 0)
         {
            this.§-$+§ -= param1;
            if(this.§-$+§ <= 0)
            {
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.§-$+§ <= 200 && !this.§&"L§)
            {
               this.§&"L§ = true;
               §!#A§.§#F§.particles.addSimpleParticle("SMOKE_BIG",§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.§#$4§,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§?#n§.x,this.§?#n§.y,2000,"",§2"^§.§9Z§,0,0,0,0,1.5,20,true);
            }
            return;
         }
         if(this.§!"'§)
         {
            this.§ #n§ -= param1;
            if(this.§ #n§ <= 0)
            {
               if(!this.§+"F§)
               {
                  this.reset();
               }
               if(this.§ #n§ <= -§5"d§)
               {
                  this.§!"'§ = false;
               }
            }
            if(!this.§+"F§ && this.§!"'§)
            {
               _loc3_ = 0;
               while(_loc3_ < 1)
               {
                  _loc4_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc5_ = this.§?#,§.x * Math.cos(_loc4_) - this.§?#,§.y * Math.sin(_loc4_);
                  _loc6_ = this.§?#,§.x * Math.sin(_loc4_) + this.§?#,§.y * Math.cos(_loc4_);
                  §!#A§.§#F§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE",§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§`#O§.x + -this.§?#,§.y * (Math.random() * 2),this.§`#O§.y + this.§?#,§.y * (Math.random() * 2),800,"",0,_loc5_ * (Math.random() * 6 + 3),_loc6_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc3_++;
               }
            }
         }
         else
         {
            this.reset();
         }
         if(this.§,#=§ <= §&!Z§)
         {
            this.§,#=§ += param1;
            this.§=m§();
            _loc7_ = new b2Vec2(this.§?#n§.x + this.§?#,§.x + this.§4k§.x,this.§?#n§.y + this.§?#,§.y + this.§4k§.y);
            getBody().SetPosition(_loc7_);
         }
         super.update(param1,param2);
      }
      
      private function §=m§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var _loc2_:Vector.<b2Vec2> = _loc1_.§""l§();
         var _loc3_:Number = 1 - this.§ #n§ / §&!Z§;
         if(_loc3_ > this.scaleModifier)
         {
            _loc3_ = this.scaleModifier;
            this.§!"'§ = false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.§-!7§.§""l§()[_loc4_].x * _loc3_ * 10;
            _loc6_ = this.§-!7§.§""l§()[_loc4_].y * _loc3_ * 10;
            _loc2_[_loc4_].x = _loc5_;
            _loc2_[_loc4_].y = _loc6_;
            _loc4_++;
         }
         if(_loc3_ < this.scaleModifier)
         {
            sprite.scaleX = sprite.scaleY = sprite.scaleY + this.§+c§ * 5 * §!!S§.§,"3§;
            sprite.pivotY = 0;
            this.§4k§.y -= 0.05;
            getBody().SetAwake(true);
            getBody().ResetMassData();
         }
      }
      
      private function reset() : void
      {
         if(!this.§"h§)
         {
            this.§"h§ = true;
            this.§+"F§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      public function get scaleModifier() : Number
      {
         return this.§`!z§;
      }
      
      public function set scaleModifier(param1:Number) : void
      {
         this.§`!z§ = param1;
      }
   }
}
