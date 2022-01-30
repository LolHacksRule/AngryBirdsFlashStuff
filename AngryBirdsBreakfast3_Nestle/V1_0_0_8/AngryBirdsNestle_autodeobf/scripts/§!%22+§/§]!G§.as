package §!"+§
{
   import §[e§.b2PolygonShape;
   import §[e§.b2Shape;
   
   public class §]!G§ extends § !S§
   {
       
      
      public function §]!G§(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.§3!M§(§8!I§() / 2 * param1,§]!$§() / 2 * param1);
      }
   }
}
