package §!J§
{
   import § !+§.§0Z§;
   import §'!H§.§5,§;
   import §9N§.§9!%§;
   import §<!+§.§with§;
   import §<o§.§2%§;
   import §?7§.§&!5§;
   import §@,§.§+D§;
   import §]C§.§9!S§;
   import flash.geom.Rectangle;
   
   public class §[&§
   {
      
      public static var §"L§:int = 0;
      
      public static var §#S§:int = 0;
      
      public static var §&!'§:§9!%§;
      
      public static var §?!§:§+D§;
      
      public static var §!N§:Boolean = false;
      
      public static var §4n§:§[&§ = null;
      
      public static var §;L§:§2%§;
      
      public static var §-!+§:Boolean = true;
      
      public static var §4'§:Number = 1;
      
      public static var §8n§:Number = 1.0;
      
      public static var §6!H§:Number = 1.0;
      
      private static var §2t§:§9!S§ = null;
      
      private static var §'V§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §[&§)
         {
            §"L§ = 0;
            while(true)
            {
               §#S§ = 0;
            }
            addr154:
         }
         loop1:
         while(true)
         {
            §!N§ = false;
            while(true)
            {
               §4n§ = null;
               loop3:
               for(; !(_loc2_ && §[&§); if(!(_loc1_ || _loc2_))
               {
                  continue;
               },§2t§ = null,§§goto(addr53))
               {
                  §-!+§ = true;
                  loop4:
                  while(true)
                  {
                     §4'§ = 1;
                     while(true)
                     {
                        §8n§ = 1;
                        loop6:
                        while(_loc1_ || _loc2_)
                        {
                           §6!H§ = 1;
                           loop7:
                           while(true)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop3;
                              }
                              continue loop6;
                              addr53:
                              while(true)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    continue loop4;
                                 }
                                 continue loop7;
                                 addr77:
                                 §'V§ = false;
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §[&§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §6!§() : Number
      {
         return §"L§ * §8n§;
      }
      
      public static function §#0§() : Number
      {
         return §#S§ * §6!H§;
      }
      
      public static function §[]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§'V§)
            {
               loop0:
               while(true)
               {
                  §'V§ = true;
                  addr85:
                  while(true)
                  {
                     §§push(§0Z§.§-m§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           while(!_loc2_)
                           {
                              §§push(§0Z§.§-m§);
                              while(true)
                              {
                                 §§pop().§5!T§ = true;
                                 addr77:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    addr79:
                                 }
                              }
                           }
                           continue;
                           addr61:
                        }
                        while(true)
                        {
                           §§push(§0Z§.§4J§);
                           if(!(_loc2_ && §[&§))
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(§0Z§.§4J§);
                                          break;
                                       }
                                       §§goto(addr61);
                                    }
                                    §§goto(addr77);
                                 }
                                 addr19:
                                 return;
                                 addr54:
                              }
                              §§goto(addr19);
                           }
                           break;
                           §§goto(addr79);
                        }
                        §§pop().§`5§(false);
                        §§goto(addr54);
                     }
                     §§goto(addr65);
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr85);
      }
      
      public static function §>!E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §[&§)
         {
            if(§'V§)
            {
               loop0:
               while(true)
               {
                  §'V§ = false;
                  while(true)
                  {
                     §§push(§0Z§.§-m§);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr81:
                              §0Z§.§-m§.§5!T§ = false;
                           }
                           while(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           continue;
                        }
                        while(true)
                        {
                           §§push(§0Z§.§4J§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(_loc1_ && _loc2_)
                              {
                                 addr25:
                                 return;
                                 addr65:
                              }
                              §§goto(addr42);
                           }
                           §§goto(addr25);
                        }
                        addr63:
                        §§pop().§`5§(true);
                        §§goto(addr65);
                     }
                     §§goto(addr81);
                  }
               }
               addr98:
            }
            §§goto(addr25);
         }
         §§goto(addr98);
      }
      
      public static function get §5!T§() : Boolean
      {
         return §'V§;
      }
      
      public static function init(param1:§2%§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §;L§ = param1;
            while(true)
            {
               §"L§ = param2;
               while(_loc5_)
               {
                  §#S§ = param3;
                  while(_loc5_ || param3)
                  {
                     §?!§ = new §+D§(true,param1.canvas);
                     if(!_loc4_)
                     {
                        return;
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public static function §"F§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §&!5§.§"F§(param1,param2);
         }
      }
      
      public static function §<!5§(param1:§5,§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §&!'§.§<!5§(param1,param2,param3);
         }
      }
      
      public static function §,s§(param1:§with§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §&!'§.init(param1);
         }
      }
      
      public static function §2P§(param1:§9!S§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §2t§ = param1;
         }
         do
         {
            §&!'§.§2P§(param1);
         }
         while(_loc3_ && §[&§);
         
      }
      
      public static function get §&#§() : §9!S§
      {
         return §2t§;
      }
      
      public static function §@!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §-!+§ = param1;
         }
         do
         {
            §&!'§.background.§@!-§(param1);
         }
         while(!_loc2_);
         
      }
      
      public static function §'a§() : Boolean
      {
         return §-!+§;
      }
      
      public static function §7!V§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
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
                     if(_loc5_)
                     {
                        §§push(32);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr207:
                           while(true)
                           {
                              param4 = §§pop();
                           }
                        }
                        addr206:
                     }
                     while(true)
                     {
                     }
                     addr208:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        §§push(32);
                        if(!(_loc5_ || param3))
                        {
                           break;
                        }
                        if(§§pop() < §§pop())
                        {
                           if(_loc5_ || param2)
                           {
                              §§push(32);
                              if(_loc5_)
                              {
                                 addr172:
                                 §§push(Number(§§pop()));
                                 if(_loc5_ || §[&§)
                                 {
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 §§goto(addr206);
                              }
                              §§goto(addr207);
                           }
                           else
                           {
                              loop6:
                              for(; !_loc6_; loop11:
                              while(!(_loc6_ && param2))
                              {
                                 §§push(§§findproperty(§6!H§));
                                 §§push(param4);
                                 if(!(_loc6_ && §[&§))
                                 {
                                    §§push(§§pop() / §#S§);
                                 }
                                 §§pop().§6!H§ = §§pop();
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop11;
                                    }
                                    if(!_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr119);
                              })
                              {
                                 while(true)
                                 {
                                    §§push(§0Z§.§4J§);
                                    if(_loc5_ || §[&§)
                                    {
                                       if(§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§0Z§.§4J§);
                                             addr140:
                                             loop14:
                                             while(true)
                                             {
                                                §§pop().§&u§ = new Rectangle(param1,param2,param3,param4);
                                                addr147:
                                                while(true)
                                                {
                                                   §§push(§0Z§.§4J§);
                                                   if(_loc5_)
                                                   {
                                                      §§pop().setCanvasSize(param3,param4);
                                                      continue loop8;
                                                   }
                                                   continue loop14;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §4'§ = Math.min(param3 / §"L§,param4 / §#S§);
                                          addr110:
                                          while(true)
                                          {
                                             §§push(§§findproperty(§8n§));
                                             §§push(param3);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(§§pop() / §"L§);
                                             }
                                             §§pop().§8n§ = §§pop();
                                             continue loop6;
                                          }
                                          §§goto(addr126);
                                       }
                                       return;
                                       addr47:
                                    }
                                    §§goto(addr140);
                                 }
                              }
                              addr187:
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr172);
                  }
               }
            }
         }
         §§goto(addr147);
      }
   }
}
