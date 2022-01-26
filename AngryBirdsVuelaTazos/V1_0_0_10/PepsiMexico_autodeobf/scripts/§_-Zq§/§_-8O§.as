package §_-Zq§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-8O§
   {
      
      public static const §_-ht§:int = 6;
      
      public static const §_-uI§:int = 3;
      
      public static const §_-Fz§:int = 0;
      
      public static const §_-Md§:int = 0;
      
      public static const §_-px§:int = 4;
       
      
      private var §_-9K§:Vector.<Number>;
      
      private var §_-GR§:Vector.<Number>;
      
      private var §_-s3§:int;
      
      private var §_-DR§:int;
      
      private var §_-Hr§:Boolean;
      
      public function §_-8O§(param1:int, param2:Boolean = false)
      {
         super();
         this.§_-9K§ = new Vector.<Number>(param1 * §_-ht§,false);
         this.§_-GR§ = new Vector.<Number>(param1 * §_-uI§,false);
         this.§_-Hr§ = param2;
      }
      
      public function reset() : void
      {
         this.§_-s3§ = 0;
         this.§_-DR§ = 0;
         this.§_-GR§.fixed = false;
      }
      
      public function append(param1:§_-8O§) : void
      {
         var _loc2_:Number = NaN;
         this.§_-9K§.fixed = false;
         for each(_loc2_ in param1.§_-9K§)
         {
            var _loc5_:*;
            this.§_-9K§[_loc5_ = this.§_-s3§++] = _loc2_;
         }
         this.§_-9K§.fixed = true;
         this.§_-GR§.fixed = false;
         for each(_loc2_ in param1.§_-GR§)
         {
            this.§_-GR§[_loc5_ = this.§_-DR§++] = _loc2_;
         }
         this.§_-GR§.fixed = true;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-uI§;
         this.§_-GR§[_loc5_] = param2;
         this.§_-GR§[_loc5_ + 1] = param3;
      }
      
      public function §_-oQ§(param1:int) : Vector3D
      {
         var _loc2_:int = param1 * §_-uI§;
         return new Vector3D(this.§_-GR§[_loc2_],this.§_-GR§[_loc2_ + 1],0);
      }
      
      public function §_-Xo§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (!!this.§_-Hr§ ? param3 : 1) / 255;
         this.§_-pY§(this.§_-bV§(param1) + §_-Md§,§_-K0§.§_-T5§(param2) * _loc4_,§_-K0§.§_-Rp§(param2) * _loc4_,§_-K0§.§_-kl§(param2) * _loc4_,param3);
      }
      
      public function getColor(param1:int) : uint
      {
         var _loc2_:int = this.§_-bV§(param1) + §_-Md§;
         var _loc3_:Number = !!this.§_-Hr§ ? Number(this.§_-9K§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         var _loc4_:Number = this.§_-9K§[_loc2_] / _loc3_;
         var _loc5_:Number = this.§_-9K§[_loc2_ + 1] / _loc3_;
         var _loc6_:Number = this.§_-9K§[_loc2_ + 2] / _loc3_;
         return §_-K0§.§_-hk§(_loc4_ * 255,_loc5_ * 255,_loc6_ * 255);
      }
      
      public function §_-gv§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Hr§)
         {
            this.§_-Xo§(param1,this.getColor(param1),param2);
         }
         else
         {
            _loc3_ = this.§_-bV§(param1) + §_-Md§ + 3;
            this.§_-9K§[_loc3_] = param2;
         }
      }
      
      public function §_-Bt§(param1:int) : Number
      {
         var _loc2_:int = this.§_-bV§(param1) + §_-Md§ + 3;
         return this.§_-9K§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-pY§(this.§_-bV§(param1) + §_-px§,param2,param3);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:int = this.§_-bV§(param1) + §_-px§;
         return new Point(this.§_-9K§[_loc2_],this.§_-9K§[_loc2_ + 1]);
      }
      
      public function clone() : §_-8O§
      {
         var _loc1_:§_-8O§ = new §_-8O§(0,this.§_-Hr§);
         _loc1_.§_-9K§ = this.§_-9K§.concat();
         _loc1_.§_-9K§.fixed = true;
         _loc1_.§_-GR§ = this.§_-GR§.concat();
         _loc1_.§_-GR§.fixed = true;
         return _loc1_;
      }
      
      public function §_-3§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-uI§;
         this.§_-GR§[_loc5_] += param2;
         this.§_-GR§[_loc5_ + 1] += param3;
      }
      
      public function §_-3W§(param1:Matrix3D) : void
      {
         param1.transformVectors(this.§_-GR§,this.§_-GR§);
         this.§_-GR§.fixed = true;
      }
      
      public function dynamic(param1:int, param2:Matrix3D = null) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(param2)
         {
            _loc3_ = this.§_-oQ§(param1);
            _loc4_ = param2.transformVector(_loc3_);
            this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
         }
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         this.§_-t4§(0,this.§_-wF§,param1,param2);
      }
      
      public function §_-t4§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc6_:Number = §_-K0§.§_-T5§(param3) * 0.00392156862745098;
         var _loc7_:Number = §_-K0§.§_-Rp§(param3) * 0.00392156862745098;
         var _loc8_:Number = §_-K0§.§_-kl§(param3) * 0.00392156862745098;
         var _loc9_:int = this.§_-bV§(param1);
         var _loc10_:int = 0;
         while(_loc10_ < param2)
         {
            this.§_-pY§(_loc9_ + §_-Md§,_loc6_,_loc7_,_loc8_,param4);
            _loc9_ += §_-ht§;
            _loc10_++;
         }
      }
      
      public function §_-eb§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Hr§)
         {
            this.§_-gv§(param1,this.§_-Bt§(param1) * param2);
         }
         else
         {
            _loc3_ = this.§_-bV§(param1) + §_-Md§ + 3;
            this.§_-9K§[_loc3_] *= param2;
         }
      }
      
      private function §_-pY§(param1:int, ... rest) : void
      {
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-9K§[param1 + _loc4_] = rest[_loc4_];
            _loc4_++;
         }
      }
      
      private function §_-bV§(param1:int) : int
      {
         return param1 * §_-ht§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == this.§_-Hr§)
         {
            return;
         }
         var _loc2_:int = this.§_-9K§.length;
         var _loc3_:int = §_-Md§;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§_-9K§[_loc3_ + 3];
            _loc5_ = !!this.§_-Hr§ ? Number(_loc4_) : Number(1);
            _loc6_ = (!!param1 ? _loc4_ : 1) / _loc5_;
            if(_loc5_ != 0)
            {
               this.§_-9K§[_loc3_] *= _loc6_;
               this.§_-9K§[_loc3_ + 1] *= _loc6_;
               this.§_-9K§[_loc3_ + 2] *= _loc6_;
            }
            _loc3_ += §_-ht§;
         }
         this.§_-Hr§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Hr§;
      }
      
      public function get §_-wF§() : int
      {
         return this.§_-9K§.length / §_-ht§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-9K§;
      }
      
      public function get §_-6H§() : Vector.<Number>
      {
         return this.§_-GR§;
      }
   }
}
