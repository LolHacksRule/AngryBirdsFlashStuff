package §_-7F§
{
   import §_-I1§.§_-2N§;
   import §_-Kj§.§_-8u§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import §in §.§_-tX§;
   
   public class §_-7U§ extends Sprite
   {
      
      public static const §_-td§:int = 0;
      
      public static const §_-cp§:int = 1;
      
      public static const §_-nz§:int = 2;
       
      
      private const §_-rD§:uint = 40;
      
      private const §_-VI§:Number = 0.3;
      
      private const §_-r8§:Number = 25;
      
      private const §_-nj§:Number = 10;
      
      private const §_-3L§:Number = 9;
      
      private var §_-ar§:int;
      
      private var §_-f§:int;
      
      private var §_-WI§:Array;
      
      private var §_-Ra§:Array;
      
      private var §_-Ml§:Point;
      
      private var §_-Ag§:int;
      
      public function §_-7U§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§_-A4§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-ar§ = param1 * §_-2N§.§_-QJ§;
         this.§_-f§ = param2 * §_-2N§.§_-pv§;
         this.§_-Ag§ = param5;
         this.§_-Ml§ = new Point(param3,param4);
         this.§_-WI§ = [];
         this.§_-Ra§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-rD§)
         {
            (_loc6_ = new §_-A4§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§_-WI§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-A4§ = null;
         while(this.§_-WI§.length > 0)
         {
            _loc1_ = this.§_-WI§.shift();
            _loc1_.clean();
         }
         while(this.§_-Ra§.length > 0)
         {
            _loc1_ = this.§_-Ra§.shift();
            _loc1_.clean();
         }
         this.§_-WI§ = [];
         this.§_-Ra§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-A4§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-8u§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§_-WI§.length > 0)
         {
            _loc5_ = this.§_-WI§.shift();
            _loc6_ = Math.random() * (this.§_-r8§ - this.§_-nj§) + this.§_-nj§;
            if(this.§_-Ag§ == §_-td§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-Ag§ == §_-cp§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-Ag§ == §_-nz§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§_-B1§ = _loc8_ * _loc6_;
            _loc5_.§_-5V§ = _loc9_ * _loc6_;
            _loc5_.x = this.§_-Ml§.x;
            _loc5_.y = this.§_-Ml§.y;
            this.§_-Ra§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §_-tX§.§finally§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§_-Ra§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-Ra§[_loc4_];
            _loc5_.§_-5V§ += this.§_-VI§ * param1;
            if(_loc5_.§_-5V§ > this.§_-3L§)
            {
               _loc5_.§_-5V§ = this.§_-3L§;
            }
            _loc5_.x += _loc5_.§_-B1§ * param1;
            _loc5_.y += _loc5_.§_-5V§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-ar§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-f§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-Ra§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§_-Ra§.splice(_loc4_,1)) is §_-A4§)
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
