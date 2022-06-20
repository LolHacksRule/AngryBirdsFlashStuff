package §>l§
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%"O§
   {
      
      public static const §"#l§:int = 2;
      
      public static const §5q§:int = 4;
      
      public static const §1-§:int = 2;
      
      private static var §4!r§:Point = new Point();
       
      
      private var §->§:Vector.<Number>;
      
      private var §,!V§:Vector.<Number>;
      
      private var §+#x§:Vector.<Number>;
      
      private var §=S§:Boolean;
      
      private var §="_§:int;
      
      public function §%"O§(param1:int, param2:Boolean = false)
      {
         super();
         this.§->§ = new Vector.<Number>(0);
         this.§,!V§ = new Vector.<Number>(0);
         this.§+#x§ = new Vector.<Number>(0);
         this.§=S§ = param2;
         this.numVertices = param1;
      }
      
      public function clone(param1:int = 0, param2:int = -1) : §%"O§
      {
         if(param2 < 0 || param1 + param2 > this.§="_§)
         {
            param2 = this.§="_§ - param1;
         }
         var _loc3_:§%"O§ = new §%"O§(0,this.§=S§);
         _loc3_.§="_§ = param2;
         _loc3_.§->§ = this.§->§.slice(param1 * §"#l§,param2 * §"#l§);
         _loc3_.§,!V§ = this.§,!V§.slice(param1 * §5q§,param2 * §5q§);
         _loc3_.§+#x§ = this.§+#x§.slice(param1 * §1-§,param2 * §1-§);
         return _loc3_;
      }
      
      public function copyTo(param1:§%"O§, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Matrix = null) : void
      {
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(param4 < 0 || param3 + param4 > this.§="_§)
         {
            param4 = this.§="_§ - param3;
         }
         var _loc9_:Vector.<Number> = param1.§->§;
         var _loc10_:int = param2 * §"#l§;
         var _loc11_:int = param3 * §"#l§;
         var _loc12_:int = param4 * §"#l§;
         var _loc13_:int = 0;
         if(param5)
         {
            if(param8)
            {
               _loc14_ = Number(param8.a);
               _loc15_ = Number(param8.b);
               _loc16_ = Number(param8.c);
               _loc17_ = Number(param8.d);
               _loc18_ = Number(param8.tx);
               _loc19_ = Number(param8.ty);
               _loc13_ = _loc11_;
               while(_loc13_ < _loc12_)
               {
                  _loc20_ = this.§->§[int(_loc13_++)];
                  _loc21_ = this.§->§[int(_loc13_++)];
                  _loc9_[int(_loc10_++)] = _loc14_ * _loc20_ + _loc16_ * _loc21_ + _loc18_;
                  _loc9_[int(_loc10_++)] = _loc17_ * _loc21_ + _loc15_ * _loc20_ + _loc19_;
               }
            }
            else
            {
               _loc13_ = _loc11_;
               while(_loc13_ < _loc12_)
               {
                  _loc9_[int(_loc10_++)] = this.§->§[int(_loc13_++)];
                  _loc9_[int(_loc10_++)] = this.§->§[int(_loc13_++)];
               }
            }
         }
         if(param6)
         {
            _loc9_ = param1.§,!V§;
            _loc10_ = param2 * §5q§;
            _loc11_ = param3 * §5q§;
            _loc12_ = param4 * §5q§;
            _loc13_ = _loc11_;
            while(_loc13_ < _loc12_)
            {
               _loc9_[int(_loc10_++)] = this.§,!V§[_loc13_];
               _loc13_++;
            }
         }
         if(param7)
         {
            _loc9_ = param1.§+#x§;
            _loc10_ = param2 * §1-§;
            _loc12_ = this.§="_§ * §1-§;
            _loc13_ = _loc11_ = param3 * §1-§;
            while(_loc13_ < _loc12_)
            {
               _loc9_[int(_loc10_++)] = this.§+#x§[_loc13_];
               _loc13_++;
            }
         }
      }
      
      public function §5#f§(param1:§%"O§) : void
      {
         param1.copyTo(this,this.§="_§,0,-1,true,true,true);
         this.§="_§ += param1.numVertices;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"#l§;
         var _loc5_:*;
         this.§->§[_loc5_ = _loc4_++] = param2;
         this.§->§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §"#l§;
         param2.x = this.§->§[_loc3_++];
         param2.y = this.§->§[_loc3_];
      }
      
      public function §?e§(param1:int, param2:uint) : void
      {
         var _loc3_:int = param1 * §5q§;
         var _loc4_:Number = !!this.§=S§ ? Number(this.§,!V§[int(_loc3_ + 3)]) : Number(1);
         this.§,!V§[_loc3_] = (param2 >> 16 & 255) / 255 * _loc4_;
         this.§,!V§[int(_loc3_ + 1)] = (param2 >> 8 & 255) / 255 * _loc4_;
         this.§,!V§[int(_loc3_ + 2)] = (param2 & 255) / 255 * _loc4_;
      }
      
      public function §4%§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §5q§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§,!V§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§,!V§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§,!V§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§,!V§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §=#U§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §5q§;
         var _loc3_:Number = !!this.§=S§ ? Number(this.§,!V§[int(_loc2_ + 3)]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc4_ = this.§,!V§[_loc2_++] / _loc3_;
         _loc5_ = this.§,!V§[_loc2_++] / _loc3_;
         _loc6_ = this.§,!V§[_loc2_] / _loc3_;
         return int(_loc4_ * 255) << 16 | int(_loc5_ * 255) << 8 | int(_loc6_ * 255);
      }
      
      public function §+$2§(param1:int, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:int = param1 * §5q§;
         if(this.§=S§)
         {
            if(param2 < 0.001)
            {
               param2 = 0.001;
            }
            _loc4_ = this.§[+§(param1);
            if(param2 != _loc4_)
            {
               var _loc5_:*;
               this.§,!V§[_loc5_ = _loc3_++] = this.§,!V§[_loc5_] * (param2 / _loc4_);
               var _loc6_:*;
               this.§,!V§[_loc6_ = _loc3_++] = this.§,!V§[_loc6_] * (param2 / _loc4_);
               var _loc7_:*;
               this.§,!V§[_loc7_ = _loc3_++] = this.§,!V§[_loc7_] * (param2 / _loc4_);
               this.§,!V§[_loc3_] = param2;
            }
         }
         else
         {
            this.§,!V§[_loc3_ + 3] = param2;
         }
      }
      
      public function §[+§(param1:int) : Number
      {
         var _loc2_:int = param1 * §5q§ + 3;
         return this.§,!V§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §1-§;
         var _loc5_:*;
         this.§+#x§[_loc5_ = _loc4_++] = param2;
         this.§+#x§[_loc4_] = param3;
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §1-§;
         param2.x = this.§+#x§[_loc3_++];
         param2.y = this.§+#x§[_loc3_];
      }
      
      public function §-0§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §"#l§;
         var _loc5_:*;
         this.§->§[_loc5_ = _loc4_++] = this.§->§[_loc5_] + param2;
         this.§->§[_loc4_] += param3;
      }
      
      public function §3$;§(param1:uint) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§="_§)
         {
            this.§?e§(_loc2_,param1);
            _loc2_++;
         }
      }
      
      public function §<`§(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§="_§)
         {
            this.§+$2§(_loc2_,param1);
            _loc2_++;
         }
      }
      
      public function §"4§(param1:int, param2:Number, param3:int = 1) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param2 == 1)
         {
            return;
         }
         if(param3 < 0 || param1 + param3 > this.§="_§)
         {
            param3 = this.§="_§ - param1;
         }
         if(this.§=S§)
         {
            _loc4_ = 0;
            while(_loc4_ < param3)
            {
               this.§+$2§(param1 + _loc4_,this.§[+§(param1 + _loc4_) * param2);
               _loc4_++;
            }
         }
         else
         {
            _loc5_ = param1 * §5q§ + 3;
            _loc4_ = 0;
            while(_loc4_ < param3)
            {
               this.§,!V§[int(_loc5_ + _loc4_ * §5q§)] = this.§,!V§[int(_loc5_ + _loc4_ * §5q§)] * param2;
               _loc4_++;
            }
         }
      }
      
      public function getBounds(param1:Matrix = null, param2:int = 0, param3:int = -1, param4:Rectangle = null) : Rectangle
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         if(param4 == null)
         {
            param4 = new Rectangle();
         }
         if(param3 < 0 || param2 + param3 > this.§="_§)
         {
            param3 = this.§="_§ - param2;
         }
         var _loc5_:Number = Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         var _loc7_:Number = Number.MAX_VALUE;
         var _loc8_:Number = -Number.MAX_VALUE;
         var _loc9_:int = param2 * §"#l§;
         if(param1 == null)
         {
            _loc12_ = param2;
            while(_loc12_ < param3)
            {
               _loc10_ = this.§->§[_loc9_];
               _loc11_ = this.§->§[int(_loc9_ + 1)];
               _loc9_ += §"#l§;
               _loc5_ = _loc5_ < _loc10_ ? Number(_loc5_) : Number(_loc10_);
               _loc6_ = _loc6_ > _loc10_ ? Number(_loc6_) : Number(_loc10_);
               _loc7_ = _loc7_ < _loc11_ ? Number(_loc7_) : Number(_loc11_);
               _loc8_ = _loc8_ > _loc11_ ? Number(_loc8_) : Number(_loc11_);
               _loc12_++;
            }
         }
         else
         {
            _loc12_ = param2;
            while(_loc12_ < param3)
            {
               _loc10_ = this.§->§[_loc9_];
               _loc11_ = this.§->§[int(_loc9_ + 1)];
               _loc9_ += §"#l§;
               §+!Y§.§^t§(param1,_loc10_,_loc11_,§4!r§);
               _loc5_ = _loc5_ < §4!r§.x ? Number(_loc5_) : Number(§4!r§.x);
               _loc6_ = _loc6_ > §4!r§.x ? Number(_loc6_) : Number(§4!r§.x);
               _loc7_ = _loc7_ < §4!r§.y ? Number(_loc7_) : Number(§4!r§.y);
               _loc8_ = _loc8_ > §4!r§.y ? Number(_loc8_) : Number(§4!r§.y);
               _loc12_++;
            }
         }
         param4.setTo(_loc5_,_loc7_,_loc6_ - _loc5_,_loc8_ - _loc7_);
         return param4;
      }
      
      public function get tinted() : Boolean
      {
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§="_§)
         {
            _loc3_ = 0;
            while(_loc3_ < 4)
            {
               if(this.§,!V§[int(_loc1_ + _loc3_)] != 1)
               {
                  return true;
               }
               _loc3_++;
            }
            _loc1_ += §5q§;
            _loc2_++;
         }
         return false;
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.§=S§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§="_§ * §5q§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§,!V§[int(_loc4_ + 3)];
               _loc6_ = !!this.§=S§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  this.§,!V§[_loc4_] = this.§,!V§[_loc4_] / _loc6_ * _loc7_;
                  this.§,!V§[int(_loc4_ + 1)] = this.§,!V§[int(_loc4_ + 1)] / _loc6_ * _loc7_;
                  this.§,!V§[int(_loc4_ + 2)] = this.§,!V§[int(_loc4_ + 2)] / _loc6_ * _loc7_;
               }
               _loc4_ += §5q§;
            }
         }
         this.§=S§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§=S§;
      }
      
      public function get numVertices() : int
      {
         return this.§="_§;
      }
      
      public function set numVertices(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = param1 - this.§="_§;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.§->§.push(0,0);
            this.§,!V§.push(1,1,1,1);
            this.§+#x§.push(0,0);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < -_loc3_)
         {
            this.§->§.pop();
            this.§->§.pop();
            this.§,!V§.pop();
            this.§,!V§.pop();
            this.§,!V§.pop();
            this.§,!V§.pop();
            this.§+#x§.pop();
            this.§+#x§.pop();
            _loc2_++;
         }
         this.§="_§ = param1;
      }
      
      public function get §@"d§() : Vector.<Number>
      {
         return this.§->§;
      }
      
      public function get § "e§() : Vector.<Number>
      {
         return this.§,!V§;
      }
      
      public function get §@8§() : Vector.<Number>
      {
         return this.§+#x§;
      }
   }
}
