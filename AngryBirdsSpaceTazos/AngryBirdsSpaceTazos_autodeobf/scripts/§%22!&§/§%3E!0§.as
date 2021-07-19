package §"!&§
{
   import §,Z§.b2PolygonShape;
   import §,Z§.b2Shape;
   
   public class §>!0§ extends set
   {
       
      
      public function §>!0§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§-z§(getWidth() / 2 * param1,getHeight() / 2 * param1);
      }
   }
}
