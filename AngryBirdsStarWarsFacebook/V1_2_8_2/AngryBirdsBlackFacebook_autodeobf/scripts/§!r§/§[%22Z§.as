package §!r§
{
   import §!!k§.§'!j§;
   import §"§.§;!E§;
   import §#g§.§<b§;
   import §#g§.§[!F§;
   import §1!2§.b2CircleShape;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.§,!u§;
   import §use§.Sprite;
   
   public class §["Z§ extends §03§
   {
      
      public static const §5!L§:String = "SENSOR_GRAVITATION";
      
      private static const § !=§:Number = 0.057;
       
      
      protected var §8!1§:Number = 0.0;
      
      protected var §8K§:Number = 0.0;
      
      protected var §0v§:Sprite;
      
      protected var §&M§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §-!H§:Number = 0.0;
      
      protected var §7"+§:Number;
      
      public function §["Z§(param1:Sprite, param2:b2World, param3:§9v§, param4:§[!F§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§'!j§, param10:§'!j§)
      {
         this.§7"+§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§0v§ = param1;
         this.§-!H§ = this.§7"+§ * § !=§;
         if(param9)
         {
            this.§&M§ = this.§case §(param9,this.§-!H§);
            this.§0v§.addChild(this.§&M§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§case §(param10,this.§-!H§);
            this.§0v§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§case §(param10,this.§-!H§ / 2);
            this.§0v§.addChild(this.mInnerSprite2);
         }
         this.§8!1§ = param6;
         this.§8K§ = param7;
         §]"C§ = param8;
         this.§5"N§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§<b§ = §+!j§.shape as §<b§;
         if(_loc1_)
         {
            return this.§7"+§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §case §(param1:§'!j§, param2:Number) : Sprite
      {
         var _loc5_:§,!u§ = null;
         var _loc3_:Sprite = new Sprite();
         _loc3_.scaleX = param2;
         _loc3_.scaleY = param2;
         var _loc4_:int = 0;
         while(_loc4_ < 8)
         {
            (_loc5_ = new §,!u§(param1.texture)).pivotX = -param1.pivotX;
            _loc5_.pivotY = -param1.pivotY;
            _loc5_.rotation = 45 * _loc4_ / 180 * Math.PI;
            _loc3_.addChild(_loc5_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      override public function collidedWith(param1:§?!x§) : void
      {
         super.collidedWith(param1);
         if(param1.§1!E§ == GravityFilterCategory.LEIA_FORCE_OBJECT)
         {
            param1.§1!E§ = GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§0v§)
         {
            this.§0v§.dispose();
            this.§0v§ = null;
         }
         this.§&M§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §6"X§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = §3"s§().GetPosition().Copy();
         }
         else
         {
            param3.SetV(§3"s§().GetPosition());
         }
         param3.§0T§(param1);
         if(param3.Length() > this.§7"+§ + param2)
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
         var _loc6_:Number = this.§8K§ - _loc5_ / this.§7"+§ * (this.§8K§ - this.§8!1§);
         if(param4 == 0)
         {
            param4 = §]"C§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§ 6§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         var _loc5_:§?!x§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§5"N§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < § #1§.length)
         {
            if(!(!(_loc5_ = § #1§[_loc4_]) || !_loc5_.§3"s§() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§1!E§ != -1 && !(_loc5_.§1!E§ & this.§4W§) && _loc5_.§1!E§ != GravityFilterCategory.LEIA_FORCE_OBJECT))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§8"c§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§6"X§(_loc5_.§3"s§().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§]"C§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.§3"s§().GetMass();
                     _loc3_.§ 6§(_loc7_);
                     _loc5_.§3"s§().§ =§(_loc3_,_loc5_.§3"s§().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function §7"C§(param1:Sprite) : void
      {
         param1.scaleX -= § !=§ / 6;
         param1.scaleY -= § !=§ / 6;
         if(param1.scaleX / § !=§ < 5)
         {
            param1.scaleX = this.§-!H§;
            param1.scaleY = this.§-!H§;
         }
      }
      
      protected function §5"N§() : void
      {
         var _loc1_:Number = §3"s§().GetPosition().x;
         var _loc2_:Number = §3"s§().GetPosition().y;
         this.§0v§.x = _loc1_ / §;!E§.§0"?§;
         this.§0v§.y = _loc2_ / §;!E§.§0"?§;
         if(this.mInnerSprite1)
         {
            this.§7"C§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§7"C§(this.mInnerSprite2);
         }
      }
      
      public function get §4W§() : int
      {
         return GravityFilterCategory.FORCE_OBJECT;
      }
   }
}
