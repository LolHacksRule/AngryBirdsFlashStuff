package §,#=§
{
   import §]#a§.§]$5§;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   
   public class §>V§
   {
      
      private static var §+H§:Vector.<Number> = new <Number>[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1];
       
      
      public function §>V§()
      {
         super();
         throw new §]$5§();
      }
      
      public static function §!$3§(param1:Matrix, param2:Matrix3D = null) : Matrix3D
      {
         if(param2 == null)
         {
            param2 = new Matrix3D();
         }
         §+H§[0] = param1.a;
         §+H§[1] = param1.b;
         §+H§[4] = param1.c;
         §+H§[5] = param1.d;
         §+H§[12] = param1.tx;
         §+H§[13] = param1.ty;
         param2.copyRawDataFrom(§+H§);
         return param2;
      }
      
      public static function §2>§(param1:Matrix, param2:Number, param3:Number, param4:Point = null) : Point
      {
         if(param4 == null)
         {
            param4 = new Point();
         }
         param4.x = param1.a * param2 + param1.c * param3 + param1.tx;
         param4.y = param1.d * param3 + param1.b * param2 + param1.ty;
         return param4;
      }
      
      public static function §+"H§(param1:Matrix, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = Math.sin(param2);
         var _loc5_:Number = Math.cos(param2);
         var _loc6_:Number = Math.sin(param3);
         var _loc7_:Number = Math.cos(param3);
         param1.setTo(param1.a * _loc7_ - param1.b * _loc4_,param1.a * _loc6_ + param1.b * _loc5_,param1.c * _loc7_ - param1.d * _loc4_,param1.c * _loc6_ + param1.d * _loc5_,param1.tx * _loc7_ - param1.ty * _loc4_,param1.tx * _loc6_ + param1.ty * _loc5_);
      }
      
      public static function §@!3§(param1:Matrix, param2:Matrix) : void
      {
         param1.setTo(param1.a * param2.a + param1.c * param2.b,param1.b * param2.a + param1.d * param2.b,param1.a * param2.c + param1.c * param2.d,param1.b * param2.c + param1.d * param2.d,param1.tx + param1.a * param2.tx + param1.c * param2.ty,param1.ty + param1.b * param2.tx + param1.d * param2.ty);
      }
      
      public static function §[@§(param1:Matrix, param2:Number, param3:Number) : void
      {
         param1.tx += param1.a * param2 + param1.c * param3;
         param1.ty += param1.b * param2 + param1.d * param3;
      }
      
      public static function §?#K§(param1:Matrix, param2:Number, param3:Number) : void
      {
         param1.setTo(param1.a * param2,param1.b * param2,param1.c * param3,param1.d * param3,param1.tx,param1.ty);
      }
      
      public static function §8$!§(param1:Matrix, param2:Number) : void
      {
         var _loc3_:Number = Math.sin(param2);
         var _loc4_:Number = Math.cos(param2);
         param1.setTo(param1.a * _loc4_ + param1.c * _loc3_,param1.b * _loc4_ + param1.d * _loc3_,param1.c * _loc4_ - param1.a * _loc3_,param1.d * _loc4_ - param1.b * _loc3_,param1.tx,param1.ty);
      }
      
      public static function §`#U§(param1:Matrix, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = Math.sin(param2);
         var _loc5_:Number = Math.cos(param2);
         var _loc6_:Number = Math.sin(param3);
         var _loc7_:Number = Math.cos(param3);
         param1.setTo(param1.a * _loc7_ + param1.c * _loc6_,param1.b * _loc7_ + param1.d * _loc6_,param1.c * _loc5_ - param1.a * _loc4_,param1.d * _loc5_ - param1.b * _loc4_,param1.tx,param1.ty);
      }
   }
}
