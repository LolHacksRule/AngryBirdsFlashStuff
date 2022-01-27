package §>P§
{
   import §[!L§.b2PolygonShape;
   import §[!L§.b2Shape;
   
   public class §%=§ extends §?"Q§
   {
       
      
      public function §%=§(param1:Number, param2:Number, param3:String = null)
      {
         super(param1,param2,param3);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§8"7§(getWidth() / 2 * param1,getHeight() / 2 * param1);
      }
   }
}
