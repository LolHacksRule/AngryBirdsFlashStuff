package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.Image;
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§+"%§;
   import §?§.§0F§;
   import §]!o§.b2CircleShape;
   import §^"[§.§^!8§;
   import §`# §.b2Vec2;
   
   public class §3#X§ extends §0!N§
   {
      
      public static const §9!O§:String = "SENSOR_GRAVITATION";
      
      private static const §"!?§:Number = 0.057;
       
      
      protected var §##j§:Number = 0.0;
      
      protected var §#"M§:Number = 0.0;
      
      protected var § U§:Sprite;
      
      protected var §&"o§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §-!p§:Number = 0.0;
      
      protected var § "=§:Number;
      
      public function §3#X§(param1:Sprite, param2:b2World, param3:§9"4§, param4:§+"%§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§^!8§, param10:§^!8§)
      {
         this.§ "=§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§ U§ = param1;
         this.§-!p§ = this.§ "=§ * §"!?§;
         if(param9)
         {
            this.§&"o§ = this.§]!M§(param9,this.§-!p§);
            this.§ U§.addChild(this.§&"o§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§]!M§(param10,this.§-!p§);
            this.§ U§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§]!M§(param10,this.§-!p§ / 2);
            this.§ U§.addChild(this.mInnerSprite2);
         }
         this.§##j§ = param6;
         this.§#"M§ = param7;
         §;S§ = param8;
         this.§"!8§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§0F§ = §!!H§.shape as §0F§;
         if(_loc1_)
         {
            return this.§ "=§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §]!M§(param1:§^!8§, param2:Number) : Sprite
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
      
      override public function collidedWith(param1:§1#B§) : void
      {
         super.collidedWith(param1);
         if(param1.§&"X§ == §-#L§.§>!@§)
         {
            param1.§&"X§ = §-#L§.§8"o§;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§ U§)
         {
            this.§ U§.dispose();
            this.§ U§ = null;
         }
         this.§&"o§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §4!+§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = getBody().GetPosition().Copy();
         }
         else
         {
            param3.SetV(getBody().GetPosition());
         }
         param3.§6#"§(param1);
         if(param3.Length() > this.§ "=§ + param2)
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
         var _loc6_:Number = this.§#"M§ - _loc5_ / this.§ "=§ * (this.§#"M§ - this.§##j§);
         if(param4 == 0)
         {
            param4 = §;S§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§<#3§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc5_:§1#B§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§"!8§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §9"j§.length)
         {
            if(!(!(_loc5_ = §9"j§[_loc4_]) || !_loc5_.getBody() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§&"X§ != -1 && !(_loc5_.§&"X§ & this.§8"L§) && _loc5_.§&"X§ != §-#L§.§>!@§))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§7"z§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§4!+§(_loc5_.getBody().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§;S§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.getBody().GetMass();
                     _loc3_.§<#3§(_loc7_);
                     _loc5_.getBody().ApplyForce(_loc3_,_loc5_.getBody().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function §,"p§(param1:Sprite) : void
      {
         param1.scaleX -= §"!?§ / 6;
         param1.scaleY -= §"!?§ / 6;
         if(param1.scaleX / §"!?§ < 5)
         {
            param1.scaleX = this.§-!p§;
            param1.scaleY = this.§-!p§;
         }
      }
      
      protected function §"!8§() : void
      {
         var _loc1_:Number = getBody().GetPosition().x;
         var _loc2_:Number = getBody().GetPosition().y;
         this.§ U§.x = _loc1_ / §'"u§.§'#e§;
         this.§ U§.y = _loc2_ / §'"u§.§'#e§;
         if(this.mInnerSprite1)
         {
            this.§,"p§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§,"p§(this.mInnerSprite2);
         }
      }
      
      public function get §8"L§() : int
      {
         return §-#L§.§=j§;
      }
   }
}
