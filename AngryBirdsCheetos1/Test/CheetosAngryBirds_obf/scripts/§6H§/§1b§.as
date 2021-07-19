package §6H§
{
   import §&!8§.§7@§;
   import §&!8§.§[g§;
   import §`h§.§@!Z§;
   
   public class §1b§ extends §7@§
   {
      
      public static const §4J§:int = 6;
      
      public static const §1=§:int = 7;
      
      private static var §#!6§:§7@§;
      
      private static var §%!Y§:§7@§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §1b§))
         {
            §4J§ = 6;
         }
         loop0:
         while(true)
         {
            §1=§ = 7;
            while(true)
            {
               §#!6§ = new §1b§(0,0,25,650,10,300,§4J§);
               while(_loc2_)
               {
                  if(!_loc1_)
                  {
                     §%!Y§ = new §1b§(0,0,10,200,6,800,§1=§);
                     if(_loc2_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §1b§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7@§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:§7@§ = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:§[g§ = null;
         var _loc5_:Vector.<§[g§> = null;
         §§push(param1);
         if(_loc10_ || param2)
         {
            var _loc9_:* = §§pop();
            if(!_loc11_)
            {
               §§push(§4J§);
               if(_loc10_ || param2)
               {
                  §§push(_loc9_);
                  if(!(_loc11_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_)
                        {
                           §§push(0);
                           if(_loc10_ || param3)
                           {
                              addr159:
                           }
                           else
                           {
                              addr178:
                           }
                        }
                        else
                        {
                           addr170:
                           §§push(1);
                           if(!(_loc11_ && §1b§))
                           {
                              §§goto(addr178);
                           }
                        }
                     }
                     else
                     {
                        §§push(§1=§);
                        if(_loc10_ || param1)
                        {
                           addr169:
                           if(§§pop() === _loc9_)
                           {
                              §§goto(addr170);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr169);
               }
               §§goto(addr159);
            }
            §§goto(addr170);
         }
         addr184:
         switch(§§pop())
         {
            case 0:
               _loc4_ = §#!6§;
               break;
            case 1:
               _loc4_ = §%!Y§;
               _loc5_ = new Vector.<§[g§>();
               §§push(§@!Z§.§;!,§);
               if(!_loc11_)
               {
                  §§push(§§pop().§7!h§);
                  if(!(_loc11_ && param1))
                  {
                     §§push(§§pop().§%!"§());
                     if(_loc10_)
                     {
                        §§push(int(§§pop()));
                        if(_loc10_ || §1b§)
                        {
                           _loc6_ = §§pop();
                           §§push(0);
                           if(!_loc11_)
                           {
                              addr72:
                              _loc7_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc7_);
                              }
                              addr109:
                           }
                           loop0:
                           for(; §§pop() < _loc6_; §§goto(addr109))
                           {
                              §§push(§@!Z§.§;!,§);
                              while(true)
                              {
                                 §§push(§§pop().§7!h§);
                                 addr78:
                                 while(true)
                                 {
                                    if((_loc8_ = §§pop().§0;§(_loc7_)).§>p§ == "CHEESE_STICKS")
                                    {
                                       if(!_loc11_)
                                       {
                                          _loc5_.push(_loc8_);
                                          if(!(_loc10_ || param3))
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                    _loc7_++;
                                    continue loop0;
                                 }
                              }
                           }
                           break;
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr78);
               }
               §§goto(addr77);
            default:
               return §7@§.createExplosion(param1,param2,param3);
         }
         return new §7@§(param2,param3,_loc4_.§0!2§,_loc4_.push,_loc4_.§%e§,_loc4_.damage,param1,_loc5_);
      }
   }
}
