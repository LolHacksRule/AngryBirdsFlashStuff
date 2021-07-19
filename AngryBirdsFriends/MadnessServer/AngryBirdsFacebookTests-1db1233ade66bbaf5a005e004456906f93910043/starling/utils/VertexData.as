package starling.utils
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class VertexData
   {
      
      public static const ELEMENTS_PER_POSITION_VERTEX:int = 2;
      
      public static const ELEMENTS_PER_COLOR_VERTEX:int = 4;
      
      public static const ELEMENTS_PER_TEXTURE_VERTEX:int = 2;
      
      private static var sHelperPoint:Point = new Point();
       
      
      private var mRawDataPosition:Vector.<Number>;
      
      private var mRawDataColor:Vector.<Number>;
      
      private var mRawDataTexture:Vector.<Number>;
      
      private var mPremultipliedAlpha:Boolean;
      
      private var mNumVertices:int;
      
      public function VertexData(numVertices:int, premultipliedAlpha:Boolean = false)
      {
         super();
         this.mRawDataPosition = new Vector.<Number>(0);
         this.mRawDataColor = new Vector.<Number>(0);
         this.mRawDataTexture = new Vector.<Number>(0);
         this.mPremultipliedAlpha = premultipliedAlpha;
         this.numVertices = numVertices;
      }
      
      public function clone(vertexID:int = 0, numVertices:int = -1) : VertexData
      {
         if(numVertices < 0 || vertexID + numVertices > this.mNumVertices)
         {
            numVertices = this.mNumVertices - vertexID;
         }
         var clone:VertexData = new VertexData(0,this.mPremultipliedAlpha);
         clone.mNumVertices = numVertices;
         clone.mRawDataPosition = this.mRawDataPosition.slice(vertexID * ELEMENTS_PER_POSITION_VERTEX,numVertices * ELEMENTS_PER_POSITION_VERTEX);
         clone.mRawDataColor = this.mRawDataColor.slice(vertexID * ELEMENTS_PER_COLOR_VERTEX,numVertices * ELEMENTS_PER_COLOR_VERTEX);
         clone.mRawDataTexture = this.mRawDataTexture.slice(vertexID * ELEMENTS_PER_TEXTURE_VERTEX,numVertices * ELEMENTS_PER_TEXTURE_VERTEX);
         return clone;
      }
      
      public function copyTo(targetData:VertexData, targetVertexID:int, vertexID:int, numVertices:int, copyPosition:Boolean, copyColor:Boolean, copyTexture:Boolean, matrix:Matrix = null) : void
      {
         var a:Number = NaN;
         var b:Number = NaN;
         var c:Number = NaN;
         var d:Number = NaN;
         var tx:Number = NaN;
         var ty:Number = NaN;
         var x:Number = NaN;
         var y:Number = NaN;
         if(numVertices < 0 || vertexID + numVertices > this.mNumVertices)
         {
            numVertices = this.mNumVertices - vertexID;
         }
         var targetRawData:Vector.<Number> = targetData.mRawDataPosition;
         var targetIndex:int = targetVertexID * ELEMENTS_PER_POSITION_VERTEX;
         var sourceIndex:int = vertexID * ELEMENTS_PER_POSITION_VERTEX;
         var dataLength:int = numVertices * ELEMENTS_PER_POSITION_VERTEX;
         var i:int = 0;
         if(copyPosition)
         {
            if(matrix)
            {
               a = Number(matrix.a);
               b = Number(matrix.b);
               c = Number(matrix.c);
               d = Number(matrix.d);
               tx = Number(matrix.tx);
               ty = Number(matrix.ty);
               for(i = sourceIndex; i < dataLength; )
               {
                  x = this.mRawDataPosition[int(i++)];
                  y = this.mRawDataPosition[int(i++)];
                  targetRawData[int(targetIndex++)] = a * x + c * y + tx;
                  targetRawData[int(targetIndex++)] = d * y + b * x + ty;
               }
            }
            else
            {
               for(i = sourceIndex; i < dataLength; )
               {
                  targetRawData[int(targetIndex++)] = this.mRawDataPosition[int(i++)];
                  targetRawData[int(targetIndex++)] = this.mRawDataPosition[int(i++)];
               }
            }
         }
         if(copyColor)
         {
            targetRawData = targetData.mRawDataColor;
            targetIndex = targetVertexID * ELEMENTS_PER_COLOR_VERTEX;
            sourceIndex = vertexID * ELEMENTS_PER_COLOR_VERTEX;
            dataLength = numVertices * ELEMENTS_PER_COLOR_VERTEX;
            for(i = sourceIndex; i < dataLength; i++)
            {
               targetRawData[int(targetIndex++)] = this.mRawDataColor[i];
            }
         }
         if(copyTexture)
         {
            targetRawData = targetData.mRawDataTexture;
            targetIndex = targetVertexID * ELEMENTS_PER_TEXTURE_VERTEX;
            dataLength = this.mNumVertices * ELEMENTS_PER_TEXTURE_VERTEX;
            sourceIndex = vertexID * ELEMENTS_PER_TEXTURE_VERTEX;
            for(i = sourceIndex; i < dataLength; i++)
            {
               targetRawData[int(targetIndex++)] = this.mRawDataTexture[i];
            }
         }
      }
      
      public function append(data:VertexData) : void
      {
         data.copyTo(this,this.mNumVertices,0,-1,true,true,true);
         this.mNumVertices += data.numVertices;
      }
      
      public function setPosition(vertexID:int, x:Number, y:Number) : void
      {
         var offset:int = vertexID * ELEMENTS_PER_POSITION_VERTEX;
         var _loc5_:*;
         this.mRawDataPosition[_loc5_ = offset++] = x;
         this.mRawDataPosition[offset] = y;
      }
      
      public function getPosition(vertexID:int, position:Point) : void
      {
         var offset:int = vertexID * ELEMENTS_PER_POSITION_VERTEX;
         position.x = this.mRawDataPosition[offset++];
         position.y = this.mRawDataPosition[offset];
      }
      
      public function setColor(vertexID:int, color:uint) : void
      {
         var offset:int = vertexID * ELEMENTS_PER_COLOR_VERTEX;
         var multiplier:Number = !!this.mPremultipliedAlpha ? Number(this.mRawDataColor[int(offset + 3)]) : Number(1);
         this.mRawDataColor[offset] = (color >> 16 & 255) / 255 * multiplier;
         this.mRawDataColor[int(offset + 1)] = (color >> 8 & 255) / 255 * multiplier;
         this.mRawDataColor[int(offset + 2)] = (color & 255) / 255 * multiplier;
      }
      
      public function setVertexColorsWithChannels(startVertexID:int, vertexCount:int, red:Number, green:Number, blue:Number, alpha:Number = 1.0) : void
      {
         if(alpha < 0.001)
         {
            alpha = 0.001;
         }
         var offset:int = startVertexID * ELEMENTS_PER_COLOR_VERTEX;
         for(var i:int = 0; i < vertexCount; i++)
         {
            var _loc9_:*;
            this.mRawDataColor[_loc9_ = offset++] = red;
            var _loc10_:*;
            this.mRawDataColor[_loc10_ = offset++] = green;
            var _loc11_:*;
            this.mRawDataColor[_loc11_ = offset++] = blue;
            var _loc12_:*;
            this.mRawDataColor[_loc12_ = offset++] = alpha;
         }
      }
      
      public function getColor(vertexID:int) : uint
      {
         var red:Number = NaN;
         var green:Number = NaN;
         var blue:Number = NaN;
         var offset:int = vertexID * ELEMENTS_PER_COLOR_VERTEX;
         var divisor:Number = !!this.mPremultipliedAlpha ? Number(this.mRawDataColor[int(offset + 3)]) : Number(1);
         if(divisor == 0)
         {
            return 0;
         }
         red = this.mRawDataColor[offset++] / divisor;
         green = this.mRawDataColor[offset++] / divisor;
         blue = this.mRawDataColor[offset] / divisor;
         return int(red * 255) << 16 | int(green * 255) << 8 | int(blue * 255);
      }
      
      public function setAlpha(vertexID:int, alpha:Number) : void
      {
         var oldAlpha:Number = NaN;
         var offset:int = vertexID * ELEMENTS_PER_COLOR_VERTEX;
         if(this.mPremultipliedAlpha)
         {
            if(alpha < 0.001)
            {
               alpha = 0.001;
            }
            oldAlpha = this.getAlpha(vertexID);
            if(alpha != oldAlpha)
            {
               var _loc5_:*;
               this.mRawDataColor[_loc5_ = offset++] = this.mRawDataColor[_loc5_] * (alpha / oldAlpha);
               var _loc6_:*;
               this.mRawDataColor[_loc6_ = offset++] = this.mRawDataColor[_loc6_] * (alpha / oldAlpha);
               var _loc7_:*;
               this.mRawDataColor[_loc7_ = offset++] = this.mRawDataColor[_loc7_] * (alpha / oldAlpha);
               this.mRawDataColor[offset] = alpha;
            }
         }
         else
         {
            this.mRawDataColor[offset + 3] = alpha;
         }
      }
      
      public function getAlpha(vertexID:int) : Number
      {
         var offset:int = vertexID * ELEMENTS_PER_COLOR_VERTEX + 3;
         return this.mRawDataColor[offset];
      }
      
      public function setTexCoords(vertexID:int, u:Number, v:Number) : void
      {
         var offset:int = vertexID * ELEMENTS_PER_TEXTURE_VERTEX;
         var _loc5_:*;
         this.mRawDataTexture[_loc5_ = offset++] = u;
         this.mRawDataTexture[offset] = v;
      }
      
      public function getTexCoords(vertexID:int, texCoords:Point) : void
      {
         var offset:int = vertexID * ELEMENTS_PER_TEXTURE_VERTEX;
         texCoords.x = this.mRawDataTexture[offset++];
         texCoords.y = this.mRawDataTexture[offset];
      }
      
      public function translateVertex(vertexID:int, deltaX:Number, deltaY:Number) : void
      {
         var offset:int = vertexID * ELEMENTS_PER_POSITION_VERTEX;
         var _loc5_:*;
         this.mRawDataPosition[_loc5_ = offset++] = this.mRawDataPosition[_loc5_] + deltaX;
         this.mRawDataPosition[offset] += deltaY;
      }
      
      public function setUniformColor(color:uint) : void
      {
         for(var i:int = 0; i < this.mNumVertices; i++)
         {
            this.setColor(i,color);
         }
      }
      
      public function setUniformAlpha(alpha:Number) : void
      {
         for(var i:int = 0; i < this.mNumVertices; i++)
         {
            this.setAlpha(i,alpha);
         }
      }
      
      public function scaleAlpha(vertexID:int, alpha:Number, numVertices:int = 1) : void
      {
         var i:int = 0;
         var offset:int = 0;
         if(alpha == 1)
         {
            return;
         }
         if(numVertices < 0 || vertexID + numVertices > this.mNumVertices)
         {
            numVertices = this.mNumVertices - vertexID;
         }
         if(this.mPremultipliedAlpha)
         {
            for(i = 0; i < numVertices; i++)
            {
               this.setAlpha(vertexID + i,this.getAlpha(vertexID + i) * alpha);
            }
         }
         else
         {
            offset = vertexID * ELEMENTS_PER_COLOR_VERTEX + 3;
            for(i = 0; i < numVertices; i++)
            {
               this.mRawDataColor[int(offset + i * ELEMENTS_PER_COLOR_VERTEX)] = this.mRawDataColor[int(offset + i * ELEMENTS_PER_COLOR_VERTEX)] * alpha;
            }
         }
      }
      
      public function getBounds(transformationMatrix:Matrix = null, vertexID:int = 0, numVertices:int = -1, resultRect:Rectangle = null) : Rectangle
      {
         var x:Number = NaN;
         var y:Number = NaN;
         var i:int = 0;
         if(resultRect == null)
         {
            resultRect = new Rectangle();
         }
         if(numVertices < 0 || vertexID + numVertices > this.mNumVertices)
         {
            numVertices = this.mNumVertices - vertexID;
         }
         var minX:Number = Number.MAX_VALUE;
         var maxX:Number = -Number.MAX_VALUE;
         var minY:Number = Number.MAX_VALUE;
         var maxY:Number = -Number.MAX_VALUE;
         var offset:int = vertexID * ELEMENTS_PER_POSITION_VERTEX;
         if(transformationMatrix == null)
         {
            for(i = vertexID; i < numVertices; i++)
            {
               x = this.mRawDataPosition[offset];
               y = this.mRawDataPosition[int(offset + 1)];
               offset += ELEMENTS_PER_POSITION_VERTEX;
               minX = minX < x ? Number(minX) : Number(x);
               maxX = maxX > x ? Number(maxX) : Number(x);
               minY = minY < y ? Number(minY) : Number(y);
               maxY = maxY > y ? Number(maxY) : Number(y);
            }
         }
         else
         {
            for(i = vertexID; i < numVertices; i++)
            {
               x = this.mRawDataPosition[offset];
               y = this.mRawDataPosition[int(offset + 1)];
               offset += ELEMENTS_PER_POSITION_VERTEX;
               MatrixUtil.transformCoords(transformationMatrix,x,y,sHelperPoint);
               minX = minX < sHelperPoint.x ? Number(minX) : Number(sHelperPoint.x);
               maxX = maxX > sHelperPoint.x ? Number(maxX) : Number(sHelperPoint.x);
               minY = minY < sHelperPoint.y ? Number(minY) : Number(sHelperPoint.y);
               maxY = maxY > sHelperPoint.y ? Number(maxY) : Number(sHelperPoint.y);
            }
         }
         resultRect.setTo(minX,minY,maxX - minX,maxY - minY);
         return resultRect;
      }
      
      public function get tinted() : Boolean
      {
         var j:int = 0;
         var offset:int = 0;
         for(var i:int = 0; i < this.mNumVertices; i++)
         {
            for(j = 0; j < 4; j++)
            {
               if(this.mRawDataColor[int(offset + j)] != 1)
               {
                  return true;
               }
            }
            offset += ELEMENTS_PER_COLOR_VERTEX;
         }
         return false;
      }
      
      public function setPremultipliedAlpha(value:Boolean, updateData:Boolean = true) : void
      {
         var dataLength:int = 0;
         var i:int = 0;
         var alpha:Number = NaN;
         var divisor:Number = NaN;
         var multiplier:Number = NaN;
         if(value == this.mPremultipliedAlpha)
         {
            return;
         }
         if(updateData)
         {
            dataLength = this.mNumVertices * ELEMENTS_PER_COLOR_VERTEX;
            for(i = 0; i < dataLength; i += ELEMENTS_PER_COLOR_VERTEX)
            {
               alpha = this.mRawDataColor[int(i + 3)];
               divisor = !!this.mPremultipliedAlpha ? Number(alpha) : Number(1);
               multiplier = !!value ? Number(alpha) : Number(1);
               if(divisor != 0)
               {
                  this.mRawDataColor[i] = this.mRawDataColor[i] / divisor * multiplier;
                  this.mRawDataColor[int(i + 1)] = this.mRawDataColor[int(i + 1)] / divisor * multiplier;
                  this.mRawDataColor[int(i + 2)] = this.mRawDataColor[int(i + 2)] / divisor * multiplier;
               }
            }
         }
         this.mPremultipliedAlpha = value;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.mPremultipliedAlpha;
      }
      
      public function get numVertices() : int
      {
         return this.mNumVertices;
      }
      
      public function set numVertices(value:int) : void
      {
         var i:int = 0;
         var delta:int = value - this.mNumVertices;
         for(i = 0; i < delta; i++)
         {
            this.mRawDataPosition.push(0,0);
            this.mRawDataColor.push(1,1,1,1);
            this.mRawDataTexture.push(0,0);
         }
         for(i = 0; i < -delta; i++)
         {
            this.mRawDataPosition.pop();
            this.mRawDataPosition.pop();
            this.mRawDataColor.pop();
            this.mRawDataColor.pop();
            this.mRawDataColor.pop();
            this.mRawDataColor.pop();
            this.mRawDataTexture.pop();
            this.mRawDataTexture.pop();
         }
         this.mNumVertices = value;
      }
      
      public function get rawDataPosition() : Vector.<Number>
      {
         return this.mRawDataPosition;
      }
      
      public function get rawDataColor() : Vector.<Number>
      {
         return this.mRawDataColor;
      }
      
      public function get rawDataTexture() : Vector.<Number>
      {
         return this.mRawDataTexture;
      }
   }
}
