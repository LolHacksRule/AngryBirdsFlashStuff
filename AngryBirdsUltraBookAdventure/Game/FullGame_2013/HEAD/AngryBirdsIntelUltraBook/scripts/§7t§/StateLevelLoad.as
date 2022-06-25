package §7t§
{
   import §1N§.StateBase;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §>!_§.LevelModel;
   import §?!Y§.§`S§;
   
   public class StateLevelLoad extends StateBase
   {
      
      public static const USE_ONLY_LOCAL_LEVELS:Boolean = false;
      
      public static var smLoadStateStep:int;
      
      public static const LOAD_STATE_NONE:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var smLevelIndex:Number = -1;
      
      {
         var USE_ONLY_LOCAL_LEVELS:Boolean = false;
         var smLoadStateStep:Boolean = true;
         if(!USE_ONLY_LOCAL_LEVELS)
         {
            while(true)
            {
               USE_ONLY_LOCAL_LEVELS = false;
            }
            addr133:
         }
         while(true)
         {
            loop2:
            for(; smLoadStateStep; if(USE_ONLY_LOCAL_LEVELS)
            {
               continue;
            },§§goto(addr72))
            {
               smLoadStateStep = LOAD_STATE_NONE;
               while(true)
               {
                  while(smLoadStateStep)
                  {
                     if(smLoadStateStep)
                     {
                        LOAD_STATE_NONE = 0;
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              LOAD_STATE_STEP_1 = 1;
                              while(true)
                              {
                                 if(!USE_ONLY_LOCAL_LEVELS)
                                 {
                                    continue loop2;
                                 }
                                 continue loop6;
                                 addr62:
                                 loop9:
                                 while(!(USE_ONLY_LOCAL_LEVELS && StateLevelLoad))
                                 {
                                    while(!(USE_ONLY_LOCAL_LEVELS && smLoadStateStep))
                                    {
                                       smLevelIndex = -1;
                                       if(smLoadStateStep || smLoadStateStep)
                                       {
                                          if(!USE_ONLY_LOCAL_LEVELS)
                                          {
                                             return;
                                          }
                                          continue loop9;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr133);
                     }
                  }
               }
            }
         }
      }
      
      private var §7!5§:Number = 0;
      
      public function StateLevelLoad(initState:Boolean, name:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(_loc4_ || _loc3_)
                  {
                     super(initState,name);
                     while(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              return;
                              addr54:
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            while(true)
            {
               super.init();
               addr70:
               if(_loc1_ || _loc2_)
               {
                  addr77:
                  if(!_loc1_)
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           §§goto(addr70);
                        }
                        addr80:
                        while(true)
                        {
                           this.§"P§();
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr80);
                     }
                     addr85:
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      protected function §"P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               this.§`=§ = new §`X§(this);
               addr89:
               if(_loc2_ || this)
               {
                  addr96:
                  if(_loc1_ && _loc1_)
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr82:
                           if(_loc1_ && _loc1_)
                           {
                              break;
                           }
                           §§goto(addr89);
                        }
                        addr99:
                        while(true)
                        {
                           §`=§.init(§+q§.§%M§.Views.View_LevelLoad[0]);
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr99);
                        §§goto(addr82);
                     }
                     addr106:
                  }
                  return;
               }
            }
         }
         §§goto(addr106);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               super.activate();
            }
            addr115:
         }
         while(true)
         {
            loop2:
            while(true)
            {
               smLoadStateStep = LOAD_STATE_STEP_1;
               while(true)
               {
                  continue loop2;
                  addr65:
                  while(!(_loc2_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(_loc2_ && this)
                     {
                        continue loop2;
                     }
                     if(_loc1_)
                     {
                        return;
                     }
                     §§goto(addr115);
                  }
               }
            }
            if(_loc2_ && this)
            {
               continue;
            }
            this.§?!F§();
            §§goto(addr65);
         }
      }
      
      protected function §?!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(LevelManager.§1m§ != null)
            {
               if(_loc2_ && _loc2_)
               {
               }
               loop1:
               while(_loc1_)
               {
                  §`=§.setText("LOADING " + LevelManager.§1m§.replace("-"," - "),"TextField_LevelLoading");
                  do
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     continue loop1;
                  }
                  while(!_loc1_);
                  
                  break loop0;
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || superReturn)
         {
         }
         if(!(_loc4_ && this))
         {
            loop0:
            while(true)
            {
               addr44:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc3_ || deltaTime)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr44);
            }
            §§goto(addr46);
         }
         §§push(super.run(deltaTime));
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            loop4:
            while(true)
            {
               §§push(superReturn);
               loop5:
               do
               {
                  if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(smLoadStateStep);
                        loop7:
                        while(true)
                        {
                           §§push(LOAD_STATE_STEP_1);
                           while(true)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc4_ && _loc3_)
                                 {
                                 }
                                 loop9:
                                 while(!(_loc4_ && this))
                                 {
                                    §`S§.§[o§.clearLevel();
                                    loop10:
                                    for(; _loc3_ || deltaTime; while(true)
                                    {
                                       if(_loc3_ || superReturn)
                                       {
                                          if(_loc3_)
                                          {
                                             this.onLevelLoadReady();
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                       continue loop10;
                                    },§§goto(addr186))
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          this.initLevelLoad();
                                          loop12:
                                          while(true)
                                          {
                                             while(!(_loc4_ && deltaTime))
                                             {
                                                smLoadStateStep = LOAD_STATE_STEP_2;
                                                loop14:
                                                while(_loc3_ || this)
                                                {
                                                   loop15:
                                                   while(mNextState.length > 0)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  return StateBase.STATE_STATUS_COMPLETED;
                                                               }
                                                               continue loop14;
                                                            }
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  loop17:
                                                                  while(_loc3_ || superReturn)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           this.onLevelLoadError();
                                                                           while(true)
                                                                           {
                                                                              while(!(_loc3_ || _loc3_))
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr228:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.isReady());
                                                                                 do
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 while(§§push(this.hasError()), !_loc3_);
                                                                                 
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                           addr227:
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || deltaTime)
                                                                     {
                                                                        continue loop15;
                                                                        addr186:
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  addr179:
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                         }
                                                         §§goto(addr133);
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                   return StateBase.STATE_STATUS_RUNNING;
                                                }
                                             }
                                             addr324:
                                             break loop9;
                                          }
                                       }
                                    }
                                 }
                                 §§push(superReturn);
                                 break;
                              }
                              §§push(smLoadStateStep);
                              if(_loc4_ && this)
                              {
                                 continue loop7;
                              }
                              if(!(_loc3_ || deltaTime))
                              {
                                 break;
                              }
                              §§push(LOAD_STATE_STEP_2);
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr227);
                              }
                              §§goto(addr94);
                           }
                           continue loop5;
                        }
                     }
                  }
                  §§goto(addr324);
               }
               while(_loc4_ && this);
               
               return §§pop();
            }
         }
         §§goto(addr133);
      }
      
      protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
      }
      
      public function isReady() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         return false;
      }
      
      public function hasError() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
      }
      
      public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
      }
      
      protected function initLevelMain(levelData:LevelModel) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               do
               {
                  §`S§.§?h§(levelData);
                  while(!_loc3_)
                  {
                     if(!(_loc3_ && levelData))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
   }
}
