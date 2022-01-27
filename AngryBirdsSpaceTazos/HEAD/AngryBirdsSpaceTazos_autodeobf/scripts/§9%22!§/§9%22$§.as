package §9"!§
{
   import §&!]§.§#[§;
   import §&!]§.Sprite;
   import §3"#§.§`"8§;
   import §3>§.§,!^§;
   import §3>§.§3n§;
   import §4!W§.b2CircleShape;
   import §6!n§.b2Vec2;
   import §9!K§.b2World;
   import §9!v§.§"[§;
   
   public class §9"$§ extends §]#§
   {
      
      public static const §#!"§:String = "SENSOR_GRAVITATION";
      
      private static const §;!r§:Number = 0.057;
       
      
      protected var §5=§:Number = 0.0;
      
      protected var §^c§:Number = 0.0;
      
      protected var §<!i§:Number = 0.0;
      
      protected var §5"'§:Sprite;
      
      protected var §[!N§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §39§:Number = 0.0;
      
      protected var §="0§:Number;
      
      public function §9"$§(param1:Sprite, param2:b2World, param3:Number, param4:Number, param5:§3n§, param6:Number, param7:Number, param8:Number, param9:Number, param10:§"[§, param11:§"[§)
      {
         this.§="0§ = param6;
         super(param1,param2,param5,param5.shape,param3,param4);
         this.§5"'§ = param1;
         this.§39§ = this.§="0§ * §;!r§;
         if(param10)
         {
            this.§[!N§ = this.§!!a§(param10,this.§39§);
            this.§5"'§.addChild(this.§[!N§);
         }
         if(param11)
         {
            this.mInnerSprite1 = this.§!!a§(param11,this.§39§);
            this.§5"'§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§!!a§(param11,this.§39§ / 2);
            this.§5"'§.addChild(this.mInnerSprite2);
         }
         this.§5=§ = param7;
         this.§^c§ = param8;
         this.§<!i§ = param9;
         this.§^"D§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§,!^§ = § N§.shape as §,!^§;
         if(_loc1_)
         {
            return this.§="0§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §!!a§(param1:§"[§, param2:Number) : Sprite
      {
         var _loc5_:§#[§ = null;
         var _loc3_:Sprite = new Sprite();
         _loc3_.scaleX = param2;
         _loc3_.scaleY = param2;
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            (_loc5_ = new §#[§(param1.texture)).pivotX = -param1.pivotX;
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
         if(this.§5"'§)
         {
            this.§5"'§.dispose();
            this.§5"'§ = null;
         }
         this.§[!N§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §2!r§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = §`I§().GetPosition().Copy();
         }
         else
         {
            param3.SetV(§`I§().GetPosition());
         }
         param3.§`p§(param1);
         if(param3.§4"3§() > this.§="0§ + param2)
         {
            param3.x = 0;
            param3.y = 0;
            return param3;
         }
         var _loc5_:Number = param3.§4"3§();
         var _loc6_:Number = this.§^c§ - _loc5_ / this.§="0§ * (this.§^c§ - this.§5=§);
         if(param4 == 0)
         {
            param4 = this.§<!i§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§#!;§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         var _loc5_:§^"3§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§^"D§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §3!8§.length)
         {
            if((_loc5_ = §3!8§[_loc4_] as §^"3§) && _loc5_.applyGravity())
            {
               _loc6_ = 0;
               if(_loc5_.levelItem.shape is b2CircleShape)
               {
                  _loc6_ = b2CircleShape(_loc5_.levelItem.shape).§>!`§();
               }
               else
               {
                  _loc6_ = Math.max(_loc5_.levelItem.shape.getWidth(),_loc5_.levelItem.shape.getHeight());
               }
               _loc3_ = this.§2!r§(_loc5_.§`I§().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(this.§<!i§));
               if(_loc3_.x != 0 || _loc3_.y != 0)
               {
                  _loc7_ = _loc5_.§`I§().GetMass();
                  _loc3_.§#!;§(_loc7_);
                  _loc5_.§`I§().ApplyForce(_loc3_,_loc5_.§`I§().GetPosition());
               }
            }
            _loc4_++;
         }
      }
      
      private function §3!5§(param1:Sprite) : void
      {
         param1.scaleX -= §;!r§ / 6;
         param1.scaleY -= §;!r§ / 6;
         if(param1.scaleX / §;!r§ < 5)
         {
            param1.scaleX = this.§39§;
            param1.scaleY = this.§39§;
         }
      }
      
      protected function §^"D§() : void
      {
         var _loc1_:Number = §`I§().GetPosition().x;
         var _loc2_:Number = §`I§().GetPosition().y;
         this.§5"'§.x = _loc1_ / §`"8§.§3!=§;
         this.§5"'§.y = _loc2_ / §`"8§.§3!=§;
         if(this.mInnerSprite1)
         {
            this.§3!5§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§3!5§(this.mInnerSprite2);
         }
      }
   }
}
