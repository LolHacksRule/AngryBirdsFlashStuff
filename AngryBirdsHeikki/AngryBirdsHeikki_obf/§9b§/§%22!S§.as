package §9b§
{
   import §"!I§.§^!2§;
   import §"^§.§+!'§;
   import §,-§.§3!f§;
   import §3!b§.§;!7§;
   import §9L§.§]o§;
   import §@0§.§`>§;
   import §@R§.§-!I§;
   import §^!5§.§&!E§;
   import flash.geom.Rectangle;
   
   public class §"!S§
   {
      
      public static var §3i§:int = 0;
      
      public static var §!!d§:int = 0;
      
      public static var §-!7§:§^!2§;
      
      public static var §;4§:§-!I§;
      
      public static var §]!^§:Boolean = false;
      
      public static var §=h§:§"!S§ = null;
      
      public static var §%!U§:§]o§;
      
      public static var §`Z§:Boolean = true;
      
      public static var §^!c§:Number = 1;
      
      public static var §<!4§:Number = 1.0;
      
      public static var §[=§:Number = 1.0;
      
      private static var §8!b§:§;!7§ = null;
      
      private static var §?!9§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3i§ = 0;
            loop0:
            while(true)
            {
               §!!d§ = 0;
               loop1:
               while(true)
               {
                  §]!^§ = false;
                  loop2:
                  while(!_loc2_)
                  {
                     addr64:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     §8!b§ = null;
                     while(true)
                     {
                        if(_loc1_)
                        {
                           addr38:
                           if(_loc2_ && _loc2_)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        loop8:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr64);
                           }
                           else
                           {
                              while(true)
                              {
                                 §^!c§ = 1;
                                 while(true)
                                 {
                                    §<!4§ = 1;
                                    addr76:
                                    while(_loc1_ || _loc2_)
                                    {
                                       §[=§ = 1;
                                       continue loop8;
                                    }
                                 }
                              }
                              addr93:
                           }
                        }
                        continue loop2;
                     }
                     while(true)
                     {
                        §`Z§ = true;
                        §§goto(addr93);
                        §§goto(addr38);
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §=h§ = null;
            §§goto(addr98);
         }
      }
      
      public function §"!S§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §#!F§() : Number
      {
         return §3i§ * §<!4§;
      }
      
      public static function §4w§() : Number
      {
         return §!!d§ * §[=§;
      }
      
      public static function §99§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§?!9§)
            {
               loop0:
               while(true)
               {
                  §?!9§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(§+!'§.§9!;§);
                     if(_loc1_ || _loc1_)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(§+!'§.§2d§);
                              if(_loc1_)
                              {
                                 if(!§§pop())
                                 {
                                    break loop1;
                                 }
                                 if(!(_loc2_ && §"!S§))
                                 {
                                    if(_loc1_ || _loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       addr57:
                                       §+!'§.§2d§.§]K§(false);
                                    }
                                    else
                                    {
                                       addr73:
                                       while(true)
                                       {
                                          §§push(§+!'§.§9!;§);
                                          addr75:
                                          while(true)
                                          {
                                             §§pop().isPaused = true;
                                             continue loop2;
                                          }
                                       }
                                       addr73:
                                    }
                                 }
                                 if(_loc1_)
                                 {
                                    break loop1;
                                 }
                                 continue;
                              }
                              §§goto(addr57);
                           }
                           continue loop0;
                           addr23:
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr75);
                  }
               }
            }
            return;
         }
         §§goto(addr73);
      }
      
      public static function §^e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§?!9§)
            {
               loop0:
               while(true)
               {
                  §?!9§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§+!'§.§9!;§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           addr85:
                           while(true)
                           {
                              §§push(§+!'§.§9!;§);
                              addr97:
                              while(true)
                              {
                                 §§pop().isPaused = false;
                                 addr99:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr85:
                        }
                        while(true)
                        {
                           §§push(§+!'§.§2d§);
                           if(_loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && §"!S§))
                                 {
                                    continue loop0;
                                 }
                              }
                              break;
                           }
                           addr60:
                           §§pop().§]K§(true);
                           if(!(_loc1_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr97);
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr85);
      }
      
      public static function get isPaused() : Boolean
      {
         return §?!9§;
      }
      
      public static function init(param1:§]o§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §%!U§ = param1;
            loop0:
            while(true)
            {
               §3i§ = param2;
               do
               {
                  §!!d§ = param3;
                  continue loop0;
               }
               while(_loc4_ && param2);
               
            }
         }
      }
      
      public static function §"A§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §`>§.§"A§(param1,param2);
         }
      }
      
      public static function §2K§(param1:§3!f§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §-!7§.§2K§(param1,param2,param3);
         }
      }
      
      public static function §&O§(param1:§&!E§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §-!7§.init(param1);
         }
      }
      
      public static function §8m§(param1:§;!7§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §"!S§))
         {
            §8!b§ = param1;
            do
            {
               §-!7§.§8m§(param1);
            }
            while(_loc3_ && §"!S§);
            
         }
      }
      
      public static function get §]O§() : §;!7§
      {
         return §8!b§;
      }
      
      public static function §=[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §`Z§ = param1;
         }
         do
         {
            §-!7§.background.§=[§(param1);
         }
         while(!_loc2_);
         
      }
      
      public static function §^l§() : Boolean
      {
         return §`Z§;
      }
      
      public static function §[!6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && §"!S§))
         {
            §§push(param4);
            if(_loc6_)
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
                        addr207:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr208:
                           while(true)
                           {
                              param4 = §§pop();
                              addr209:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr206:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!(_loc5_ && §"!S§))
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        §§goto(addr208);
                     }
                     else
                     {
                        loop13:
                        while(true)
                        {
                           param3 = §§pop();
                           loop14:
                           while(true)
                           {
                              addr132:
                              while(true)
                              {
                                 §§push(§+!'§.§2d§);
                                 if(!(_loc5_ && param2))
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§+!'§.§2d§);
                                          addr145:
                                          loop12:
                                          while(true)
                                          {
                                             §§pop().§9!_§ = new Rectangle(param1,param2,param3,param4);
                                             addr152:
                                             while(_loc6_ || param3)
                                             {
                                                §§push(§+!'§.§2d§);
                                                if(_loc5_)
                                                {
                                                   continue loop12;
                                                }
                                                §§pop().setCanvasSize(param3,param4);
                                                while(true)
                                                {
                                                }
                                             }
                                             §§goto(addr209);
                                          }
                                          addr73:
                                          if(!(_loc6_ || param3))
                                          {
                                             continue;
                                          }
                                          §-!7§.§?!]§(param3,param4);
                                          if(!_loc5_)
                                          {
                                             addr36:
                                             if(!(_loc5_ && param3))
                                             {
                                                if(_loc5_ && §"!S§)
                                                {
                                                   §§goto(addr152);
                                                }
                                                if(!(_loc5_ && param1))
                                                {
                                                   return;
                                                }
                                                §§goto(addr206);
                                             }
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop14;
                                                }
                                                §§push(§§findproperty(§[=§));
                                                §§push(param4);
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(§§pop() / §!!d§);
                                                }
                                                §§pop().§[=§ = §§pop();
                                                §§goto(addr36);
                                             }
                                             continue loop14;
                                             addr94:
                                          }
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                §§goto(addr73);
                                             }
                                             else
                                             {
                                                while(_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§findproperty(§<!4§));
                                                      §§push(param3);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§push(§§pop() / §3i§);
                                                      }
                                                      §§pop().§<!4§ = §§pop();
                                                      §§goto(addr94);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(32);
                                                         if(_loc5_ && param2)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         continue loop13;
                                                      }
                                                      §§goto(addr207);
                                                      addr180:
                                                   }
                                                }
                                                §§goto(addr131);
                                                addr118:
                                             }
                                             §§goto(addr80);
                                          }
                                          addr80:
                                          §§goto(addr145);
                                       }
                                    }
                                    while(true)
                                    {
                                       §^!c§ = Math.min(param3 / §3i§,param4 / §!!d§);
                                       §§goto(addr118);
                                       §§goto(addr131);
                                    }
                                 }
                                 §§goto(addr145);
                                 continue loop14;
                              }
                           }
                        }
                     }
                     §§goto(addr209);
                  }
               }
            }
            §§goto(addr208);
         }
         §§goto(addr131);
      }
   }
}
