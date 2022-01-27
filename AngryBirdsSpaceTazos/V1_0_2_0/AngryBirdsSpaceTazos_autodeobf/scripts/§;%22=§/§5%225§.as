package §;"=§
{
   import §?f§.b2PolygonShape;
   import §?f§.b2Shape;
   
   public class §5"5§ extends §3!R§
   {
       
      
      public function §5"5§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§4D§(getWidth() / 2 * param1,getHeight() / 2 * param1);
      }
   }
}
