package starling.utils
{
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import starling.errors.AbstractClassError;
   
   public class MatrixUtil
   {
      
      private static var sRawData:Vector.<Number> = new <Number>[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1];
       
      
      public function MatrixUtil()
      {
         super();
         throw new AbstractClassError();
      }
      
      public static function convertTo3D(matrix:Matrix, resultMatrix:Matrix3D = null) : Matrix3D
      {
         if(resultMatrix == null)
         {
            resultMatrix = new Matrix3D();
         }
         sRawData[0] = matrix.a;
         sRawData[1] = matrix.b;
         sRawData[4] = matrix.c;
         sRawData[5] = matrix.d;
         sRawData[12] = matrix.tx;
         sRawData[13] = matrix.ty;
         resultMatrix.copyRawDataFrom(sRawData);
         return resultMatrix;
      }
      
      public static function transformCoords(matrix:Matrix, x:Number, y:Number, resultPoint:Point = null) : Point
      {
         if(resultPoint == null)
         {
            resultPoint = new Point();
         }
         resultPoint.x = matrix.a * x + matrix.c * y + matrix.tx;
         resultPoint.y = matrix.d * y + matrix.b * x + matrix.ty;
         return resultPoint;
      }
      
      public static function skew(matrix:Matrix, skewX:Number, skewY:Number) : void
      {
         var sinX:Number = Math.sin(skewX);
         var cosX:Number = Math.cos(skewX);
         var sinY:Number = Math.sin(skewY);
         var cosY:Number = Math.cos(skewY);
         matrix.setTo(matrix.a * cosY - matrix.b * sinX,matrix.a * sinY + matrix.b * cosX,matrix.c * cosY - matrix.d * sinX,matrix.c * sinY + matrix.d * cosX,matrix.tx * cosY - matrix.ty * sinX,matrix.tx * sinY + matrix.ty * cosX);
      }
      
      public static function prependMatrix(base:Matrix, prep:Matrix) : void
      {
         base.setTo(base.a * prep.a + base.c * prep.b,base.b * prep.a + base.d * prep.b,base.a * prep.c + base.c * prep.d,base.b * prep.c + base.d * prep.d,base.tx + base.a * prep.tx + base.c * prep.ty,base.ty + base.b * prep.tx + base.d * prep.ty);
      }
      
      public static function prependTranslation(matrix:Matrix, tx:Number, ty:Number) : void
      {
         matrix.tx += matrix.a * tx + matrix.c * ty;
         matrix.ty += matrix.b * tx + matrix.d * ty;
      }
      
      public static function prependScale(matrix:Matrix, sx:Number, sy:Number) : void
      {
         matrix.setTo(matrix.a * sx,matrix.b * sx,matrix.c * sy,matrix.d * sy,matrix.tx,matrix.ty);
      }
      
      public static function prependRotation(matrix:Matrix, angle:Number) : void
      {
         var sin:Number = Math.sin(angle);
         var cos:Number = Math.cos(angle);
         matrix.setTo(matrix.a * cos + matrix.c * sin,matrix.b * cos + matrix.d * sin,matrix.c * cos - matrix.a * sin,matrix.d * cos - matrix.b * sin,matrix.tx,matrix.ty);
      }
      
      public static function prependSkew(matrix:Matrix, skewX:Number, skewY:Number) : void
      {
         var sinX:Number = Math.sin(skewX);
         var cosX:Number = Math.cos(skewX);
         var sinY:Number = Math.sin(skewY);
         var cosY:Number = Math.cos(skewY);
         matrix.setTo(matrix.a * cosY + matrix.c * sinY,matrix.b * cosY + matrix.d * sinY,matrix.c * cosX - matrix.a * sinX,matrix.d * cosX - matrix.b * sinX,matrix.tx,matrix.ty);
      }
   }
}
