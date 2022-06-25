package §9c§
{
   import § $§.Server;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §#!X§.LevelModel;
   import §%L§.PackageManager;
   import §-!>§.§4!T§;
   import §`M§.LoadManager;
   
   public class StateLevelLoadClassic extends StateLevelLoad
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var mOldManualScale:Number;
      
      private static var sLoadManager:LoadManager;
      
      private static var sPackageManager:PackageManager;
      
      {
         var STATE_NAME:Boolean = false;
         var mOldManualScale:Boolean = true;
         if(mOldManualScale || mOldManualScale)
         {
            while(true)
            {
               STATE_NAME = "LevelLoadStateClassic";
            }
            addr82:
         }
         do
         {
            loop2:
            do
            {
               while(!STATE_NAME)
               {
                  if(!STATE_NAME)
                  {
                     continue loop2;
                  }
               }
               §§goto(addr82);
            }
            while(STATE_NAME && StateLevelLoadClassic);
            
         }
         while(!(mOldManualScale || mOldManualScale));
         
      }
      
      public function StateLevelLoadClassic(initState:Boolean = true, name:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || this)
         {
            do
            {
               do
               {
                  do
                  {
                     super(initState,name);
                     while(_loc3_ && initState)
                     {
                     }
                  }
                  while(!(_loc4_ || initState));
                  
               }
               while(_loc3_ && _loc3_);
               
            }
            while(!_loc4_);
            
         }
      }
      
      public static function §'8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || StateLevelLoadClassic)
         {
         }
         if(_loc1_ && StateLevelLoadClassic)
         {
         }
         loop0:
         while(true)
         {
            LevelManager.§%<§(LevelManager.§`l§());
            do
            {
               continue loop0;
            }
            while(_loc1_ && StateLevelLoadClassic);
            
            return;
         }
      }
      
      public static function §>1§(index:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(!(_loc2_ && index))
         {
            while(true)
            {
               addr95:
               while(!_loc2_)
               {
                  smLevelIndex = index;
               }
            }
         }
         loop2:
         while(true)
         {
            loop3:
            do
            {
               if(_loc2_ && index)
               {
                  continue loop2;
               }
               smLoadStateStep = LOAD_STATE_NONE;
               while(!_loc2_)
               {
                  if(_loc3_)
                  {
                     continue loop3;
                  }
               }
               §§goto(addr95);
            }
            while(_loc2_ && StateLevelLoadClassic);
            
            return;
         }
      }
      
      public static function §3`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               if(!§4!T§.§1t§.camera)
               {
                  loop5:
                  while(true)
                  {
                     smLoadStateStep = LOAD_STATE_NONE;
                     addr55:
                     addr67:
                     for(; _loc2_ || StateLevelLoadClassic; if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           break loop5;
                        }
                        continue loop0;
                     })
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                     }
                     addr93:
                     while(!(_loc1_ && StateLevelLoadClassic))
                     {
                        while(true)
                        {
                           continue loop5;
                        }
                        §§goto(addr55);
                     }
                     while(true)
                     {
                        §§goto(addr67);
                     }
                  }
                  return;
               }
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr84);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!_loc1_)
         {
         }
         loop0:
         while(true)
         {
            §§push(sLoadManager);
            loop1:
            while(§§pop())
            {
               if(_loc2_ && this)
               {
               }
               loop2:
               while(true)
               {
                  §§push(sLoadManager);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().§[y§();
                  while(true)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        continue loop0;
                     }
                     continue loop2;
                     addr83:
                     if(!(_loc2_ && _loc1_))
                     {
                        break loop1;
                     }
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_)
         {
         }
         var chapter:ChapterModel = null;
         var url:* = null;
         var assetsUrl:String = null;
         var buildNumber:String = null;
         if(!(_loc6_ && this))
         {
            if(_loc7_ || chapter)
            {
               addr48:
            }
            var level:LevelModel = LevelManager.§<l§(LevelManager.§!=§);
            if(_loc6_ && level)
            {
            }
            while(true)
            {
               §§push(Boolean(level));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        addr148:
                        while(true)
                        {
                           initLevelMain(level);
                           addr142:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                     }
                     addr147:
                  }
                  else
                  {
                     chapter = LevelManager.§'!7§(LevelManager.§!=§);
                     if(!_loc6_)
                     {
                        addr554:
                        if(chapter)
                        {
                           addr546:
                           addr551:
                           addr552:
                           §§push(!sPackageManager);
                           if(_loc7_)
                           {
                              if(§§pop())
                              {
                                 sPackageManager = new PackageManager();
                                 addr542:
                                 addr534:
                                 addr543:
                              }
                              addr511:
                              §§push(!sLoadManager);
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    addr524:
                                    addr525:
                                    if(_loc7_ || level)
                                    {
                                       sLoadManager = new LoadManager();
                                       addr496:
                                       addr493:
                                       if(_loc7_ || chapter)
                                       {
                                          if(!(_loc6_ && chapter))
                                          {
                                             addr464:
                                             §§push(§#-§.assetsUrl);
                                             if(!§#-§.assetsUrl)
                                             {
                                                addr467:
                                                §§pop();
                                                if(_loc7_)
                                                {
                                                   addr450:
                                                   assetsUrl = "";
                                                   addr447:
                                                   addr449:
                                                   if(!(_loc6_ && level))
                                                   {
                                                      addr435:
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc6_ && url))
                                                         {
                                                            addr410:
                                                            §§push(§#-§.buildNumber);
                                                            §§push(§#-§.buildNumber);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc6_ && chapter))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     addr422:
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§pop();
                                                                        addr430:
                                                                        if(_loc7_)
                                                                        {
                                                                           addr385:
                                                                           §§push("");
                                                                           if(!(_loc6_ && url))
                                                                           {
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr403:
                                                                                    buildNumber = §§pop();
                                                                                    addr404:
                                                                                    addr381:
                                                                                    §§push(sLoadManager);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§pop().init(Server.§ !T§(),assetsUrl,buildNumber,sPackageManager);
                                                                                       addr376:
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr340:
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             if(!(_loc6_ && level))
                                                                                             {
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   addr324:
                                                                                                   §§push(sLoadManager.§?>§());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr328:
                                                                                                      if(!(_loc6_ && url))
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push("packages/chapter");
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + chapter.name);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr294:
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc6_ && level))
                                                                                                                        {
                                                                                                                           if(_loc7_ || this)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    url = §§pop();
                                                                                                                                    addr318:
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       addr253:
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          if(_loc7_ || chapter)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && chapter))
                                                                                                                                             {
                                                                                                                                                addr214:
                                                                                                                                                §§push(sLoadManager);
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§pop().§#!T§(<pack url="{url}"/>);
                                                                                                                                                   addr227:
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || level)
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_ || level)
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_ || level)
                                                                                                                                                            {
                                                                                                                                                               addr182:
                                                                                                                                                               addr210:
                                                                                                                                                               §§push(sLoadManager);
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§[!L§(this.§0!M§);
                                                                                                                                                                     addr198:
                                                                                                                                                                     if(!(_loc6_ && chapter))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc7_ || url)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr182);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr404);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr253);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr227);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr198);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr318);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr210);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr324);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr214);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr554);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr524);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr525);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr328);
                                                                                                                                                }
                                                                                                                                                §§goto(addr404);
                                                                                                                                             }
                                                                                                                                             §§goto(addr524);
                                                                                                                                          }
                                                                                                                                          §§goto(addr435);
                                                                                                                                       }
                                                                                                                                       §§goto(addr430);
                                                                                                                                    }
                                                                                                                                    §§goto(addr496);
                                                                                                                                 }
                                                                                                                                 §§goto(addr464);
                                                                                                                              }
                                                                                                                              §§goto(addr410);
                                                                                                                           }
                                                                                                                           §§goto(addr385);
                                                                                                                        }
                                                                                                                        §§goto(addr403);
                                                                                                                     }
                                                                                                                     §§goto(addr447);
                                                                                                                  }
                                                                                                                  §§goto(addr385);
                                                                                                               }
                                                                                                               §§push(§§pop() + ".pak");
                                                                                                            }
                                                                                                            §§goto(addr294);
                                                                                                         }
                                                                                                         §§goto(addr376);
                                                                                                      }
                                                                                                      §§goto(addr340);
                                                                                                   }
                                                                                                   §§goto(addr511);
                                                                                                }
                                                                                                §§goto(addr542);
                                                                                             }
                                                                                             §§goto(addr447);
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       §§goto(addr546);
                                                                                    }
                                                                                    §§goto(addr511);
                                                                                    addr401:
                                                                                 }
                                                                                 §§goto(addr467);
                                                                              }
                                                                              §§goto(addr449);
                                                                           }
                                                                           §§goto(addr422);
                                                                        }
                                                                        §§goto(addr534);
                                                                     }
                                                                     §§goto(addr450);
                                                                  }
                                                                  §§goto(addr401);
                                                               }
                                                            }
                                                            §§goto(addr464);
                                                         }
                                                         §§goto(addr493);
                                                      }
                                                      §§goto(addr496);
                                                   }
                                                   §§goto(addr467);
                                                   addr448:
                                                }
                                                §§goto(addr551);
                                             }
                                             §§goto(addr448);
                                          }
                                          §§goto(addr552);
                                       }
                                       §§goto(addr543);
                                    }
                                    §§goto(addr542);
                                 }
                                 §§goto(addr324);
                              }
                              §§goto(addr546);
                           }
                           §§goto(addr554);
                        }
                        break;
                     }
                     §§goto(addr182);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      protected function §0!M§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(!(_loc3_ && this))
         {
            if(_loc2_ || this)
            {
               addr40:
            }
            var level:LevelModel = LevelManager.§<l§(LevelManager.§!=§);
            if(_loc2_ || _loc3_)
            {
               loop0:
               while(true)
               {
                  §§push(Boolean(level));
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              initLevelMain(level);
                              while(true)
                              {
                                 while(!_loc3_)
                                 {
                                    continue loop1;
                                    loop7:
                                    while(_loc2_ || _loc2_)
                                    {
                                       if(_loc3_ && _loc2_)
                                       {
                                          continue loop3;
                                       }
                                       §4!T§.§1t§.camera.§7!U§(mOldManualScale);
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             mOldManualScale = NaN;
                                             loop10:
                                             while(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_ || level)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop7;
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr57);
                     }
                  }
               }
            }
            §§goto(addr106);
         }
         §§goto(addr40);
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return §4!T§.§1t§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return §4!T§.§1t§.§2§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!_loc1_)
         {
         }
         while(true)
         {
            mNextState = this.§[!C§();
            while(_loc1_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      protected function §[!C§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         do
         {
            mNextState = StateLevelSelection.STATE_NAME;
            while(_loc2_ && _loc2_)
            {
            }
         }
         while(_loc2_ && _loc1_);
         
      }
   }
}
