package §5"D§
{
   import §"!w§.b2CircleShape;
   import §3R§.§1!R§;
   import §4"@§.§?!0§;
   import §4"@§.Sprite;
   import §6!M§.§%h§;
   import §6!M§.§3!@§;
   import §;`§.b2World;
   import §[!f§.b2Vec2;
   import §^e§.§7!R§;
   
   public class §7P§ extends §<!&§
   {
      
      public static const §8p§:String = "SENSOR_GRAVITATION";
      
      private static const §6G§:Number = 0.057;
       
      
      protected var §#"8§:Number = 0.0;
      
      protected var §9!!§:Number = 0.0;
      
      protected var §5v§:Number = 0.0;
      
      protected var §9A§:Sprite;
      
      protected var §5!F§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §9"3§:Number = 0.0;
      
      protected var §1o§:Number;
      
      public function §7P§(param1:Sprite, param2:b2World, param3:Number, param4:Number, param5:§%h§, param6:Number, param7:Number, param8:Number, param9:Number, param10:§7!R§, param11:§7!R§)
      {
         this.§1o§ = param6;
         super(param1,param2,param5,param5.shape,param3,param4);
         this.§9A§ = param1;
         this.§9"3§ = this.§1o§ * §6G§;
         if(param10)
         {
            this.§5!F§ = this.§@!v§(param10,this.§9"3§);
            this.§9A§.addChild(this.§5!F§);
         }
         if(param11)
         {
            this.mInnerSprite1 = this.§@!v§(param11,this.§9"3§);
            this.§9A§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§@!v§(param11,this.§9"3§ / 2);
            this.§9A§.addChild(this.mInnerSprite2);
         }
         this.§#"8§ = param7;
         this.§9!!§ = param8;
         this.§5v§ = param9;
         this.§-"#§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§3!@§ = §!!9§.shape as §3!@§;
         if(_loc1_)
         {
            return this.§1o§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §@!v§(param1:§7!R§, param2:Number) : Sprite
      {
         var _loc5_:§?!0§ = null;
         var _loc3_:Sprite = new Sprite();
         _loc3_.scaleX = param2;
         _loc3_.scaleY = param2;
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            (_loc5_ = new §?!0§(param1.texture)).pivotX = -param1.pivotX;
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
         if(this.§9A§)
         {
            this.§9A§.dispose();
            this.§9A§ = null;
         }
         this.§5!F§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §do§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = §9B§().GetPosition().Copy();
         }
         else
         {
            param3.SetV(§9B§().GetPosition());
         }
         param3.§[!7§(param1);
         if(param3.§@"9§() > this.§1o§ + param2)
         {
            param3.x = 0;
            param3.y = 0;
            return param3;
         }
         var _loc5_:Number = param3.§@"9§();
         var _loc6_:Number = this.§9!!§ - _loc5_ / this.§1o§ * (this.§9!!§ - this.§#"8§);
         if(param4 == 0)
         {
            param4 = this.§5v§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§7!J§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         var _loc5_:§6!!§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§-"#§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §>k§.length)
         {
            if((_loc5_ = §>k§[_loc4_] as §6!!§) && _loc5_.applyGravity())
            {
               _loc6_ = 0;
               if(_loc5_.levelItem.shape is b2CircleShape)
               {
                  _loc6_ = b2CircleShape(_loc5_.levelItem.shape).§5Y§();
               }
               else
               {
                  _loc6_ = Math.max(_loc5_.levelItem.shape.getWidth(),_loc5_.levelItem.shape.getHeight());
               }
               _loc3_ = this.§do§(_loc5_.§9B§().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(this.§5v§));
               if(_loc3_.x != 0 || _loc3_.y != 0)
               {
                  _loc7_ = _loc5_.§9B§().GetMass();
                  _loc3_.§7!J§(_loc7_);
                  _loc5_.§9B§().ApplyForce(_loc3_,_loc5_.§9B§().GetPosition());
               }
            }
            _loc4_++;
         }
      }
      
      private function §2"B§(param1:Sprite) : void
      {
         param1.scaleX -= §6G§ / 6;
         param1.scaleY -= §6G§ / 6;
         if(param1.scaleX / §6G§ < 5)
         {
            param1.scaleX = this.§9"3§;
            param1.scaleY = this.§9"3§;
         }
      }
      
      protected function §-"#§() : void
      {
         var _loc1_:Number = §9B§().GetPosition().x;
         var _loc2_:Number = §9B§().GetPosition().y;
         this.§9A§.x = _loc1_ / §1!R§.§00§;
         this.§9A§.y = _loc2_ / §1!R§.§00§;
         if(this.mInnerSprite1)
         {
            this.§2"B§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§2"B§(this.mInnerSprite2);
         }
      }
   }
}
