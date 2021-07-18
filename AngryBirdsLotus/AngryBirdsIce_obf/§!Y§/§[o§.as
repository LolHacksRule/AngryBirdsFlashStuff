package §!Y§
{
   import §!F§.§!h§;
   import §-Z§.§?h§;
   import §3"§.§8+§;
   import §4N§.§&!@§;
   import §;8§.§<!"§;
   import §@!,§.§`!,§;
   import §[x§.§2^§;
   import §`g§.§[N§;
   import flash.geom.Rectangle;
   
   public class §[o§
   {
      
      public static var static:int = 0;
      
      public static var §for§:int = 0;
      
      public static var §='§:§2^§;
      
      public static var §#[§:§<!"§;
      
      public static var §'Q§:Boolean = false;
      
      public static var §4h§:§[o§ = null;
      
      public static var §&6§:§`!,§;
      
      public static var §9!D§:Boolean = true;
      
      public static var §#!9§:Number = 1;
      
      public static var §<T§:Number = 1.0;
      
      public static var §>k§:Number = 1.0;
      
      private static var §<Z§:§!h§ = null;
      
      private static var §10§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            static = 0;
            §for§ = 0;
            §'Q§ = false;
         }
         while(true)
         {
            §9!D§ = true;
            while(!_loc2_)
            {
               §#!9§ = 1;
               §<T§ = 1;
               while(!_loc2_)
               {
                  §>k§ = 1;
                  if(!_loc2_)
                  {
                     §<Z§ = null;
                     §10§ = false;
                     return;
                  }
               }
            }
         }
      }
      
      public function §[o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §#%§() : Number
      {
         return static * §<T§;
      }
      
      public static function §=!&§() : Number
      {
         return §for§ * §>k§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!§10§)
         {
            loop0:
            while(true)
            {
               §10§ = true;
               §§push(§?h§.§;B§);
               if(_loc1_ || §[o§)
               {
                  if(§§pop())
                  {
                     continue;
                  }
               }
               else
               {
                  while(true)
                  {
                     §§pop().§'Z§ = true;
                  }
                  addr79:
               }
               while(true)
               {
                  §§push(§?h§.§ n§);
                  if(_loc2_ && §[o§)
                  {
                     addr17:
                     break;
                  }
                  if(!§§pop())
                  {
                     return;
                  }
                  if(!_loc2_)
                  {
                     §§push(§?h§.§ n§);
                     break;
                  }
                  continue loop0;
               }
               §§pop().§>!@§(false);
            }
         }
         §§goto(addr17);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§10§)
         {
            loop0:
            while(true)
            {
               §10§ = false;
               loop1:
               while(true)
               {
                  §§push(§?h§.§;B§);
                  if(_loc1_ || §[o§)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        addr83:
                        §?h§.§;B§.§'Z§ = false;
                        while(true)
                        {
                        }
                        addr85:
                     }
                     while(true)
                     {
                        §§push(§?h§.§ n§);
                        if(_loc2_)
                        {
                           addr17:
                           break;
                        }
                        if(!§§pop())
                        {
                           §§goto(addr65);
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§?h§.§ n§);
                              break;
                           }
                           continue;
                        }
                        if(!_loc2_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                     §§pop().§>!@§(true);
                     addr65:
                     return;
                  }
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr17);
      }
      
      public static function get §'Z§() : Boolean
      {
         return §10§;
      }
      
      public static function init(param1:§`!,§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §&6§ = param1;
            while(true)
            {
               static = param2;
               loop2:
               while(_loc4_ || param2)
               {
                  §#[§ = new §<!"§(true,param1.canvas);
                  if(_loc4_)
                  {
                     addr58:
                     if(!(_loc4_ || param2))
                     {
                        while(true)
                        {
                           §for§ = param3;
                           continue loop2;
                           §§goto(addr58);
                        }
                        addr82:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public static function §'7§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §&!@§.§'7§(param1,param2);
         }
      }
      
      public static function §>&§(param1:§[N§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §='§.§>&§(param1,param2,param3);
         }
      }
      
      public static function §;4§(param1:§8+§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §='§.init(param1);
         }
      }
      
      public static function §%!<§(param1:§!h§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §<Z§ = param1;
         }
         do
         {
            §='§.§%!<§(param1);
         }
         while(!(_loc2_ || §[o§));
         
      }
      
      public static function get controller() : §!h§
      {
         return §<Z§;
      }
      
      public static function §#i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §9!D§ = param1;
         }
         do
         {
            §='§.background.§#i§(param1);
         }
         while(_loc3_);
         
      }
      
      public static function §%!!§() : Boolean
      {
         return §9!D§;
      }
      
      public static function §6g§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && §[o§))
         {
            §§push(param4);
            loop0:
            while(true)
            {
               §§push(32);
               addr161:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(32);
                        addr163:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr164:
                           while(true)
                           {
                              param4 = §§pop();
                           }
                        }
                     }
                     addr162:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc6_ || param1)
                     {
                        continue loop0;
                     }
                     addr155:
                     if(!_loc5_)
                     {
                        param3 = §§pop();
                        addr103:
                        §§push(§?h§.§ n§);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              §§push(§?h§.§ n§);
                              while(true)
                              {
                                 §§pop().§"C§ = new Rectangle(param1,param2,param3,param4);
                                 addr118:
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§?h§.§ n§);
                                    if(!(_loc6_ || param2))
                                    {
                                       continue;
                                    }
                                    §§pop().setCanvasSize(param3,param4);
                                    if(!(_loc5_ && param2))
                                    {
                                       addr102:
                                       while(true)
                                       {
                                          §#!9§ = Math.min(param3 / static,param4 / §for§);
                                          §§push(§§findproperty(§<T§));
                                          §§push(param3);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() / static);
                                          }
                                          §§pop().§<T§ = §§pop();
                                          §§push(§§findproperty(§>k§));
                                          §§push(param4);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() / §for§);
                                          }
                                          §§pop().§>k§ = §§pop();
                                          §='§.§&2§(param3,param4);
                                          if(_loc6_ || param2)
                                          {
                                             break;
                                          }
                                          continue loop8;
                                          §§goto(addr102);
                                       }
                                       return;
                                       addr60:
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              addr111:
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr111);
                        addr158:
                     }
                     §§goto(addr164);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr118);
      }
   }
}
