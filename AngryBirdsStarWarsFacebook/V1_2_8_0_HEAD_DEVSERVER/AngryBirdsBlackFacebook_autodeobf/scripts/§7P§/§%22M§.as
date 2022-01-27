package §7P§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§?#Q§;
   import §2"Y§.§["$§;
   import §4!$§.b2CircleShape;
   import §7!F§.§8!W§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   
   public class §"M§ extends §1#E§
   {
      
      public static const §+"§:String = "SENSOR_GRAVITATION";
      
      private static const §7!s§:Number = 0.057;
       
      
      protected var §%#,§:Number = 0.0;
      
      protected var §1#C§:Number = 0.0;
      
      protected var §%G§:Sprite;
      
      protected var §9#a§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §?3§:Number = 0.0;
      
      protected var §0#J§:Number;
      
      public function §"M§(param1:Sprite, param2:b2World, param3:§94§, param4:§["$§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§8!W§, param10:§8!W§)
      {
         this.§0#J§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§%G§ = param1;
         this.§?3§ = this.§0#J§ * §7!s§;
         if(param9)
         {
            this.§9#a§ = this.§=x§(param9,this.§?3§);
            this.§%G§.addChild(this.§9#a§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§=x§(param10,this.§?3§);
            this.§%G§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§=x§(param10,this.§?3§ / 2);
            this.§%G§.addChild(this.mInnerSprite2);
         }
         this.§%#,§ = param6;
         this.§1#C§ = param7;
         §`!u§ = param8;
         this.§"r§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§?#Q§ = §;B§.shape as §?#Q§;
         if(_loc1_)
         {
            return this.§0#J§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §=x§(param1:§8!W§, param2:Number) : Sprite
      {
         var _loc5_:§#"t§ = null;
         var _loc3_:Sprite = new Sprite();
         _loc3_.scaleX = param2;
         _loc3_.scaleY = param2;
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            (_loc5_ = new §#"t§(param1.texture)).pivotX = -param1.pivotX;
            _loc5_.pivotY = -param1.pivotY;
            _loc5_.rotation = 45 * _loc4_ / 180 * Math.PI;
            _loc3_.addChild(_loc5_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         super.collidedWith(param1);
         if(param1.§=G§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            param1.§=G§ = GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§%G§)
         {
            this.§%G§.dispose();
            this.§%G§ = null;
         }
         this.§9#a§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §2E§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = §3!t§().GetPosition().Copy();
         }
         else
         {
            param3.SetV(§3!t§().GetPosition());
         }
         param3.§-p§(param1);
         if(param3.Length() > this.§0#J§ + param2)
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
         var _loc6_:Number = this.§1#C§ - _loc5_ / this.§0#J§ * (this.§1#C§ - this.§%#,§);
         if(param4 == 0)
         {
            param4 = §`!u§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§?1§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc5_:§7B§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§"r§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §,"k§.length)
         {
            if(!(!(_loc5_ = §,"k§[_loc4_]) || !_loc5_.§3!t§() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§=G§ != -1 && !(_loc5_.§=G§ & this.§'"I§) && _loc5_.§=G§ != GravityFilterCategory.LEIA_FORCE_OBJECT))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§[p§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§2E§(_loc5_.§3!t§().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§`!u§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.§3!t§().GetMass();
                     _loc3_.§?1§(_loc7_);
                     _loc5_.§3!t§().§^2§(_loc3_,_loc5_.§3!t§().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function §,#S§(param1:Sprite) : void
      {
         param1.scaleX -= §7!s§ / 6;
         param1.scaleY -= §7!s§ / 6;
         if(param1.scaleX / §7!s§ < 5)
         {
            param1.scaleX = this.§?3§;
            param1.scaleY = this.§?3§;
         }
      }
      
      protected function §"r§() : void
      {
         var _loc1_:Number = §3!t§().GetPosition().x;
         var _loc2_:Number = §3!t§().GetPosition().y;
         this.§%G§.x = _loc1_ / §#_§.§8]§;
         this.§%G§.y = _loc2_ / §#_§.§8]§;
         if(this.mInnerSprite1)
         {
            this.§,#S§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§,#S§(this.mInnerSprite2);
         }
      }
      
      public function get §'"I§() : int
      {
         return GravityFilterCategory.FORCE_OBJECT;
      }
   }
}
