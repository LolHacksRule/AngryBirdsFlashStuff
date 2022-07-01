package §5!7§
{
   import §>"&§.b2PolygonShape;
   import §>"&§.b2Shape;
   
   public class §3!>§ extends §[2§
   {
       
      
      public function §3!>§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§!!§(§5!z§() / 2 * param1,§1P§() / 2 * param1);
      }
   }
}
