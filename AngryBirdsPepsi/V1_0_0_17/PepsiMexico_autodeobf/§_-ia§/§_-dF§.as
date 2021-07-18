package §_-ia§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-dF§
   {
      
      public static const §_-YF§:int = 6;
      
      public static const §_-T6§:int = 3;
      
      public static const §_-TJ§:int = 0;
      
      public static const §_-RM§:int = 0;
      
      public static const §_-j4§:int = 4;
       
      
      private var §_-DU§:Vector.<Number>;
      
      private var §_-5G§:Vector.<Number>;
      
      private var §_-lF§:int;
      
      private var §_-q§:int;
      
      private var §_-Cr§:Boolean;
      
      public function §_-dF§(param1:int, param2:Boolean = false)
      {
         super();
         this.§_-DU§ = new Vector.<Number>(param1 * §_-YF§,false);
         this.§_-5G§ = new Vector.<Number>(param1 * §_-T6§,false);
         this.§_-Cr§ = param2;
      }
      
      public function reset() : void
      {
         this.§_-lF§ = 0;
         this.§_-q§ = 0;
         this.§_-5G§.fixed = false;
      }
      
      public function §_-Zi§(param1:§_-dF§) : void
      {
         var _loc2_:Number = NaN;
         this.§_-DU§.fixed = false;
         for each(_loc2_ in param1.§_-DU§)
         {
            var _loc5_:*;
            this.§_-DU§[_loc5_ = this.§_-lF§++] = _loc2_;
         }
         this.§_-DU§.fixed = true;
         this.§_-5G§.fixed = false;
         for each(_loc2_ in param1.§_-5G§)
         {
            this.§_-5G§[_loc5_ = this.§_-q§++] = _loc2_;
         }
         this.§_-5G§.fixed = true;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-T6§;
         this.§_-5G§[_loc5_] = param2;
         this.§_-5G§[_loc5_ + 1] = param3;
      }
      
      public function §_-rO§(param1:int) : Vector3D
      {
         var _loc2_:int = param1 * §_-T6§;
         return new Vector3D(this.§_-5G§[_loc2_],this.§_-5G§[_loc2_ + 1],0);
      }
      
      public function §_-dy§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (!!this.§_-Cr§ ? param3 : 1) / 255;
         this.§_-C9§(this.§_-42§(param1) + §_-RM§,§_-xi§.§_-UI§(param2) * _loc4_,§_-xi§.§_-KU§(param2) * _loc4_,§_-xi§.§_-gf§(param2) * _loc4_,param3);
      }
      
      public function getColor(param1:int) : uint
      {
         var _loc2_:int = this.§_-42§(param1) + §_-RM§;
         var _loc3_:Number = !!this.§_-Cr§ ? Number(this.§_-DU§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         var _loc4_:Number = this.§_-DU§[_loc2_] / _loc3_;
         var _loc5_:Number = this.§_-DU§[_loc2_ + 1] / _loc3_;
         var _loc6_:Number = this.§_-DU§[_loc2_ + 2] / _loc3_;
         return §_-xi§.§_-6F§(_loc4_ * 255,_loc5_ * 255,_loc6_ * 255);
      }
      
      public function §_-wk§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Cr§)
         {
            this.§_-dy§(param1,this.getColor(param1),param2);
         }
         else
         {
            _loc3_ = this.§_-42§(param1) + §_-RM§ + 3;
            this.§_-DU§[_loc3_] = param2;
         }
      }
      
      public function §_-Hy§(param1:int) : Number
      {
         var _loc2_:int = this.§_-42§(param1) + §_-RM§ + 3;
         return this.§_-DU§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-C9§(this.§_-42§(param1) + §_-j4§,param2,param3);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:int = this.§_-42§(param1) + §_-j4§;
         return new Point(this.§_-DU§[_loc2_],this.§_-DU§[_loc2_ + 1]);
      }
      
      public function clone() : §_-dF§
      {
         var _loc1_:§_-dF§ = new §_-dF§(0,this.§_-Cr§);
         _loc1_.§_-DU§ = this.§_-DU§.concat();
         _loc1_.§_-DU§.fixed = true;
         _loc1_.§_-5G§ = this.§_-5G§.concat();
         _loc1_.§_-5G§.fixed = true;
         return _loc1_;
      }
      
      public function §_-w5§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-T6§;
         this.§_-5G§[_loc5_] += param2;
         this.§_-5G§[_loc5_ + 1] += param3;
      }
      
      public function §_-vF§(param1:Matrix3D) : void
      {
         param1.transformVectors(this.§_-5G§,this.§_-5G§);
         this.§_-5G§.fixed = true;
      }
      
      public function §_-7Z§(param1:int, param2:Matrix3D = null) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(param2)
         {
            _loc3_ = this.§_-rO§(param1);
            _loc4_ = param2.transformVector(_loc3_);
            this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
         }
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         this.§_-9D§(0,this.§_-4f§,param1,param2);
      }
      
      public function §_-9D§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc6_:Number = §_-xi§.§_-UI§(param3) * 0.00392156862745098;
         var _loc7_:Number = §_-xi§.§_-KU§(param3) * 0.00392156862745098;
         var _loc8_:Number = §_-xi§.§_-gf§(param3) * 0.00392156862745098;
         var _loc9_:int = this.§_-42§(param1);
         var _loc10_:int = 0;
         while(_loc10_ < param2)
         {
            this.§_-C9§(_loc9_ + §_-RM§,_loc6_,_loc7_,_loc8_,param4);
            _loc9_ += §_-YF§;
            _loc10_++;
         }
      }
      
      public function §_-V§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Cr§)
         {
            this.§_-wk§(param1,this.§_-Hy§(param1) * param2);
         }
         else
         {
            _loc3_ = this.§_-42§(param1) + §_-RM§ + 3;
            this.§_-DU§[_loc3_] *= param2;
         }
      }
      
      private function §_-C9§(param1:int, ... rest) : void
      {
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-DU§[param1 + _loc4_] = rest[_loc4_];
            _loc4_++;
         }
      }
      
      private function §_-42§(param1:int) : int
      {
         return param1 * §_-YF§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == this.§_-Cr§)
         {
            return;
         }
         var _loc2_:int = this.§_-DU§.length;
         var _loc3_:int = §_-RM§;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§_-DU§[_loc3_ + 3];
            _loc5_ = !!this.§_-Cr§ ? Number(_loc4_) : Number(1);
            _loc6_ = (!!param1 ? _loc4_ : 1) / _loc5_;
            if(_loc5_ != 0)
            {
               this.§_-DU§[_loc3_] *= _loc6_;
               this.§_-DU§[_loc3_ + 1] *= _loc6_;
               this.§_-DU§[_loc3_ + 2] *= _loc6_;
            }
            _loc3_ += §_-YF§;
         }
         this.§_-Cr§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Cr§;
      }
      
      public function get §_-4f§() : int
      {
         return this.§_-DU§.length / §_-YF§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-DU§;
      }
      
      public function get §_-rc§() : Vector.<Number>
      {
         return this.§_-5G§;
      }
   }
}
