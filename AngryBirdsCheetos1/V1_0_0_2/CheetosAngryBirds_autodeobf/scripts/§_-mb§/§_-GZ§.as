package §_-mb§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-GZ§
   {
      
      public static const §_-8e§:int = 6;
      
      public static const §_-bJ§:int = 3;
      
      public static const §_-Wu§:int = 0;
      
      public static const §_-hv§:int = 0;
      
      public static const §_-Os§:int = 4;
       
      
      private var §_-sQ§:Vector.<Number>;
      
      private var §_-Iq§:Vector.<Number>;
      
      private var §_-jK§:int;
      
      private var §_-JE§:int;
      
      private var §_-Qx§:Boolean;
      
      public function §_-GZ§(param1:int, param2:Boolean = false)
      {
         super();
         this.§_-sQ§ = new Vector.<Number>(param1 * §_-8e§,false);
         this.§_-Iq§ = new Vector.<Number>(param1 * §_-bJ§,false);
         this.§_-Qx§ = param2;
      }
      
      public function reset() : void
      {
         this.§_-jK§ = 0;
         this.§_-JE§ = 0;
         this.§_-Iq§.fixed = false;
      }
      
      public function §_-kM§(param1:§_-GZ§) : void
      {
         var _loc2_:Number = NaN;
         this.§_-sQ§.fixed = false;
         for each(_loc2_ in param1.§_-sQ§)
         {
            var _loc5_:*;
            this.§_-sQ§[_loc5_ = this.§_-jK§++] = _loc2_;
         }
         this.§_-sQ§.fixed = true;
         this.§_-Iq§.fixed = false;
         for each(_loc2_ in param1.§_-Iq§)
         {
            this.§_-Iq§[_loc5_ = this.§_-JE§++] = _loc2_;
         }
         this.§_-Iq§.fixed = true;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-bJ§;
         this.§_-Iq§[_loc5_] = param2;
         this.§_-Iq§[_loc5_ + 1] = param3;
      }
      
      public function §_-QV§(param1:int) : Vector3D
      {
         var _loc2_:int = param1 * §_-bJ§;
         return new Vector3D(this.§_-Iq§[_loc2_],this.§_-Iq§[_loc2_ + 1],0);
      }
      
      public function §_-Ao§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (!!this.§_-Qx§ ? param3 : 1) / 255;
         this.§_-ub§(this.§_-4c§(param1) + §_-hv§,§_-RQ§.§_-LH§(param2) * _loc4_,§_-RQ§.§_-B-§(param2) * _loc4_,§_-RQ§.§_-0a§(param2) * _loc4_,param3);
      }
      
      public function §_-Xh§(param1:int) : uint
      {
         var _loc2_:int = this.§_-4c§(param1) + §_-hv§;
         var _loc3_:Number = !!this.§_-Qx§ ? Number(this.§_-sQ§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         var _loc4_:Number = this.§_-sQ§[_loc2_] / _loc3_;
         var _loc5_:Number = this.§_-sQ§[_loc2_ + 1] / _loc3_;
         var _loc6_:Number = this.§_-sQ§[_loc2_ + 2] / _loc3_;
         return §_-RQ§.§_-Gt§(_loc4_ * 255,_loc5_ * 255,_loc6_ * 255);
      }
      
      public function §_-lZ§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Qx§)
         {
            this.§_-Ao§(param1,this.§_-Xh§(param1),param2);
         }
         else
         {
            _loc3_ = this.§_-4c§(param1) + §_-hv§ + 3;
            this.§_-sQ§[_loc3_] = param2;
         }
      }
      
      public function §_-1T§(param1:int) : Number
      {
         var _loc2_:int = this.§_-4c§(param1) + §_-hv§ + 3;
         return this.§_-sQ§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-ub§(this.§_-4c§(param1) + §_-Os§,param2,param3);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:int = this.§_-4c§(param1) + §_-Os§;
         return new Point(this.§_-sQ§[_loc2_],this.§_-sQ§[_loc2_ + 1]);
      }
      
      public function clone() : §_-GZ§
      {
         var _loc1_:§_-GZ§ = new §_-GZ§(0,this.§_-Qx§);
         _loc1_.§_-sQ§ = this.§_-sQ§.concat();
         _loc1_.§_-sQ§.fixed = true;
         _loc1_.§_-Iq§ = this.§_-Iq§.concat();
         _loc1_.§_-Iq§.fixed = true;
         return _loc1_;
      }
      
      public function §_-Ca§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-bJ§;
         this.§_-Iq§[_loc5_] += param2;
         this.§_-Iq§[_loc5_ + 1] += param3;
      }
      
      public function §_-ky§(param1:Matrix3D) : void
      {
         param1.transformVectors(this.§_-Iq§,this.§_-Iq§);
         this.§_-Iq§.fixed = true;
      }
      
      public function §_-rW§(param1:int, param2:Matrix3D = null) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(param2)
         {
            _loc3_ = this.§_-QV§(param1);
            _loc4_ = param2.transformVector(_loc3_);
            this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
         }
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         this.§_-UC§(0,this.§_-CY§,param1,param2);
      }
      
      public function §_-UC§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc6_:Number = §_-RQ§.§_-LH§(param3) * 0.00392156862745098;
         var _loc7_:Number = §_-RQ§.§_-B-§(param3) * 0.00392156862745098;
         var _loc8_:Number = §_-RQ§.§_-0a§(param3) * 0.00392156862745098;
         var _loc9_:int = this.§_-4c§(param1);
         var _loc10_:int = 0;
         while(_loc10_ < param2)
         {
            this.§_-ub§(_loc9_ + §_-hv§,_loc6_,_loc7_,_loc8_,param4);
            _loc9_ += §_-8e§;
            _loc10_++;
         }
      }
      
      public function §_-hG§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc7_:int = this.§_-4c§(param1);
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            this.§_-ub§(_loc7_ + §_-hv§,param3,param4,param5,param6);
            _loc7_ += §_-8e§;
            _loc8_++;
         }
      }
      
      public function §_-0-g§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Qx§)
         {
            this.§_-lZ§(param1,this.§_-1T§(param1) * param2);
         }
         else
         {
            _loc3_ = this.§_-4c§(param1) + §_-hv§ + 3;
            this.§_-sQ§[_loc3_] *= param2;
         }
      }
      
      private function §_-ub§(param1:int, ... rest) : void
      {
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-sQ§[param1 + _loc4_] = rest[_loc4_];
            _loc4_++;
         }
      }
      
      private function §_-4c§(param1:int) : int
      {
         return param1 * §_-8e§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == this.§_-Qx§)
         {
            return;
         }
         var _loc2_:int = this.§_-sQ§.length;
         var _loc3_:int = §_-hv§;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§_-sQ§[_loc3_ + 3];
            _loc5_ = !!this.§_-Qx§ ? Number(_loc4_) : Number(1);
            _loc6_ = (!!param1 ? _loc4_ : 1) / _loc5_;
            if(_loc5_ != 0)
            {
               this.§_-sQ§[_loc3_] *= _loc6_;
               this.§_-sQ§[_loc3_ + 1] *= _loc6_;
               this.§_-sQ§[_loc3_ + 2] *= _loc6_;
            }
            _loc3_ += §_-8e§;
         }
         this.§_-Qx§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Qx§;
      }
      
      public function get §_-CY§() : int
      {
         return this.§_-sQ§.length / §_-8e§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-sQ§;
      }
      
      public function get §_-jS§() : Vector.<Number>
      {
         return this.§_-Iq§;
      }
   }
}
