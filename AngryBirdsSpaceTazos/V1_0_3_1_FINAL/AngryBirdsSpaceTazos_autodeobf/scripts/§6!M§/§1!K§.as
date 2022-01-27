package §6!M§
{
   import §"!w§.b2PolygonShape;
   import §"!w§.b2Shape;
   
   public class §1!K§ extends §7r§
   {
       
      
      public function §1!K§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§"]§(getWidth() / 2 * param1,getHeight() / 2 * param1);
      }
   }
}
