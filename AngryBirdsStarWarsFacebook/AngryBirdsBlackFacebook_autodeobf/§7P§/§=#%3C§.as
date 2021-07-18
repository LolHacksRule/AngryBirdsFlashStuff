package §7P§
{
   import §2"Y§.§8!D§;
   import §[R§.b2Vec2;
   
   public class §=#<§ extends §!p§
   {
       
      
      public function §=#<§(param1:§8!D§)
      {
         super(param1);
      }
      
      override protected function getImpulseTarget(param1:§&#=§, param2:Number) : b2Vec2
      {
         var _loc3_:Number = Math.cos(param2);
         var _loc4_:Number = Math.sin(param2);
         return new b2Vec2(_loc3_ * 10,_loc4_ * 10);
      }
   }
}
