package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+#f§.b2CircleShape;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§'#'§;
   import §7"&§.§+#p§;
   import §7"&§.§>#H§;
   
   public class §=P§ extends §0S§
   {
      
      public static const §["A§:String = "SENSOR_GRAVITATION";
      
      private static const §?#R§:Number = 0.057;
       
      
      protected var §<!+§:Number = 0.0;
      
      protected var §2!P§:Number = 0.0;
      
      protected var §'$&§:Sprite;
      
      protected var §>#'§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §;!z§:Number = 0.0;
      
      protected var §7!@§:Number;
      
      public function §=P§(param1:Sprite, param2:b2World, param3:§]"o§, param4:§+#p§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§'#'§, param10:§'#'§)
      {
         this.§7!@§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§'$&§ = param1;
         this.§;!z§ = this.§7!@§ * §?#R§;
         if(param9)
         {
            this.§>#'§ = this.§&#O§(param9,this.§;!z§);
            this.§'$&§.addChild(this.§>#'§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§&#O§(param10,this.§;!z§);
            this.§'$&§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§&#O§(param10,this.§;!z§ / 2);
            this.§'$&§.addChild(this.mInnerSprite2);
         }
         this.§<!+§ = param6;
         this.§2!P§ = param7;
         §0!7§ = param8;
         this.§4"X§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§>#H§ = §8"3§.shape as §>#H§;
         if(_loc1_)
         {
            return this.§7!@§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §&#O§(param1:§'#'§, param2:Number) : Sprite
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
      
      override public function collidedWith(param1:§#-§) : void
      {
         super.collidedWith(param1);
         if(param1.§>#j§ == §4@§.§<#P§)
         {
            param1.§>#j§ = §4@§.§^"#§;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§'$&§)
         {
            this.§'$&§.dispose();
            this.§'$&§ = null;
         }
         this.§>#'§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §0#W§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = getBody().GetPosition().Copy();
         }
         else
         {
            param3.SetV(getBody().GetPosition());
         }
         param3.§%"_§(param1);
         if(param3.Length() > this.§7!@§ + param2)
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
         var _loc6_:Number = this.§2!P§ - _loc5_ / this.§7!@§ * (this.§2!P§ - this.§<!+§);
         if(param4 == 0)
         {
            param4 = §0!7§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§@o§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         var _loc5_:§#-§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§4"X§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §9D§.length)
         {
            if(!(!(_loc5_ = §9D§[_loc4_]) || !_loc5_.getBody() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§>#j§ != -1 && !(_loc5_.§>#j§ & this.§>"U§) && _loc5_.§>#j§ != §4@§.§<#P§))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§+#_§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§0#W§(_loc5_.getBody().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§0!7§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.getBody().GetMass();
                     _loc3_.§@o§(_loc7_);
                     _loc5_.getBody().ApplyForce(_loc3_,_loc5_.getBody().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function §'"3§(param1:Sprite) : void
      {
         param1.scaleX -= §?#R§ / 6;
         param1.scaleY -= §?#R§ / 6;
         if(param1.scaleX / §?#R§ < 5)
         {
            param1.scaleX = this.§;!z§;
            param1.scaleY = this.§;!z§;
         }
      }
      
      protected function §4"X§() : void
      {
         var _loc1_:Number = getBody().GetPosition().x;
         var _loc2_:Number = getBody().GetPosition().y;
         this.§'$&§.x = _loc1_ / §!!S§.§,"3§;
         this.§'$&§.y = _loc2_ / §!!S§.§,"3§;
         if(this.mInnerSprite1)
         {
            this.§'"3§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§'"3§(this.mInnerSprite2);
         }
      }
      
      public function get §>"U§() : int
      {
         return §4@§.§-c§;
      }
   }
}
