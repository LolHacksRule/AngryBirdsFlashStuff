package §7P§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§["$§;
   import §3"5§.b2Collision;
   import §3"5§.b2Manifold;
   import §4!$§.b2CircleShape;
   import §4!$§.b2PolygonShape;
   import §4!$§.b2Shape;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import flash.utils.Dictionary;
   
   public class §@!W§ extends §1#E§
   {
      
      public static const §+"§:String = "BLOCK_SENSOR_SWORD";
       
      
      private var § $§:§&#=§;
      
      private var §3#1§:Sprite;
      
      private var §2"K§:Number;
      
      private var §!!9§:Number;
      
      private var §!+§:Number;
      
      private var §-"0§:Number;
      
      private var §2#7§:Number;
      
      private var §75§:Number;
      
      private var §`Y§:Dictionary;
      
      protected var §1#%§:Number = 1.0;
      
      protected var §8"P§:DisplayObject;
      
      protected var §3"S§:DisplayObject;
      
      protected var §-T§:String;
      
      protected var § #a§:Number;
      
      protected var §7#?§:Number;
      
      protected var §'Z§:Number;
      
      protected var §0#0§:Number;
      
      public function §@!W§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§["$§, param5:§94§)
      {
         super(param1,param3,param4,param4.shape,param5);
         §3!t§().SetAngle(param5.angle);
         this.§`Y§ = new Dictionary();
         this.§3!§(param2);
         this.§2"K§ = this.§,#-§.getNumberProperty("swordDuration") * 1000;
         this.§!+§ = this.§,#-§.getNumberProperty("swordAngleSpeed") / 1000;
         this.§-"0§ = this.§,#-§.getNumberProperty("swordMinScale");
         this.§2#7§ = this.§,#-§.getNumberProperty("swordMaxScale");
         this.§75§ = this.§,#-§.getNumberProperty("damage");
         this.§-T§ = this.§,#-§.getProperty("particlesTrail");
         this.§!!9§ = this.§2"K§;
         this.§ #a§ = param5.x;
         this.§7#?§ = param5.y;
         this.§'Z§ = param5.angle;
         this.§0#0§ = this.§2#7§ - Math.abs(this.§2"K§ / 2 - this.§!!9§) / (this.§2"K§ / 2) * (this.§2#7§ - this.§-"0§);
      }
      
      override public function dispose() : void
      {
         if(!§!"?§)
         {
            super.dispose();
            this.§`Y§ = null;
            §!"?§ = true;
         }
      }
      
      private function get §,#-§() : §["$§
      {
         return §["$§(§;B§);
      }
      
      public function init(param1:§&#=§) : void
      {
         this.§ $§ = param1;
      }
      
      private function §3!§(param1:§>"G§) : void
      {
         this.§3#1§ = new Sprite();
         this.§3"S§ = param1.getFrame(0,this.§3"S§);
         this.§3#1§.addChild(this.§3"S§);
         sprite.addChild(this.§3#1§);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         if(this.§!!9§ <= 0)
         {
            param2.removeObject(this);
            §-!F§(this.§ $§).§]l§();
            return;
         }
         this.§"1§(param2);
         this.§##P§(param2);
         var _loc3_:Number = param1;
         if(param2)
         {
            this.§1#%§ = param2.timeSpeedMultiplier;
            _loc3_ /= this.§1#%§;
         }
         this.§!!9§ -= _loc3_;
      }
      
      public function §?2§(param1:§;$§) : void
      {
         var _loc3_:§&#=§ = null;
         var _loc4_:b2Shape = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Transform = null;
         var _loc7_:b2Transform = null;
         var _loc8_:b2Manifold = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_) as §&#=§;
            if(_loc3_ && _loc3_.levelItem.getItemDensity() == 0)
            {
               _loc4_ = _loc3_.§3!t§().GetFixtureList().GetShape();
               _loc5_ = §3!t§().GetFixtureList().GetShape();
               _loc6_ = _loc3_.§3!t§().GetTransform();
               _loc7_ = §3!t§().GetTransform();
               _loc8_ = new b2Manifold();
               if(_loc5_ is b2PolygonShape && _loc4_ is b2CircleShape)
               {
                  b2Collision.§7"S§(_loc8_,b2PolygonShape(_loc5_),_loc7_,b2CircleShape(_loc4_),_loc6_);
               }
               else if(_loc5_ is b2PolygonShape && _loc4_ is b2PolygonShape)
               {
                  b2Collision.§?e§(_loc8_,b2PolygonShape(_loc5_),_loc7_,b2PolygonShape(_loc4_),_loc6_);
               }
               if(_loc8_.§6#;§ > 0)
               {
                  §,"k§.push(_loc3_);
               }
            }
            _loc2_++;
         }
      }
      
      private function §##P§(param1:§;$§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         var _loc4_:Number = §3!t§().GetAngle();
         var _loc5_:Number = this.§2#7§ - Math.abs(this.§2"K§ / 2 - this.§!!9§) / (this.§2"K§ / 2) * (this.§2#7§ - this.§-"0§);
         if(_loc4_ != this.§'Z§)
         {
            _loc6_ = 4;
            _loc7_ = 1;
            while(_loc7_ <= _loc6_)
            {
               _loc8_ = this.§ #a§ + (_loc2_ - this.§ #a§) / _loc6_ * _loc7_;
               _loc9_ = this.§7#?§ + (_loc3_ - this.§7#?§) / _loc6_ * _loc7_;
               _loc10_ = this.§'Z§ + (_loc4_ - this.§'Z§) / _loc6_ * _loc7_;
               _loc11_ = this.§0#0§ + (_loc5_ - this.§0#0§) / _loc6_ * _loc7_;
               param1.addObject(this.§-T§,_loc8_,_loc9_,_loc10_,§;=§.§""3§,false,false,false,_loc11_);
               _loc7_++;
            }
            this.§ #a§ = _loc2_;
            this.§7#?§ = _loc3_;
            this.§'Z§ = _loc4_;
            this.§0#0§ = _loc5_;
         }
      }
      
      private function §"1§(param1:§;$§) : void
      {
         var _loc3_:§&#=§ = null;
         var _loc4_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < §,"k§.length)
         {
            _loc3_ = §,"k§[_loc2_] as §&#=§;
            if(_loc3_ != null && _loc3_ != this.§ $§)
            {
               if(_loc3_.health > 0 && this.§`Y§[_loc3_] == undefined)
               {
                  _loc4_ = this.§,#-§.getDamageMultiplier(_loc3_.§+"J§());
                  _loc3_.applyDamage(this.§75§ * _loc4_,param1,this.§ $§,true);
                  _loc3_.applyDamage(this.§75§ * _loc4_,param1,this.§ $§,true);
                  _loc3_.§3!t§().SetAwake(true);
                  this.§`Y§[_loc3_] = true;
               }
            }
            _loc2_++;
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         §3!t§().SetPositionAndAngle(new b2Vec2(this.§ $§.§'"8§(),this.§ $§.§;">§()),§3!t§().GetAngle() + this.§!+§ * param1 / this.§1#%§);
         this.§3"S§.scaleX = this.§2#7§ - Math.abs(this.§2"K§ / 2 - this.§!!9§) / (this.§2"K§ / 2) * (this.§2#7§ - this.§-"0§);
         this.§3"S§.scaleY = this.§3"S§.scaleX;
         sprite.x = §3!t§().GetPosition().x / §#_§.§8]§;
         sprite.y = §3!t§().GetPosition().y / §#_§.§8]§;
         sprite.rotation = §3!t§().GetAngle();
      }
   }
}
