package §_-MC§
{
   import §_-7§.§_-ph§;
   import §_-He§.§_-05§;
   import §_-LP§.§_-PH§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-Pw§ extends Sprite
   {
      
      public static const §_-yO§:int = 0;
      
      public static const §_-Py§:int = 1;
      
      public static const §_-0W§:int = 2;
       
      
      private const §_-eb§:uint = 40;
      
      private const §_-2Y§:Number = 0.3;
      
      private const §_-Jh§:Number = 25;
      
      private const §_-Lp§:Number = 10;
      
      private const §_-aK§:Number = 9;
      
      private var §_-iE§:int;
      
      private var §_-4t§:int;
      
      private var §_-fb§:Array;
      
      private var §_-UH§:Array;
      
      private var §_-0O§:Point;
      
      private var §_-jC§:int;
      
      public function §_-Pw§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§_-bn§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-iE§ = param1 * §_-ph§.§_-6t§;
         this.§_-4t§ = param2 * §_-ph§.§_-an§;
         this.§_-jC§ = param5;
         this.§_-0O§ = new Point(param3,param4);
         this.§_-fb§ = [];
         this.§_-UH§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-eb§)
         {
            (_loc6_ = new §_-bn§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§_-fb§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-bn§ = null;
         while(this.§_-fb§.length > 0)
         {
            _loc1_ = this.§_-fb§.shift();
            _loc1_.clean();
         }
         while(this.§_-UH§.length > 0)
         {
            _loc1_ = this.§_-UH§.shift();
            _loc1_.clean();
         }
         this.§_-fb§ = [];
         this.§_-UH§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-bn§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-PH§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§_-fb§.length > 0)
         {
            _loc5_ = this.§_-fb§.shift();
            _loc6_ = Math.random() * (this.§_-Jh§ - this.§_-Lp§) + this.§_-Lp§;
            if(this.§_-jC§ == §_-yO§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-jC§ == §_-Py§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-jC§ == §_-0W§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§_-9o§ = _loc8_ * _loc6_;
            _loc5_.§_-rU§ = _loc9_ * _loc6_;
            _loc5_.x = this.§_-0O§.x;
            _loc5_.y = this.§_-0O§.y;
            this.§_-UH§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §_-05§.§_-Yr§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§_-UH§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-UH§[_loc4_];
            _loc5_.§_-rU§ += this.§_-2Y§ * param1;
            if(_loc5_.§_-rU§ > this.§_-aK§)
            {
               _loc5_.§_-rU§ = this.§_-aK§;
            }
            _loc5_.x += _loc5_.§_-9o§ * param1;
            _loc5_.y += _loc5_.§_-rU§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-iE§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-4t§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-UH§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§_-UH§.splice(_loc4_,1)) is §_-bn§)
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
