package §!r§
{
   import §#g§.§5!M§;
   import §7"A§.b2Vec2;
   
   public class §]>§ extends §>y§
   {
       
      
      public function §]>§(param1:§5!M§)
      {
         super(param1);
      }
      
      override protected function getImpulseTarget(param1:§0N§, param2:Number) : b2Vec2
      {
         var _loc3_:Number = Math.cos(param2);
         var _loc4_:Number = Math.sin(param2);
         return new b2Vec2(_loc3_ * 10,_loc4_ * 10);
      }
   }
}
