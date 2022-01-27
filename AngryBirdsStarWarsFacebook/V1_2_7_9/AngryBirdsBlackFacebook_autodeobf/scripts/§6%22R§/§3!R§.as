package §6"R§
{
   import §%!#§.b2Collision;
   import §%!#§.b2Manifold;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§3"X§;
   import §>P§.§=4§;
   import §[!L§.b2CircleShape;
   import §[!L§.b2PolygonShape;
   import §[!L§.b2Shape;
   import §^>§.b2Transform;
   import §^>§.b2Vec2;
   import flash.utils.Dictionary;
   
   public class §3!R§ extends §-t§
   {
      
      public static const §^!3§:String = "BLOCK_SENSOR_SWORD";
       
      
      private var §9"8§:§4!w§;
      
      private var §]!j§:Sprite;
      
      private var §7S§:Number;
      
      private var §!!#§:Number;
      
      private var §+"b§:Number;
      
      private var §]!f§:Number;
      
      private var §1b§:Number;
      
      private var §&"h§:Number;
      
      private var §8>§:Dictionary;
      
      protected var §2!e§:Number = 1.0;
      
      protected var §="r§:DisplayObject;
      
      protected var § "D§:DisplayObject;
      
      protected var §;!B§:String;
      
      protected var §'f§:Number;
      
      protected var §#K§:Number;
      
      protected var §=!1§:Number;
      
      protected var §0=§:Number;
      
      public function §3!R§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=4§, param5:§^d§)
      {
         super(param1,param3,param4,param4.shape,param5);
         §?"Z§().SetAngle(param5.angle);
         this.§8>§ = new Dictionary();
         this.§ !2§(param2);
         this.§7S§ = this.§;=§.getNumberProperty("swordDuration") * 1000;
         this.§+"b§ = this.§;=§.getNumberProperty("swordAngleSpeed") / 1000;
         this.§]!f§ = this.§;=§.getNumberProperty("swordMinScale");
         this.§1b§ = this.§;=§.getNumberProperty("swordMaxScale");
         this.§&"h§ = this.§;=§.getNumberProperty("damage");
         this.§;!B§ = this.§;=§.getProperty("particlesTrail");
         this.§!!#§ = this.§7S§;
         this.§'f§ = param5.x;
         this.§#K§ = param5.y;
         this.§=!1§ = param5.angle;
         this.§0=§ = this.§1b§ - Math.abs(this.§7S§ / 2 - this.§!!#§) / (this.§7S§ / 2) * (this.§1b§ - this.§]!f§);
      }
      
      override public function dispose() : void
      {
         if(!§&"W§)
         {
            super.dispose();
            this.§8>§ = null;
            §&"W§ = true;
         }
      }
      
      private function get §;=§() : §=4§
      {
         return §=4§(§-!f§);
      }
      
      public function init(param1:§4!w§) : void
      {
         this.§9"8§ = param1;
      }
      
      private function § !2§(param1:§[a§) : void
      {
         this.§]!j§ = new Sprite();
         this.§ "D§ = param1.getFrame(0,this.§ "D§);
         this.§]!j§.addChild(this.§ "D§);
         sprite.addChild(this.§]!j§);
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         if(this.§!!#§ <= 0)
         {
            param2.removeObject(this);
            §7h§(this.§9"8§).§ "l§();
            return;
         }
         this.§`2§(param2);
         this.§%"9§(param2);
         var _loc3_:Number = param1;
         if(param2)
         {
            this.§2!e§ = param2.timeSpeedMultiplier;
            _loc3_ /= this.§2!e§;
         }
         this.§!!#§ -= _loc3_;
      }
      
      public function §5!H§(param1:§""M§) : void
      {
         var _loc3_:§4!w§ = null;
         var _loc4_:b2Shape = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Transform = null;
         var _loc7_:b2Transform = null;
         var _loc8_:b2Manifold = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_) as §4!w§;
            if(_loc3_ && _loc3_.levelItem.getItemDensity() == 0)
            {
               _loc4_ = _loc3_.§?"Z§().GetFixtureList().GetShape();
               _loc5_ = §?"Z§().GetFixtureList().GetShape();
               _loc6_ = _loc3_.§?"Z§().GetTransform();
               _loc7_ = §?"Z§().GetTransform();
               _loc8_ = new b2Manifold();
               if(_loc5_ is b2PolygonShape && _loc4_ is b2CircleShape)
               {
                  b2Collision.§-!i§(_loc8_,b2PolygonShape(_loc5_),_loc7_,b2CircleShape(_loc4_),_loc6_);
               }
               else if(_loc5_ is b2PolygonShape && _loc4_ is b2PolygonShape)
               {
                  b2Collision.§^"K§(_loc8_,b2PolygonShape(_loc5_),_loc7_,b2PolygonShape(_loc4_),_loc6_);
               }
               if(_loc8_.§+"`§ > 0)
               {
                  §0!0§.push(_loc3_);
               }
            }
            _loc2_++;
         }
      }
      
      private function §%"9§(param1:§""M§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc2_:Number = §?"Z§().GetPosition().x;
         var _loc3_:Number = §?"Z§().GetPosition().y;
         var _loc4_:Number = §?"Z§().GetAngle();
         var _loc5_:Number = this.§1b§ - Math.abs(this.§7S§ / 2 - this.§!!#§) / (this.§7S§ / 2) * (this.§1b§ - this.§]!f§);
         if(_loc4_ != this.§=!1§)
         {
            _loc6_ = 4;
            _loc7_ = 1;
            while(_loc7_ <= _loc6_)
            {
               _loc8_ = this.§'f§ + (_loc2_ - this.§'f§) / _loc6_ * _loc7_;
               _loc9_ = this.§#K§ + (_loc3_ - this.§#K§) / _loc6_ * _loc7_;
               _loc10_ = this.§=!1§ + (_loc4_ - this.§=!1§) / _loc6_ * _loc7_;
               _loc11_ = this.§0=§ + (_loc5_ - this.§0=§) / _loc6_ * _loc7_;
               param1.addObject(this.§;!B§,_loc8_,_loc9_,_loc10_,§super§.§4"D§,false,false,false,_loc11_);
               _loc7_++;
            }
            this.§'f§ = _loc2_;
            this.§#K§ = _loc3_;
            this.§=!1§ = _loc4_;
            this.§0=§ = _loc5_;
         }
      }
      
      private function §`2§(param1:§""M§) : void
      {
         var _loc3_:§4!w§ = null;
         var _loc4_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < §0!0§.length)
         {
            _loc3_ = §0!0§[_loc2_] as §4!w§;
            if(_loc3_ != null && _loc3_ != this.§9"8§)
            {
               if(_loc3_.health > 0 && this.§8>§[_loc3_] == undefined)
               {
                  _loc4_ = this.§;=§.getDamageMultiplier(_loc3_.§,T§());
                  _loc3_.applyDamage(this.§&"h§ * _loc4_,param1,this.§9"8§,true);
                  _loc3_.applyDamage(this.§&"h§ * _loc4_,param1,this.§9"8§,true);
                  _loc3_.§?"Z§().SetAwake(true);
                  this.§8>§[_loc3_] = true;
               }
            }
            _loc2_++;
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         §?"Z§().SetPositionAndAngle(new b2Vec2(this.§9"8§.§#"v§(),this.§9"8§.§2!;§()),§?"Z§().GetAngle() + this.§+"b§ * param1 / this.§2!e§);
         this.§ "D§.scaleX = this.§1b§ - Math.abs(this.§7S§ / 2 - this.§!!#§) / (this.§7S§ / 2) * (this.§1b§ - this.§]!f§);
         this.§ "D§.scaleY = this.§ "D§.scaleX;
         sprite.x = §?"Z§().GetPosition().x / §3"X§.§;"l§;
         sprite.y = §?"Z§().GetPosition().y / §3"X§.§;"l§;
         sprite.rotation = §?"Z§().GetAngle();
      }
   }
}
