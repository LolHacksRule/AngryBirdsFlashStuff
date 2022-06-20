package §`#C§
{
   import §?!c§.b2PolygonShape;
   import §?!c§.b2Shape;
   
   public class §3"F§ extends §-"L§
   {
       
      
      public function §3"F§(param1:Number, param2:Number, param3:String = null)
      {
         super(param1,param2,param3);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§<"E§(getWidth() / 2 * param1,getHeight() / 2 * param1);
      }
      
      override public function getDimension() : Number
      {
         return Math.max(getWidth(),getHeight()) * Math.sqrt(2);
      }
   }
}
