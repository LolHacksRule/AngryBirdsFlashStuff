package §_-ox§
{
   import §_-20§.§_-j5§;
   import §_-hU§.§_-MB§;
   import §_-mD§.§_-29§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-p4§ extends Sprite
   {
      
      public static const §_-m2§:int = 0;
      
      public static const §_-4p§:int = 1;
      
      public static const §_-d7§:int = 2;
       
      
      private const §_-UH§:uint = 40;
      
      private const §_-vG§:Number = 0.3;
      
      private const §_-Ij§:Number = 25;
      
      private const §_-Rf§:Number = 10;
      
      private const §_-nd§:Number = 9;
      
      private var §_-ap§:int;
      
      private var §_-wH§:int;
      
      private var §_-3x§:Array;
      
      private var §_-3U§:Array;
      
      private var §_-qr§:Point;
      
      private var §_-vH§:int;
      
      public function §_-p4§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§_-PQ§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-ap§ = param1 * §_-MB§.§_-Rs§;
         this.§_-wH§ = param2 * §_-MB§.§_-y3§;
         this.§_-vH§ = param5;
         this.§_-qr§ = new Point(param3,param4);
         this.§_-3x§ = [];
         this.§_-3U§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-UH§)
         {
            (_loc6_ = new §_-PQ§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§_-3x§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-PQ§ = null;
         while(this.§_-3x§.length > 0)
         {
            _loc1_ = this.§_-3x§.shift();
            _loc1_.clean();
         }
         while(this.§_-3U§.length > 0)
         {
            _loc1_ = this.§_-3U§.shift();
            _loc1_.clean();
         }
         this.§_-3x§ = [];
         this.§_-3U§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-PQ§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-j5§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§_-3x§.length > 0)
         {
            _loc5_ = this.§_-3x§.shift();
            _loc6_ = Math.random() * (this.§_-Ij§ - this.§_-Rf§) + this.§_-Rf§;
            if(this.§_-vH§ == §_-m2§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-vH§ == §_-4p§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-vH§ == §_-d7§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§_-Nd§ = _loc8_ * _loc6_;
            _loc5_.§_-zG§ = _loc9_ * _loc6_;
            _loc5_.x = this.§_-qr§.x;
            _loc5_.y = this.§_-qr§.y;
            this.§_-3U§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §_-29§.§_-NW§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§_-3U§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-3U§[_loc4_];
            _loc5_.§_-zG§ += this.§_-vG§ * param1;
            if(_loc5_.§_-zG§ > this.§_-nd§)
            {
               _loc5_.§_-zG§ = this.§_-nd§;
            }
            _loc5_.x += _loc5_.§_-Nd§ * param1;
            _loc5_.y += _loc5_.§_-zG§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-ap§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-wH§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-3U§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§_-3U§.splice(_loc4_,1)) is §_-PQ§)
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
