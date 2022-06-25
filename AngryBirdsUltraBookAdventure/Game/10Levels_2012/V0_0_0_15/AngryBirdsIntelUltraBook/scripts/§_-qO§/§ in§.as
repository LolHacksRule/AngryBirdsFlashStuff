package §_-qO§
{
   import §_-0BH§.§_-Pw§;
   import §_-0DG§.§_-09t§;
   import §_-0Dg§.§_-0BD§;
   import §_-0Ea§.§_-AY§;
   import §_-6E§.§ var§;
   import §_-Ga§.§_-bm§;
   import §_-TG§.§_-00u§;
   import §_-jn§.§_-G2§;
   import flash.geom.Rectangle;
   
   public class § in§
   {
      
      public static var §_-W8§:int = 0;
      
      public static var §_-Kj§:int = 0;
      
      public static var §_-Dc§:§_-00u§;
      
      public static var §_-Cv§:§_-Pw§;
      
      public static var §_-LI§:Boolean = false;
      
      public static var §_-nX§:§ in§ = null;
      
      public static var §_-HY§:§_-G2§;
      
      public static var §_-qU§:Boolean = true;
      
      public static var §_-Dr§:Number = 1;
      
      public static var §_-57§:Number = 1.0;
      
      public static var §_-Sr§:Number = 1.0;
      
      private static var §_-pG§:§_-0BD§ = null;
      
      private static var §_-MQ§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-W8§ = 0;
            while(true)
            {
               §_-Kj§ = 0;
               addr130:
               while(true)
               {
                  §_-LI§ = false;
               }
               addr91:
               if(!_loc1_)
               {
                  continue;
               }
               §_-57§ = 1;
               loop6:
               for(; _loc1_; while(_loc1_ || § in§)
               {
                  §_-MQ§ = false;
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     §§goto(addr41);
                  }
                  else
                  {
                     §§goto(addr75);
                  }
               })
               {
                  §_-Sr§ = 1;
                  while(!_loc2_)
                  {
                     §_-pG§ = null;
                     continue loop6;
                  }
                  loop3:
                  while(true)
                  {
                     §_-qU§ = true;
                     addr108:
                     addr125:
                     while(!(_loc2_ && _loc1_))
                     {
                        §_-Dr§ = 1;
                        while(!_loc2_)
                        {
                           §§goto(addr91);
                           if(!(_loc2_ && _loc2_))
                           {
                              return;
                           }
                        }
                     }
                     while(true)
                     {
                        §_-nX§ = null;
                        continue loop3;
                        §§goto(addr108);
                     }
                  }
               }
               §§goto(addr130);
            }
         }
         §§goto(addr125);
      }
      
      public function § in§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §_-Ab§() : Number
      {
         return §_-W8§ * §_-57§;
      }
      
      public static function §_-q8§() : Number
      {
         return §_-Kj§ * §_-Sr§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && § in§))
         {
            if(!§_-MQ§)
            {
               if(_loc2_)
               {
                  §_-MQ§ = true;
               }
               while(true)
               {
                  §§push(§_-AY§.§_-CK§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr79:
                           §_-AY§.§_-CK§.isPaused = true;
                        }
                        while(!_loc1_)
                        {
                           while(true)
                           {
                           }
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           addr25:
                           return;
                           addr68:
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§push(§_-AY§.§_-un§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc1_)
                              {
                                 addr49:
                                 §_-AY§.§_-un§.§_-fQ§(false);
                              }
                              §§goto(addr51);
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr49);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr25);
         }
         §§goto(addr83);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || § in§)
         {
            if(§_-MQ§)
            {
               if(_loc2_ || _loc1_)
               {
                  §_-MQ§ = false;
               }
               while(true)
               {
                  §§push(§_-AY§.§_-CK§);
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        while(_loc2_)
                        {
                           §§push(§_-AY§.§_-CK§);
                           while(true)
                           {
                              §§pop().isPaused = false;
                              addr83:
                              while(true)
                              {
                              }
                           }
                        }
                        continue;
                        addr77:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(§_-AY§.§_-un§);
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       §§push(§_-AY§.§_-un§);
                                       addr51:
                                       while(true)
                                       {
                                          §§pop().§_-fQ§(true);
                                       }
                                    }
                                    addr49:
                                 }
                                 else
                                 {
                                    §§goto(addr77);
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr25);
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr81);
               }
            }
            addr25:
            return;
         }
         §§goto(addr49);
      }
      
      public static function get isPaused() : Boolean
      {
         return §_-MQ§;
      }
      
      public static function init(param1:§_-G2§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && § in§))
         {
            §_-HY§ = param1;
         }
         loop0:
         while(true)
         {
            §_-W8§ = param2;
            while(true)
            {
               §_-Kj§ = param3;
               while(_loc5_ || param1)
               {
                  if(_loc5_)
                  {
                     §_-Cv§ = new §_-Pw§(true,param1.canvas);
                     if(_loc5_ || param3)
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
      
      public static function §_-0-C§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §_-09t§.§_-0-C§(param1,param2);
         }
      }
      
      public static function §_-041§(param1:§ var§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §_-Dc§.§_-041§(param1,param2,param3);
         }
      }
      
      public static function §_-s8§(param1:§_-bm§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §_-Dc§.init(param1);
         }
      }
      
      public static function setController(param1:§_-0BD§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §_-pG§ = param1;
         }
         do
         {
            §_-Dc§.setController(param1);
         }
         while(_loc3_);
         
      }
      
      public static function get §_-03s§() : §_-0BD§
      {
         return §_-pG§;
      }
      
      public static function §_-bN§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §_-qU§ = param1;
         }
         do
         {
            §_-Dc§.background.§_-bN§(param1);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public static function §_-0-I§() : Boolean
      {
         return §_-qU§;
      }
      
      public static function §_-82§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param4);
            loop0:
            while(true)
            {
               §§push(32);
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(32);
                        addr176:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr177:
                           while(true)
                           {
                              param4 = §§pop();
                              addr178:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr175:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!_loc6_)
                     {
                        §§push(32);
                        if(!_loc5_)
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(32);
                              if(_loc6_)
                              {
                                 break;
                                 addr161:
                              }
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 if(_loc5_ || param2)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    param3 = §§pop();
                                    loop18:
                                    while(true)
                                    {
                                       addr116:
                                       while(true)
                                       {
                                          §§push(§_-AY§.§_-un§);
                                          addr119:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §_-Dr§ = Math.min(param3 / §_-W8§,param4 / §_-Kj§);
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            §§push(§§findproperty(§_-57§));
                                                            §§push(param3);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() / §_-W8§);
                                                            }
                                                            §§pop().§_-57§ = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  continue;
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr178);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§_-AY§.§_-un§);
                                                addr122:
                                                while(true)
                                                {
                                                   §§pop().§_-Lj§ = new Rectangle(param1,param2,param3,param4);
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          continue loop18;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr177);
                                 }
                                 §§goto(addr178);
                              }
                              continue loop0;
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr161);
                  }
               }
            }
         }
         §§goto(addr66);
      }
   }
}
