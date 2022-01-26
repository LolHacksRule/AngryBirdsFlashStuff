package §_-kX§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class §_-hW§
   {
      
      public static const §_-QY§:int = 6;
      
      public static const §_-1y§:int = 3;
      
      public static const §_-e5§:int = 0;
      
      public static const §_-1n§:int = 0;
      
      public static const §_-fH§:int = 4;
       
      
      private var §_-B2§:Vector.<Number>;
      
      private var §_-En§:Vector.<Number>;
      
      private var §_-VC§:int;
      
      private var §_-Ua§:int;
      
      private var §_-Hn§:Boolean;
      
      public function §_-hW§(param1:int, param2:Boolean = false)
      {
         super();
         this.§_-B2§ = new Vector.<Number>(param1 * §_-QY§,false);
         this.§_-En§ = new Vector.<Number>(param1 * §_-1y§,false);
         this.§_-Hn§ = param2;
      }
      
      public function reset() : void
      {
         this.§_-VC§ = 0;
         this.§_-Ua§ = 0;
         this.§_-En§.fixed = false;
      }
      
      public function §_-51§(param1:§_-hW§) : void
      {
         var _loc2_:Number = NaN;
         this.§_-B2§.fixed = false;
         for each(_loc2_ in param1.§_-B2§)
         {
            var _loc5_:*;
            this.§_-B2§[_loc5_ = this.§_-VC§++] = _loc2_;
         }
         this.§_-B2§.fixed = true;
         this.§_-En§.fixed = false;
         for each(_loc2_ in param1.§_-En§)
         {
            this.§_-En§[_loc5_ = this.§_-Ua§++] = _loc2_;
         }
         this.§_-En§.fixed = true;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-1y§;
         this.§_-En§[_loc5_] = param2;
         this.§_-En§[_loc5_ + 1] = param3;
      }
      
      public function §_-lP§(param1:int) : Vector3D
      {
         var _loc2_:int = param1 * §_-1y§;
         return new Vector3D(this.§_-En§[_loc2_],this.§_-En§[_loc2_ + 1],0);
      }
      
      public function §_-1G§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         this.§_-Yo§(this.§_-Du§(param1) + §_-1n§,§_-sy§.§_-ss§(param2) * 0.00392156862745098,§_-sy§.§_-9B§(param2) * 0.00392156862745098,§_-sy§.§_-8I§(param2) * 0.00392156862745098,param3);
      }
      
      public function getColor(param1:int) : uint
      {
         var _loc2_:int = this.§_-Du§(param1) + §_-1n§;
         var _loc3_:Number = !!this.§_-Hn§ ? Number(this.§_-B2§[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         var _loc4_:Number = this.§_-B2§[_loc2_] / _loc3_;
         var _loc5_:Number = this.§_-B2§[_loc2_ + 1] / _loc3_;
         var _loc6_:Number = this.§_-B2§[_loc2_ + 2] / _loc3_;
         return §_-sy§.§_-TX§(_loc4_ * 255,_loc5_ * 255,_loc6_ * 255);
      }
      
      public function §_-Om§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Hn§)
         {
            this.§_-1G§(param1,this.getColor(param1),param2);
         }
         else
         {
            _loc3_ = this.§_-Du§(param1) + §_-1n§ + 3;
            this.§_-B2§[_loc3_] = param2;
         }
      }
      
      public function §_-1u§(param1:int) : Number
      {
         var _loc2_:int = this.§_-Du§(param1) + §_-1n§ + 3;
         return this.§_-B2§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-Yo§(this.§_-Du§(param1) + §_-fH§,param2,param3);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:int = this.§_-Du§(param1) + §_-fH§;
         return new Point(this.§_-B2§[_loc2_],this.§_-B2§[_loc2_ + 1]);
      }
      
      public function clone() : §_-hW§
      {
         var _loc1_:§_-hW§ = new §_-hW§(0,this.§_-Hn§);
         _loc1_.§_-B2§ = this.§_-B2§.concat();
         _loc1_.§_-B2§.fixed = true;
         _loc1_.§_-En§ = this.§_-En§.concat();
         _loc1_.§_-En§.fixed = true;
         return _loc1_;
      }
      
      public function §_-jg§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * §_-1y§;
         this.§_-En§[_loc5_] += param2;
         this.§_-En§[_loc5_ + 1] += param3;
      }
      
      public function §_-nM§(param1:Matrix3D) : void
      {
         param1.transformVectors(this.§_-En§,this.§_-En§);
         this.§_-En§.fixed = true;
      }
      
      public function §_-Wl§(param1:int, param2:Matrix3D = null) : void
      {
         var _loc3_:Vector3D = null;
         var _loc4_:Vector3D = null;
         if(param2)
         {
            _loc3_ = this.§_-lP§(param1);
            _loc4_ = param2.transformVector(_loc3_);
            this.setPosition(param1,_loc4_.x,_loc4_.y,_loc4_.z);
         }
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         this.§_-d3§(0,this.§_-yR§,param1,param2);
      }
      
      public function §_-d3§(param1:int, param2:int, param3:uint, param4:Number = 1.0) : void
      {
         var _loc5_:Number = (!!this.§_-Hn§ ? param4 : 1) / 255;
         var _loc6_:Number = §_-sy§.§_-ss§(param3) * _loc5_;
         var _loc7_:Number = §_-sy§.§_-9B§(param3) * _loc5_;
         var _loc8_:Number = §_-sy§.§_-8I§(param3) * _loc5_;
         var _loc9_:int = this.§_-Du§(param1);
         var _loc10_:int = 0;
         while(_loc10_ < param2)
         {
            this.§_-Yo§(_loc9_ + §_-1n§,_loc6_,_loc7_,_loc8_,param4);
            _loc9_ += §_-QY§;
            _loc10_++;
         }
      }
      
      public function §_-Qm§(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(this.§_-Hn§)
         {
            this.§_-Om§(param1,this.§_-1u§(param1) * param2);
         }
         else
         {
            _loc3_ = this.§_-Du§(param1) + §_-1n§ + 3;
            this.§_-B2§[_loc3_] *= param2;
         }
      }
      
      private function §_-Yo§(param1:int, ... rest) : void
      {
         var _loc3_:int = rest.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this.§_-B2§[param1 + _loc4_] = rest[_loc4_];
            _loc4_++;
         }
      }
      
      private function §_-Du§(param1:int) : int
      {
         return param1 * §_-QY§;
      }
      
      public function set premultipliedAlpha(param1:Boolean) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 == this.§_-Hn§)
         {
            return;
         }
         var _loc2_:int = this.§_-B2§.length;
         var _loc3_:int = §_-1n§;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.§_-B2§[_loc3_ + 3];
            _loc5_ = !!this.§_-Hn§ ? Number(_loc4_) : Number(1);
            _loc6_ = (!!param1 ? _loc4_ : 1) / _loc5_;
            if(_loc5_ != 0)
            {
               this.§_-B2§[_loc3_] *= _loc6_;
               this.§_-B2§[_loc3_ + 1] *= _loc6_;
               this.§_-B2§[_loc3_ + 2] *= _loc6_;
            }
            _loc3_ += §_-QY§;
         }
         this.§_-Hn§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Hn§;
      }
      
      public function get §_-yR§() : int
      {
         return this.§_-B2§.length / §_-QY§;
      }
      
      public function get data() : Vector.<Number>
      {
         return this.§_-B2§;
      }
      
      public function get §_-IU§() : Vector.<Number>
      {
         return this.§_-En§;
      }
   }
}
