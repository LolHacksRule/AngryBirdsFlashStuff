package §3>§
{
   import §4!W§.b2PolygonShape;
   import §4!W§.b2Shape;
   
   public class §["<§ extends §1!'§
   {
       
      
      public function §["<§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§6!T§(getWidth() / 2 * param1,getHeight() / 2 * param1);
      }
   }
}
