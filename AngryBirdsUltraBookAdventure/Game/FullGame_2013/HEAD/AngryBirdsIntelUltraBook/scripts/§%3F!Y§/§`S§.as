package §?!Y§
{
   import §6w§.§9!%§;
   import §7!>§.Starling;
   import §91§.§else§;
   import §<u§.FPSMeter;
   import §>!_§.LevelModel;
   import §]!@§.LevelMain;
   import §`y§.BasicGame;
   import flash.geom.Rectangle;
   import §package§.LevelItemManager;
   
   public class §`S§
   {
      
      public static var SCREEN_WIDTH:int = 0;
      
      public static var SCREEN_HEIGHT:int = 0;
      
      public static var §[o§:LevelMain;
      
      public static var §5I§:FPSMeter;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §"!d§:§`S§ = null;
      
      public static var §=F§:BasicGame;
      
      public static var §0>§:Boolean = true;
      
      public static var §3! §:Number = 1;
      
      public static var §`!A§:Number = 1.0;
      
      public static var §4+§:Number = 1.0;
      
      private static var §4N§:§else§ = null;
      
      private static var §5h§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §`S§)
         {
            SCREEN_WIDTH = 0;
            loop0:
            while(true)
            {
               SCREEN_HEIGHT = 0;
               loop1:
               while(true)
               {
                  DEBUG_MODE_ENABLED = false;
                  loop2:
                  while(true)
                  {
                     §"!d§ = null;
                     loop3:
                     while(_loc2_)
                     {
                        §0>§ = true;
                        while(!_loc1_)
                        {
                           continue loop0;
                           addr61:
                           if(!(_loc1_ && §`S§))
                           {
                              while(true)
                              {
                                 §5h§ = false;
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §4+§ = 1;
                                       addr73:
                                       while(!_loc1_)
                                       {
                                          §4N§ = null;
                                       }
                                       continue loop3;
                                    }
                                    addr80:
                                 }
                                 while(!_loc1_)
                                 {
                                    addr44:
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§goto(addr61);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §`!A§ = 1;
                                          §§goto(addr80);
                                          §§goto(addr44);
                                       }
                                       addr85:
                                    }
                                 }
                                 §§goto(addr73);
                              }
                              return;
                              addr68:
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §`S§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §7$§() : Number
      {
         return SCREEN_WIDTH * §`!A§;
      }
      
      public static function §4v§() : Number
      {
         return SCREEN_HEIGHT * §4+§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§5h§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §5h§ = true;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(Starling.§5K§);
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           loop3:
                           while(!_loc1_)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Starling.§7!+§);
                                    if(!_loc1_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc1_)
                                       {
                                          if(_loc2_ || §`S§)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc1_)
                                                {
                                                   addr53:
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Starling.§7!+§);
                                                         addr63:
                                                         while(true)
                                                         {
                                                            §§pop().§&!_§(false);
                                                         }
                                                      }
                                                      addr60:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Starling.§5K§);
                                                         addr92:
                                                         while(true)
                                                         {
                                                            §§pop().isPaused = true;
                                                            continue loop2;
                                                         }
                                                         §§goto(addr53);
                                                      }
                                                      addr89:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break loop5;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             §§goto(addr20);
                                          }
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr63);
                                    addr101:
                                 }
                                 §§goto(addr20);
                              }
                              §§goto(addr89);
                           }
                           continue loop0;
                        }
                        §§goto(addr92);
                     }
                  }
                  addr20:
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §`S§)
         {
            §§push(§5h§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §5h§ = false;
                     loop2:
                     while(true)
                     {
                        §§push(Starling.§5K§);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(Boolean(§§pop()));
                           continue loop0;
                        }
                        addr104:
                        while(true)
                        {
                           §§pop().isPaused = false;
                           addr106:
                           loop4:
                           while(_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 addr28:
                                 while(true)
                                 {
                                    §§push(Starling.§7!+§);
                                    if(_loc1_ || §`S§)
                                    {
                                       addr39:
                                       §§push(Boolean(§§pop()));
                                       if(_loc1_ || §`S§)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr24);
                                             }
                                             if(_loc1_)
                                             {
                                                §§push(Starling.§7!+§);
                                                break;
                                             }
                                             continue loop4;
                                             addr68:
                                          }
                                          addr24:
                                       }
                                       continue loop0;
                                       return;
                                    }
                                    break;
                                 }
                                 §§pop().§&!_§(true);
                                 §§goto(addr68);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr68);
            }
         }
         §§goto(addr110);
      }
      
      public static function get isPaused() : Boolean
      {
         return §5h§;
      }
      
      public static function init(param1:BasicGame, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §=F§ = param1;
            do
            {
               SCREEN_WIDTH = param2;
               do
               {
                  SCREEN_HEIGHT = param3;
                  do
                  {
                     §5I§ = new FPSMeter(true,param1.canvas);
                  }
                  while(_loc5_ && param2);
                  
               }
               while(_loc5_ && param2);
               
            }
            while(_loc5_);
            
         }
      }
      
      public static function § !i§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            LevelItemManager.§ !i§(param1,param2);
         }
      }
      
      public static function §7!Z§(param1:§9!%§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §[o§.§7!Z§(param1,param2,param3);
         }
      }
      
      public static function §?h§(param1:LevelModel) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §[o§.init(param1);
         }
      }
      
      public static function setController(param1:§else§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §4N§ = param1;
            do
            {
               §[o§.setController(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public static function get controller() : §else§
      {
         return §4N§;
      }
      
      public static function §^!D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §`S§))
         {
            §0>§ = param1;
            do
            {
               §[o§.background.§^!D§(param1);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public static function §-!,§() : Boolean
      {
         return §0>§;
      }
      
      public static function §!+§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || §`S§)
         {
            §§push(param4);
            if(_loc5_ || §`S§)
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
                        addr213:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr214:
                           while(true)
                           {
                              param4 = §§pop();
                              addr215:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr212:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     loop12:
                     while(!(_loc6_ && §`S§))
                     {
                        param3 = §§pop();
                        loop13:
                        while(true)
                        {
                           addr145:
                           while(true)
                           {
                              §§push(Starling.§7!+§);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Starling.§7!+§);
                                       addr156:
                                       loop11:
                                       while(true)
                                       {
                                          §§pop().§#L§ = new Rectangle(param1,param2,param3,param4);
                                          addr163:
                                          while(true)
                                          {
                                             §§push(Starling.§7!+§);
                                             if(!(_loc6_ && §`S§))
                                             {
                                                break;
                                             }
                                             continue loop11;
                                          }
                                          §§pop().setCanvasSize(param3,param4);
                                          loop18:
                                          while(true)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                while(true)
                                                {
                                                   §3! § = Math.min(param3 / SCREEN_WIDTH,param4 / SCREEN_HEIGHT);
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_ || §`S§)
                                                         {
                                                            §§push(§§findproperty(§`!A§));
                                                            §§push(param3);
                                                            if(_loc5_ || §`S§)
                                                            {
                                                               §§push(§§pop() / SCREEN_WIDTH);
                                                            }
                                                            §§pop().§`!A§ = §§pop();
                                                            while(_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§findproperty(§4+§));
                                                                  §§push(param4);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() / SCREEN_HEIGHT);
                                                                  }
                                                                  §§pop().§4+§ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ || param2))
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     addr63:
                                                                     if(!(_loc6_ && §`S§))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr187:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(32);
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr212);
                                                                        §§goto(addr63);
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               return;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop13;
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   continue loop13;
                                                }
                                                addr88:
                                             }
                                             §§goto(addr215);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr156);
                              continue loop13;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr214);
         }
         §§goto(addr87);
      }
   }
}
