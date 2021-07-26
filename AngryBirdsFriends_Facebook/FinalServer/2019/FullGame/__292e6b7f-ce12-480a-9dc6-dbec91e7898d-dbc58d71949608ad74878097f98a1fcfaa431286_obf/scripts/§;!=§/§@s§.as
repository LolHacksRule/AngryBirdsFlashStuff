package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§8§;
   import §'#K§.b2World;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §1#I§.b2CircleShape;
   import §7"T§.§4!L§;
   import §8#K§.§<5§;
   import §8#K§.§=$'§;
   
   public class §@s§ extends §`"4§
   {
      
      public static const §@!4§:String = "SENSOR_GRAVITATION";
      
      private static const §<O§:Number = 0.057;
       
      
      protected var §&"e§:Number = 0.0;
      
      protected var §]#-§:Number = 0.0;
      
      protected var §&"h§:Sprite;
      
      protected var §[I§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §+"N§:Number = 0.0;
      
      protected var §`!"§:Number;
      
      public function §@s§(param1:Sprite, param2:b2World, param3:§5"?§, param4:§<5§, param5:Number, param6:Number, param7:Number, param8:Number, param9:§4!L§, param10:§4!L§)
      {
         this.§`!"§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§&"h§ = param1;
         this.§+"N§ = this.§`!"§ * §<O§;
         if(param9)
         {
            this.§[I§ = this.§["i§(param9,this.§+"N§);
            this.§&"h§.addChild(this.§[I§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§["i§(param10,this.§+"N§);
            this.§&"h§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§["i§(param10,this.§+"N§ / 2);
            this.§&"h§.addChild(this.mInnerSprite2);
         }
         this.§&"e§ = param6;
         this.§]#-§ = param7;
         §+"4§ = param8;
         this.§ S§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§=$'§ = §]h§.shape as §=$'§;
         if(_loc1_)
         {
            return this.§`!"§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §["i§(param1:§4!L§, param2:Number) : Sprite
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
      
      override public function collidedWith(param1:§'#N§) : void
      {
         super.collidedWith(param1);
         if(param1.§@#z§ == §"#-§.§5$;§)
         {
            param1.§@#z§ = §"#-§.§9$ §;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§&"h§)
         {
            this.§&"h§.dispose();
            this.§&"h§ = null;
         }
         this.§[I§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §4#a§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = getBody().GetPosition().Copy();
         }
         else
         {
            param3.SetV(getBody().GetPosition());
         }
         param3.§3l§(param1);
         if(param3.Length() > this.§`!"§ + param2)
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
         var _loc6_:Number = this.§]#-§ - _loc5_ / this.§`!"§ * (this.§]#-§ - this.§&"e§);
         if(param4 == 0)
         {
            param4 = §+"4§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§#"I§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc5_:§'#N§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§ S§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §4!§.length)
         {
            if(!(!(_loc5_ = §4!§[_loc4_]) || !_loc5_.getBody() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§@#z§ != -1 && !(_loc5_.§@#z§ & this.§5#i§) && _loc5_.§@#z§ != §"#-§.§5$;§))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§0#Y§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§4#a§(_loc5_.getBody().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§+"4§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.getBody().GetMass();
                     _loc3_.§#"I§(_loc7_);
                     _loc5_.getBody().ApplyForce(_loc3_,_loc5_.getBody().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function §1#E§(param1:Sprite) : void
      {
         param1.scaleX -= §<O§ / 6;
         param1.scaleY -= §<O§ / 6;
         if(param1.scaleX / §<O§ < 5)
         {
            param1.scaleX = this.§+"N§;
            param1.scaleY = this.§+"N§;
         }
      }
      
      protected function § S§() : void
      {
         var _loc1_:Number = getBody().GetPosition().x;
         var _loc2_:Number = getBody().GetPosition().y;
         this.§&"h§.x = _loc1_ / §8#3§.§2K§;
         this.§&"h§.y = _loc2_ / §8#3§.§2K§;
         if(this.mInnerSprite1)
         {
            this.§1#E§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§1#E§(this.mInnerSprite2);
         }
      }
      
      public function get §5#i§() : int
      {
         return §"#-§.§+i§;
      }
   }
}
