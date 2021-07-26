package §8#p§
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>!B§
   {
      
      public static const §'p§:int = 2;
      
      public static const §;",§:int = 4;
      
      public static const §^!c§:int = 2;
      
      private static var §-2§:Point = new Point();
       
      
      private var §6"[§:Vector.<Number>;
      
      private var §&$8§:Vector.<Number>;
      
      private var §>#k§:Vector.<Number>;
      
      private var §1#z§:Boolean;
      
      private var §!#w§:int;
      
      public function §>!B§(param1:int, param2:Boolean = false)
      {
         super();
         this.§6"[§ = new Vector.<Number>(0);
         this.§&$8§ = new Vector.<Number>(0);
         this.§>#k§ = new Vector.<Number>(0);
         this.§1#z§ = param2;
         this.numVertices = param1;
      }
      
      public function clone(param1:int = 0, param2:int = -1) : §>!B§
      {
         if(param2 < 0 || param1 + param2 > this.§!#w§)
         {
            param2 = this.§!#w§ - param1;
         }
         var _loc3_:§>!B§ = new §>!B§(0,this.§1#z§);
         _loc3_.§!#w§ = param2;
         _loc3_.§6"[§ = this.§6"[§.slice(param1 * §'p§,param2 * §'p§);
         _loc3_.§&$8§ = this.§&$8§.slice(param1 * §;",§,param2 * §;",§);
         _loc3_.§>#k§ = this.§>#k§.slice(param1 * §^!c§,param2 * §^!c§);
         return _loc3_;
      }
      
      public function copyTo(param1:§>!B§, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Matrix = null) : void
      {
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(param4 < 0 || param3 + param4 > this.§!#w§)
         {
            param4 = this.§!#w§ - param3;
         }
         var _loc9_:Vector.<Number> = param1.§6"[§;
         var _loc10_:int = param2 * §'p§;
         var _loc11_:int = param3 * §'p§;
         var _loc12_:int = param4 * §'p§;
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
                  _loc20_ = this.§6"[§[int(_loc13_++)];
                  _loc21_ = this.§6"[§[int(_loc13_++)];
                  _loc9_[int(_loc10_++)] = _loc14_ * _loc20_ + _loc16_ * _loc21_ + _loc18_;
                  _loc9_[int(_loc10_++)] = _loc17_ * _loc21_ + _loc15_ * _loc20_ + _loc19_;
               }
            }
            else
            {
               _loc13_ = _loc11_;
               while(_loc13_ < _loc12_)
               {
                  _loc9_[int(_loc10_++)] = this.§6"[§[int(_loc13_++)];
                  _loc9_[int(_loc10_++)] = this.§6"[§[int(_loc13_++)];
               }
            }
         }
         if(param6)
         {
            _loc9_ = param1.§&$8§;
            _loc10_ = param2 * §;",§;
            _loc11_ = param3 * §;",§;
            _loc12_ = param4 * §;",§;
            _loc13_ = _loc11_;
            while(_loc13_ < _loc12_)
            {
               _loc9_[int(_loc10_++)] = this.§&$8§[_loc13_];
               _loc13_++;
            }
         }
         if(param7)
         {
            _loc9_ = param1.§>#k§;
            _loc10_ = param2 * §^!c§;
            _loc12_ = this.§!#w§ * §^!c§;
            _loc13_ = _loc11_ = param3 * §^!c§;
            while(_loc13_ < _loc12_)
            {
               _loc9_[int(_loc10_++)] = this.§>#k§[_loc13_];
               _loc13_++;
            }
         }
      }
      
      public function §>#`§(param1:§>!B§) : void
      {
         param1.copyTo(this,this.§!#w§,0,-1,true,true,true);
         this.§!#w§ += param1.numVertices;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'p§;
         var _loc5_:*;
         this.§6"[§[_loc5_ = _loc4_++] = param2;
         this.§6"[§[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §'p§;
         param2.x = this.§6"[§[_loc3_++];
         param2.y = this.§6"[§[_loc3_];
      }
      
      public function §3"6§(param1:int, param2:uint) : void
      {
         var _loc3_:int = param1 * §;",§;
         var _loc4_:Number = !!this.§1#z§ ? Number(this.§&$8§[int(_loc3_ + 3)]) : Number(1);
         this.§&$8§[_loc3_] = (param2 >> 16 & 255) / 255 * _loc4_;
         this.§&$8§[int(_loc3_ + 1)] = (param2 >> 8 & 255) / 255 * _loc4_;
         this.§&$8§[int(_loc3_ + 2)] = (param2 & 255) / 255 * _loc4_;
      }
      
      public function §2"_§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * §;",§;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.§&$8§[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.§&$8§[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.§&$8§[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.§&$8§[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function §,!u§(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * §;",§;
         var _loc3_:Number = !!this.§1#z§ ? Number(this.§&$8§[int(_loc2_ + 3)]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc4_ = this.§&$8§[_loc2_++] / _loc3_;
         _loc5_ = this.§&$8§[_loc2_++] / _loc3_;
         _loc6_ = this.§&$8§[_loc2_] / _loc3_;
         return int(_loc4_ * 255) << 16 | int(_loc5_ * 255) << 8 | int(_loc6_ * 255);
      }
      
      public function §="<§(param1:int, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc3_:int = param1 * §;",§;
         if(this.§1#z§)
         {
            if(param2 < 0.001)
            {
               param2 = 0.001;
            }
            _loc4_ = this.§=#4§(param1);
            if(param2 != _loc4_)
            {
               var _loc5_:*;
               this.§&$8§[_loc5_ = _loc3_++] = this.§&$8§[_loc5_] * (param2 / _loc4_);
               var _loc6_:*;
               this.§&$8§[_loc6_ = _loc3_++] = this.§&$8§[_loc6_] * (param2 / _loc4_);
               var _loc7_:*;
               this.§&$8§[_loc7_ = _loc3_++] = this.§&$8§[_loc7_] * (param2 / _loc4_);
               this.§&$8§[_loc3_] = param2;
            }
         }
         else
         {
            this.§&$8§[_loc3_ + 3] = param2;
         }
      }
      
      public function §=#4§(param1:int) : Number
      {
         var _loc2_:int = param1 * §;",§ + 3;
         return this.§&$8§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §^!c§;
         var _loc5_:*;
         this.§>#k§[_loc5_ = _loc4_++] = param2;
         this.§>#k§[_loc4_] = param3;
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * §^!c§;
         param2.x = this.§>#k§[_loc3_++];
         param2.y = this.§>#k§[_loc3_];
      }
      
      public function §,!q§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * §'p§;
         var _loc5_:*;
         this.§6"[§[_loc5_ = _loc4_++] = this.§6"[§[_loc5_] + param2;
         this.§6"[§[_loc4_] += param3;
      }
      
      public function §""g§(param1:uint) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!#w§)
         {
            this.§3"6§(_loc2_,param1);
            _loc2_++;
         }
      }
      
      public function §%#L§(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!#w§)
         {
            this.§="<§(_loc2_,param1);
            _loc2_++;
         }
      }
      
      public function §##^§(param1:int, param2:Number, param3:int = 1) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param2 == 1)
         {
            return;
         }
         if(param3 < 0 || param1 + param3 > this.§!#w§)
         {
            param3 = this.§!#w§ - param1;
         }
         if(this.§1#z§)
         {
            _loc4_ = 0;
            while(_loc4_ < param3)
            {
               this.§="<§(param1 + _loc4_,this.§=#4§(param1 + _loc4_) * param2);
               _loc4_++;
            }
         }
         else
         {
            _loc5_ = param1 * §;",§ + 3;
            _loc4_ = 0;
            while(_loc4_ < param3)
            {
               this.§&$8§[int(_loc5_ + _loc4_ * §;",§)] = this.§&$8§[int(_loc5_ + _loc4_ * §;",§)] * param2;
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
         if(param3 < 0 || param2 + param3 > this.§!#w§)
         {
            param3 = this.§!#w§ - param2;
         }
         var _loc5_:Number = Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         var _loc7_:Number = Number.MAX_VALUE;
         var _loc8_:Number = -Number.MAX_VALUE;
         var _loc9_:int = param2 * §'p§;
         if(param1 == null)
         {
            _loc12_ = param2;
            while(_loc12_ < param3)
            {
               _loc10_ = this.§6"[§[_loc9_];
               _loc11_ = this.§6"[§[int(_loc9_ + 1)];
               _loc9_ += §'p§;
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
               _loc10_ = this.§6"[§[_loc9_];
               _loc11_ = this.§6"[§[int(_loc9_ + 1)];
               _loc9_ += §'p§;
               §"_§.§>U§(param1,_loc10_,_loc11_,§-2§);
               _loc5_ = _loc5_ < §-2§.x ? Number(_loc5_) : Number(§-2§.x);
               _loc6_ = _loc6_ > §-2§.x ? Number(_loc6_) : Number(§-2§.x);
               _loc7_ = _loc7_ < §-2§.y ? Number(_loc7_) : Number(§-2§.y);
               _loc8_ = _loc8_ > §-2§.y ? Number(_loc8_) : Number(§-2§.y);
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
         while(_loc2_ < this.§!#w§)
         {
            _loc3_ = 0;
            while(_loc3_ < 4)
            {
               if(this.§&$8§[int(_loc1_ + _loc3_)] != 1)
               {
                  return true;
               }
               _loc3_++;
            }
            _loc1_ += §;",§;
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
         if(param1 == this.§1#z§)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.§!#w§ * §;",§;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§&$8§[int(_loc4_ + 3)];
               _loc6_ = !!this.§1#z§ ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  this.§&$8§[_loc4_] = this.§&$8§[_loc4_] / _loc6_ * _loc7_;
                  this.§&$8§[int(_loc4_ + 1)] = this.§&$8§[int(_loc4_ + 1)] / _loc6_ * _loc7_;
                  this.§&$8§[int(_loc4_ + 2)] = this.§&$8§[int(_loc4_ + 2)] / _loc6_ * _loc7_;
               }
               _loc4_ += §;",§;
            }
         }
         this.§1#z§ = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§1#z§;
      }
      
      public function get numVertices() : int
      {
         return this.§!#w§;
      }
      
      public function set numVertices(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = param1 - this.§!#w§;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.§6"[§.push(0,0);
            this.§&$8§.push(1,1,1,1);
            this.§>#k§.push(0,0);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < -_loc3_)
         {
            this.§6"[§.pop();
            this.§6"[§.pop();
            this.§&$8§.pop();
            this.§&$8§.pop();
            this.§&$8§.pop();
            this.§&$8§.pop();
            this.§>#k§.pop();
            this.§>#k§.pop();
            _loc2_++;
         }
         this.§!#w§ = param1;
      }
      
      public function get §@1§() : Vector.<Number>
      {
         return this.§6"[§;
      }
      
      public function get §4l§() : Vector.<Number>
      {
         return this.§&$8§;
      }
      
      public function get §,#%§() : Vector.<Number>
      {
         return this.§>#k§;
      }
   }
}
