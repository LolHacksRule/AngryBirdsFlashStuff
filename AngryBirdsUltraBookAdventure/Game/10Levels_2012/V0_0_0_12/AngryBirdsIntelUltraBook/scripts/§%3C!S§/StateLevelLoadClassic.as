package §<!S§
{
   import § D§.§]!B§;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §%!T§.LoadManager;
   import §6!a§.Server;
   import §=]§.PackageManager;
   
   public class StateLevelLoadClassic extends StateLevelLoad
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var mOldManualScale:Number;
      
      private static var sLoadManager:LoadManager;
      
      private static var sPackageManager:PackageManager;
      
      {
         var STATE_NAME:Boolean = true;
         var mOldManualScale:Boolean = false;
         if(!mOldManualScale)
         {
            loop0:
            while(true)
            {
               STATE_NAME = "LevelLoadStateClassic";
               while(true)
               {
                  loop2:
                  while(STATE_NAME || StateLevelLoadClassic)
                  {
                     if(!mOldManualScale)
                     {
                        while(true)
                        {
                           while(mOldManualScale && StateLevelLoadClassic)
                           {
                           }
                           if(!mOldManualScale)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function StateLevelLoadClassic(initState:Boolean = true, name:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
         }
         if(!(_loc4_ && initState))
         {
            while(true)
            {
               addr89:
               while(true)
               {
               }
            }
            addr91:
         }
         loop2:
         while(true)
         {
            super(initState,name);
            while(!_loc4_)
            {
               if(!(_loc4_ && initState))
               {
                  continue loop2;
               }
            }
            §§goto(addr89);
         }
      }
      
      public static function §[!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               LevelManager.§]!R§(LevelManager.§>!1§());
               do
               {
                  continue loop0;
               }
               while(_loc1_);
               
            }
         }
      }
      
      public static function §2!k§(index:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc3_ && _loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               smLevelIndex = index;
               loop2:
               while(_loc2_ || _loc3_)
               {
                  while(true)
                  {
                     smLoadStateStep = LOAD_STATE_NONE;
                     while(_loc2_ || _loc2_)
                     {
                        if(_loc2_ || StateLevelLoadClassic)
                        {
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §7!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               if(§]!B§.§>F§.camera)
               {
                  while(_loc2_)
                  {
                     while(true)
                     {
                        addr114:
                        while(true)
                        {
                           mOldManualScale = §]!B§.§>F§.camera.§^!3§;
                           addr103:
                           while(true)
                           {
                              addr94:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr74:
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc1_ && _loc1_))
                     {
                        if(!_loc1_)
                        {
                           if(!(_loc2_ || _loc1_))
                           {
                              §§goto(addr103);
                           }
                           return;
                           addr61:
                        }
                        §§goto(addr94);
                     }
                     while(_loc2_ || _loc2_)
                     {
                        §§goto(addr74);
                     }
                     §§goto(addr114);
                     addr67:
                  }
                  continue;
               }
               while(true)
               {
                  smLoadStateStep = LOAD_STATE_NONE;
                  §§goto(addr67);
                  §§goto(addr94);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr113);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               for(§§push(sLoadManager); §§pop(); loop3:
               while(true)
               {
                  §§push(sLoadManager);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§pop().§%!]§();
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                        continue loop3;
                     }
                  }
                  §§goto(addr86);
               })
               {
                  while(true)
                  {
                     continue loop1;
                  }
               }
               addr38:
               return;
               if(_loc2_ && this)
               {
                  continue;
               }
               addr70:
               §§goto(addr38);
            }
         }
         §§goto(addr70);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && this)
         {
         }
         var chapter:ChapterModel = null;
         var url:String = null;
         var assetsUrl:String = null;
         var buildNumber:String = null;
         if(!_loc7_)
         {
            if(_loc6_ || url)
            {
            }
         }
         var level:LevelModel = LevelManager.§;!a§(LevelManager.§var§);
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               §§push(Boolean(level));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     chapter = LevelManager.§;<§(LevelManager.§var§);
                     if(!_loc7_)
                     {
                        while(true)
                        {
                           §§push(Boolean(chapter));
                           loop3:
                           while(§§pop())
                           {
                              while(true)
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(!sPackageManager);
                                       while(!_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                addr562:
                                                while(true)
                                                {
                                                   sPackageManager = new PackageManager();
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          §§goto(addr517);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                           break loop1;
                        }
                     }
                     §§goto(addr513);
                  }
                  addr135:
                  §§push(!isNaN(mOldManualScale));
                  if(!_loc6_)
                  {
                     continue;
                  }
                  if(§§pop())
                  {
                     loop58:
                     while(_loc6_ || url)
                     {
                        loop59:
                        for(; !(_loc7_ && level); while(_loc6_ || url)
                        {
                           mOldManualScale = NaN;
                           if(_loc7_)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              if(_loc7_)
                              {
                                 continue loop58;
                              }
                              if(!_loc6_)
                              {
                                 continue loop0;
                              }
                              if(true)
                              {
                                 addr150:
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§goto(addr93);
                           }
                           §§goto(addr74);
                        })
                        {
                           §]!B§.§>F§.camera.§]!`§(mOldManualScale);
                           while(!(_loc7_ && chapter))
                           {
                              while(true)
                              {
                                 continue loop59;
                              }
                              continue loop58;
                           }
                           while(true)
                           {
                              initLevelMain(level);
                              addr141:
                              while(true)
                              {
                                 break loop58;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr147);
                        }
                     }
                     while(true)
                     {
                        if(!(_loc7_ && chapter))
                        {
                           §§goto(addr135);
                        }
                        else
                        {
                           §§goto(addr141);
                        }
                     }
                     addr110:
                  }
                  §§goto(addr150);
               }
               return;
            }
         }
         §§goto(addr146);
      }
      
      protected function §5!1§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            if(!(_loc2_ && this))
            {
               addr41:
            }
            var level:LevelModel = LevelManager.§;!a§(LevelManager.§var§);
            if(!_loc2_)
            {
               loop0:
               while(true)
               {
                  §§push(Boolean(level));
                  loop1:
                  while(§§pop())
                  {
                     while(true)
                     {
                     }
                     addr167:
                     §§push(!isNaN(mOldManualScale));
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(!(_loc2_ && this))
                              {
                                 §]!B§.§>F§.camera.§]!`§(mOldManualScale);
                                 loop8:
                                 do
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       mOldManualScale = NaN;
                                       while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             if(!(_loc2_ && level))
                                             {
                                                if(_loc3_)
                                                {
                                                   addr107:
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(!(_loc2_ && level))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                          continue loop9;
                                       }
                                       addr173:
                                       while(true)
                                       {
                                          addr165:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§goto(addr167);
                                                break loop8;
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                          §§goto(addr107);
                                       }
                                    }
                                 }
                                 while(_loc2_ && _loc3_);
                                 
                                 if(_loc3_)
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr165);
                              }
                              addr179:
                              while(true)
                              {
                                 initLevelMain(level);
                                 §§goto(addr173);
                              }
                           }
                        }
                        break;
                     }
                  }
                  return;
               }
            }
            §§goto(addr179);
         }
         §§goto(addr41);
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return §]!B§.§>F§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return §]!B§.§>F§.§#!U§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            while(true)
            {
               mNextState = this.§>!U§();
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            if(!(_loc1_ && _loc2_))
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §>!U§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         while(true)
         {
            mNextState = StateLevelSelection.STATE_NAME;
            while(!(_loc2_ && this))
            {
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
