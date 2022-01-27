package §[,§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.§9!c§;
   import §'!&§.Sprite;
   import §8o§.§!">§;
   import §;"=§.§+C§;
   import §;"=§.§9!B§;
   import §?!<§.§'!1§;
   import §?f§.b2CircleShape;
   
   public class §9!q§ extends §8!a§
   {
      
      public static const §2_§:String = "SENSOR_GRAVITATION";
      
      private static const §+f§:Number = 0.057;
       
      
      protected var §1!Q§:Number = 0.0;
      
      protected var §3!D§:Number = 0.0;
      
      protected var §7S§:Number = 0.0;
      
      protected var §>#§:Sprite;
      
      protected var §-"G§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §6!v§:Number = 0.0;
      
      protected var §0E§:Number;
      
      public function §9!q§(param1:Sprite, param2:b2World, param3:Number, param4:Number, param5:§+C§, param6:Number, param7:Number, param8:Number, param9:Number, param10:§!">§, param11:§!">§)
      {
         this.§0E§ = param6;
         super(param1,param2,param5,param5.shape,param3,param4);
         this.§>#§ = param1;
         this.§6!v§ = this.§0E§ * §+f§;
         if(param10)
         {
            this.§-"G§ = this.§22§(param10,this.§6!v§);
            this.§>#§.addChild(this.§-"G§);
         }
         if(param11)
         {
            this.mInnerSprite1 = this.§22§(param11,this.§6!v§);
            this.§>#§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§22§(param11,this.§6!v§ / 2);
            this.§>#§.addChild(this.mInnerSprite2);
         }
         this.§1!Q§ = param7;
         this.§3!D§ = param8;
         this.§7S§ = param9;
         this.§87§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§9!B§ = §00§.shape as §9!B§;
         if(_loc1_)
         {
            return this.§0E§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §22§(param1:§!">§, param2:Number) : Sprite
      {
         var _loc5_:§9!c§ = null;
         var _loc3_:Sprite = new Sprite();
         _loc3_.scaleX = param2;
         _loc3_.scaleY = param2;
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            (_loc5_ = new §9!c§(param1.texture)).pivotX = -param1.pivotX;
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
         if(this.§>#§)
         {
            this.§>#§.dispose();
            this.§>#§ = null;
         }
         this.§-"G§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §%!u§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = § <§().GetPosition().Copy();
         }
         else
         {
            param3.SetV(§ <§().GetPosition());
         }
         param3.§1!$§(param1);
         if(param3.§"!E§() > this.§0E§ + param2)
         {
            param3.x = 0;
            param3.y = 0;
            return param3;
         }
         var _loc5_:Number = param3.§"!E§();
         var _loc6_:Number = this.§3!D§ - _loc5_ / this.§0E§ * (this.§3!D§ - this.§1!Q§);
         if(param4 == 0)
         {
            param4 = this.§7S§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§4z§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         var _loc5_:§5,§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§87§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §0!-§.length)
         {
            if((_loc5_ = §0!-§[_loc4_] as §5,§) && _loc5_.applyGravity())
            {
               _loc6_ = 0;
               if(_loc5_.levelItem.shape is b2CircleShape)
               {
                  _loc6_ = b2CircleShape(_loc5_.levelItem.shape).§=a§();
               }
               else
               {
                  _loc6_ = Math.max(_loc5_.levelItem.shape.getWidth(),_loc5_.levelItem.shape.getHeight());
               }
               _loc3_ = this.§%!u§(_loc5_.§ <§().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(this.§7S§));
               if(_loc3_.x != 0 || _loc3_.x != 0)
               {
                  _loc7_ = _loc5_.§ <§().GetMass();
                  _loc3_.§4z§(_loc7_);
                  _loc5_.§ <§().ApplyForce(_loc3_,_loc5_.§ <§().GetPosition());
               }
            }
            _loc4_++;
         }
      }
      
      private function §-!J§(param1:Sprite) : void
      {
         param1.scaleX -= §+f§ / 6;
         param1.scaleY -= §+f§ / 6;
         if(param1.scaleX / §+f§ < 5)
         {
            param1.scaleX = this.§6!v§;
            param1.scaleY = this.§6!v§;
         }
      }
      
      protected function §87§() : void
      {
         var _loc1_:Number = § <§().GetPosition().x;
         var _loc2_:Number = § <§().GetPosition().y;
         this.§>#§.x = _loc1_ / §'!1§.§<!@§;
         this.§>#§.y = _loc2_ / §'!1§.§<!@§;
         if(this.mInnerSprite1)
         {
            this.§-!J§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§-!J§(this.mInnerSprite2);
         }
      }
   }
}
