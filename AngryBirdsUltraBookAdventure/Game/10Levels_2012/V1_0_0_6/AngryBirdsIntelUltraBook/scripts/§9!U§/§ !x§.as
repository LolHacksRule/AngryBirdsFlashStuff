package §9!U§
{
   import §2_§.§,L§;
   import §=b§.§9#§;
   
   public class § !x§ extends §9#§
   {
      
      public static const §-h§:int = 5;
      
      private static var §^!8§:§9#§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-h§ = 5;
         }
         do
         {
            §^!8§ = new § !x§(0,0,§,L§.§?@§,§,L§.§@!f§,§,L§.§`!9§,§,L§.§`y§,§-h§);
         }
         while(!(_loc1_ || § !x§));
         
      }
      
      public function § !x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §9#§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§9#§ = null;
         §§push(param1);
         if(!_loc7_)
         {
            var _loc5_:* = §§pop();
            if(_loc6_ || param1)
            {
               §§push(§-h§);
               if(!(_loc7_ && param1))
               {
                  if(§§pop() === _loc5_)
                  {
                     addr74:
                     §§push(0);
                     if(!_loc7_)
                     {
                        addr77:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  addr83:
                  switch(§§pop())
                  {
                     case 0:
                        _loc4_ = §^!8§;
                        return new §9#§(param2,param3,_loc4_.§1!H§,_loc4_.push,_loc4_.§,7§,_loc4_.damage,param1);
                     default:
                        return §9#§.createExplosion(param1,param2,param3);
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr74);
         }
         §§goto(addr83);
      }
   }
}
