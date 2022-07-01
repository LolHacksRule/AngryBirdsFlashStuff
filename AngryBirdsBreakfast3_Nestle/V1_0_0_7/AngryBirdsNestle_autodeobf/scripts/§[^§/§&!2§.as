package §[^§
{
   import §8!K§.b2PolygonShape;
   import §8!K§.b2Shape;
   
   public class §&!2§ extends §#!?§
   {
       
      
      public function §&!2§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§@!?§(§'%§() / 2 * param1,§!8§() / 2 * param1);
      }
   }
}
