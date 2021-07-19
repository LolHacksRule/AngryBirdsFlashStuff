package §7P§
{
   import §2"Y§.§8!D§;
   import §[R§.b2Vec2;
   
   public class §=#<§ extends §!p§
   {
       
      
      public function §=#<§(param1:§8!D§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super(param1);
         }
      }
      
      override protected function getImpulseTarget(param1:§&#=§, param2:Number) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = Math.cos(param2);
         var _loc4_:Number = Math.sin(param2);
         §§push(§§findproperty(b2Vec2));
         §§push(_loc3_);
         if(_loc6_)
         {
            §§push(§§pop() * 10);
         }
         §§push(_loc4_);
         if(!_loc5_)
         {
            §§push(§§pop() * 10);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
   }
}
