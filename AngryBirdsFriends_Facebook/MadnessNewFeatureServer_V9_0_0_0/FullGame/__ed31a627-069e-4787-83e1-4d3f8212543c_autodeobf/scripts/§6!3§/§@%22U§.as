package §6!3§
{
   import §!H§.b2MassData;
   import §!H§.b2PolygonShape;
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §>2§.§!6§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2Body;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   import flash.geom.Point;
   
   public class §@"U§ extends §^#x§
   {
      
      private static const §8"Y§:int = 2000;
      
      private static const §2$=§:int = 0;
      
      private static const §?o§:int = 2000;
       
      
      public var §7! §:Point;
      
      public var §+#8§:Point;
      
      public var §+"r§:Point;
      
      private var §5!'§:b2Vec2;
      
      private var §&#E§:Boolean = false;
      
      private var §1"A§:Number;
      
      private var §@q§:Number = 0;
      
      private var §=5§:Boolean = false;
      
      private var §'L§:Boolean = false;
      
      private var § #O§:Point;
      
      private var §^!?§:Number = 0.05;
      
      private const §@##§:Number = 2.0;
      
      private var §],§:Number = 0;
      
      private var §>_§:Point;
      
      private const §=#A§:Number = 3.65;
      
      private const §9!p§:Number = 1.8859999;
      
      private var §5!X§:Boolean = false;
      
      private var §?#4§:Number = 1.0;
      
      private var §["L§:Boolean = false;
      
      private var §3!Y§:b2PolygonShape;
      
      public function §@"U§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         param6 = 0.1;
         param1.scaleY = 0.1;
         param1.scaleX = 0.1;
         this.§>_§ = new Point(0,0);
         this.§1"A§ = §8"Y§;
         this.§@q§ = §?o§;
         super(param1,param2,param3,param4,param5,param6);
         this.§3!Y§ = getBody().GetFixtureList().GetShape().Copy() as b2PolygonShape;
         this.init();
      }
      
      public static function get §!E§() : int
      {
         return §8"Y§ + §?o§ + §2$=§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§9"e§();
         this.sprite.visible = false;
         §!"N§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §!6§.§[#v§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §!6§.§[#v§ - sprite.y;
         this.§ #O§ = new Point(_loc3_,_loc4_);
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = Math.min(10,Math.max(1,§'"l§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§="!§.width * §!6§.§[#v§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§="!§.height * §!6§.§[#v§) + Math.random() * -_loc8_ * 2;
            _loc9_ = Math.random();
            _loc10_ = 1 + Math.floor(Math.random() * 2);
            if(param1)
            {
               param1.addParticle("PARTICLE_WONDERLAND_MUSHROOM_" + _loc10_.toString(),§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§6!9§.getParticleMaterialFromEngineMaterial("MISC_FB_EASTER_MUSHROOM"),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50,_loc9_);
            }
            _loc5_++;
         }
      }
      
      public function §]"y§() : void
      {
         §7n§.§6#K§.objects.§&#c§.removeChild(sprite);
         (§7n§.§6#K§.objects as §4!o§).§?I§.addChild(sprite);
      }
      
      public function §-#I§(param1:Point, param2:Point) : void
      {
         this.§&#E§ = true;
         this.§+"r§ = param1;
         this.§+#8§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§+"r§.x - this.§+#8§.x,this.§+"r§.y - this.§+#8§.y));
         this.§5!'§ = _loc3_.GetPosition().Copy();
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         if(!§7n§.§6#K§.§2$5§)
         {
            return;
         }
         if(this.§@q§ > 0)
         {
            this.§@q§ -= param1;
            if(this.§@q§ <= 0)
            {
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               this.sprite.visible = true;
            }
            else if(this.§@q§ <= 200 && !this.§["L§)
            {
               this.§["L§ = true;
               §7n§.§6#K§.particles.addSimpleParticle("SMOKE_BIG",§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§5!'§.x,this.§5!'§.y,2000,"",§6!9§.§'s§,0,0,0,0,1.5,20,true);
            }
            return;
         }
         if(this.§&#E§)
         {
            this.§1"A§ -= param1;
            if(this.§1"A§ <= 0)
            {
               if(!this.§=5§)
               {
                  this.reset();
               }
               if(this.§1"A§ <= -§2$=§)
               {
                  this.§&#E§ = false;
               }
            }
            if(!this.§=5§ && this.§&#E§)
            {
               _loc3_ = 0;
               while(_loc3_ < 1)
               {
                  _loc4_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc5_ = this.§+#8§.x * Math.cos(_loc4_) - this.§+#8§.y * Math.sin(_loc4_);
                  _loc6_ = this.§+#8§.x * Math.sin(_loc4_) + this.§+#8§.y * Math.cos(_loc4_);
                  §7n§.§6#K§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE",§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§+"r§.x + -this.§+#8§.y * (Math.random() * 2),this.§+"r§.y + this.§+#8§.y * (Math.random() * 2),800,"",0,_loc5_ * (Math.random() * 6 + 3),_loc6_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                  _loc3_++;
               }
            }
         }
         else
         {
            this.reset();
         }
         if(this.§],§ <= §8"Y§)
         {
            this.§],§ += param1;
            this.§9"e§();
            _loc7_ = new b2Vec2(this.§5!'§.x + this.§+#8§.x + this.§>_§.x,this.§5!'§.y + this.§+#8§.y + this.§>_§.y);
            getBody().SetPosition(_loc7_);
         }
         super.update(param1,param2);
      }
      
      private function §9"e§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:b2PolygonShape = getBody().GetFixtureList().GetShape() as b2PolygonShape;
         var _loc2_:Vector.<b2Vec2> = _loc1_.§'#K§();
         var _loc3_:Number = 1 - this.§1"A§ / §8"Y§;
         if(_loc3_ > this.scaleModifier)
         {
            _loc3_ = this.scaleModifier;
            this.§&#E§ = false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = this.§3!Y§.§'#K§()[_loc4_].x * _loc3_ * 10;
            _loc6_ = this.§3!Y§.§'#K§()[_loc4_].y * _loc3_ * 10;
            _loc2_[_loc4_].x = _loc5_;
            _loc2_[_loc4_].y = _loc6_;
            _loc4_++;
         }
         if(_loc3_ < this.scaleModifier)
         {
            sprite.scaleX = sprite.scaleY = sprite.scaleY + this.§^!?§ * 5 * §!6§.§[#v§;
            sprite.pivotY = 0;
            this.§>_§.y -= 0.05;
            getBody().SetAwake(true);
            getBody().ResetMassData();
         }
      }
      
      private function reset() : void
      {
         if(!this.§'L§)
         {
            this.§'L§ = true;
            this.§=5§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
      
      public function get scaleModifier() : Number
      {
         return this.§?#4§;
      }
      
      public function set scaleModifier(param1:Number) : void
      {
         this.§?#4§ = param1;
      }
   }
}
