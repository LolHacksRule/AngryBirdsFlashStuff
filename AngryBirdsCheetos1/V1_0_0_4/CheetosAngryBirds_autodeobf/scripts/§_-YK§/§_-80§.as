package §_-YK§
{
   import §_-9s§.§_-Vc§;
   import §_-9s§.§_-db§;
   import §_-TX§.§_-0X§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-80§ extends Sprite
   {
      
      public static const §_-9R§:int = 0;
      
      public static const §_-GQ§:int = 1;
      
      public static const §_-rj§:int = 2;
       
      
      private const §_-0k§:uint = 40;
      
      private const §_-Ov§:Number = 0.3;
      
      private const §_-S9§:Number = 25;
      
      private const §_-39§:Number = 10;
      
      private const §_-C5§:Number = 9;
      
      private var §_-aA§:int;
      
      private var §_-00H§:int;
      
      private var §_-Pr§:Array;
      
      private var §_-gF§:Array;
      
      private var §_-1f§:Point;
      
      private var §_-d6§:int;
      
      public function §_-80§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§_-k7§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-aA§ = param1 * §_-0X§.§_-Al§;
         this.§_-00H§ = param2 * §_-0X§.§_-6-§;
         this.§_-d6§ = param5;
         this.§_-1f§ = new Point(param3,param4);
         this.§_-Pr§ = [];
         this.§_-gF§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-0k§)
         {
            (_loc6_ = new §_-k7§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§_-Pr§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-k7§ = null;
         while(this.§_-Pr§.length > 0)
         {
            _loc1_ = this.§_-Pr§.shift();
            _loc1_.clean();
         }
         while(this.§_-gF§.length > 0)
         {
            _loc1_ = this.§_-gF§.shift();
            _loc1_.clean();
         }
         this.§_-Pr§ = [];
         this.§_-gF§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-k7§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-Vc§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§_-Pr§.length > 0)
         {
            _loc5_ = this.§_-Pr§.shift();
            _loc6_ = Math.random() * (this.§_-S9§ - this.§_-39§) + this.§_-39§;
            if(this.§_-d6§ == §_-9R§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-d6§ == §_-GQ§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-d6§ == §_-rj§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§_-j7§ = _loc8_ * _loc6_;
            _loc5_.§_-rl§ = _loc9_ * _loc6_;
            _loc5_.x = this.§_-1f§.x;
            _loc5_.y = this.§_-1f§.y;
            this.§_-gF§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §_-db§.§_-yU§.§_-mZ§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§_-gF§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-gF§[_loc4_];
            _loc5_.§_-rl§ += this.§_-Ov§ * param1;
            if(_loc5_.§_-rl§ > this.§_-C5§)
            {
               _loc5_.§_-rl§ = this.§_-C5§;
            }
            _loc5_.x += _loc5_.§_-j7§ * param1;
            _loc5_.y += _loc5_.§_-rl§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-aA§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-00H§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-gF§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§_-gF§.splice(_loc4_,1)) is §_-k7§)
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
