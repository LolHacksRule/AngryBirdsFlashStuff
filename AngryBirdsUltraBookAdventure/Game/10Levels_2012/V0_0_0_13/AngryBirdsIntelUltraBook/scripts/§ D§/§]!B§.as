package § D§
{
   import §"L§.LevelModel;
   import §,!O§.BasicGame;
   import §0P§.Starling;
   import §2!?§.§7!W§;
   import §2!H§.LevelMain;
   import §6b§.FPSMeter;
   import §;T§.LevelItemManager;
   import §`u§.§@K§;
   import flash.geom.Rectangle;
   
   public class §]!B§
   {
      
      public static var SCREEN_WIDTH:int = 0;
      
      public static var SCREEN_HEIGHT:int = 0;
      
      public static var §>F§:LevelMain;
      
      public static var §6_§:FPSMeter;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §3D§:§]!B§ = null;
      
      public static var §%h§:BasicGame;
      
      public static var §get §:Boolean = true;
      
      public static var §<!3§:Number = 1;
      
      public static var §^F§:Number = 1.0;
      
      public static var §9$§:Number = 1.0;
      
      private static var §;#§:§7!W§ = null;
      
      private static var §,!a§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            SCREEN_WIDTH = 0;
            while(true)
            {
               SCREEN_HEIGHT = 0;
               loop6:
               for(; !(_loc1_ && _loc2_); if(!_loc2_)
               {
                  continue;
               },if(_loc2_)
               {
                  §§goto(addr63);
               },§§goto(addr114))
               {
                  §9$§ = 1;
                  loop7:
                  while(_loc2_)
                  {
                     §;#§ = null;
                     while(true)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           continue loop6;
                        }
                        continue loop7;
                        addr63:
                        §,!a§ = false;
                        if(_loc2_)
                        {
                           addr35:
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 §<!3§ = 1;
                                 break loop7;
                                 §§goto(addr35);
                              }
                              addr104:
                           }
                           return;
                        }
                     }
                     addr114:
                     while(!(_loc1_ && _loc2_))
                     {
                        §3D§ = null;
                        while(true)
                        {
                           §get § = true;
                           §§goto(addr104);
                           break loop7;
                        }
                     }
                     while(true)
                     {
                        DEBUG_MODE_ENABLED = false;
                        §§goto(addr114);
                     }
                  }
                  while(_loc2_)
                  {
                     §^F§ = 1;
                     continue loop6;
                  }
                  §§goto(addr109);
               }
            }
         }
         §§goto(addr126);
      }
      
      public function §]!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §"!U§() : Number
      {
         return SCREEN_WIDTH * §^F§;
      }
      
      public static function §=w§() : Number
      {
         return SCREEN_HEIGHT * §9$§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§,!a§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §,!a§ = true;
                        loop3:
                        while(true)
                        {
                           §§push(Starling.§1!e§);
                           if(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              loop4:
                              for(; !(_loc2_ && §]!B§); §§push(Boolean(§§pop())),if(!(_loc2_ && _loc1_))
                              {
                                 continue loop0;
                              })
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(Starling.§1!e§);
                                       addr111:
                                       addr67:
                                       while(true)
                                       {
                                          §§pop().isPaused = true;
                                          addr113:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop3;
                                             }
                                             if(_loc2_ && §]!B§)
                                             {
                                                continue loop2;
                                             }
                                             addr122:
                                          }
                                       }
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(Starling.§!!F§);
                                          addr77:
                                          while(true)
                                          {
                                             §§pop().§`&§(false);
                                             addr80:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   §§goto(addr113);
                                                }
                                                §§goto(addr82);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(Starling.§!!F§);
                                    if(!_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr77);
                                    §§goto(addr122);
                                 }
                                 §§goto(addr82);
                              }
                              continue loop1;
                           }
                           §§goto(addr111);
                        }
                     }
                  }
                  §§goto(addr82);
               }
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc1_ || §]!B§)
                     {
                        §§goto(addr67);
                     }
                     §§goto(addr80);
                  }
                  addr82:
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§,!a§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §,!a§ = false;
                     addr117:
                     while(true)
                     {
                        §§push(Starling.§1!e§);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(Boolean(§§pop()));
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(Starling.§1!e§);
                                    addr108:
                                    while(true)
                                    {
                                       §§pop().isPaused = false;
                                       addr110:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr105:
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(Starling.§!!F§);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 addr69:
                                 while(true)
                                 {
                                    §§pop().§`&§(true);
                                    addr72:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          break loop5;
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr24);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr108);
                     }
                  }
               }
               addr24:
               return;
            }
         }
         §§goto(addr66);
      }
      
      public static function get isPaused() : Boolean
      {
         return §,!a§;
      }
      
      public static function init(param1:BasicGame, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §%h§ = param1;
            while(true)
            {
               SCREEN_WIDTH = param2;
            }
            addr77:
         }
         loop1:
         do
         {
            SCREEN_HEIGHT = param3;
            while(!_loc4_)
            {
               §6_§ = new FPSMeter(true,param1.canvas);
               if(!(_loc4_ && param3))
               {
                  continue loop1;
               }
            }
            §§goto(addr77);
         }
         while(!_loc5_);
         
      }
      
      public static function §&N§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            LevelItemManager.§&N§(param1,param2);
         }
      }
      
      public static function §8W§(param1:§@K§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §>F§.§8W§(param1,param2,param3);
         }
      }
      
      public static function §]!R§(param1:LevelModel) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §>F§.init(param1);
         }
      }
      
      public static function setController(param1:§7!W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §]!B§))
         {
            §;#§ = param1;
            do
            {
               §>F§.setController(param1);
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public static function get controller() : §7!W§
      {
         return §;#§;
      }
      
      public static function §^!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §get § = param1;
         }
         do
         {
            §>F§.background.§^!Y§(param1);
         }
         while(_loc2_ && §]!B§);
         
      }
      
      public static function §]!#§() : Boolean
      {
         return §get §;
      }
      
      public static function §%e§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && §]!B§))
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
                        addr214:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr215:
                           while(true)
                           {
                              param4 = §§pop();
                              addr216:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr213:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     if(!_loc5_)
                     {
                        §§push(32);
                        if(!(_loc6_ || param2))
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§push(Starling.§!!F§);
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          §§push(Starling.§!!F§);
                                          loop10:
                                          while(true)
                                          {
                                             §§pop().§8l§ = new Rectangle(param1,param2,param3,param4);
                                             addr171:
                                             loop11:
                                             while(true)
                                             {
                                                §§push(Starling.§!!F§);
                                                if(_loc5_ && param2)
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc6_ || param2))
                                                {
                                                   break;
                                                }
                                                §§pop().setCanvasSize(param3,param4);
                                                loop12:
                                                while(true)
                                                {
                                                   addr106:
                                                   while(true)
                                                   {
                                                      §<!3§ = Math.min(param3 / SCREEN_WIDTH,param4 / SCREEN_HEIGHT);
                                                      while(_loc6_)
                                                      {
                                                         §§push(§§findproperty(§^F§));
                                                         §§push(param3);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() / SCREEN_WIDTH);
                                                         }
                                                         §§pop().§^F§ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(§§findproperty(§9$§));
                                                            §§push(param4);
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               §§push(§§pop() / SCREEN_HEIGHT);
                                                            }
                                                            §§pop().§9$§ = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr78:
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  continue;
                                                               }
                                                               addr197:
                                                               while(true)
                                                               {
                                                                  §§push(32);
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  continue loop0;
                                                                  §§goto(addr78);
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr213);
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr106);
                              }
                           }
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr215);
                  }
               }
            }
         }
         §§goto(addr61);
      }
   }
}
