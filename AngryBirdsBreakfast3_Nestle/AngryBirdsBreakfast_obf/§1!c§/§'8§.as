package §1!c§
{
   import §"!w§.§6!E§;
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §%!B§.§7C§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1![§.§-"5§;
   import §2!&§.§+h§;
   import §4!i§.§9w§;
   
   public class §'8§ extends §,!d§
   {
      
      public static const §8"%§:String = "LevelLoadStateClassic";
      
      private static var §+m§:§6!E§;
      
      private static var §>O§:§-"5§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8"%§ = "LevelLoadStateClassic";
         }
      }
      
      public function §'8§(param1:§0![§, param2:§+f§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public static function §@!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §2!x§ = §8y§;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§+m§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr60:
                  while(true)
                  {
                     §§push(§+m§);
                     addr61:
                     while(true)
                     {
                        §§pop().§#!?§();
                        addr62:
                        while(true)
                        {
                        }
                     }
                  }
                  addr60:
               }
               while(true)
               {
                  super.deActivate();
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr60);
               }
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr60);
      }
      
      protected function §<!8§() : §-"5§
      {
         return new §-"5§(§4a§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§7C§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§5L§ = §4a§.getLevelForId(§4a§.currentLevel);
         if(!_loc7_)
         {
            if(_loc1_)
            {
               if(_loc6_ || this)
               {
                  §[!'§(_loc1_);
                  addr48:
               }
               §§goto(addr48);
            }
            else
            {
               _loc2_ = §4a§.getEpisodeForLevel(§4a§.currentLevel);
               if(_loc6_ || this)
               {
                  if(_loc2_)
                  {
                     loop0:
                     while(true)
                     {
                        if(!§>O§)
                        {
                           while(true)
                           {
                              §>O§ = this.§<!8§();
                              addr280:
                              while(true)
                              {
                              }
                           }
                           addr276:
                        }
                        while(true)
                        {
                           §§push(§+m§);
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop22:
                                 while(true)
                                 {
                                    §§push(§+m§);
                                    loop23:
                                    while(true)
                                    {
                                       §§pop().§#y§();
                                       loop24:
                                       while(_loc6_)
                                       {
                                          §§push("packages/episode_" + _loc2_.name);
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                addr148:
                                                §§push(§§pop() + ".pak");
                                                if(!_loc7_)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop25:
                                                   while(true)
                                                   {
                                                      loop26:
                                                      while(true)
                                                      {
                                                         §§push(§+m§);
                                                         loop27:
                                                         while(!_loc7_)
                                                         {
                                                            §§pop().§#X§(<pack url="{_loc3_}"/>);
                                                            loop28:
                                                            while(_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§+m§);
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§pop().§&!L§(this.§-o§);
                                                                        if(_loc7_ && _loc1_)
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        if(!(_loc6_ || this))
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        if(!(_loc6_ || _loc3_))
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        addr95:
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           if(!(_loc7_ && _loc1_))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                           else
                                                                           {
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push("");
                                                                                 addr176:
                                                                                 while(true)
                                                                                 {
                                                                                    addr177:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc7_ && _loc2_))
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§+m§);
                                                                                                   break loop27;
                                                                                                }
                                                                                                addr246:
                                                                                                while(!_loc7_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §+m§ = new §6!E§();
                                                                                                      break loop28;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr280);
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr95);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push("");
                                                                                             addr231:
                                                                                             while(true)
                                                                                             {
                                                                                                addr232:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr233:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      break loop24;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr186:
                                                                                          addr242:
                                                                                       }
                                                                                       addr227:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr186);
                                                                        continue loop28;
                                                                     }
                                                                     continue loop23;
                                                                  }
                                                                  continue loop27;
                                                               }
                                                               return;
                                                            }
                                                            while(!(_loc7_ && _loc1_))
                                                            {
                                                               §§push(§^!y§.assetsUrl);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr240:
                                                                  addr216:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr242);
                                                                        }
                                                                        addr241:
                                                                     }
                                                                     §§goto(addr231);
                                                                  }
                                                                  if(!(_loc6_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§goto(addr227);
                                                                     }
                                                                     §§goto(addr176);
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                            }
                                                            §§goto(addr276);
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr148);
                                       }
                                       while(true)
                                       {
                                          §§push(§^!y§.buildNumber);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             if(_loc6_ || this)
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr241);
                                             }
                                             break;
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr233);
                                    }
                                 }
                              }
                              §§goto(addr246);
                           }
                        }
                     }
                  }
                  §§goto(addr281);
               }
               §§goto(addr126);
            }
         }
         §§goto(addr48);
      }
      
      protected function §-o§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§5L§ = §4a§.getLevelForId(§4a§.currentLevel);
         if(!_loc2_)
         {
            if(!_loc1_)
            {
               throw new Error("Level " + §4a§.currentLevel + " not found in the package",§9w§.§"n§);
            }
            §[!'§(_loc1_);
         }
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §@!S§.§2A§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §@!S§.§2A§.§3"-§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7"6§(this.§[!w§());
         }
      }
      
      protected function §[!w§() : String
      {
         return StatePlay.§8"%§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §7"6§(§^j§.§8"%§);
         }
      }
      
      public function §8!r§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §+!'§ = param1;
            do
            {
               §2!x§ = §8y§;
            }
            while(!(_loc3_ || this));
            
         }
      }
   }
}
