package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§;!E§;
   import §#g§.§[!F§;
   import §1!2§.b2CircleShape;
   import §1!2§.b2PolygonShape;
   import §1!2§.b2Shape;
   import §7"A§.b2Transform;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §>r§.b2Collision;
   import §>r§.b2Manifold;
   import flash.utils.Dictionary;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §#2§ extends §03§
   {
      
      public static const §5!L§:String = "BLOCK_SENSOR_SWORD";
       
      
      private var §,"p§:§0N§;
      
      private var §<$§:Sprite;
      
      private var §3"T§:Number;
      
      private var §?"!§:Number;
      
      private var §!!,§:Number;
      
      private var §,'§:Number;
      
      private var §-G§:Number;
      
      private var §["v§:Number;
      
      private var §3!q§:Dictionary;
      
      protected var §6!@§:Number = 1.0;
      
      protected var §+"o§:DisplayObject;
      
      protected var §>x§:DisplayObject;
      
      protected var §!"R§:String;
      
      protected var § Y§:Number;
      
      protected var §^m§:Number;
      
      protected var §9"q§:Number;
      
      protected var §7!A§:Number;
      
      public function §#2§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§[!F§, param5:§9v§)
      {
         super(param1,param3,param4,param4.shape,param5);
         §3"s§().SetAngle(param5.angle);
         this.§3!q§ = new Dictionary();
         this.§!V§(param2);
         this.§3"T§ = this.§=k§.getNumberProperty("swordDuration") * 1000;
         this.§!!,§ = this.§=k§.getNumberProperty("swordAngleSpeed") / 1000;
         this.§,'§ = this.§=k§.getNumberProperty("swordMinScale");
         this.§-G§ = this.§=k§.getNumberProperty("swordMaxScale");
         this.§["v§ = this.§=k§.getNumberProperty("damage");
         this.§!"R§ = this.§=k§.getProperty("particlesTrail");
         this.§?"!§ = this.§3"T§;
         this.§ Y§ = param5.x;
         this.§^m§ = param5.y;
         this.§9"q§ = param5.angle;
         this.§7!A§ = this.§-G§ - Math.abs(this.§3"T§ / 2 - this.§?"!§) / (this.§3"T§ / 2) * (this.§-G§ - this.§,'§);
      }
      
      override public function dispose() : void
      {
         if(!§@f§)
         {
            super.dispose();
            this.§3!q§ = null;
            §@f§ = true;
         }
      }
      
      private function get §=k§() : §[!F§
      {
         return §[!F§(§+!j§);
      }
      
      public function init(param1:§0N§) : void
      {
         this.§,"p§ = param1;
      }
      
      private function §!V§(param1:§1!^§) : void
      {
         this.§<$§ = new Sprite();
         this.§>x§ = param1.getFrame(0,this.§>x§);
         this.§<$§.addChild(this.§>x§);
         sprite.addChild(this.§<$§);
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         if(this.§?"!§ <= 0)
         {
            param2.removeObject(this);
            §3J§(this.§,"p§).§,"U§();
            return;
         }
         this.§!§(param2);
         this.§9m§(param2);
         var _loc3_:Number = param1;
         if(param2)
         {
            this.§6!@§ = param2.timeSpeedMultiplier;
            _loc3_ /= this.§6!@§;
         }
         this.§?"!§ -= _loc3_;
      }
      
      public function §`"&§(param1:§'=§) : void
      {
         var _loc3_:§0N§ = null;
         var _loc4_:b2Shape = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Transform = null;
         var _loc7_:b2Transform = null;
         var _loc8_:b2Manifold = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_) as §0N§;
            if(_loc3_ && _loc3_.levelItem.getItemDensity() == 0)
            {
               _loc4_ = _loc3_.§3"s§().GetFixtureList().GetShape();
               _loc5_ = §3"s§().GetFixtureList().GetShape();
               _loc6_ = _loc3_.§3"s§().GetTransform();
               _loc7_ = §3"s§().GetTransform();
               _loc8_ = new b2Manifold();
               if(_loc5_ is b2PolygonShape && _loc4_ is b2CircleShape)
               {
                  b2Collision.§#+§(_loc8_,b2PolygonShape(_loc5_),_loc7_,b2CircleShape(_loc4_),_loc6_);
               }
               else if(_loc5_ is b2PolygonShape && _loc4_ is b2PolygonShape)
               {
                  b2Collision.§9#0§(_loc8_,b2PolygonShape(_loc5_),_loc7_,b2PolygonShape(_loc4_),_loc6_);
               }
               if(_loc8_.§="#§ > 0)
               {
                  § #1§.push(_loc3_);
               }
            }
            _loc2_++;
         }
      }
      
      private function §9m§(param1:§'=§) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc2_:Number = §3"s§().GetPosition().x;
         var _loc3_:Number = §3"s§().GetPosition().y;
         var _loc4_:Number = §3"s§().GetAngle();
         var _loc5_:Number = this.§-G§ - Math.abs(this.§3"T§ / 2 - this.§?"!§) / (this.§3"T§ / 2) * (this.§-G§ - this.§,'§);
         if(_loc4_ != this.§9"q§)
         {
            _loc6_ = 4;
            _loc7_ = 1;
            while(_loc7_ <= _loc6_)
            {
               _loc8_ = this.§ Y§ + (_loc2_ - this.§ Y§) / _loc6_ * _loc7_;
               _loc9_ = this.§^m§ + (_loc3_ - this.§^m§) / _loc6_ * _loc7_;
               _loc10_ = this.§9"q§ + (_loc4_ - this.§9"q§) / _loc6_ * _loc7_;
               _loc11_ = this.§7!A§ + (_loc5_ - this.§7!A§) / _loc6_ * _loc7_;
               param1.addObject(this.§!"R§,_loc8_,_loc9_,_loc10_,§9"f§.§["_§,false,false,false,_loc11_);
               _loc7_++;
            }
            this.§ Y§ = _loc2_;
            this.§^m§ = _loc3_;
            this.§9"q§ = _loc4_;
            this.§7!A§ = _loc5_;
         }
      }
      
      private function §!§(param1:§'=§) : void
      {
         var _loc3_:§0N§ = null;
         var _loc4_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < § #1§.length)
         {
            _loc3_ = § #1§[_loc2_] as §0N§;
            if(_loc3_ != null && _loc3_ != this.§,"p§)
            {
               if(_loc3_.health > 0 && this.§3!q§[_loc3_] == undefined)
               {
                  _loc4_ = this.§=k§.getDamageMultiplier(_loc3_.§8!Y§());
                  _loc3_.applyDamage(this.§["v§ * _loc4_,param1,this.§,"p§,true);
                  _loc3_.applyDamage(this.§["v§ * _loc4_,param1,this.§,"p§,true);
                  _loc3_.§3"s§().SetAwake(true);
                  this.§3!q§[_loc3_] = true;
               }
            }
            _loc2_++;
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         §3"s§().SetPositionAndAngle(new b2Vec2(this.§,"p§.§"!r§(),this.§,"p§.§8#1§()),§3"s§().GetAngle() + this.§!!,§ * param1 / this.§6!@§);
         this.§>x§.scaleX = this.§-G§ - Math.abs(this.§3"T§ / 2 - this.§?"!§) / (this.§3"T§ / 2) * (this.§-G§ - this.§,'§);
         this.§>x§.scaleY = this.§>x§.scaleX;
         sprite.x = §3"s§().GetPosition().x / §;!E§.§0"?§;
         sprite.y = §3"s§().GetPosition().y / §;!E§.§0"?§;
         sprite.rotation = §3"s§().GetAngle();
      }
   }
}
