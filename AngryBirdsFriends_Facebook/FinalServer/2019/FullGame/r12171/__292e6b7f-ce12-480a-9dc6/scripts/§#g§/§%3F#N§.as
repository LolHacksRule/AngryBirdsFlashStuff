package §#g§
{
   import §&$+§.b2Settings;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §-#]§.Texture;
   import §04§.b2Vec2;
   import §;!=§.§]!m§;
   import flash.geom.Point;
   
   public class §?#N§
   {
       
      
      private var §5#2§:Texture;
      
      private var §&"h§:Sprite;
      
      private var §""m§:Vector.<Image>;
      
      private var §>#L§:Boolean;
      
      private var §,"C§:int = 0;
      
      private var §%#c§:Vector.<Image>;
      
      private var §%"$§:Number = -1.0;
      
      private var §`!1§:Number = 0.0;
      
      private var §,"f§:Number = 0.0;
      
      public function §?#N§(param1:Sprite, param2:Texture, param3:Number, param4:Number)
      {
         this.§%#c§ = new Vector.<Image>();
         super();
         this.§&"h§ = param1;
         this.§5#2§ = param2;
         this.§%"$§ = param3;
         this.§`!1§ = param4;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&"h§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Image = null;
         if(this.§&"h§)
         {
            if(this.§&"h§.parent)
            {
               this.§&"h§.parent.removeChild(this.§&"h§);
            }
            this.§&"h§.dispose();
            this.§&"h§ = null;
         }
         this.§5#2§ = null;
         if(this.§""m§)
         {
            for each(_loc1_ in this.§""m§)
            {
               _loc1_.dispose();
            }
            this.§""m§ = null;
         }
         this.§%#c§ = null;
      }
      
      public function §]"[§(param1:Texture) : void
      {
         this.§5#2§ = param1;
      }
      
      public function §=#>§(param1:Point, param2:Point, param3:Number, param4:§]!m§, param5:Number = 1.0, param6:Boolean = false, param7:Boolean = false, param8:int = 30) : void
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
         var _loc15_:Number = §7#E§.§#!d§ / _loc10_;
         var _loc16_:b2Vec2 = new b2Vec2();
         var _loc17_:Number = b2Settings.b2_maxTranslation / §7#E§.§#!d§ / _loc10_;
         var _loc18_:Number = 0;
         while(_loc12_ < this.laserSightMaxPoints())
         {
            if(_loc13_ % _loc10_ == 0)
            {
               param4.getForceAtPoint(_loc11_.x,_loc11_.y,this.§,"f§,_loc16_);
               if(!param6)
               {
                  _loc9_.y += _loc16_.y * _loc15_;
               }
               if(_loc9_.length > _loc17_)
               {
                  _loc9_.normalize(_loc17_);
               }
               if(this.§%"$§ >= 0 && _loc18_ > this.§%"$§)
               {
                  _loc9_.x *= 1 - §7#E§.§#!d§ * this.§`!1§;
                  _loc9_.y *= 1 - §7#E§.§#!d§ * this.§`!1§;
               }
            }
            _loc11_.x += _loc9_.x * §7#E§.§#!d§;
            _loc11_.y += _loc9_.y * §7#E§.§#!d§;
            if(_loc13_ % param8 == this.§,"C§ % param8)
            {
               if(this.§%#c§.length > _loc12_)
               {
                  _loc19_ = this.§%#c§[_loc12_];
               }
               else
               {
                  _loc19_ = this.§=#v§();
                  this.§&"h§.addChild(_loc19_);
                  this.§%#c§.push(_loc19_);
               }
               _loc12_++;
               _loc19_.x = _loc11_.x / §8#3§.§2K§;
               _loc19_.y = _loc11_.y / §8#3§.§2K§;
               if(param7)
               {
                  _loc20_ = 1 - _loc12_ / this.laserSightMaxPoints() * this.§+"V§();
                  _loc19_.scaleX = _loc20_;
                  _loc19_.scaleY = _loc20_;
               }
            }
            _loc13_++;
            _loc18_ += _loc15_;
         }
         while(this.§%#c§.length > _loc12_)
         {
            _loc21_ = this.§%#c§.pop();
            this.§&"h§.removeChild(_loc21_);
            this.§#!i§(_loc21_);
         }
         ++this.§,"C§;
      }
      
      protected function §+"V§() : Number
      {
         return 0.7;
      }
      
      protected function laserSightMaxPoints() : int
      {
         return §7#E§.§`"5§;
      }
      
      public function get enabled() : Boolean
      {
         return this.§>#L§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§>#L§ = param1;
         this.§&"h§.visible = this.§>#L§;
      }
      
      private function §=#v§() : Image
      {
         if(this.§""m§ && this.§""m§.length > 0)
         {
            return this.§""m§.pop();
         }
         var _loc1_:Image = new Image(this.§5#2§);
         _loc1_.pivotX = -this.§5#2§.width / 2;
         _loc1_.pivotY = -this.§5#2§.height / 2;
         return _loc1_;
      }
      
      private function §#!i§(param1:Image) : void
      {
         if(!this.§""m§)
         {
            this.§""m§ = new Vector.<Image>();
         }
         this.§""m§.push(param1);
      }
      
      public function §;";§(param1:Number) : void
      {
         this.§,"f§ = param1;
      }
   }
}
