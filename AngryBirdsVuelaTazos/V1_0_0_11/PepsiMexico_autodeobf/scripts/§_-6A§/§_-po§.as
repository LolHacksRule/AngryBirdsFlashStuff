package §_-6A§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-po§
   {
      
      public static const §_-9L§:int = 6;
      
      public static const §_-Gj§:int = 3;
      
      public static const §_-hR§:int = 0;
      
      public static const §_-XJ§:int = 0;
      
      public static const §_-L8§:int = 4;
       
      
      private var §_-2K§:Vector.<Number>;
      
      private var §_-XH§:Vector.<Number>;
      
      private var §_-Z§:int;
      
      private var §_-St§:int;
      
      private var §_-9I§:Boolean;
      
      public function §_-po§(param1:int, param2:Boolean = false)
      {
         super();
         this.§_-2K§ = new Vector.<Number>(param1 * §_-9L§,false);
         this.§_-XH§ = new Vector.<Number>(param1 * §_-Gj§,false);
         this.§_-9I§ = param2;
      }
      
      public function reset() : void
      {
         this.§_-Z§ = 0;
         this.§_-St§ = 0;
         this.§_-XH§.fixed = false;
      }
      
      public function §_-vV§(param1:§_-po§) : void
      {
         var _loc2_:Number = NaN;
         this.§_-2K§.fixed = false;
         for each(_loc2_ in param1.§_-2K§)
         {
            var _loc5_:*;
            this.§_-2K§[_loc5_ = this.§_-Z§++] = _loc2_;
         }
         this.§_-2K§.fixed = true;
         this.§_-XH§.fixed = false;
         for each(_loc2_ in param1.§_-XH§)
         {
            this.§_-XH§[_loc5_ = this.§_-St§++] = _loc2_;
         }
         this.§_-XH§.fixed = true;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-Gj§;
         this.§_-XH§[_loc5_] = param2;
         this.§_-XH§[_loc5_ + 1] = param3;
      }
      
      public function §_-NN§(param1:int) : Vector3D
      {
         var _loc2_:int = param1 * §_-Gj§;
         return new Vector3D(this.§_-XH§[_loc2_],this.§_-XH§[_loc2_ + 1],0);
      }
      
      public function §_-3U§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (!!this.§_-9I§ ? param3 : 1) / 255;
         this.§_-Dp§(this.§_-iU§(param1) + §_-XJ§,§_-Ta§.§_-Vz§(param2) * _loc4_,§_-Ta§.§_-A7§(param2) * _loc4_,§_-Ta§.§_-4E§(param2) * _loc4_,param3);
      }
      
      public function getColor(param1:int) : uint
      {
         var _loc2_:int = this.§_-iU§(param1) + §_-XJ§;
         var _loc3_:Number = !!this.§_-9I§ ? Number(this.§_-2K§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         var _loc4_:Number = this.§_-2K§[_loc2_] / _loc3_;
         var _loc5_:Number = this.§_-2K§[_loc2_ + 1] / _loc3_;
         var _loc6_:Number = this.§_-2K§[_loc2_ + 2] / _loc3_;
         return §_-Ta§.§_-tx§(_loc4_ * 255,_loc5_ * 255,_loc6_ * 255);
      }
      
      public function §_-2G§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-9I§)
         {
            this.§_-3U§(param1,this.getColor(param1),param2);
         }
         else
         {
            _loc3_ = this.§_-iU§(param1) + §_-XJ§ + 3;
            this.§_-2K§[_loc3_] = param2;
         }
      }
      
      public function §function§(param1:int) : Number
      {
         var _loc2_:int = this.§_-iU§(param1) + §_-XJ§ + 3;
         return this.§_-2K§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-Dp§(this.§_-iU§(param1) + §_-L8§,param2,param3);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:int = this.§_-iU§(param1) + §_-L8§;
         return new Point(this.§_-2K§[_loc2_],this.§_-2K§[_loc2_ + 1]);
      }
      
      public function clone() : §_-po§
      {
         var _loc1_:§_-po§ = new §_-po§(0,this.§_-9I§);
         _loc1_.§_-2K§ = this.§_-2K§.concat();
         _loc1_.§_-2K§.fixed = true;
         _loc1_.§_-XH§ = this.§_-XH§.concat();
         _loc1_.§_-XH§.fixed = true;
         return _loc1_;
      }
      
      public function §else§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-Gj§;
         this.§_-XH§[_loc5_] += param2;
         this.§_-XH§[_loc5_ + 1] += param3;
      }
      
      public function §_-tq§(param1:Matrix3D) : void
      {
         param1.transformVectors(this.§_-XH§,this.§_-XH§);
         this.§_-XH§.fixed = true;
      }
      
      public function §_-mL§(param1:int, param2:Matrix3D = null) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(param2)
         {
            _loc3_ = this.§_-NN§(param1);
            _loc4_ = param2.transformVector(_loc3_);
            this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
         }
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         this.§_-QZ§(0,this.§_-Kb§,param1,param2);
      }
      
      public function §_-QZ§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc6_:Number = §_-Ta§.§_-Vz§(param3) * 0.00392156862745098;
         var _loc7_:Number = §_-Ta§.§_-A7§(param3) * 0.00392156862745098;
         var _loc8_:Number = §_-Ta§.§_-4E§(param3) * 0.00392156862745098;
         var _loc9_:int = this.§_-iU§(param1);
         var _loc10_:int = 0;
         while(_loc10_ < param2)
         {
            this.§_-Dp§(_loc9_ + §_-XJ§,_loc6_,_loc7_,_loc8_,param4);
            _loc9_ += §_-9L§;
            _loc10_++;
         }
      }
      
      public function §_-ix§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-9I§)
         {
            this.§_-2G§(param1,this.§function§(param1) * param2);
         }
         else
         {
            _loc3_ = this.§_-iU§(param1) + §_-XJ§ + 3;
            this.§_-2K§[_loc3_] *= param2;
         }
      }
      
      private function §_-Dp§(param1:int, ... rest) : void
      {
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-2K§[param1 + _loc4_] = rest[_loc4_];
            _loc4_++;
         }
      }
      
      private function §_-iU§(param1:int) : int
      {
         return param1 * §_-9L§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == this.§_-9I§)
         {
            return;
         }
         var _loc2_:int = this.§_-2K§.length;
         var _loc3_:int = §_-XJ§;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§_-2K§[_loc3_ + 3];
            _loc5_ = !!this.§_-9I§ ? Number(_loc4_) : Number(1);
            _loc6_ = (!!param1 ? _loc4_ : 1) / _loc5_;
            if(_loc5_ != 0)
            {
               this.§_-2K§[_loc3_] *= _loc6_;
               this.§_-2K§[_loc3_ + 1] *= _loc6_;
               this.§_-2K§[_loc3_ + 2] *= _loc6_;
            }
            _loc3_ += §_-9L§;
         }
         this.§_-9I§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-9I§;
      }
      
      public function get §_-Kb§() : int
      {
         return this.§_-2K§.length / §_-9L§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-2K§;
      }
      
      public function get §_-Di§() : Vector.<Number>
      {
         return this.§_-XH§;
      }
   }
}
