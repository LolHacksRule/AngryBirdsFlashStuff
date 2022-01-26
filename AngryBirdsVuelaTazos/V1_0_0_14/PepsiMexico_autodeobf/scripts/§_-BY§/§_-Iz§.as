package §_-BY§
{
   import §_-12§.§_-7l§;
   import §_-M0§.§_-u4§;
   import §_-Qn§.§_-AG§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-Iz§ extends Sprite
   {
      
      public static const §_-1v§:int = 0;
      
      public static const §_-Tv§:int = 1;
      
      public static const §_-V§:int = 2;
       
      
      private const §_-m§:uint = 40;
      
      private const §_-Ts§:Number = 0.3;
      
      private const §_-xB§:Number = 25;
      
      private const §_-4x§:Number = 10;
      
      private const §_-VG§:Number = 9;
      
      private var §_-of§:int;
      
      private var §_-gR§:int;
      
      private var §_-0-§:Array;
      
      private var §_-xg§:Array;
      
      private var §_-19§:Point;
      
      private var §_-02§:int;
      
      public function §_-Iz§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§_-KT§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-of§ = param1 * §_-u4§.§_-cS§;
         this.§_-gR§ = param2 * §_-u4§.§_-Ps§;
         this.§_-02§ = param5;
         this.§_-19§ = new Point(param3,param4);
         this.§_-0-§ = [];
         this.§_-xg§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-m§)
         {
            (_loc6_ = new §_-KT§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§_-0-§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-KT§ = null;
         while(this.§_-0-§.length > 0)
         {
            _loc1_ = this.§_-0-§.shift();
            _loc1_.clean();
         }
         while(this.§_-xg§.length > 0)
         {
            _loc1_ = this.§_-xg§.shift();
            _loc1_.clean();
         }
         this.§_-0-§ = [];
         this.§_-xg§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-KT§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-7l§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§_-0-§.length > 0)
         {
            _loc5_ = this.§_-0-§.shift();
            _loc6_ = Math.random() * (this.§_-xB§ - this.§_-4x§) + this.§_-4x§;
            if(this.§_-02§ == §_-1v§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-02§ == §_-Tv§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-02§ == §_-V§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§_-wy§ = _loc8_ * _loc6_;
            _loc5_.§set § = _loc9_ * _loc6_;
            _loc5_.x = this.§_-19§.x;
            _loc5_.y = this.§_-19§.y;
            this.§_-xg§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §_-AG§.§_-aI§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§_-xg§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-xg§[_loc4_];
            _loc5_.§set § += this.§_-Ts§ * param1;
            if(_loc5_.§set § > this.§_-VG§)
            {
               _loc5_.§set § = this.§_-VG§;
            }
            _loc5_.x += _loc5_.§_-wy§ * param1;
            _loc5_.y += _loc5_.§set § * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-of§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-gR§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-xg§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§_-xg§.splice(_loc4_,1)) is §_-KT§)
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
