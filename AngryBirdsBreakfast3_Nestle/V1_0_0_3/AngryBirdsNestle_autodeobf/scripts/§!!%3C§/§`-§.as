package §!!<§
{
   import §?m§.b2PolygonShape;
   import §?m§.b2Shape;
   
   public class §`-§ extends §`!J§
   {
       
      
      public function §`-§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§`!L§(§`!A§() / 2 * param1,§#!l§() / 2 * param1);
      }
   }
}
