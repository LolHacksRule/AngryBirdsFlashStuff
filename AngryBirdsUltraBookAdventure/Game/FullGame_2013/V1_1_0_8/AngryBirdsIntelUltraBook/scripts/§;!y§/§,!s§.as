package §;!y§
{
   import §"!i§.§"!'§;
   import §-!$§.§4P§;
   import §0S§.§7!Z§;
   import §1!B§.§0!X§;
   import §2m§.§<!?§;
   import §40§.§5G§;
   import §48§.§5Y§;
   import §<8§.§,!J§;
   import flash.geom.Rectangle;
   
   public class §,!s§
   {
      
      public static var §!"#§:int = 0;
      
      public static var §8p§:int = 0;
      
      public static var §=!I§:§5G§;
      
      public static var §3!h§:§0!X§;
      
      public static var §?C§:Boolean = false;
      
      public static var §7""§:§,!s§ = null;
      
      public static var §]!J§:§4P§;
      
      public static var §?l§:Boolean = true;
      
      public static var §0!!§:Number = 1;
      
      public static var §8;§:Number = 1.0;
      
      public static var §#d§:Number = 1.0;
      
      private static var §>!u§:§5Y§ = null;
      
      private static var §@,§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!"#§ = 0;
            while(true)
            {
               §8p§ = 0;
               addr131:
               addr48:
               while(true)
               {
                  §?C§ = false;
               }
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
         loop2:
         while(true)
         {
            §7""§ = null;
            addr121:
            while(true)
            {
               §?l§ = true;
               continue loop2;
            }
         }
      }
      
      public function §,!s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §!!Q§() : Number
      {
         return §!"#§ * §8;§;
      }
      
      public static function §<!S§() : Number
      {
         return §8p§ * §#d§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §,!s§)
         {
            if(!§@,§)
            {
               loop0:
               while(true)
               {
                  §@,§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(§<!?§.§#T§);
                     if(!(_loc1_ && §,!s§))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§<!?§.§#T§);
                              addr91:
                              while(true)
                              {
                                 §§pop().isPaused = true;
                                 addr93:
                                 while(true)
                                 {
                                    if(!(_loc2_ || §,!s§))
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           addr89:
                        }
                        while(true)
                        {
                           §§push(§<!?§.§,=§);
                           if(!_loc1_)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr25);
                              }
                              if(_loc2_)
                              {
                                 addr49:
                                 §<!?§.§,=§.§7d§(false);
                              }
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr49);
                        }
                        continue;
                     }
                     §§goto(addr91);
                  }
               }
               addr103:
            }
            addr25:
            return;
         }
         §§goto(addr103);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§@,§)
            {
               loop0:
               while(true)
               {
                  §@,§ = false;
                  while(true)
                  {
                     §§push(§<!?§.§#T§);
                     if(!(_loc1_ && _loc1_))
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(§<!?§.§,=§);
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       addr44:
                                       §<!?§.§,=§.§7d§(true);
                                    }
                                    if(!(_loc1_ && §,!s§))
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr20);
                                       }
                                       addr77:
                                       while(true)
                                       {
                                          §§push(§<!?§.§#T§);
                                          addr79:
                                          while(true)
                                          {
                                             §§pop().isPaused = false;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          break loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr20);
                              }
                              §§goto(addr44);
                              addr90:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           continue;
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr79);
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr90);
      }
      
      public static function get isPaused() : Boolean
      {
         return §@,§;
      }
      
      public static function init(param1:§4P§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §]!J§ = param1;
            while(true)
            {
               §!"#§ = param2;
               while(_loc5_)
               {
                  §8p§ = param3;
                  loop2:
                  while(_loc5_)
                  {
                     while(true)
                     {
                        §3!h§ = new §0!X§(true,param1.canvas);
                        if(!(_loc4_ && param2))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public static function §=$§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §7!Z§.§=$§(param1,param2);
         }
      }
      
      public static function §"!t§(param1:§,!J§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §=!I§.§"!t§(param1,param2,param3);
         }
      }
      
      public static function §`!O§(param1:§"!'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §=!I§.init(param1);
         }
      }
      
      public static function setController(param1:§5Y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §,!s§))
         {
            §>!u§ = param1;
         }
         do
         {
            §=!I§.setController(param1);
         }
         while(_loc2_ && _loc3_);
         
      }
      
      public static function get § Q§() : §5Y§
      {
         return §>!u§;
      }
      
      public static function §'6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §?l§ = param1;
            do
            {
               §=!I§.background.§'6§(param1);
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public static function §^@§() : Boolean
      {
         return §?l§;
      }
      
      public static function §4J§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param4);
            if(_loc5_)
            {
               §§push(32);
               loop0:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(32);
                        addr179:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr180:
                           while(true)
                           {
                              param4 = §§pop();
                              addr181:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr178:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        loop10:
                        while(true)
                        {
                           param3 = §§pop();
                           loop11:
                           while(true)
                           {
                              addr130:
                              while(true)
                              {
                                 §0!!§ = Math.min(param3 / §!"#§,param4 / §8p§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§findproperty(§8;§));
                                    §§push(param3);
                                    if(_loc5_ || §,!s§)
                                    {
                                       §§push(§§pop() / §!"#§);
                                    }
                                    §§pop().§8;§ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc6_ && §,!s§))
                                       {
                                          §§push(§§findproperty(§#d§));
                                          §§push(param4);
                                          if(_loc5_ || param3)
                                          {
                                             §§push(§§pop() / §8p§);
                                          }
                                          §§pop().§#d§ = §§pop();
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc6_ && param1)
                                                {
                                                   break;
                                                }
                                                §<!?§.§+i§ = new Rectangle(param1,param2,param3,param4);
                                                continue loop6;
                                             }
                                             continue loop11;
                                             addr37:
                                             if(!(_loc6_ && param1))
                                             {
                                                if(!(_loc6_ && param3))
                                                {
                                                   break loop5;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       else
                                       {
                                          addr167:
                                          while(true)
                                          {
                                             §§push(32);
                                             if(_loc6_)
                                             {
                                                break loop6;
                                             }
                                             §§push(Number(§§pop()));
                                             continue loop10;
                                          }
                                          addr167:
                                       }
                                    }
                                    §§goto(addr179);
                                 }
                                 return;
                                 continue loop11;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr180);
         }
         §§goto(addr167);
      }
   }
}
