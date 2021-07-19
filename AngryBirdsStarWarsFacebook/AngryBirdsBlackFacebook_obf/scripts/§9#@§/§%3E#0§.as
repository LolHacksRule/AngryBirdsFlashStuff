package §9#@§
{
   import §!!U§.Sprite;
   import §69§.§'U§;
   import §7!F§.§7§;
   import §^#>§.§#_§;
   
   public class §>#0§ extends §3N§
   {
       
      
      public function §>#0§(param1:§'U§, param2:Sprite, param3:§7#5§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function getRepeatCount(param1:Number, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(2);
         §§push(§#_§.§]#Q§);
         if(_loc3_ || _loc3_)
         {
            §§push(1.5);
            if(_loc3_)
            {
               §§goto(addr51);
            }
            §§push(§§pop() / §§pop());
         }
         addr51:
         §§push(§§pop() * §§pop());
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2 * param1);
         }
         §§push(§§pop() + §§pop());
         if(_loc3_ || this)
         {
            return §§pop() * 2;
         }
      }
   }
}
