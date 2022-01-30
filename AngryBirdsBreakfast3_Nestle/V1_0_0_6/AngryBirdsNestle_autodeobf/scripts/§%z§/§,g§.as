package §%z§
{
   import §3!4§.b2PolygonShape;
   import §3!4§.b2Shape;
   
   public class §,g§ extends §-i§
   {
       
      
      public function §,g§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§>b§(§0!U§() / 2 * param1,§!!u§() / 2 * param1);
      }
   }
}
