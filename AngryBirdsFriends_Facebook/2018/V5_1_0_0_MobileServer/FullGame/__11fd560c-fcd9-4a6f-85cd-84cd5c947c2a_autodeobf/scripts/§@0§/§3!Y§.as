package §@0§
{
   import § "%§.b2Vec2;
   import §,!s§.b2Settings;
   import §8§.§&#V§;
   import §9$;§.Texture;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import flash.geom.Point;
   
   public class §3!Y§
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
      
      public function §3!Y§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
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
         if(this.§4"D§)
         {
            if(this.§4"D§.parent)
            {
               this.§4"D§.parent.removeChild(this.§4"D§);
            }
            this.§4"D§.dispose();
            this.§4"D§ = null;
         }
         this.§%#a§ = null;
         if(this.§1"5§)
         {
            for each(_loc1_ in this.§1"5§)
            {
               _loc1_.dispose();
            }
            this.§1"5§ = null;
         }
         this.§]!D§ = null;
      }
      
      public function §;!=§(param1:Texture) : void
      {
         this.§%#a§ = param1;
      }
      
      public function §<$7§(param1:Point, param2:Point, param3:Number, param4:§&#V§, param5:Number = 1.0, param6:Boolean = false, param7:Boolean = false, param8:int = 30) : void
      {
         var _loc19_:Image = null;
         var _loc20_:Number = NaN;
         var _loc21_:Image = null;
         var _loc9_:Point = param2.clone();
         var _loc10_:Number = param5;
         _loc9_.normalize(param3 / _loc10_);
         var _loc11_:Point = param1.clone();
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         param8 = 1200 / param8;
         var _loc15_:Number = §1#7§.§2!y§ / _loc10_;
         var _loc16_:b2Vec2 = new b2Vec2();
         var _loc17_:Number = b2Settings.b2_maxTranslation / §1#7§.§2!y§ / _loc10_;
         var _loc18_:Number = 0;
         while(_loc12_ < this.laserSightMaxPoints())
         {
            if(_loc13_ % _loc10_ == 0)
            {
               param4.getForceAtPoint(_loc11_.x,_loc11_.y,this.§=?§,_loc16_);
               if(!param6)
               {
                  _loc9_.y += _loc16_.y * _loc15_;
               }
               if(_loc9_.length > _loc17_)
               {
                  _loc9_.normalize(_loc17_);
               }
               if(this.§1#W§ >= 0 && _loc18_ > this.§1#W§)
               {
                  _loc9_.x *= 1 - §1#7§.§2!y§ * this.§?!F§;
                  _loc9_.y *= 1 - §1#7§.§2!y§ * this.§?!F§;
               }
            }
            _loc11_.x += _loc9_.x * §1#7§.§2!y§;
            _loc11_.y += _loc9_.y * §1#7§.§2!y§;
            if(_loc13_ % param8 == this.§68§ % param8)
            {
               if(this.§]!D§.length > _loc12_)
               {
                  _loc19_ = this.§]!D§[_loc12_];
               }
               else
               {
                  _loc19_ = this.§"$<§();
                  this.§4"D§.addChild(_loc19_);
                  this.§]!D§.push(_loc19_);
               }
               _loc12_++;
               _loc19_.x = _loc11_.x / §%!q§.§6q§;
               _loc19_.y = _loc11_.y / §%!q§.§6q§;
               if(param7)
               {
                  _loc20_ = 1 - _loc12_ / this.laserSightMaxPoints() * this.§]#P§();
                  _loc19_.scaleX = _loc20_;
                  _loc19_.scaleY = _loc20_;
               }
            }
            _loc13_++;
            _loc18_ += _loc15_;
         }
         while(this.§]!D§.length > _loc12_)
         {
            _loc21_ = this.§]!D§.pop();
            this.§4"D§.removeChild(_loc21_);
            this.§%#e§(_loc21_);
         }
         ++this.§68§;
      }
      
      protected function §]#P§() : Number
      {
         return 0.7;
      }
      
      protected function laserSightMaxPoints() : int
      {
         return §1#7§.§%"H§;
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
   }
}
