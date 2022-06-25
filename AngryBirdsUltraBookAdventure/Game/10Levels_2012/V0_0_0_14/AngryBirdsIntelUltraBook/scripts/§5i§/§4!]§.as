package §5i§
{
   import §!!§.§>4§;
   import §+&§.§-!7§;
   import §2!!§.§[!A§;
   import §6z§.§4I§;
   import §<i§.§9!M§;
   import §>o§.§+!4§;
   import §?2§.§3N§;
   import §@4§.§,!]§;
   import flash.geom.Rectangle;
   
   public class §4!]§
   {
      
      public static var §]m§:int = 0;
      
      public static var §0N§:int = 0;
      
      public static var §8C§:§-!7§;
      
      public static var §3!V§:§4I§;
      
      public static var §2!y§:Boolean = false;
      
      public static var §@!0§:§4!]§ = null;
      
      public static var §7!G§:§9!M§;
      
      public static var §@M§:Boolean = true;
      
      public static var final:Number = 1;
      
      public static var §4?§:Number = 1.0;
      
      public static var §%!'§:Number = 1.0;
      
      private static var §use §:§[!A§ = null;
      
      private static var §7s§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §]m§ = 0;
            loop0:
            while(true)
            {
               §0N§ = 0;
               while(true)
               {
                  §2!y§ = false;
                  while(_loc1_ || _loc1_)
                  {
                     continue loop0;
                     while(!(_loc2_ && _loc2_))
                     {
                        §use § = null;
                        loop8:
                        for(; _loc1_; §7s§ = false,if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        },§§goto(addr39))
                        {
                           addr55:
                           if(!(_loc2_ && _loc2_))
                           {
                              addr72:
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue;
                              }
                              loop4:
                              while(true)
                              {
                                 final = 1;
                                 do
                                 {
                                    §4?§ = 1;
                                 }
                                 while(!_loc1_);
                                 
                                 addr41:
                                 if(_loc1_ || _loc2_)
                                 {
                                    return;
                                 }
                                 addr121:
                                 while(true)
                                 {
                                    §@M§ = true;
                                    continue loop4;
                                    §§goto(addr41);
                                 }
                              }
                           }
                           while(true)
                           {
                              §%!'§ = 1;
                              break loop8;
                              §§goto(addr55);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      public function §4!]§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §-m§() : Number
      {
         return §]m§ * §4?§;
      }
      
      public static function §@!6§() : Number
      {
         return §0N§ * §%!'§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§7s§)
            {
               if(_loc1_)
               {
                  §7s§ = true;
               }
               loop0:
               while(true)
               {
                  §§push(§,!]§.§+!Z§);
                  if(!(_loc2_ && §4!]§))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§,!]§.§+!Z§);
                           addr95:
                           while(true)
                           {
                              §§pop().isPaused = true;
                              addr97:
                              while(true)
                              {
                              }
                           }
                           addr53:
                           if(_loc1_ || §4!]§)
                           {
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§,!]§.§!9§);
                        if(_loc2_ && §4!]§)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           if(!_loc1_)
                           {
                              addr19:
                              return;
                              addr81:
                           }
                           if(!(_loc1_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr53);
                        }
                        §§goto(addr19);
                     }
                     addr79:
                     §§pop().§&!y§(false);
                     §§goto(addr81);
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr19);
         }
         §§goto(addr77);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§7s§)
            {
               loop0:
               while(true)
               {
                  §7s§ = false;
                  addr100:
                  while(true)
                  {
                     §§push(§,!]§.§+!Z§);
                     if(!(_loc2_ && §4!]§))
                     {
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              addr90:
                              §,!]§.§+!Z§.isPaused = false;
                           }
                           while(!_loc2_)
                           {
                           }
                           continue;
                           addr92:
                        }
                        while(true)
                        {
                           §§push(§,!]§.§!9§);
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    continue loop0;
                                 }
                              }
                              §§goto(addr24);
                           }
                           else
                           {
                              addr60:
                           }
                           §§pop().§&!y§(true);
                           if(_loc1_)
                           {
                              break;
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr90);
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr100);
      }
      
      public static function get isPaused() : Boolean
      {
         return §7s§;
      }
      
      public static function init(param1:§9!M§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            §7!G§ = param1;
         }
         while(true)
         {
            §]m§ = param2;
            while(_loc4_ || param3)
            {
               §0N§ = param3;
               do
               {
                  §3!V§ = new §4I§(true,param1.canvas);
               }
               while(!_loc4_);
               
               if(_loc4_ || param1)
               {
                  return;
               }
            }
         }
      }
      
      public static function §`!5§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §+!4§.§`!5§(param1,param2);
         }
      }
      
      public static function §%'§(param1:§3N§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || §4!]§)
         {
            §8C§.§%'§(param1,param2,param3);
         }
      }
      
      public static function §9!d§(param1:§>4§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §8C§.init(param1);
         }
      }
      
      public static function setController(param1:§[!A§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §use § = param1;
            do
            {
               §8C§.setController(param1);
            }
            while(!_loc2_);
            
         }
      }
      
      public static function get §=`§() : §[!A§
      {
         return §use §;
      }
      
      public static function §0g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §4!]§))
         {
            §@M§ = param1;
         }
         do
         {
            §8C§.background.§0g§(param1);
         }
         while(!_loc2_);
         
      }
      
      public static function §;!;§() : Boolean
      {
         return §@M§;
      }
      
      public static function §,!0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
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
                     while(true)
                     {
                        §§push(32);
                        addr202:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr203:
                           while(true)
                           {
                              param4 = §§pop();
                              addr204:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr201:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc6_ || param3)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(32);
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        if(§§pop() < §§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(32);
                              if(!_loc5_)
                              {
                                 §§push(Number(§§pop()));
                                 while(_loc6_ || §4!]§)
                                 {
                                    param3 = §§pop();
                                    loop17:
                                    while(true)
                                    {
                                       addr139:
                                       while(true)
                                       {
                                          §§push(§,!]§.§!9§);
                                          if(_loc6_ || param2)
                                          {
                                             if(§§pop())
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§,!]§.§!9§);
                                                   addr152:
                                                   while(true)
                                                   {
                                                      §§pop().§#S§ = new Rectangle(param1,param2,param3,param4);
                                                      addr159:
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(§,!]§.§!9§);
                                                         if(!_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         addr128:
                                                         §§pop().setCanvasSize(param3,param4);
                                                         while(!(_loc6_ || param1))
                                                         {
                                                            continue loop18;
                                                            §§goto(addr128);
                                                         }
                                                         addr138:
                                                         loop10:
                                                         while(true)
                                                         {
                                                            final = Math.min(param3 / §]m§,param4 / §0N§);
                                                            while(true)
                                                            {
                                                               if(_loc6_ || §4!]§)
                                                               {
                                                                  §§push(§§findproperty(§4?§));
                                                                  §§push(param3);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() / §]m§);
                                                                  }
                                                                  §§pop().§4?§ = §§pop();
                                                                  loop12:
                                                                  while(!_loc5_)
                                                                  {
                                                                     §§push(§§findproperty(§%!'§));
                                                                     §§push(param4);
                                                                     if(_loc6_ || param3)
                                                                     {
                                                                        §§push(§§pop() / §0N§);
                                                                     }
                                                                     §§pop().§%!'§ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        §§goto(addr131);
                                                                        addr82:
                                                                        §8C§.§8m§(param3,param4);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 break loop10;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr138);
                                                         }
                                                         addr131:
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr104);
                                          }
                                          §§goto(addr152);
                                          continue loop17;
                                       }
                                    }
                                 }
                                 §§goto(addr203);
                                 addr189:
                              }
                              break;
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr189);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr159);
      }
   }
}
