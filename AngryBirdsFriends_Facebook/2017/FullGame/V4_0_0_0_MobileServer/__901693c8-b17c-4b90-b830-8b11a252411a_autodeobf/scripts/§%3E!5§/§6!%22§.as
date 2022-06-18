package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.DisplayObjectContainer;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+#f§.b2CircleShape;
   import §+#f§.b2MassData;
   import §1!+§.b2Body;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   import flash.geom.Point;
   
   public class §6!"§ extends §76§
   {
       
      
      private const §&!Z§:int = 2000;
      
      private const §5"d§:int = 0;
      
      private const §^k§:int = 3000;
      
      public var §[#O§:Point;
      
      public var §?#,§:Point;
      
      public var §`#O§:Point;
      
      private var §?#n§:b2Vec2;
      
      private var §!"'§:Boolean = false;
      
      private var § #n§:Number;
      
      private var §-$+§:Number = 0;
      
      private var §&"L§:Boolean = false;
      
      private var §+"F§:Boolean = false;
      
      private var §"h§:Boolean = false;
      
      private var §["y§:Point;
      
      public var §7!@§:Number;
      
      public function §6!"§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0)
      {
         this.§ #n§ = this.§&!Z§;
         this.§-$+§ = this.§^k§;
         super(param1,param2,param3,param4,param5,param6);
         this.init();
      }
      
      private function get §9"p§() : Number
      {
         return -this.§7!@§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§7!@§ = (_loc1_.GetFixtureList().GetShape() as b2CircleShape).§+#_§();
         _loc1_.SetActive(false);
         this.sprite.visible = false;
         §0#l§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §!!S§.§,"3§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §!!S§.§,"3§ - sprite.y;
         this.§["y§ = new Point(_loc3_,_loc4_);
      }
      
      public function §8"i§(param1:Point, param2:Point) : void
      {
         this.§!"'§ = true;
         this.§`#O§ = param1;
         this.§?#,§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§`#O§.x - this.§?#,§.x * this.§7!@§,this.§`#O§.y - this.§?#,§.y * this.§7!@§));
         this.§?#n§ = _loc3_.GetPosition().Copy();
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         if(this.§!"'§)
         {
            return §##6§;
         }
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0)
         {
            this.reset();
         }
         return _loc5_;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§-$+§ > 0)
         {
            this.§-$+§ -= param1;
            if(this.§-$+§ <= 0)
            {
               §'#=§();
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               sprite.visible = true;
               §<j§(param2).backgroundSprite.addChild(sprite);
            }
            else if(this.§-$+§ <= 200 && !this.§&"L§)
            {
               this.§&"L§ = true;
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
               if(this.§ #n§ <= -this.§5"d§)
               {
                  this.§!"'§ = false;
               }
            }
            else
            {
               _loc3_ = 1 - this.§ #n§ / this.§&!Z§;
               _loc4_ = new b2Vec2(this.§?#n§.x + this.§?#,§.x * (-this.§9"p§ * 2 * _loc3_) + Math.random() * 0.2,this.§?#n§.y + this.§?#,§.y * (-this.§9"p§ * 2 * _loc3_) + Math.random() * 0.2);
               getBody().SetPosition(_loc4_);
            }
            if(!this.§+"F§)
            {
               _loc5_ = 0;
               while(_loc5_ < 1)
               {
                  _loc6_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc7_ = this.§?#,§.x * Math.cos(_loc6_) - this.§?#,§.y * Math.sin(_loc6_);
                  _loc8_ = this.§?#,§.x * Math.sin(_loc6_) + this.§?#,§.y * Math.cos(_loc6_);
                  §!#A§.§#F§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§`#O§.x + -this.§?#,§.y * (Math.random() * this.§9"p§ * 2 - this.§9"p§),this.§`#O§.y + this.§?#,§.x * (Math.random() * this.§9"p§ * 2 - this.§9"p§),1500,"",0,_loc7_ * (Math.random() * 6 + 3),_loc8_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
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
         if(!this.§"h§)
         {
            this.§"h§ = true;
            this.§+"F§ = true;
            _loc1_ = sprite.parent;
            if(_loc1_)
            {
               sprite.removeFromParent();
               sprite.z = 10;
               _loc1_.§]#n§(sprite);
            }
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
   }
}
