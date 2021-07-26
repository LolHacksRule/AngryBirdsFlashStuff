package §8§#8
{
   import § "%§.b2Vec2;
   import §"#i§.b2CircleShape;
   import §4"O§.b2World;
   import §8"L§.§5$=§;
   import §8"L§.§8g§;
   import §>M§.§["z§;
   import §@0§.§%!q§;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`"8§.§`"X§;
   
   public class §&$B§ extends §7!0§
   {
      
      public static const §1C§:String = "SENSOR_GRAVITATION";
      
      private static const §`o§:Number = 0.057;
       
      
      protected var §'"_§:Number = 0.0;
      
      protected var §0!]§:Number = 0.0;
      
      protected var §4"D§:Sprite;
      
      protected var §6#Q§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §5!a§:Number = 0.0;
      
      protected var §4#&§:Number;
      
      public function §&$B§(param1:Sprite, param2:b2World, param3:§["z§, param4:§5$=§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§`"X§, param10:§`"X§)
      {
         this.§4#&§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§4"D§ = param1;
         this.§5!a§ = this.§4#&§ * §`o§;
         if(param9)
         {
            this.§6#Q§ = this.§6v§(param9,this.§5!a§);
            this.§4"D§.addChild(this.§6#Q§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§6v§(param10,this.§5!a§);
            this.§4"D§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§6v§(param10,this.§5!a§ / 2);
            this.§4"D§.addChild(this.mInnerSprite2);
         }
         this.§'"_§ = param6;
         this.§0!]§ = param7;
         §@"9§ = param8;
         this.§2!a§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§8g§ = §'!i§.shape as §8g§;
         if(_loc1_)
         {
            return this.§4#&§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §6v§(param1:§`"X§, param2:Number) : Sprite
      {
         var _loc5_:Image = null;
         var _loc3_:Sprite = new Sprite();
         _loc3_.scaleX = param2;
         _loc3_.scaleY = param2;
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            (_loc5_ = new Image(param1.texture)).pivotX = -param1.pivotX;
            _loc5_.pivotY = -param1.pivotY;
            _loc5_.rotation = 45 * _loc4_ / 180 * Math.PI;
            _loc3_.addChild(_loc5_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      override public function collidedWith(param1:§,#5§) : void
      {
         super.collidedWith(param1);
         if(param1.§>"H§ == §3"8§.§%#I§)
         {
            param1.§>"H§ = §3"8§.§8";§;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§4"D§)
         {
            this.§4"D§.dispose();
            this.§4"D§ = null;
         }
         this.§6#Q§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §=!9§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = getBody().GetPosition().Copy();
         }
         else
         {
            param3.SetV(getBody().GetPosition());
         }
         param3.§9!s§(param1);
         if(param3.Length() > this.§4#&§ + param2)
         {
            param3.x = 0;
            param3.y = 0;
            return param3;
         }
         var _loc5_:Number;
         if((_loc5_ = param3.Length()) == 0)
         {
            return new b2Vec2(0,0);
         }
         var _loc6_:Number = this.§0!]§ - _loc5_ / this.§4#&§ * (this.§0!]§ - this.§'"_§);
         if(param4 == 0)
         {
            param4 = §@"9§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§8!O§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         var _loc5_:§,#5§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§2!a§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §0!=§.length)
         {
            if(!(!(_loc5_ = §0!=§[_loc4_]) || !_loc5_.getBody() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§>"H§ != -1 && !(_loc5_.§>"H§ & this.§[7§) && _loc5_.§>"H§ != §3"8§.§%#I§))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§'#!§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§=!9§(_loc5_.getBody().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§@"9§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.getBody().GetMass();
                     _loc3_.§8!O§(_loc7_);
                     _loc5_.getBody().ApplyForce(_loc3_,_loc5_.getBody().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function §5"p§(param1:Sprite) : void
      {
         param1.scaleX -= §`o§ / 6;
         param1.scaleY -= §`o§ / 6;
         if(param1.scaleX / §`o§ < 5)
         {
            param1.scaleX = this.§5!a§;
            param1.scaleY = this.§5!a§;
         }
      }
      
      protected function §2!a§() : void
      {
         var _loc1_:Number = getBody().GetPosition().x;
         var _loc2_:Number = getBody().GetPosition().y;
         this.§4"D§.x = _loc1_ / §%!q§.§6q§;
         this.§4"D§.y = _loc2_ / §%!q§.§6q§;
         if(this.mInnerSprite1)
         {
            this.§5"p§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§5"p§(this.mInnerSprite2);
         }
      }
      
      public function get §[7§() : int
      {
         return §3"8§.§-!<§;
      }
   }
}
