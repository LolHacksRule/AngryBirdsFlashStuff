package §_-ZQ§
{
   import §_-gC§.§_-XR§;
   import §_-hx§.§_-Z0§;
   import §_-hx§.§_-lq§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-qv§ extends Sprite
   {
      
      public static const §_-01§:int = 0;
      
      public static const §_-zx§:int = 1;
      
      public static const §_-6I§:int = 2;
       
      
      private const §_-Oa§:uint = 40;
      
      private const §_-ZZ§:Number = 0.3;
      
      private const §_-7r§:Number = 25;
      
      private const §_-7§:Number = 10;
      
      private const §_-Zy§:Number = 9;
      
      private var §_-PP§:int;
      
      private var §return§:int;
      
      private var §_-Wo§:Array;
      
      private var §_-qA§:Array;
      
      private var §_-Sy§:Point;
      
      private var §_-Xo§:int;
      
      public function §_-qv§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§_-wY§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-PP§ = param1 * §_-XR§.§_-BS§;
         this.§return§ = param2 * §_-XR§.§_-Rt§;
         this.§_-Xo§ = param5;
         this.§_-Sy§ = new Point(param3,param4);
         this.§_-Wo§ = [];
         this.§_-qA§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-Oa§)
         {
            (_loc6_ = new §_-wY§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§_-Wo§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-wY§ = null;
         while(this.§_-Wo§.length > 0)
         {
            _loc1_ = this.§_-Wo§.shift();
            _loc1_.clean();
         }
         while(this.§_-qA§.length > 0)
         {
            _loc1_ = this.§_-qA§.shift();
            _loc1_.clean();
         }
         this.§_-Wo§ = [];
         this.§_-qA§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-wY§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-Z0§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§_-Wo§.length > 0)
         {
            _loc5_ = this.§_-Wo§.shift();
            _loc6_ = Math.random() * (this.§_-7r§ - this.§_-7§) + this.§_-7§;
            if(this.§_-Xo§ == §_-01§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-Xo§ == §_-zx§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-Xo§ == §_-6I§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§_-lD§ = _loc8_ * _loc6_;
            _loc5_.§_-84§ = _loc9_ * _loc6_;
            _loc5_.x = this.§_-Sy§.x;
            _loc5_.y = this.§_-Sy§.y;
            this.§_-qA§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §_-lq§.§var §.§_-OC§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§_-qA§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-qA§[_loc4_];
            _loc5_.§_-84§ += this.§_-ZZ§ * param1;
            if(_loc5_.§_-84§ > this.§_-Zy§)
            {
               _loc5_.§_-84§ = this.§_-Zy§;
            }
            _loc5_.x += _loc5_.§_-lD§ * param1;
            _loc5_.y += _loc5_.§_-84§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-PP§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§return§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-qA§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§_-qA§.splice(_loc4_,1)) is §_-wY§)
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
