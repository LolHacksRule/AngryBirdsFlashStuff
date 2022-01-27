package §6"R§
{
   import §1"s§.§-i§;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§]!h§;
   import §4"F§.§^d§;
   import §5!q§.§3"X§;
   import §>P§.§3t§;
   import §>P§.§=4§;
   import §[!L§.b2CircleShape;
   import §^>§.b2Vec2;
   
   public class §?!T§ extends §-t§
   {
      
      public static const §^!3§:String = "SENSOR_GRAVITATION";
      
      private static const §?t§:Number = 0.057;
       
      
      protected var §@!c§:Number = 0.0;
      
      protected var §?"P§:Number = 0.0;
      
      protected var § "6§:Sprite;
      
      protected var §0#$§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §0W§:Number = 0.0;
      
      protected var §8d§:Number;
      
      public function §?!T§(param1:Sprite, param2:b2World, param3:§^d§, param4:§=4§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§]!h§, param10:§]!h§)
      {
         this.§8d§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§ "6§ = param1;
         this.§0W§ = this.§8d§ * §?t§;
         if(param9)
         {
            this.§0#$§ = this.§]!B§(param9,this.§0W§);
            this.§ "6§.addChild(this.§0#$§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§]!B§(param10,this.§0W§);
            this.§ "6§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§]!B§(param10,this.§0W§ / 2);
            this.§ "6§.addChild(this.mInnerSprite2);
         }
         this.§@!c§ = param6;
         this.§?"P§ = param7;
         §[!w§ = param8;
         this.§ case§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§3t§ = §-!f§.shape as §3t§;
         if(_loc1_)
         {
            return this.§8d§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §]!B§(param1:§]!h§, param2:Number) : Sprite
      {
         var _loc5_:§-i§ = null;
         var _loc3_:Sprite = new Sprite();
         _loc3_.scaleX = param2;
         _loc3_.scaleY = param2;
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            (_loc5_ = new §-i§(param1.texture)).pivotX = -param1.pivotX;
            _loc5_.pivotY = -param1.pivotY;
            _loc5_.rotation = 45 * _loc4_ / 180 * Math.PI;
            _loc3_.addChild(_loc5_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      override public function collidedWith(param1:§!z§) : void
      {
         super.collidedWith(param1);
         if(param1.§+s§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            param1.§+s§ = GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§ "6§)
         {
            this.§ "6§.dispose();
            this.§ "6§ = null;
         }
         this.§0#$§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §,X§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = §?"Z§().GetPosition().Copy();
         }
         else
         {
            param3.SetV(§?"Z§().GetPosition());
         }
         param3.§#A§(param1);
         if(param3.Length() > this.§8d§ + param2)
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
         var _loc6_:Number = this.§?"P§ - _loc5_ / this.§8d§ * (this.§?"P§ - this.§@!c§);
         if(param4 == 0)
         {
            param4 = §[!w§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§ !I§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         var _loc5_:§!z§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§ case§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §0!0§.length)
         {
            if(!(!(_loc5_ = §0!0§[_loc4_]) || !_loc5_.§?"Z§() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§+s§ != -1 && !(_loc5_.§+s§ & this.§?Z§) && _loc5_.§+s§ != GravityFilterCategory.LEIA_FORCE_OBJECT))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§#"=§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§,X§(_loc5_.§?"Z§().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§[!w§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.§?"Z§().GetMass();
                     _loc3_.§ !I§(_loc7_);
                     _loc5_.§?"Z§().§>!i§(_loc3_,_loc5_.§?"Z§().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function §#g§(param1:Sprite) : void
      {
         param1.scaleX -= §?t§ / 6;
         param1.scaleY -= §?t§ / 6;
         if(param1.scaleX / §?t§ < 5)
         {
            param1.scaleX = this.§0W§;
            param1.scaleY = this.§0W§;
         }
      }
      
      protected function § case§() : void
      {
         var _loc1_:Number = §?"Z§().GetPosition().x;
         var _loc2_:Number = §?"Z§().GetPosition().y;
         this.§ "6§.x = _loc1_ / §3"X§.§;"l§;
         this.§ "6§.y = _loc2_ / §3"X§.§;"l§;
         if(this.mInnerSprite1)
         {
            this.§#g§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§#g§(this.mInnerSprite2);
         }
      }
      
      public function get §?Z§() : int
      {
         return GravityFilterCategory.FORCE_OBJECT;
      }
   }
}
