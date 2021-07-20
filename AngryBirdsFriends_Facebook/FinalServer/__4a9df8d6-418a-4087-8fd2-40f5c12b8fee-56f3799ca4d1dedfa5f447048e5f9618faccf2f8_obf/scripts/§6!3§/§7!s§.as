package §6!3§
{
   import §!H§.b2CircleShape;
   import §!H§.b2MassData;
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.DisplayObjectContainer;
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
   
   public class §7!s§ extends §>#p§
   {
       
      
      private const §8"Y§:int = 2000;
      
      private const §2$=§:int = 0;
      
      private const §?o§:int = 3000;
      
      public var §7! §:Point;
      
      public var §+#8§:Point;
      
      public var §+"r§:Point;
      
      private var §5!'§:b2Vec2;
      
      private var §&#E§:Boolean = false;
      
      private var §1"A§:Number;
      
      private var §@q§:Number = 0;
      
      private var §["L§:Boolean = false;
      
      private var §=5§:Boolean = false;
      
      private var §'L§:Boolean = false;
      
      private var § #O§:Point;
      
      public var §-!c§:Number;
      
      public function §7!s§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0)
      {
         this.§1"A§ = this.§8"Y§;
         this.§@q§ = this.§?o§;
         super(param1,param2,param3,param4,param5,param6);
         this.init();
      }
      
      private function get §7#O§() : Number
      {
         return -this.§-!c§;
      }
      
      private function init() : void
      {
         var _loc1_:b2Body = getBody();
         var _loc2_:b2MassData = new b2MassData();
         _loc1_.SetType(b2Body.b2_kinematicBody);
         this.§-!c§ = (_loc1_.GetFixtureList().GetShape() as b2CircleShape).§[§();
         _loc1_.SetActive(false);
         this.sprite.visible = false;
         §!"N§ = true;
         var _loc3_:Number = _loc1_.GetPosition().x / §!6§.§[#v§ - sprite.x;
         var _loc4_:Number = _loc1_.GetPosition().y / §!6§.§[#v§ - sprite.y;
         this.§ #O§ = new Point(_loc3_,_loc4_);
         if(!§"#6§.soundResource)
         {
            §"#6§.soundResource = §7n§.§6#K§.levelItemManager.getSoundResource("ZOMBIE_PIG_SET");
         }
      }
      
      public function §-#I§(param1:Point, param2:Point) : void
      {
         this.§&#E§ = true;
         this.§+"r§ = param1;
         this.§+#8§ = param2;
         var _loc3_:b2Body = getBody();
         _loc3_.SetPosition(new b2Vec2(this.§+"r§.x - this.§+#8§.x * this.§-!c§,this.§+"r§.y - this.§+#8§.y * this.§-!c§));
         this.§5!'§ = _loc3_.GetPosition().Copy();
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         if(this.§&#E§)
         {
            return §6"k§;
         }
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) <= 0)
         {
            this.reset();
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super.update(param1,param2);
         if(this.§@q§ > 0)
         {
            this.§@q§ -= param1;
            if(this.§@q§ <= 0)
            {
               §-#"§();
               getBody().SetActive(true);
               getBody().SetSleepingAllowed(false);
               sprite.visible = true;
               §4!o§(param2).backgroundSprite.addChild(sprite);
            }
            else if(this.§@q§ <= 200 && !this.§["L§)
            {
               this.§["L§ = true;
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
               if(this.§1"A§ <= -this.§2$=§)
               {
                  this.§&#E§ = false;
               }
            }
            else
            {
               _loc3_ = 1 - this.§1"A§ / this.§8"Y§;
               _loc4_ = new b2Vec2(this.§5!'§.x + this.§+#8§.x * (-this.§7#O§ * 2 * _loc3_) + Math.random() * 0.2,this.§5!'§.y + this.§+#8§.y * (-this.§7#O§ * 2 * _loc3_) + Math.random() * 0.2);
               getBody().SetPosition(_loc4_);
            }
            if(!this.§=5§)
            {
               _loc5_ = 0;
               while(_loc5_ < 1)
               {
                  _loc6_ = (Math.random() * 90 - 45) * 0.0174532925;
                  _loc7_ = this.§+#8§.x * Math.cos(_loc6_) - this.§+#8§.y * Math.sin(_loc6_);
                  _loc8_ = this.§+#8§.x * Math.sin(_loc6_) + this.§+#8§.y * Math.cos(_loc6_);
                  §7n§.§6#K§.particles.addSimpleParticle("PARTICLE_HALLOWEEN_STONE_" + Math.round(Math.random() * 2 + 1),§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§+"r§.x + -this.§+#8§.y * (Math.random() * this.§7#O§ * 2 - this.§7#O§),this.§+"r§.y + this.§+#8§.x * (Math.random() * this.§7#O§ * 2 - this.§7#O§),1500,"",0,_loc7_ * (Math.random() * 6 + 3),_loc8_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
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
         if(!this.§'L§)
         {
            this.§'L§ = true;
            this.§=5§ = true;
            _loc1_ = sprite.parent;
            if(_loc1_)
            {
               sprite.removeFromParent();
               sprite.z = 10;
               _loc1_.§!c§(sprite);
            }
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            getBody().SetType(b2Body.b2_dynamicBody);
         }
      }
   }
}
