package starling.utils
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class VertexData
   {
      
      public static const ELEMENTS_PER_COLOR_VERTEX:int = 4;
      
      public static const ELEMENTS_PER_TEXTURE_VERTEX:int = 2;
      
      public static const ELEMENTS_PER_POSITION_VERTEX:int = 3;
      
      public static const FLOAT_SIZE:int = 4;
      
      public static const POSITION_OFFSET:int = 0;
      
      public static const COLOR_OFFSET:int = 0;
      
      public static const TEXCOORD_OFFSET:int = 0;
       
      
      private var mVertexTextureData:ByteArray;
      
      private var mVertexColorData:Vector.<Number>;
      
      private var mPositionData:Vector.<Number>;
      
      private var mPremultipliedAlpha:Boolean;
      
      private var mNumVertices:int;
      
      private var mPositions:Vector.<Number>;
      
      public function VertexData(param1:int, param2:Boolean = false)
      {
         this.mPositions = new Vector.<Number>(12,true);
         super();
         this.mVertexTextureData = new ByteArray();
         this.mVertexTextureData.endian = Endian.LITTLE_ENDIAN;
         this.mVertexTextureData.length = param1 * ELEMENTS_PER_TEXTURE_VERTEX * FLOAT_SIZE;
         var _loc3_:int = 0;
         while(_loc3_ < param1 * ELEMENTS_PER_TEXTURE_VERTEX)
         {
            this.mVertexTextureData.writeFloat(0);
            _loc3_++;
         }
         this.mVertexColorData = new Vector.<Number>(param1 * ELEMENTS_PER_COLOR_VERTEX,true);
         this.mPositionData = new Vector.<Number>(param1 * ELEMENTS_PER_POSITION_VERTEX,true);
         this.mPremultipliedAlpha = param2;
         this.mNumVertices = param1;
      }
      
      public function clone() : VertexData
      {
         var _loc1_:VertexData = new VertexData(0,this.mPremultipliedAlpha);
         _loc1_.mVertexTextureData.length = this.mVertexTextureData.length;
         _loc1_.mVertexTextureData.writeBytes(this.mVertexTextureData);
         _loc1_.mVertexColorData = this.mVertexColorData.concat();
         _loc1_.mVertexColorData.fixed = true;
         _loc1_.mPositionData = this.mPositionData.concat();
         _loc1_.mPositionData.fixed = true;
         _loc1_.mNumVertices = this.mNumVertices;
         return _loc1_;
      }
      
      public function copyTo(param1:VertexData, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.mPositionData;
         _loc6_ = this.mNumVertices * ELEMENTS_PER_POSITION_VERTEX;
         _loc7_ = param2 * ELEMENTS_PER_POSITION_VERTEX;
         if(param5)
         {
            param5.transformVectors(this.mPositionData,this.mPositions);
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               var _loc14_:*;
               _loc9_[_loc14_ = _loc7_++] = this.mPositions[_loc8_];
               _loc8_++;
            }
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               _loc9_[_loc14_ = _loc7_++] = this.mPositionData[_loc8_];
               _loc8_++;
            }
         }
         var _loc10_:ByteArray = param1.mVertexTextureData;
         _loc6_ = this.mNumVertices * ELEMENTS_PER_TEXTURE_VERTEX * FLOAT_SIZE;
         _loc7_ = param2 * ELEMENTS_PER_TEXTURE_VERTEX * FLOAT_SIZE;
         if(_loc10_.length < _loc7_ + _loc6_)
         {
            _loc10_.length = _loc7_ + _loc6_;
         }
         _loc10_.position = _loc7_;
         _loc10_.writeBytes(this.mVertexTextureData);
         if(param4 || param3 != 1)
         {
            _loc11_ = param1.mVertexColorData;
            _loc6_ = this.mNumVertices * ELEMENTS_PER_COLOR_VERTEX;
            _loc7_ = param2 * ELEMENTS_PER_COLOR_VERTEX;
            if(param3 == 1)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc6_)
               {
                  _loc11_[_loc14_ = _loc7_++] = this.mVertexColorData[_loc8_];
                  _loc8_++;
               }
            }
            else
            {
               _loc12_ = 0;
               _loc8_ = 0;
               while(_loc8_ < this.mNumVertices)
               {
                  if(this.mPremultipliedAlpha)
                  {
                     _loc13_ = this.mVertexColorData[_loc12_ + 3];
                     _loc13_ = param3 / _loc13_;
                     _loc11_[_loc14_ = _loc7_++] = this.mVertexColorData[_loc12_++] * _loc13_;
                     var _loc15_:*;
                     _loc11_[_loc15_ = _loc7_++] = this.mVertexColorData[_loc12_++] * _loc13_;
                     var _loc16_:*;
                     _loc11_[_loc16_ = _loc7_++] = this.mVertexColorData[_loc12_++] * _loc13_;
                     var _loc17_:*;
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  else
                  {
                     _loc11_[_loc14_ = _loc7_++] = this.mVertexColorData[_loc12_++];
                     _loc11_[_loc15_ = _loc7_++] = this.mVertexColorData[_loc12_++];
                     _loc11_[_loc16_ = _loc7_++] = this.mVertexColorData[_loc12_++];
                     _loc11_[_loc17_ = _loc7_++] = param3;
                  }
                  _loc12_++;
                  _loc8_++;
               }
            }
         }
      }
      
      public function append(param1:VertexData) : void
      {
         var _loc2_:int = this.mVertexTextureData.length;
         this.mVertexTextureData.length += param1.mVertexTextureData.length;
         this.mVertexTextureData.position = _loc2_;
         this.mVertexTextureData.writeBytes(param1.mVertexTextureData);
         this.mVertexColorData.fixed = false;
         var _loc3_:Vector.<Number> = param1.mVertexColorData;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.mVertexColorData.push(_loc3_[_loc5_]);
            _loc5_++;
         }
         this.mVertexColorData.fixed = true;
         this.mPositionData.fixed = false;
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.mPositionData).length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            this.mPositionData.push(_loc6_[_loc8_]);
            _loc8_++;
         }
         this.mPositionData.fixed = true;
         this.mNumVertices += param1.numVertices;
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * ELEMENTS_PER_POSITION_VERTEX;
         var _loc6_:*;
         this.mPositionData[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.mPositionData[_loc7_ = _loc5_++] = param3;
         this.mPositionData[_loc5_] = param4;
      }
      
      public function setPositionXY(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * ELEMENTS_PER_POSITION_VERTEX;
         var _loc5_:*;
         this.mPositionData[_loc5_ = _loc4_++] = param2;
         this.mPositionData[_loc4_] = param3;
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc3_:int = param1 * ELEMENTS_PER_POSITION_VERTEX;
         param2.x = this.mPositionData[_loc3_++];
         param2.y = this.mPositionData[_loc3_++];
         param2.z = this.mPositionData[_loc3_];
      }
      
      public function setColor(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc4_:Number = (_loc4_ = !!this.mPremultipliedAlpha ? Number(param3) : Number(1)) / 255;
         var _loc5_:Number = Color.getRed(param2) * _loc4_;
         var _loc6_:Number = Color.getGreen(param2) * _loc4_;
         var _loc7_:Number = Color.getBlue(param2) * _loc4_;
         this.setColorWithChannels(param1,1,_loc5_,_loc6_,_loc7_,param3);
      }
      
      private function setColorWithChannels(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:int = param1 * ELEMENTS_PER_COLOR_VERTEX;
         var _loc8_:int = param2 - 1;
         while(_loc8_ >= 0)
         {
            var _loc9_:*;
            this.mVertexColorData[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.mVertexColorData[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.mVertexColorData[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.mVertexColorData[_loc12_ = _loc7_++] = param6;
            _loc8_--;
         }
      }
      
      private function scaleColorWithAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:int = param1 * ELEMENTS_PER_COLOR_VERTEX;
         var _loc4_:*;
         this.mVertexColorData[_loc4_ = _loc3_++] = this.mVertexColorData[_loc4_] * param2;
         var _loc5_:*;
         this.mVertexColorData[_loc5_ = _loc3_++] = this.mVertexColorData[_loc5_] * param2;
         var _loc6_:*;
         this.mVertexColorData[_loc6_ = _loc3_++] = this.mVertexColorData[_loc6_] * param2;
         this.mVertexColorData[_loc3_] *= param2;
      }
      
      public function getColor(param1:int) : uint
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = param1 * ELEMENTS_PER_COLOR_VERTEX;
         var _loc3_:Number = !!this.mPremultipliedAlpha ? Number(this.mVertexColorData[_loc2_ + 3]) : Number(1);
         if(_loc3_ == 0)
         {
            return 0;
         }
         _loc3_ = 255 / _loc3_;
         _loc4_ = this.mVertexColorData[_loc2_] * _loc3_;
         _loc5_ = this.mVertexColorData[_loc2_ + 1] * _loc3_;
         _loc6_ = this.mVertexColorData[_loc2_ + 2] * _loc3_;
         return Color.rgb(_loc4_,_loc5_,_loc6_);
      }
      
      public function setAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:int = 0;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(this.mPremultipliedAlpha)
         {
            this.setColor(param1,this.getColor(param1),param2);
         }
         else
         {
            _loc3_ = param1 * ELEMENTS_PER_COLOR_VERTEX + 3;
            this.mVertexColorData[_loc3_] = param2;
         }
      }
      
      public function getAlpha(param1:int) : Number
      {
         var _loc2_:int = param1 * ELEMENTS_PER_COLOR_VERTEX + 3;
         return this.mVertexColorData[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:int = param1 * ELEMENTS_PER_TEXTURE_VERTEX;
         this.mVertexTextureData.position = _loc4_ * FLOAT_SIZE;
         this.mVertexTextureData.writeFloat(param2);
         this.mVertexTextureData.writeFloat(param3);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:int = param1 * ELEMENTS_PER_TEXTURE_VERTEX;
         this.mVertexTextureData.position = _loc3_ * FLOAT_SIZE;
         param2.x = this.mVertexTextureData.readFloat();
         param2.y = this.mVertexTextureData.readFloat();
      }
      
      public function include(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:int = param1 * ELEMENTS_PER_POSITION_VERTEX;
         var _loc6_:*;
         this.mPositionData[_loc6_ = _loc5_++] = this.mPositionData[_loc6_] + param2;
         var _loc7_:*;
         this.mPositionData[_loc7_ = _loc5_++] = this.mPositionData[_loc7_] + param3;
         this.mPositionData[_loc5_] += param4;
      }
      
      public function transformVertex(param1:int, param2:Matrix3D) : void
      {
         var _loc3_:int = param1 * ELEMENTS_PER_POSITION_VERTEX;
         this.mPositions[0] = this.mPositionData[_loc3_];
         this.mPositions[1] = this.mPositionData[_loc3_ + 1];
         this.mPositions[2] = this.mPositionData[_loc3_ + 2];
         param2.transformVectors(this.mPositions,this.mPositions);
         this.mPositionData[_loc3_] = this.mPositions[0];
         this.mPositionData[_loc3_ + 1] = this.mPositions[1];
         this.mPositionData[_loc3_ + 2] = this.mPositions[2];
      }
      
      public function setUniformColor(param1:uint, param2:Number = 1.0) : void
      {
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         var _loc3_:Number = !!this.mPremultipliedAlpha ? Number(param2) : Number(1);
         _loc3_ /= 255;
         var _loc4_:Number = Color.getRed(param1) * _loc3_;
         var _loc5_:Number = Color.getGreen(param1) * _loc3_;
         var _loc6_:Number = Color.getBlue(param1) * _loc3_;
         this.setColorWithChannels(0,this.mNumVertices,_loc4_,_loc5_,_loc6_,param2);
      }
      
      public function setVertexColorsWithChannels(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         if(param6 < 0.001)
         {
            param6 = 0.001;
         }
         var _loc7_:int = param1 * ELEMENTS_PER_COLOR_VERTEX;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            var _loc9_:*;
            this.mVertexColorData[_loc9_ = _loc7_++] = param3;
            var _loc10_:*;
            this.mVertexColorData[_loc10_ = _loc7_++] = param4;
            var _loc11_:*;
            this.mVertexColorData[_loc11_ = _loc7_++] = param5;
            var _loc12_:*;
            this.mVertexColorData[_loc12_ = _loc7_++] = param6;
            _loc8_++;
         }
      }
      
      public function scaleAlpha(param1:int, param2:Number) : void
      {
         var _loc4_:Number = NaN;
         if(param2 < 0.001)
         {
            param2 = 0.001;
         }
         if(param2 == 1)
         {
            return;
         }
         var _loc3_:int = param1 * ELEMENTS_PER_COLOR_VERTEX;
         if(this.mPremultipliedAlpha)
         {
            _loc4_ = this.mVertexColorData[_loc3_ + 3];
            _loc4_ = param2 / _loc4_;
            this.mVertexColorData[_loc3_] *= _loc4_;
            this.mVertexColorData[_loc3_ + 1] *= _loc4_;
            this.mVertexColorData[_loc3_ + 2] *= _loc4_;
            this.mVertexColorData[_loc3_ + 3] = param2;
         }
         else
         {
            this.mVertexColorData[_loc3_ + 3] *= param2;
         }
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == this.mPremultipliedAlpha)
         {
            return;
         }
         if(param2)
         {
            _loc3_ = this.mNumVertices * ELEMENTS_PER_COLOR_VERTEX;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.getAlpha(0);
               _loc6_ = !!this.mPremultipliedAlpha ? Number(_loc5_) : Number(1);
               _loc7_ = !!param1 ? Number(_loc5_) : Number(1);
               if(_loc6_ != 0)
               {
                  _loc7_ /= _loc6_;
                  this.scaleColorWithAlpha(_loc4_,_loc7_);
               }
               _loc4_++;
            }
         }
         this.mPremultipliedAlpha = param1;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.mPremultipliedAlpha;
      }
      
      public function get numVertices() : int
      {
         return this.mNumVertices;
      }
      
      public function set numVertices(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = param1 * ELEMENTS_PER_TEXTURE_VERTEX * FLOAT_SIZE - this.mVertexTextureData.length;
         _loc4_ = this.mVertexTextureData.length;
         this.mVertexTextureData.length += _loc2_;
         if(_loc2_ > 0)
         {
            this.mVertexTextureData.position = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_ / FLOAT_SIZE)
            {
               this.mVertexTextureData.writeFloat(0);
               _loc3_++;
            }
         }
         this.mVertexColorData.fixed = false;
         _loc2_ = param1 * ELEMENTS_PER_COLOR_VERTEX - this.mVertexColorData.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.mVertexColorData.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.mVertexColorData.pop();
            _loc3_++;
         }
         this.mVertexColorData.fixed = true;
         this.mPositionData.fixed = false;
         _loc2_ = param1 * ELEMENTS_PER_POSITION_VERTEX - this.mPositionData.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            this.mPositionData.push(0);
            _loc3_++;
         }
         _loc3_ = _loc2_;
         while(_loc3_ < 0)
         {
            this.mPositionData.pop();
            _loc3_++;
         }
         this.mPositionData.fixed = true;
         this.mNumVertices = param1;
      }
      
      public function get vertexTextureData() : ByteArray
      {
         this.mVertexTextureData.position = 0;
         return this.mVertexTextureData;
      }
      
      public function get vertexColorData() : Vector.<Number>
      {
         return this.mVertexColorData;
      }
      
      public function get rawPositionData() : Vector.<Number>
      {
         return this.mPositionData;
      }
   }
}
