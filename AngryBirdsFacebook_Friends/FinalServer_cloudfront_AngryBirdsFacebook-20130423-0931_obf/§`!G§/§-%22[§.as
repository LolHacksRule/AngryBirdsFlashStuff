package §`!G§
{
   import §4!<§.§^!Z§;
   
   public class §-"[§ extends §6!M§
   {
      
      public static const §9h§:int = 6;
      
      public static const §]""§:int = 7;
      
      private static var §`!X§:§6!M§;
      
      private static var §!!M§:§6!M§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9h§ = 6;
            loop0:
            while(true)
            {
               §]""§ = 7;
               while(true)
               {
                  §`!X§ = new §-"[§(0,0,§^!Z§.§'!?§,§^!Z§.§#"-§,§^!Z§.§5l§,§^!Z§.§0!]§,§9h§);
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        §!!M§ = new §-"[§(0,0,2,3,1,2.5,§]""§);
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §-"[§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§[!8§> = null)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§[!8§> = null) : §6!M§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§6!M§ = null;
         §§push(param1);
         if(_loc8_ || param3)
         {
            var _loc6_:* = §§pop();
            if(!(_loc7_ && param3))
            {
               §§push(§9h§);
               if(!_loc7_)
               {
                  §§push(_loc6_);
                  if(_loc8_ || param3)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc8_ || param1)
                        {
                           addr85:
                           §§push(0);
                           if(_loc8_)
                           {
                              addr118:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = §`!X§;
                                    break;
                                 case 1:
                                    _loc5_ = §!!M§;
                                    break;
                                 default:
                                    return §6!M§.createExplosion(param1,param2,param3,param4);
                              }
                              return new §6!M§(param2,param3,_loc5_.§0p§,_loc5_.push,_loc5_.§7!m§,_loc5_.damage,param1,param4);
                              addr117:
                           }
                           else
                           {
                              addr92:
                              if(§§pop() !== _loc6_)
                              {
                                 §§goto(addr117);
                                 §§push(2);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr117);
                        }
                        §§push(1);
                        if(_loc7_ && param2)
                        {
                        }
                     }
                     else
                     {
                        §§push(§]""§);
                        if(_loc8_)
                        {
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr92);
               }
               §§goto(addr117);
            }
            §§goto(addr85);
         }
         §§goto(addr118);
      }
   }
}
