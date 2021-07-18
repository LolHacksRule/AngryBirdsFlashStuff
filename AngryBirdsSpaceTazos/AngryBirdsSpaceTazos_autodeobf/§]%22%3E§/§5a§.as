package §]">§
{
   import §"!&§.§="A§;
   import §"!&§.§`D§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §,Z§.b2CircleShape;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §9t§.b2Vec2;
   
   public class §5a§ extends §3=§
   {
      
      public static const §!!p§:String = "SENSOR_GRAVITATION";
      
      private static const §6!$§:Number = 0.057;
       
      
      protected var § !=§:Number = 0.0;
      
      protected var §0b§:Number = 0.0;
      
      protected var §5!d§:Number = 0.0;
      
      protected var §]!$§:Sprite;
      
      protected var §1!#§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §8!>§:Number = 0.0;
      
      protected var §?!1§:Number;
      
      public function §5a§(param1:Sprite, param2:b2World, param3:Number, param4:Number, param5:§`D§, param6:Number, param7:Number, param8:Number, param9:Number, param10:§'!"§, param11:§'!"§)
      {
         this.§?!1§ = param6;
         super(param1,param2,param5,param5.shape,param3,param4);
         this.§]!$§ = param1;
         this.§8!>§ = this.§?!1§ * §6!$§;
         if(param10)
         {
            this.§1!#§ = this.§7!C§(param10,this.§8!>§);
            this.§]!$§.addChild(this.§1!#§);
         }
         if(param11)
         {
            this.mInnerSprite1 = this.§7!C§(param11,this.§8!>§);
            this.§]!$§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§7!C§(param11,this.§8!>§ / 2);
            this.§]!$§.addChild(this.mInnerSprite2);
         }
         this.§ !=§ = param7;
         this.§0b§ = param8;
         this.§5!d§ = param9;
         this.§"!@§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§="A§ = §7!h§.shape as §="A§;
         if(_loc1_)
         {
            return this.§?!1§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §7!C§(param1:§'!"§, param2:Number) : Sprite
      {
         var _loc5_:§`y§ = null;
         var _loc3_:Sprite = new Sprite();
         _loc3_.scaleX = param2;
         _loc3_.scaleY = param2;
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            (_loc5_ = new §`y§(param1.texture)).pivotX = -param1.pivotX;
            _loc5_.pivotY = -param1.pivotY;
            _loc5_.rotation = 45 * _loc4_ / 180 * Math.PI;
            _loc3_.addChild(_loc5_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
            this.§]!$§ = null;
         }
         this.§1!#§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §?!N§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = §^!z§().GetPosition().Copy();
         }
         else
         {
            param3.SetV(§^!z§().GetPosition());
         }
         param3.§0"-§(param1);
         if(param3.§2+§() > this.§?!1§ + param2)
         {
            param3.x = 0;
            param3.y = 0;
            return param3;
         }
         var _loc5_:Number = param3.§2+§();
         var _loc6_:Number = this.§0b§ - _loc5_ / this.§?!1§ * (this.§0b§ - this.§ !=§);
         if(param4 == 0)
         {
            param4 = this.§5!d§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§-!&§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc5_:§1!0§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§"!@§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §>0§.length)
         {
            if((_loc5_ = §>0§[_loc4_] as §1!0§) && _loc5_.applyGravity())
            {
               _loc6_ = 0;
               if(_loc5_.levelItem.shape is b2CircleShape)
               {
                  _loc6_ = b2CircleShape(_loc5_.levelItem.shape).§<!$§();
               }
               else
               {
                  _loc6_ = Math.max(_loc5_.levelItem.shape.getWidth(),_loc5_.levelItem.shape.getHeight());
               }
               _loc3_ = this.§?!N§(_loc5_.§^!z§().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(this.§5!d§));
               if(_loc3_.x != 0 || _loc3_.x != 0)
               {
                  _loc7_ = _loc5_.§^!z§().GetMass();
                  _loc3_.§-!&§(_loc7_);
                  _loc5_.§^!z§().ApplyForce(_loc3_,_loc5_.§^!z§().GetPosition());
               }
            }
            _loc4_++;
         }
      }
      
      private function §5!s§(param1:Sprite) : void
      {
         param1.scaleX -= §6!$§ / 6;
         param1.scaleY -= §6!$§ / 6;
         if(param1.scaleX / §6!$§ < 5)
         {
            param1.scaleX = this.§8!>§;
            param1.scaleY = this.§8!>§;
         }
      }
      
      protected function §"!@§() : void
      {
         var _loc1_:Number = §^!z§().GetPosition().x;
         var _loc2_:Number = §^!z§().GetPosition().y;
         this.§]!$§.x = _loc1_ / §^g§.§5!-§;
         this.§]!$§.y = _loc2_ / §^g§.§5!-§;
         if(this.mInnerSprite1)
         {
            this.§5!s§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§5!s§(this.mInnerSprite2);
         }
      }
   }
}
