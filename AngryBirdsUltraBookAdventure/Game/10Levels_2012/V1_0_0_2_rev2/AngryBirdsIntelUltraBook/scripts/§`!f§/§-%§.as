package §`!f§
{
   import §%Q§.§=N§;
   import §,!5§.§0;§;
   
   public class §-%§ extends §=N§
   {
      
      public static const §%!9§:int = 5;
      
      private static var §'!A§:§=N§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%!9§ = 5;
         }
         do
         {
            §'!A§ = new §-%§(0,0,§0;§.§@!f§,§0;§.§5E§,§0;§.§,!'§,§0;§.§+Z§,§%!9§);
         }
         while(!(_loc2_ || §-%§));
         
      }
      
      public function §-%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §=N§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§=N§ = null;
         §§push(param1);
         if(_loc7_)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || param3)
            {
               §§push(§%!9§);
               if(_loc7_ || §-%§)
               {
                  if(§§pop() === _loc5_)
                  {
                     addr75:
                     §§push(0);
                     if(!_loc6_)
                     {
                        addr78:
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  addr84:
                  switch(§§pop())
                  {
                     case 0:
                        _loc4_ = §'!A§;
                        return new §=N§(param2,param3,_loc4_.§@!§,_loc4_.push,_loc4_.§8!K§,_loc4_.damage,param1);
                     default:
                        return §=N§.createExplosion(param1,param2,param3);
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr75);
         }
         §§goto(addr84);
      }
   }
}
