package §%8§
{
   import §=!!§.b2PolygonShape;
   import §=!!§.b2Shape;
   
   public class §]!o§ extends §[_§
   {
       
      
      public function §]!o§(param1:Number, param2:Number, param3:String = null)
      {
         super(param1,param2,param3);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§33§(§=!q§() / 2 * param1,§%!r§() / 2 * param1);
      }
   }
}
