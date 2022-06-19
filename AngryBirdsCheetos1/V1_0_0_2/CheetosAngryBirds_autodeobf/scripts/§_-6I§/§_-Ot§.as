package §_-6I§
{
   import §_-94§.§_-si§;
   import §_-jV§.§_-GL§;
   import §_-jV§.§_-mI§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-Ot§ extends Sprite
   {
      
      public static const §_-Ts§:int = 0;
      
      public static const §_-PV§:int = 1;
      
      public static const §_-1M§:int = 2;
       
      
      private const §_-hY§:uint = 40;
      
      private const §_-07§:Number = 0.3;
      
      private const §_-Pm§:Number = 25;
      
      private const §_-Zf§:Number = 10;
      
      private const §_-Gk§:Number = 9;
      
      private var §_-Eh§:int;
      
      private var §_-9j§:int;
      
      private var §_-4F§:Array;
      
      private var §_-E8§:Array;
      
      private var §_-f-§:Point;
      
      private var §_-5a§:int;
      
      public function §_-Ot§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§_-SH§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-Eh§ = param1 * §_-si§.§_-gP§;
         this.§_-9j§ = param2 * §_-si§.§_-3a§;
         this.§_-5a§ = param5;
         this.§_-f-§ = new Point(param3,param4);
         this.§_-4F§ = [];
         this.§_-E8§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-hY§)
         {
            (_loc6_ = new §_-SH§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§_-4F§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-SH§ = null;
         while(this.§_-4F§.length > 0)
         {
            _loc1_ = this.§_-4F§.shift();
            _loc1_.clean();
         }
         while(this.§_-E8§.length > 0)
         {
            _loc1_ = this.§_-E8§.shift();
            _loc1_.clean();
         }
         this.§_-4F§ = [];
         this.§_-E8§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-SH§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-GL§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§_-4F§.length > 0)
         {
            _loc5_ = this.§_-4F§.shift();
            _loc6_ = Math.random() * (this.§_-Pm§ - this.§_-Zf§) + this.§_-Zf§;
            if(this.§_-5a§ == §_-Ts§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-5a§ == §_-PV§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-5a§ == §_-1M§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§_-Vu§ = _loc8_ * _loc6_;
            _loc5_.§_-s7§ = _loc9_ * _loc6_;
            _loc5_.x = this.§_-f-§.x;
            _loc5_.y = this.§_-f-§.y;
            this.§_-E8§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §_-mI§.§_-0H§.§_-cb§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§_-E8§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-E8§[_loc4_];
            _loc5_.§_-s7§ += this.§_-07§ * param1;
            if(_loc5_.§_-s7§ > this.§_-Gk§)
            {
               _loc5_.§_-s7§ = this.§_-Gk§;
            }
            _loc5_.x += _loc5_.§_-Vu§ * param1;
            _loc5_.y += _loc5_.§_-s7§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-Eh§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-9j§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-E8§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§_-E8§.splice(_loc4_,1)) is §_-SH§)
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
