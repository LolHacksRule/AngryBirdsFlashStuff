package §?§#3
{
   import §]!o§.b2PolygonShape;
   import §]!o§.b2Shape;
   
   public class §3"<§ extends §+#c§
   {
       
      
      public function §3"<§(param1:Number, param2:Number, param3:String = null)
      {
         super(param1,param2,param3);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§?!K§(getWidth() / 2 * param1,getHeight() / 2 * param1);
      }
      
      override public function getDimension() : Number
      {
         return Math.max(getWidth(),getHeight()) * Math.sqrt(2);
      }
   }
}
