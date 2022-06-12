package §6!3§
{
   import §!H§.b2CircleShape;
   import §'G§.§3$B§;
   import §-#X§.§,!B§;
   import §6#H§.Image;
   import §6#H§.Sprite;
   import §>2§.§!6§;
   import §?!C§.b2Vec2;
   import §?$<§.§'!s§;
   import §?$<§.§@"q§;
   import §@!S§.b2World;
   
   public class §7u§ extends §@#v§
   {
      
      public static const § !V§:String = "SENSOR_GRAVITATION";
      
      private static const §2$B§:Number = 0.057;
       
      
      protected var §5"!§:Number = 0.0;
      
      protected var §>#J§:Number = 0.0;
      
      protected var §'#f§:Sprite;
      
      protected var §1Q§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §<!5§:Number = 0.0;
      
      protected var §-!c§:Number;
      
      public function §7u§(param1:Sprite, param2:b2World, param3:§,!B§, param4:§@"q§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§3$B§, param10:§3$B§)
      {
         this.§-!c§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§'#f§ = param1;
         this.§<!5§ = this.§-!c§ * §2$B§;
         if(param9)
         {
            this.§1Q§ = this.§]!p§(param9,this.§<!5§);
            this.§'#f§.addChild(this.§1Q§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§]!p§(param10,this.§<!5§);
            this.§'#f§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§]!p§(param10,this.§<!5§ / 2);
            this.§'#f§.addChild(this.mInnerSprite2);
         }
         this.§5"!§ = param6;
         this.§>#J§ = param7;
         §!#!§ = param8;
         this.§;!§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§'!s§ = §"#6§.shape as §'!s§;
         if(_loc1_)
         {
            return this.§-!c§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §]!p§(param1:§3$B§, param2:Number) : Sprite
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
      
      override public function collidedWith(param1:§!y§) : void
      {
         super.collidedWith(param1);
         if(param1.§3!F§ == §9"+§.§%#M§)
         {
            param1.§3!F§ = §9"+§.§3!I§;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§'#f§)
         {
            this.§'#f§.dispose();
            this.§'#f§ = null;
         }
         this.§1Q§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §"!o§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = getBody().GetPosition().Copy();
         }
         else
         {
            param3.SetV(getBody().GetPosition());
         }
         param3.§48§(param1);
         if(param3.Length() > this.§-!c§ + param2)
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
         var _loc6_:Number = this.§>#J§ - _loc5_ / this.§-!c§ * (this.§>#J§ - this.§5"!§);
         if(param4 == 0)
         {
            param4 = §!#!§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§?$'§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc5_:§!y§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§;!§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §3z§.length)
         {
            if(!(!(_loc5_ = §3z§[_loc4_]) || !_loc5_.getBody() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§3!F§ != -1 && !(_loc5_.§3!F§ & this.§["H§) && _loc5_.§3!F§ != §9"+§.§%#M§))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§[§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§"!o§(_loc5_.getBody().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§!#!§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.getBody().GetMass();
                     _loc3_.§?$'§(_loc7_);
                     _loc5_.getBody().ApplyForce(_loc3_,_loc5_.getBody().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function §`!X§(param1:Sprite) : void
      {
         param1.scaleX -= §2$B§ / 6;
         param1.scaleY -= §2$B§ / 6;
         if(param1.scaleX / §2$B§ < 5)
         {
            param1.scaleX = this.§<!5§;
            param1.scaleY = this.§<!5§;
         }
      }
      
      protected function §;!§() : void
      {
         var _loc1_:Number = getBody().GetPosition().x;
         var _loc2_:Number = getBody().GetPosition().y;
         this.§'#f§.x = _loc1_ / §!6§.§[#v§;
         this.§'#f§.y = _loc2_ / §!6§.§[#v§;
         if(this.mInnerSprite1)
         {
            this.§`!X§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§`!X§(this.mInnerSprite2);
         }
      }
      
      public function get §["H§() : int
      {
         return §9"+§.§="#§;
      }
   }
}
