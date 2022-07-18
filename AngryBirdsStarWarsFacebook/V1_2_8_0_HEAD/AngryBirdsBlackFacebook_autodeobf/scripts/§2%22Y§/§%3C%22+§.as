package §2"Y§
{
   import §4!$§.b2PolygonShape;
   import §4!$§.b2Shape;
   
   public class §<"+§ extends §?#^§
   {
       
      
      public function §<"+§(param1:Number, param2:Number, param3:String = null)
      {
         super(param1,param2,param3);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§-&§(getWidth() / 2 * param1,getHeight() / 2 * param1);
      }
   }
}
