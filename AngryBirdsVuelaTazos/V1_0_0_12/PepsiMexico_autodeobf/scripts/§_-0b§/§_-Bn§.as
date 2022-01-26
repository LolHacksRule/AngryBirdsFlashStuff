package §_-0b§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-Bn§
   {
      
      public static const §_-FG§:int = 6;
      
      public static const §_-§:int = 3;
      
      public static const §_-u5§:int = 0;
      
      public static const §_-3V§:int = 0;
      
      public static const §_-25§:int = 4;
       
      
      private var §_-es§:Vector.<Number>;
      
      private var §_-rl§:Vector.<Number>;
      
      private var §_-rQ§:int;
      
      private var §_-6n§:int;
      
      private var §_-hD§:Boolean;
      
      public function §_-Bn§(param1:int, param2:Boolean = false)
      {
         super();
         this.§_-es§ = new Vector.<Number>(param1 * §_-FG§,false);
         this.§_-rl§ = new Vector.<Number>(param1 * §_-§,false);
         this.§_-hD§ = param2;
      }
      
      public function reset() : void
      {
         this.§_-rQ§ = 0;
         this.§_-6n§ = 0;
         this.§_-rl§.fixed = false;
      }
      
      public function §_-QU§(param1:§_-Bn§) : void
      {
         var _loc2_:Number = NaN;
         this.§_-es§.fixed = false;
         for each(_loc2_ in param1.§_-es§)
         {
            var _loc5_:*;
            this.§_-es§[_loc5_ = this.§_-rQ§++] = _loc2_;
         }
         this.§_-es§.fixed = true;
         this.§_-rl§.fixed = false;
         for each(_loc2_ in param1.§_-rl§)
         {
            this.§_-rl§[_loc5_ = this.§_-6n§++] = _loc2_;
         }
         this.§_-rl§.fixed = true;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-§;
         this.§_-rl§[_loc5_] = param2;
         this.§_-rl§[_loc5_ + 1] = param3;
      }
      
      public function §_-AI§(param1:int) : Vector3D
      {
         var _loc2_:int = param1 * §_-§;
         return new Vector3D(this.§_-rl§[_loc2_],this.§_-rl§[_loc2_ + 1],0);
      }
      
      public function §_-oQ§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (!!this.§_-hD§ ? param3 : 1) / 255;
         this.§_-U8§(this.§_-gI§(param1) + §_-3V§,§_-xD§.§_-oD§(param2) * _loc4_,§_-xD§.§_-P1§(param2) * _loc4_,§_-xD§.§_-e-§(param2) * _loc4_,param3);
      }
      
      public function getColor(param1:int) : uint
      {
         var _loc2_:int = this.§_-gI§(param1) + §_-3V§;
         var _loc3_:Number = !!this.§_-hD§ ? Number(this.§_-es§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         var _loc4_:Number = this.§_-es§[_loc2_] / _loc3_;
         var _loc5_:Number = this.§_-es§[_loc2_ + 1] / _loc3_;
         var _loc6_:Number = this.§_-es§[_loc2_ + 2] / _loc3_;
         return §_-xD§.§_-qE§(_loc4_ * 255,_loc5_ * 255,_loc6_ * 255);
      }
      
      public function §_-Jw§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-hD§)
         {
            this.§_-oQ§(param1,this.getColor(param1),param2);
         }
         else
         {
            _loc3_ = this.§_-gI§(param1) + §_-3V§ + 3;
            this.§_-es§[_loc3_] = param2;
         }
      }
      
      public function §_-7z§(param1:int) : Number
      {
         var _loc2_:int = this.§_-gI§(param1) + §_-3V§ + 3;
         return this.§_-es§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-U8§(this.§_-gI§(param1) + §_-25§,param2,param3);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:int = this.§_-gI§(param1) + §_-25§;
         return new Point(this.§_-es§[_loc2_],this.§_-es§[_loc2_ + 1]);
      }
      
      public function clone() : §_-Bn§
      {
         var _loc1_:§_-Bn§ = new §_-Bn§(0,this.§_-hD§);
         _loc1_.§_-es§ = this.§_-es§.concat();
         _loc1_.§_-es§.fixed = true;
         _loc1_.§_-rl§ = this.§_-rl§.concat();
         _loc1_.§_-rl§.fixed = true;
         return _loc1_;
      }
      
      public function §_-Zc§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-§;
         this.§_-rl§[_loc5_] += param2;
         this.§_-rl§[_loc5_ + 1] += param3;
      }
      
      public function §_-aM§(param1:Matrix3D) : void
      {
         param1.transformVectors(this.§_-rl§,this.§_-rl§);
         this.§_-rl§.fixed = true;
      }
      
      public function §_-py§(param1:int, param2:Matrix3D = null) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(param2)
         {
            _loc3_ = this.§_-AI§(param1);
            _loc4_ = param2.transformVector(_loc3_);
            this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
         }
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         this.§_-ge§(0,this.§_-8N§,param1,param2);
      }
      
      public function §_-ge§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc6_:Number = §_-xD§.§_-oD§(param3) * 0.00392156862745098;
         var _loc7_:Number = §_-xD§.§_-P1§(param3) * 0.00392156862745098;
         var _loc8_:Number = §_-xD§.§_-e-§(param3) * 0.00392156862745098;
         var _loc9_:int = this.§_-gI§(param1);
         var _loc10_:int = 0;
         while(_loc10_ < param2)
         {
            this.§_-U8§(_loc9_ + §_-3V§,_loc6_,_loc7_,_loc8_,param4);
            _loc9_ += §_-FG§;
            _loc10_++;
         }
      }
      
      public function §_-NV§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-hD§)
         {
            this.§_-Jw§(param1,this.§_-7z§(param1) * param2);
         }
         else
         {
            _loc3_ = this.§_-gI§(param1) + §_-3V§ + 3;
            this.§_-es§[_loc3_] *= param2;
         }
      }
      
      private function §_-U8§(param1:int, ... rest) : void
      {
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-es§[param1 + _loc4_] = rest[_loc4_];
            _loc4_++;
         }
      }
      
      private function §_-gI§(param1:int) : int
      {
         return param1 * §_-FG§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == this.§_-hD§)
         {
            return;
         }
         var _loc2_:int = this.§_-es§.length;
         var _loc3_:int = §_-3V§;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§_-es§[_loc3_ + 3];
            _loc5_ = !!this.§_-hD§ ? Number(_loc4_) : Number(1);
            _loc6_ = (!!param1 ? _loc4_ : 1) / _loc5_;
            if(_loc5_ != 0)
            {
               this.§_-es§[_loc3_] *= _loc6_;
               this.§_-es§[_loc3_ + 1] *= _loc6_;
               this.§_-es§[_loc3_ + 2] *= _loc6_;
            }
            _loc3_ += §_-FG§;
         }
         this.§_-hD§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-hD§;
      }
      
      public function get §_-8N§() : int
      {
         return this.§_-es§.length / §_-FG§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-es§;
      }
      
      public function get §_-dj§() : Vector.<Number>
      {
         return this.§_-rl§;
      }
   }
}
