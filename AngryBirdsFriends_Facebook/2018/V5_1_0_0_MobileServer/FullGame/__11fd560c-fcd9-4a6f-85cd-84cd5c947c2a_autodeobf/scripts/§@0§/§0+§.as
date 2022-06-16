package §@0§
{
   import § "%§.b2Vec2;
   import §,!s§.b2Settings;
   import §8§.§&#V§;
   import §9$;§.Texture;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import flash.geom.Point;
   
   public class §0+§
   {
       
      
      private var §%#a§:Texture;
      
      private var §4"D§:Sprite;
      
      private var §1"5§:Vector.<Image>;
      
      private var §]"&§:Boolean;
      
      private var §68§:int = 0;
      
      private var §]!D§:Vector.<Image>;
      
      private var §1#W§:Number = -1.0;
      
      private var §?!F§:Number = 0.0;
      
      private var §=?§:Number = 0.0;
      
      public function §0+§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§]!D§ = new Vector.<Image>();
         super();
         this.§4"D§ = param1;
         this.§%#a§ = param2;
         this.§1#W§ = param3;
         this.§?!F§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§4"D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Image = null;
         this.§4"D§.dispose();
         this.§%#a§ = null;
         for each(_loc1_ in this.§1"5§)
         {
            _loc1_.dispose();
         }
         this.§1"5§ = null;
         this.§]!D§ = null;
      }
      
      public function §;!=§(param1:Texture) : void
      {
         var _loc2_:Image = null;
         var _loc3_:Image = null;
         if(param1 != this.§%#a§)
         {
            this.§%#a§ = param1;
            for each(_loc2_ in this.§1"5§)
            {
               this.§,!^§(_loc2_);
            }
            for each(_loc3_ in this.§]!D§)
            {
               this.§,!^§(_loc3_);
            }
         }
      }
      
      public function §<$7§(param1:Point, param2:Point, param3:Number, param4:§&#V§) : void
      {
         var _loc17_:Image = null;
         var _loc18_:Number = NaN;
         var _loc19_:Image = null;
         var _loc5_:Point = param2.clone();
         _loc5_.normalize(param3 / 9);
         var _loc7_:Point = param1.clone();
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 1200 / (20 + param3);
         var _loc13_:Number = §1#7§.§2!y§ / 9;
         var _loc14_:b2Vec2 = new b2Vec2();
         var _loc15_:Number = b2Settings.b2_maxTranslation / §1#7§.§2!y§ / 9;
         var _loc16_:Number = 0;
         while(_loc9_ < §1#7§.§%"H§)
         {
            if(_loc10_ % 9 == 0)
            {
               param4.getForceAtPoint(_loc7_.x,_loc7_.y,this.§=?§,_loc14_);
               _loc5_.x += _loc14_.x * _loc13_;
               _loc5_.y += _loc14_.y * _loc13_;
               if(_loc5_.length > _loc15_)
               {
                  _loc5_.normalize(_loc15_);
               }
               if(this.§1#W§ >= 0 && _loc16_ > this.§1#W§)
               {
                  _loc5_.x *= 1 - §1#7§.§2!y§ * this.§?!F§;
                  _loc5_.y *= 1 - §1#7§.§2!y§ * this.§?!F§;
               }
            }
            _loc7_.x += _loc5_.x * §1#7§.§2!y§;
            _loc7_.y += _loc5_.y * §1#7§.§2!y§;
            if(_loc10_ % _loc11_ == this.§68§ % _loc11_)
            {
               if(this.§]!D§.length > _loc9_)
               {
                  _loc17_ = this.§]!D§[_loc9_];
               }
               else
               {
                  _loc17_ = this.§"$<§();
                  this.§4"D§.addChild(_loc17_);
                  this.§]!D§.push(_loc17_);
               }
               _loc9_++;
               _loc17_.x = _loc7_.x / §%!q§.§6q§;
               _loc17_.y = _loc7_.y / §%!q§.§6q§;
               _loc18_ = 1 - _loc9_ / §1#7§.§%"H§ * 0.7;
               _loc17_.scaleX = _loc18_;
               _loc17_.scaleY = _loc18_;
            }
            _loc10_++;
            _loc16_ += _loc13_;
         }
         while(this.§]!D§.length > _loc9_)
         {
            _loc19_ = this.§]!D§.pop();
            this.§4"D§.removeChild(_loc19_);
            this.§%#e§(_loc19_);
         }
         ++this.§68§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§]"&§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§]"&§ = param1;
         this.§4"D§.visible = this.§]"&§;
      }
      
      private function §"$<§() : Image
      {
         if(this.§1"5§ && this.§1"5§.length > 0)
         {
            return this.§1"5§.pop();
         }
         var _loc1_:Image = new Image(this.§%#a§);
         _loc1_.pivotX = -this.§%#a§.width / 2;
         _loc1_.pivotY = -this.§%#a§.height / 2;
         return _loc1_;
      }
      
      private function §%#e§(param1:Image) : void
      {
         if(!this.§1"5§)
         {
            this.§1"5§ = new Vector.<Image>();
         }
         this.§1"5§.push(param1);
      }
      
      public function §!#Z§(param1:Number) : void
      {
         this.§=?§ = param1;
      }
      
      private function §,!^§(param1:Image) : void
      {
         param1.texture = this.§%#a§;
         param1.pivotX = -this.§%#a§.width / 2;
         param1.pivotY = -this.§%#a§.height / 2;
      }
   }
}
