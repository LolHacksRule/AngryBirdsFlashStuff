package §[#a§
{
   import §,#L§.§!#%§;
   import §0m§.b2Vec2;
   import §52§.§#!,§;
   import §9$§.Image;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §?!c§.b2CircleShape;
   import §@"§.§+!3§;
   import §`#C§.§3#U§;
   import §`#C§.§6!i§;
   
   public class §!$"§ extends §%#T§
   {
      
      public static const §%!H§:String = "SENSOR_GRAVITATION";
      
      private static const §+y§:Number = 0.057;
       
      
      protected var §4m§:Number = 0.0;
      
      protected var §4#V§:Number = 0.0;
      
      protected var §]Y§:Sprite;
      
      protected var §1!L§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §@$%§:Number = 0.0;
      
      protected var §!!1§:Number;
      
      public function §!$"§(param1:Sprite, param2:b2World, param3:§!#%§, param4:§6!i§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§+!3§, param10:§+!3§)
      {
         this.§!!1§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§]Y§ = param1;
         this.§@$%§ = this.§!!1§ * §+y§;
         if(param9)
         {
            this.§1!L§ = this.§^!§(param9,this.§@$%§);
            this.§]Y§.addChild(this.§1!L§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§^!§(param10,this.§@$%§);
            this.§]Y§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§^!§(param10,this.§@$%§ / 2);
            this.§]Y§.addChild(this.mInnerSprite2);
         }
         this.§4m§ = param6;
         this.§4#V§ = param7;
         §8"W§ = param8;
         this.§,#r§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§3#U§ = §`!w§.shape as §3#U§;
         if(_loc1_)
         {
            return this.§!!1§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §^!§(param1:§+!3§, param2:Number) : Sprite
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
      
      override public function collidedWith(param1:§<"H§) : void
      {
         super.collidedWith(param1);
         if(param1.§9"P§ == §7#]§.§4"x§)
         {
            param1.§9"P§ = §7#]§.§]$&§;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§]Y§)
         {
            this.§]Y§.dispose();
            this.§]Y§ = null;
         }
         this.§1!L§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §>#+§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = getBody().GetPosition().Copy();
         }
         else
         {
            param3.SetV(getBody().GetPosition());
         }
         param3.§%#d§(param1);
         if(param3.Length() > this.§!!1§ + param2)
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
         var _loc6_:Number = this.§4#V§ - _loc5_ / this.§!!1§ * (this.§4#V§ - this.§4m§);
         if(param4 == 0)
         {
            param4 = §8"W§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§2#<§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         var _loc5_:§<"H§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§,#r§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §>#C§.length)
         {
            if(!(!(_loc5_ = §>#C§[_loc4_]) || !_loc5_.getBody() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§9"P§ != -1 && !(_loc5_.§9"P§ & this.§ "e§) && _loc5_.§9"P§ != §7#]§.§4"x§))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§'![§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§>#+§(_loc5_.getBody().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§8"W§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.getBody().GetMass();
                     _loc3_.§2#<§(_loc7_);
                     _loc5_.getBody().ApplyForce(_loc3_,_loc5_.getBody().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function § #X§(param1:Sprite) : void
      {
         param1.scaleX -= §+y§ / 6;
         param1.scaleY -= §+y§ / 6;
         if(param1.scaleX / §+y§ < 5)
         {
            param1.scaleX = this.§@$%§;
            param1.scaleY = this.§@$%§;
         }
      }
      
      protected function §,#r§() : void
      {
         var _loc1_:Number = getBody().GetPosition().x;
         var _loc2_:Number = getBody().GetPosition().y;
         this.§]Y§.x = _loc1_ / §#!,§.§?$#§;
         this.§]Y§.y = _loc2_ / §#!,§.§?$#§;
         if(this.mInnerSprite1)
         {
            this.§ #X§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§ #X§(this.mInnerSprite2);
         }
      }
      
      public function get § "e§() : int
      {
         return §7#]§.§?"3§;
      }
   }
}
