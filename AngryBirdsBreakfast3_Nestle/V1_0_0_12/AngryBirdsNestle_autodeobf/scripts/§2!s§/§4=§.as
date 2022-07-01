package §2!s§
{
   import §`!C§.b2PolygonShape;
   import §`!C§.b2Shape;
   
   public class §4=§ extends §4"1§
   {
       
      
      public function §4=§(param1:Number, param2:Number, param3:String = null)
      {
         super(param1,param2,param3);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§&v§(§3!s§() / 2 * param1,§]!D§() / 2 * param1);
      }
   }
}
