package §=9§
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public function transformCoords(param1:Matrix, param2:Number, param3:Number, param4:Point = null) : Point
   {
      if(param4 == null)
      {
         param4 = new Point();
      }
      param4.x = param1.a * param2 + param1.c * param3 + param1.tx;
      param4.y = param1.d * param3 + param1.b * param2 + param1.ty;
      return param4;
   }
}
