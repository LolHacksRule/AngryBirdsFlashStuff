package §8u§
{
   import §3G§.§&!"§;
   
   public class §>1§ extends §5<§
   {
      
      public static const §<!&§:int = 5;
      
      private static var §"N§:§5<§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!&§ = 5;
            if(_loc2_ || _loc1_)
            {
               addr39:
               §"N§ = new §>1§(0,0,§&!"§.§9!-§,§&!"§.§&7§,§&!"§.§<!4§,§&!"§.§0k§,§<!&§);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §>1§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5<§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§5<§ = null;
         §§push(param1);
         if(_loc6_ || param2)
         {
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               §§push(§<!&§);
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
                        _loc4_ = §"N§;
                        return new §5<§(param2,param3,_loc4_.§`T§,_loc4_.push,_loc4_.§#!9§,_loc4_.damage,param1);
                     default:
                        return §5<§.createExplosion(param1,param2,param3);
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
