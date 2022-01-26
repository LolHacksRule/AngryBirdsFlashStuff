package §_-l§
{
   import §_-Hw§.§_-3C§;
   import §_-ZI§.§_-Vu§;
   import §_-c7§.§_-m8§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-SN§ extends Sprite
   {
      
      public static const §_-vM§:int = 0;
      
      public static const §_-w6§:int = 1;
      
      public static const §_-MX§:int = 2;
       
      
      private const §_-Wi§:uint = 40;
      
      private const §_-9D§:Number = 0.3;
      
      private const §_-8w§:Number = 25;
      
      private const §_-CU§:Number = 10;
      
      private const §_-cw§:Number = 9;
      
      private var §_-wr§:int;
      
      private var §_-7W§:int;
      
      private var §_-U4§:Array;
      
      private var §_-Xa§:Array;
      
      private var §_-4l§:Point;
      
      private var §_-ZB§:int;
      
      public function §_-SN§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§_-bF§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-wr§ = param1 * §_-3C§.§_-pu§;
         this.§_-7W§ = param2 * §_-3C§.§_-Wc§;
         this.§_-ZB§ = param5;
         this.§_-4l§ = new Point(param3,param4);
         this.§_-U4§ = [];
         this.§_-Xa§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-Wi§)
         {
            (_loc6_ = new §_-bF§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§_-U4§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-bF§ = null;
         while(this.§_-U4§.length > 0)
         {
            _loc1_ = this.§_-U4§.shift();
            _loc1_.clean();
         }
         while(this.§_-Xa§.length > 0)
         {
            _loc1_ = this.§_-Xa§.shift();
            _loc1_.clean();
         }
         this.§_-U4§ = [];
         this.§_-Xa§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-bF§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-Vu§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§_-U4§.length > 0)
         {
            _loc5_ = this.§_-U4§.shift();
            _loc6_ = Math.random() * (this.§_-8w§ - this.§_-CU§) + this.§_-CU§;
            if(this.§_-ZB§ == §_-vM§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-ZB§ == §_-w6§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-ZB§ == §_-MX§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§_-ru§ = _loc8_ * _loc6_;
            _loc5_.§_-K5§ = _loc9_ * _loc6_;
            _loc5_.x = this.§_-4l§.x;
            _loc5_.y = this.§_-4l§.y;
            this.§_-Xa§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §_-m8§.§_-Y8§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§_-Xa§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-Xa§[_loc4_];
            _loc5_.§_-K5§ += this.§_-9D§ * param1;
            if(_loc5_.§_-K5§ > this.§_-cw§)
            {
               _loc5_.§_-K5§ = this.§_-cw§;
            }
            _loc5_.x += _loc5_.§_-ru§ * param1;
            _loc5_.y += _loc5_.§_-K5§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-wr§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-7W§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-Xa§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§_-Xa§.splice(_loc4_,1)) is §_-bF§)
               {
                  _loc13_.clean();
               }
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
