package §^0§
{
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §,!T§.b2CircleShape;
   import §-!j§.§,#V§;
   import §-!j§.§@! §;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§'!-§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   
   public class §&F§ extends §5;§
   {
      
      public static const §&";§:String = "SENSOR_GRAVITATION";
      
      private static const §7$0§:Number = 0.057;
       
      
      protected var §2!s§:Number = 0.0;
      
      protected var §0!v§:Number = 0.0;
      
      protected var §]#+§:Sprite;
      
      protected var §""g§:Sprite;
      
      protected var mInnerSprite1:Sprite;
      
      protected var mInnerSprite2:Sprite;
      
      protected var §]#I§:Number = 0.0;
      
      protected var §"!'§:Number;
      
      public function §&F§(param1:Sprite, param2:b2World, param3:§@$<§, param4:§@! §, param5:Number, param6:Number, param7:Number, param8:Number, param9:§'!-§, param10:§'!-§)
      {
         this.§"!'§ = param5;
         super(param1,param2,param4,param4.shape,param3);
         this.§]#+§ = param1;
         this.§]#I§ = this.§"!'§ * §7$0§;
         if(param9)
         {
            this.§""g§ = this.§[!p§(param9,this.§]#I§);
            this.§]#+§.addChild(this.§""g§);
         }
         if(param10)
         {
            this.mInnerSprite1 = this.§[!p§(param10,this.§]#I§);
            this.§]#+§.addChild(this.mInnerSprite1);
            this.mInnerSprite2 = this.§[!p§(param10,this.§]#I§ / 2);
            this.§]#+§.addChild(this.mInnerSprite2);
         }
         this.§2!s§ = param6;
         this.§0!v§ = param7;
         §^"§ = param8;
         this.§;!,§();
      }
      
      override protected function get scale() : Number
      {
         var _loc1_:§,#V§ = §8!'§.shape as §,#V§;
         if(_loc1_)
         {
            return this.§"!'§ / _loc1_.radius;
         }
         return super.scale;
      }
      
      private function §[!p§(param1:§'!-§, param2:Number) : Sprite
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
      
      override public function collidedWith(param1:§4!t§) : void
      {
         super.collidedWith(param1);
         if(param1.§<!x§ == §`"p§.§'$0§)
         {
            param1.§<!x§ = §`"p§.§1!"§;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§]#+§)
         {
            this.§]#+§.dispose();
            this.§]#+§ = null;
         }
         this.§""g§ = null;
         this.mInnerSprite1 = null;
      }
      
      public function §1,§(param1:b2Vec2, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2Vec2
      {
         if(!param3)
         {
            param3 = getBody().GetPosition().Copy();
         }
         else
         {
            param3.SetV(getBody().GetPosition());
         }
         param3.§ !<§(param1);
         if(param3.Length() > this.§"!'§ + param2)
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
         var _loc6_:Number = this.§0!v§ - _loc5_ / this.§"!'§ * (this.§0!v§ - this.§2!s§);
         if(param4 == 0)
         {
            param4 = §^"§;
         }
         _loc6_ *= param4 * 0.1;
         param3.§%!G§(_loc6_ / _loc5_);
         return param3;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc5_:§4!t§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.§;!,§();
         super.update(param1,param2);
         var _loc3_:b2Vec2 = null;
         var _loc4_:int = 0;
         while(_loc4_ < §;$&§.length)
         {
            if(!(!(_loc5_ = §;$&§[_loc4_]) || !_loc5_.getBody() || !_loc5_.applyGravity() || !_loc5_.shape))
            {
               if(!(_loc5_.§<!x§ != -1 && !(_loc5_.§<!x§ & this.§3K§) && _loc5_.§<!x§ != §`"p§.§'$0§))
               {
                  _loc6_ = 0;
                  if(_loc5_.shape is b2CircleShape)
                  {
                     _loc6_ = b2CircleShape(_loc5_.shape).§]$-§();
                  }
                  else
                  {
                     _loc6_ = Math.max(_loc5_.shape.getWidth(),_loc5_.shape.getHeight());
                  }
                  _loc3_ = this.§1,§(_loc5_.getBody().GetPosition(),_loc6_,_loc3_,_loc5_.getGravityMultiplier(§^"§));
                  if(_loc3_.x != 0 || _loc3_.y != 0)
                  {
                     _loc7_ = _loc5_.getBody().GetMass();
                     _loc3_.§%!G§(_loc7_);
                     _loc5_.getBody().ApplyForce(_loc3_,_loc5_.getBody().GetPosition());
                  }
               }
            }
            _loc4_++;
         }
      }
      
      private function §9"z§(param1:Sprite) : void
      {
         param1.scaleX -= §7$0§ / 6;
         param1.scaleY -= §7$0§ / 6;
         if(param1.scaleX / §7$0§ < 5)
         {
            param1.scaleX = this.§]#I§;
            param1.scaleY = this.§]#I§;
         }
      }
      
      protected function §;!,§() : void
      {
         var _loc1_:Number = getBody().GetPosition().x;
         var _loc2_:Number = getBody().GetPosition().y;
         this.§]#+§.x = _loc1_ / §<d§.§6@§;
         this.§]#+§.y = _loc2_ / §<d§.§6@§;
         if(this.mInnerSprite1)
         {
            this.§9"z§(this.mInnerSprite1);
         }
         if(this.mInnerSprite2)
         {
            this.§9"z§(this.mInnerSprite2);
         }
      }
      
      public function get §3K§() : int
      {
         return §`"p§.§`!L§;
      }
   }
}
