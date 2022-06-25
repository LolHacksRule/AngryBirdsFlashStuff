package §true§
{
   import §"m§.§3!`§;
   import §&A§.§ !f§;
   import §,!5§.§^g§;
   import §0!M§.§#!d§;
   import §0!N§.§=+§;
   import §<!1§.§<F§;
   import §<&§.§^b§;
   import §^_§.§6!y§;
   import flash.geom.Rectangle;
   
   public class § _§
   {
      
      public static var §[o§:int = 0;
      
      public static var §-S§:int = 0;
      
      public static var §!6§:§^g§;
      
      public static var §2u§:§6!y§;
      
      public static var §[!d§:Boolean = false;
      
      public static var §%=§:§ _§ = null;
      
      public static var §1s§:§ !f§;
      
      public static var §]!M§:Boolean = true;
      
      public static var §9§:Number = 1;
      
      public static var §0!2§:Number = 1.0;
      
      public static var §[!Y§:Number = 1.0;
      
      private static var §,!V§:§3!`§ = null;
      
      private static var §2!8§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §[o§ = 0;
            loop0:
            while(true)
            {
               §-S§ = 0;
               loop1:
               while(true)
               {
                  §[!d§ = false;
                  loop2:
                  while(true)
                  {
                     §%=§ = null;
                     loop3:
                     while(true)
                     {
                        §]!M§ = true;
                        loop4:
                        while(true)
                        {
                           §9§ = 1;
                           while(true)
                           {
                              §0!2§ = 1;
                              loop6:
                              while(_loc1_ || § _§)
                              {
                                 §[!Y§ = 1;
                                 while(!_loc2_)
                                 {
                                    continue loop2;
                                    while(_loc1_ || § _§)
                                    {
                                       continue loop6;
                                       §2!8§ = false;
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr69);
                                       if(_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                return;
                                                addr38:
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §,!V§ = null;
            §§goto(addr43);
         }
         §§goto(addr38);
      }
      
      public function § _§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §#!t§() : Number
      {
         return §[o§ * §0!2§;
      }
      
      public static function §?!6§() : Number
      {
         return §-S§ * §[!Y§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§2!8§)
            {
               loop0:
               while(true)
               {
                  §2!8§ = true;
                  while(true)
                  {
                     §§push(§^b§.§&#§);
                     if(_loc1_ && _loc1_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        addr110:
                        while(true)
                        {
                        }
                        addr110:
                     }
                     while(true)
                     {
                        §§push(§^b§.§9E§);
                        if(_loc2_ || § _§)
                        {
                           if(!§§pop())
                           {
                              return;
                           }
                           if(_loc2_ || _loc1_)
                           {
                              addr54:
                              §^b§.§9E§.§6!a§(false);
                           }
                           if(!(_loc1_ && _loc2_))
                           {
                              break;
                           }
                           continue;
                           addr20:
                        }
                        §§goto(addr54);
                     }
                  }
                  addr108:
                  §§pop().isPaused = true;
                  §§goto(addr110);
               }
            }
            §§goto(addr20);
         }
         §§goto(addr63);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§2!8§)
            {
               loop0:
               while(true)
               {
                  §2!8§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§^b§.§&#§);
                     if(!(_loc1_ && § _§))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§^b§.§&#§);
                              addr96:
                              while(true)
                              {
                                 §§pop().isPaused = false;
                                 addr98:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    addr100:
                                 }
                              }
                           }
                           addr94:
                        }
                        while(true)
                        {
                           §§push(§^b§.§9E§);
                           if(!(_loc1_ && _loc1_))
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr20);
                              }
                              if(!(_loc2_ || § _§))
                              {
                                 continue loop0;
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc1_)
                                 {
                                    §§push(§^b§.§9E§);
                                    break;
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr98);
                           }
                           break;
                           §§goto(addr100);
                        }
                        §§pop().§6!a§(true);
                        continue loop0;
                     }
                     §§goto(addr96);
                  }
               }
               addr103:
            }
            addr20:
            return;
         }
         §§goto(addr103);
      }
      
      public static function get isPaused() : Boolean
      {
         return §2!8§;
      }
      
      public static function init(param1:§ !f§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §1s§ = param1;
         }
         while(true)
         {
            §[o§ = param2;
            while(!_loc4_)
            {
               §-S§ = param3;
               do
               {
                  §2u§ = new §6!y§(true,param1.canvas);
               }
               while(!_loc5_);
               
               if(!_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §'!w§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §<F§.§'!w§(param1,param2);
         }
      }
      
      public static function §#!"§(param1:§#!d§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §!6§.§#!"§(param1,param2,param3);
         }
      }
      
      public static function §1!+§(param1:§=+§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §!6§.init(param1);
         }
      }
      
      public static function setController(param1:§3!`§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §,!V§ = param1;
         }
         do
         {
            §!6§.setController(param1);
         }
         while(_loc3_);
         
      }
      
      public static function get §?!]§() : §3!`§
      {
         return §,!V§;
      }
      
      public static function §"$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §]!M§ = param1;
         }
         do
         {
            §!6§.background.§"$§(param1);
         }
         while(_loc3_ && param1);
         
      }
      
      public static function §1_§() : Boolean
      {
         return §]!M§;
      }
      
      public static function §%L§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param4);
            loop0:
            while(true)
            {
               §§push(32);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(32);
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr197:
                           while(true)
                           {
                              param4 = §§pop();
                           }
                           addr177:
                           while(true)
                           {
                              §§push(32);
                              if(_loc5_ || § _§)
                              {
                                 §§push(Number(§§pop()));
                                 while(!_loc6_)
                                 {
                                    param3 = §§pop();
                                    while(true)
                                    {
                                       §§goto(addr126);
                                    }
                                 }
                                 continue loop0;
                                 addr186:
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              addr147:
                              while(true)
                              {
                                 §§push(param3);
                                 if(!(_loc6_ && param3))
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(32);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          §§goto(addr177);
                                       }
                                       addr126:
                                       while(true)
                                       {
                                          §§push(§^b§.§9E§);
                                          if(!(_loc6_ && param3))
                                          {
                                             if(§§pop())
                                             {
                                                addr137:
                                                while(true)
                                                {
                                                   §§push(§^b§.§9E§);
                                                   addr139:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop().§5t§ = new Rectangle(param1,param2,param3,param4);
                                                      addr146:
                                                      while(true)
                                                      {
                                                         §§push(§^b§.§9E§);
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop13;
                                                      }
                                                      addr125:
                                                      §§pop().setCanvasSize(param3,param4);
                                                   }
                                                }
                                                addr137:
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                §9§ = Math.min(param3 / §[o§,param4 / §-S§);
                                                loop9:
                                                while(_loc5_ || param1)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break loop8;
                                                   }
                                                   §§push(§§findproperty(§0!2§));
                                                   §§push(param3);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() / §[o§);
                                                   }
                                                   §§pop().§0!2§ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc5_ || § _§)
                                                      {
                                                         if(!(_loc5_ || param2))
                                                         {
                                                            break loop6;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr146);
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr139);
                                          continue loop15;
                                       }
                                       return;
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr186);
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr147);
               }
            }
         }
         §§goto(addr137);
      }
   }
}
