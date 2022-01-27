package §6"R§
{
   import §>P§.§;+§;
   import §^>§.b2Vec2;
   
   public class §,N§ extends §11§
   {
       
      
      public function §,N§(param1:§;+§)
      {
         super(param1);
      }
      
      override protected function getImpulseTarget(param1:§4!w§, param2:Number) : b2Vec2
      {
         var _loc3_:Number = Math.cos(param2);
         var _loc4_:Number = Math.sin(param2);
         return new b2Vec2(_loc3_ * 10,_loc4_ * 10);
      }
   }
}
