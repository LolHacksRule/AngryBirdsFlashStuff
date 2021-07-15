package §&v§
{
   import §"y§.b2PolygonShape;
   import §"y§.b2Shape;
   
   public class §4!a§ extends §each §
   {
       
      
      public function §4!a§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§^C§(§"!j§() / 2 * param1,§?!L§() / 2 * param1);
      }
   }
}
