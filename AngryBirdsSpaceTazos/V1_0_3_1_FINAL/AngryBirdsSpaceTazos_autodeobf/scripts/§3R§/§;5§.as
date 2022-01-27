package §3R§
{
   import §'@§.Texture;
   import §4"@§.§?!0§;
   import §4"@§.Sprite;
   import §5"D§.§0!5§;
   import §8K§.b2Settings;
   import §[!f§.b2Vec2;
   import flash.geom.Point;
   
   public class §;5§
   {
       
      
      private var § f§:Texture;
      
      private var §9A§:Sprite;
      
      private var §^!B§:Vector.<§?!0§>;
      
      private var §3!P§:Boolean;
      
      private var §`!^§:int = 0;
      
      private var §'!Z§:Vector.<§?!0§>;
      
      private var §+s§:Number = -1.0;
      
      private var §?U§:Number = 0.0;
      
      private var §9!X§:Number = 0.0;
      
      public function §;5§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§'!Z§ = new Vector.<§?!0§>();
         super();
         this.§9A§ = param1;
         this.§ f§ = param2;
         this.§+s§ = param3;
         this.§?U§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§9A§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!0§ = null;
         this.§9A§.dispose();
         this.§ f§ = null;
         for each(_loc1_ in this.§^!B§)
         {
            _loc1_.dispose();
         }
         this.§^!B§ = null;
         this.§'!Z§ = null;
      }
      
      public function §,p§(param1:Texture) : void
      {
         this.§ f§ = param1;
      }
      
      public function §<!4§(param1:Point, param2:Point, param3:Number, param4:§0!5§) : void
      {
         var _loc17_:§?!0§ = null;
         var _loc18_:Number = NaN;
         var _loc19_:§?!0§ = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc8_:Number = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §<!]§.§3!<§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §<!]§.§3!<§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §<!]§.§-a§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§9!X§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§+s§ >= 0 && _loc16_ > this.§+s§)
               {
                  _loc5_.x *= 1 - §<!]§.§3!<§ * this.§?U§;
                  _loc5_.y *= 1 - §<!]§.§3!<§ * this.§?U§;
               }
            }
            _loc7_.x += _loc5_.x * §<!]§.§3!<§;
            _loc7_.y += _loc5_.y * §<!]§.§3!<§;
            if(_loc10_ % _loc11_ == this.§`!^§ % _loc11_)
            {
               if(this.§'!Z§.length > _loc9_)
               {
                  _loc17_ = this.§'!Z§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§5!T§();
                  this.§9A§.addChild(_loc17_);
                  this.§'!Z§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §1!R§.§00§;
               _loc17_.y = _loc7_.y / §1!R§.§00§;
               _loc18_ = 1 - _loc9_ / §<!]§.§-a§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
               if((_loc8_ += _loc5_.length * §<!]§.§3!<§) > §<!]§.§`!X§)
               {
                  break;
               }
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§'!Z§.length > _loc9_)
         {
            _loc19_ = this.§'!Z§.pop();
            this.§9A§.removeChild(_loc19_);
            this.§="4§(_loc19_);
         }
         ++this.§`!^§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§3!P§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§3!P§ = param1;
         this.§9A§.visible = this.§3!P§;
      }
      
      private function §5!T§() : §?!0§
      {
         if(this.§^!B§ && this.§^!B§.length > 0)
         {
            return this.§^!B§.pop();
         }
         var _loc1_:§?!0§ = new §?!0§(this.§ f§);
         _loc1_.pivotX = -this.§ f§.width / 2;
         _loc1_.pivotY = -this.§ f§.height / 2;
         return _loc1_;
      }
      
      private function §="4§(param1:§?!0§) : void
      {
         if(!this.§^!B§)
         {
            this.§^!B§ = new Vector.<§?!0§>();
         }
         this.§^!B§.push(param1);
      }
      
      public function § v§(param1:Number) : void
      {
         this.§9!X§ = param1;
      }
   }
}
