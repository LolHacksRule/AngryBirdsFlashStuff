package §8!_§
{
   import § !Y§.§4!1§;
   import §!?§.§@"C§;
   import §%!r§.§3!'§;
   import §+!h§.§#V§;
   import §,"&§.§9q§;
   import §7!%§.§[K§;
   import §`!j§.§#b§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   
   public class §?!#§ extends §%"'§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §0!l§:§[K§;
      
      private static var §#!-§:§@"C§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            STATE_NAME = "LevelLoadStateClassic";
         }
      }
      
      public function §?!#§(param1:§9"!§, param2:§3!'§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public static function §90§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §@'§ = §," §;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§0!l§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(§0!l§);
                     addr61:
                     while(true)
                     {
                        §§pop().§`t§();
                        addr62:
                        while(true)
                        {
                        }
                     }
                     addr38:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     return;
                     addr55:
                  }
               }
               while(true)
               {
                  super.deActivate();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr38);
               }
               §§goto(addr55);
            }
            §§goto(addr61);
         }
         §§goto(addr55);
      }
      
      protected function initPackageManager() : §@"C§
      {
         return new §@"C§(§6u§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§3,§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§#b§ = §6u§.getLevelForId(§6u§.currentLevel);
         if(_loc7_ || _loc1_)
         {
            if(_loc1_)
            {
               if(!_loc6_)
               {
                  addr46:
                  §"Z§(_loc1_);
               }
            }
            else
            {
               _loc2_ = §6u§.getEpisodeForLevel(§6u§.currentLevel);
               if(!_loc6_)
               {
                  if(_loc2_)
                  {
                     if(!(_loc6_ && _loc1_))
                     {
                        addr285:
                        if(!§#!-§)
                        {
                           while(true)
                           {
                              §#!-§ = this.initPackageManager();
                              addr291:
                              while(true)
                              {
                              }
                           }
                           addr287:
                        }
                        while(true)
                        {
                           §§push(§0!l§);
                           loop1:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(_loc7_ || this)
                                 {
                                    §0!l§ = new §[K§();
                                    loop3:
                                    while(true)
                                    {
                                       §§push(§]>§.assetsUrl);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop10:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§]>§.buildNumber);
                                                            loop12:
                                                            for(; _loc7_ || _loc1_; if(!(_loc7_ || this))
                                                            {
                                                               continue;
                                                            },if(_loc7_)
                                                            {
                                                               continue loop4;
                                                            })
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc6_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr229:
                                                                     while(true)
                                                                     {
                                                                        §§push("");
                                                                     }
                                                                  }
                                                                  addr228:
                                                               }
                                                               while(true)
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§goto(addr228);
                                                                     addr126:
                                                                     if(!(_loc7_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     loop23:
                                                                     for(; _loc7_; for(; _loc7_ || this; §§pop().§#y§(this.§ !w§),if(!(_loc7_ || _loc1_))
                                                                     {
                                                                        continue;
                                                                     },if(!_loc6_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           break loop16;
                                                                        }
                                                                        if(true)
                                                                        {
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr84);
                                                                     },§§goto(addr177))
                                                                     {
                                                                        §§push(§0!l§);
                                                                        if(_loc7_ || _loc1_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr86);
                                                                     })
                                                                     {
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           §§push(§0!l§);
                                                                           addr86:
                                                                           addr149:
                                                                           while(_loc7_ || this)
                                                                           {
                                                                              §§pop().§4!=§(<pack url="{_loc3_}"/>);
                                                                              continue loop23;
                                                                           }
                                                                           addr171:
                                                                           while(_loc7_)
                                                                           {
                                                                              continue loop1;
                                                                              §§goto(addr86);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().init(§#V§.§4!+§(),_loc4_,_loc5_,§#!-§);
                                                                              break loop24;
                                                                           }
                                                                        }
                                                                        while(_loc7_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr149);
                                                                              }
                                                                              addr147:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr291);
                                                                           }
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                     while(_loc7_ || this)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§push("packages/episode_" + _loc2_.name);
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§push(§§pop() + ".pak");
                                                                        }
                                                                        §§goto(addr126);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr171);
                                                                        §§goto(addr159);
                                                                     }
                                                                     addr159:
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr232:
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop3;
                                             }
                                          }
                                          if(_loc6_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          _loc5_ = §§pop();
                                          §§goto(addr212);
                                       }
                                    }
                                 }
                                 §§goto(addr287);
                              }
                              §§goto(addr147);
                           }
                        }
                     }
                     §§goto(addr291);
                  }
                  §§goto(addr292);
               }
               §§goto(addr285);
            }
            addr292:
            return;
         }
         §§goto(addr46);
      }
      
      protected function § !w§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#b§ = §6u§.getLevelForId(§6u§.currentLevel);
         if(!_loc2_)
         {
            if(!_loc1_)
            {
               throw new Error("Level " + §6u§.currentLevel + " not found in the package",§4!1§.§[j§);
            }
            if(_loc3_ || _loc3_)
            {
               §"Z§(_loc1_);
            }
         }
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §9q§.§>!L§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §9q§.§>!L§.§=>§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §8!^§(this.§1!u§());
         }
      }
      
      protected function §1!u§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8!^§(§]J§.STATE_NAME);
         }
      }
      
      public function §;H§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            § D§ = param1;
         }
         do
         {
            §@'§ = §," §;
         }
         while(_loc2_ && _loc3_);
         
      }
   }
}
