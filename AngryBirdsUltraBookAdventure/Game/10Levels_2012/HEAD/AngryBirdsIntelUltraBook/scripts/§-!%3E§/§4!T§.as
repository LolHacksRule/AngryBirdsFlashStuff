package §-!>§
{
   import §"!!§.BasicGame;
   import §"$§.Starling;
   import §#!X§.LevelModel;
   import §'N§.FPSMeter;
   import §3!c§.§<'§;
   import §9!H§.§"!L§;
   import §?A§.LevelMain;
   import §^L§.LevelItemManager;
   import flash.geom.Rectangle;
   
   public class §4!T§
   {
      
      public static var SCREEN_WIDTH:int = 0;
      
      public static var SCREEN_HEIGHT:int = 0;
      
      public static var §1t§:LevelMain;
      
      public static var §!!]§:FPSMeter;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §>N§:§4!T§ = null;
      
      public static var §%!K§:BasicGame;
      
      public static var §2!D§:Boolean = true;
      
      public static var §-!#§:Number = 1;
      
      public static var §`!Y§:Number = 1.0;
      
      public static var §=!_§:Number = 1.0;
      
      private static var §-4§:§"!L§ = null;
      
      private static var §=C§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §4!T§)
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
                     §>N§ = null;
                     loop3:
                     while(_loc2_)
                     {
                        §2!D§ = true;
                        while(!_loc1_)
                        {
                           continue loop0;
                           addr61:
                           if(!(_loc1_ && §4!T§))
                           {
                              while(true)
                              {
                                 §=C§ = false;
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §=!_§ = 1;
                                       addr73:
                                       while(!_loc1_)
                                       {
                                          §-4§ = null;
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
                                          §`!Y§ = 1;
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
      
      public function §4!T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §7"§() : Number
      {
         return SCREEN_WIDTH * §`!Y§;
      }
      
      public static function §8_§() : Number
      {
         return SCREEN_HEIGHT * §=!_§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§=C§);
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
                        §=C§ = true;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(Starling.§@7§);
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
                                    §§push(Starling.§'!A§);
                                    if(!_loc1_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc1_)
                                       {
                                          if(_loc2_ || §4!T§)
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
                                                         §§push(Starling.§'!A§);
                                                         addr63:
                                                         while(true)
                                                         {
                                                            §§pop().§>w§(false);
                                                         }
                                                      }
                                                      addr60:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Starling.§@7§);
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
         if(_loc1_ || §4!T§)
         {
            §§push(§=C§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §=C§ = false;
                     loop2:
                     while(true)
                     {
                        §§push(Starling.§@7§);
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
                                    §§push(Starling.§'!A§);
                                    if(_loc1_ || §4!T§)
                                    {
                                       addr39:
                                       §§push(Boolean(§§pop()));
                                       if(_loc1_ || §4!T§)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr24);
                                             }
                                             if(_loc1_)
                                             {
                                                §§push(Starling.§'!A§);
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
                                 §§pop().§>w§(true);
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
         return §=C§;
      }
      
      public static function init(param1:BasicGame, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §%!K§ = param1;
            do
            {
               SCREEN_WIDTH = param2;
               do
               {
                  SCREEN_HEIGHT = param3;
                  do
                  {
                     §!!]§ = new FPSMeter(true,param1.canvas);
                  }
                  while(_loc5_ && param2);
                  
               }
               while(_loc5_ && param2);
               
            }
            while(_loc5_);
            
         }
      }
      
      public static function §&a§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            LevelItemManager.§&a§(param1,param2);
         }
      }
      
      public static function §'!>§(param1:§<'§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §1t§.§'!>§(param1,param2,param3);
         }
      }
      
      public static function §%<§(param1:LevelModel) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §1t§.init(param1);
         }
      }
      
      public static function setController(param1:§"!L§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §-4§ = param1;
            do
            {
               §1t§.setController(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public static function get controller() : §"!L§
      {
         return §-4§;
      }
      
      public static function §]z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §4!T§))
         {
            §2!D§ = param1;
            do
            {
               §1t§.background.§]z§(param1);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public static function §>!>§() : Boolean
      {
         return §2!D§;
      }
      
      public static function §[Y§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || §4!T§)
         {
            §§push(param4);
            if(_loc5_ || §4!T§)
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
                     while(!(_loc6_ && §4!T§))
                     {
                        param3 = §§pop();
                        loop13:
                        while(true)
                        {
                           addr145:
                           while(true)
                           {
                              §§push(Starling.§'!A§);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Starling.§'!A§);
                                       addr156:
                                       loop11:
                                       while(true)
                                       {
                                          §§pop().§<H§ = new Rectangle(param1,param2,param3,param4);
                                          addr163:
                                          while(true)
                                          {
                                             §§push(Starling.§'!A§);
                                             if(!(_loc6_ && §4!T§))
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
                                                   §-!#§ = Math.min(param3 / SCREEN_WIDTH,param4 / SCREEN_HEIGHT);
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_ || §4!T§)
                                                         {
                                                            §§push(§§findproperty(§`!Y§));
                                                            §§push(param3);
                                                            if(_loc5_ || §4!T§)
                                                            {
                                                               §§push(§§pop() / SCREEN_WIDTH);
                                                            }
                                                            §§pop().§`!Y§ = §§pop();
                                                            while(_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§findproperty(§=!_§));
                                                                  §§push(param4);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() / SCREEN_HEIGHT);
                                                                  }
                                                                  §§pop().§=!_§ = §§pop();
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
                                                                     if(!(_loc6_ && §4!T§))
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
