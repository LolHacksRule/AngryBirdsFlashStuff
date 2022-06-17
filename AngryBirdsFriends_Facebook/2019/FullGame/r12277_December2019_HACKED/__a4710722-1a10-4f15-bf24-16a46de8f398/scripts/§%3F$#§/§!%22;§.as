package §?$#§
{
   import §""4§.Texture;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §1#F§.b2Settings;
   import §6!R§.b2Vec2;
   import §^0§.§>"T§;
   import flash.geom.Point;
   
   public class §!";§
   {
       
      
      private var §!!8§:Texture;
      
      private var §]#+§:Sprite;
      
      private var § in§:Vector.<Image>;
      
      private var §?I§:Boolean;
      
      private var §5"s§:int = 0;
      
      private var §,# §:Vector.<Image>;
      
      private var §&"n§:Number = -1.0;
      
      private var §3!7§:Number = 0.0;
      
      private var §^!#§:Number = 0.0;
      
      public function §!";§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§,# § = new Vector.<Image>();
         super();
         this.§]#+§ = param1;
         this.§!!8§ = param2;
         this.§&"n§ = param3;
         this.§3!7§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]#+§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Image = null;
         if(this.§]#+§)
         {
            if(this.§]#+§.parent)
            {
               this.§]#+§.parent.removeChild(this.§]#+§);
            }
            this.§]#+§.dispose();
            this.§]#+§ = null;
         }
         this.§!!8§ = null;
         if(this.§ in§)
         {
            for each(_loc1_ in this.§ in§)
            {
               _loc1_.dispose();
            }
            this.§ in§ = null;
         }
         this.§,# § = null;
      }
      
      public function §6#X§(param1:Texture) : void
      {
         this.§!!8§ = param1;
      }
      
      public function §`#+§(param1:Point, param2:Point, param3:Number, param4:§>"T§, param5:Number = 1.0, param6:Boolean = false, param7:Boolean = false, param8:int = 30) : void
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
         var _loc15_:Number = §&$0§.§7T§ / _loc10_;
         var _loc16_:b2Vec2 = new b2Vec2();
         var _loc17_:Number = b2Settings.b2_maxTranslation / §&$0§.§7T§ / _loc10_;
         var _loc18_:Number = 0;
         while(_loc12_ < this.laserSightMaxPoints())
         {
            if(_loc13_ % _loc10_ == 0)
            {
               param4.getForceAtPoint(_loc11_.x,_loc11_.y,this.§^!#§,_loc16_);
               if(!param6)
               {
                  _loc9_.y += _loc16_.y * _loc15_;
               }
               if(_loc9_.length > _loc17_)
               {
                  _loc9_.normalize(_loc17_);
               }
               if(this.§&"n§ >= 0 && _loc18_ > this.§&"n§)
               {
                  _loc9_.x *= 1 - §&$0§.§7T§ * this.§3!7§;
                  _loc9_.y *= 1 - §&$0§.§7T§ * this.§3!7§;
               }
            }
            _loc11_.x += _loc9_.x * §&$0§.§7T§;
            _loc11_.y += _loc9_.y * §&$0§.§7T§;
            if(_loc13_ % param8 == this.§5"s§ % param8)
            {
               if(this.§,# §.length > _loc12_)
               {
                  _loc19_ = this.§,# §[_loc12_];
               }
               else
               {
                  _loc19_ = this.§-!U§();
                  this.§]#+§.addChild(_loc19_);
                  this.§,# §.push(_loc19_);
               }
               _loc12_++;
               _loc19_.x = _loc11_.x / §<d§.§6@§;
               _loc19_.y = _loc11_.y / §<d§.§6@§;
               if(param7)
               {
                  _loc20_ = 1 - _loc12_ / this.laserSightMaxPoints() * this.§ "C§();
                  _loc19_.scaleX = _loc20_;
                  _loc19_.scaleY = _loc20_;
               }
            }
            _loc13_++;
            _loc18_ += _loc15_;
         }
         while(this.§,# §.length > _loc12_)
         {
            _loc21_ = this.§,# §.pop();
            this.§]#+§.removeChild(_loc21_);
            this.§8$"§(_loc21_);
         }
         ++this.§5"s§;
      }
      
      protected function § "C§() : Number
      {
         return 0.7;
      }
      
      protected function laserSightMaxPoints() : int
      {
         return §&$0§.§="=§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§?I§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§?I§ = param1;
         this.§]#+§.visible = this.§?I§;
      }
      
      private function §-!U§() : Image
      {
         if(this.§ in§ && this.§ in§.length > 0)
         {
            return this.§ in§.pop();
         }
         var _loc1_:Image = new Image(this.§!!8§);
         _loc1_.pivotX = -this.§!!8§.width / 2;
         _loc1_.pivotY = -this.§!!8§.height / 2;
         return _loc1_;
      }
      
      private function §8$"§(param1:Image) : void
      {
         if(!this.§ in§)
         {
            this.§ in§ = new Vector.<Image>();
         }
         this.§ in§.push(param1);
      }
      
      public function §@!q§(param1:Number) : void
      {
         this.§^!#§ = param1;
      }
   }
}
