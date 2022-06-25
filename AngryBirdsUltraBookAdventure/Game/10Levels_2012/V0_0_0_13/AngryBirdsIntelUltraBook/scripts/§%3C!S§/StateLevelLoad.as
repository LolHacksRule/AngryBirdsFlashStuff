package §<!S§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   
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
         if(!(USE_ONLY_LOCAL_LEVELS && USE_ONLY_LOCAL_LEVELS))
         {
            loop0:
            while(true)
            {
               USE_ONLY_LOCAL_LEVELS = false;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     smLoadStateStep = LOAD_STATE_NONE;
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           LOAD_STATE_NONE = 0;
                           while(true)
                           {
                              while(true)
                              {
                                 LOAD_STATE_STEP_1 = 1;
                                 while(smLoadStateStep || StateLevelLoad)
                                 {
                                    if(!USE_ONLY_LOCAL_LEVELS)
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                    if(!(USE_ONLY_LOCAL_LEVELS && StateLevelLoad))
                                    {
                                       if(smLoadStateStep)
                                       {
                                          return;
                                          addr46:
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              loop9:
                              while(!(USE_ONLY_LOCAL_LEVELS && StateLevelLoad))
                              {
                                 while(true)
                                 {
                                    while(!USE_ONLY_LOCAL_LEVELS)
                                    {
                                       continue loop0;
                                       smLevelIndex = -1;
                                       if(!smLoadStateStep)
                                       {
                                          continue;
                                       }
                                       if(!smLoadStateStep)
                                       {
                                          continue loop9;
                                       }
                                       §§goto(addr37);
                                    }
                                    addr83:
                                    while(true)
                                    {
                                       LOAD_STATE_STEP_2 = 2;
                                       continue loop9;
                                    }
                                 }
                                 §§goto(addr46);
                              }
                           }
                        }
                     }
                  }
                  if(USE_ONLY_LOCAL_LEVELS && smLoadStateStep)
                  {
                     continue;
                  }
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr80);
      }
      
      private var §#!3§:Number = 0;
      
      public function StateLevelLoad(initState:Boolean, name:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
               loop1:
               for(; _loc4_; while(!(_loc3_ && initState))
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr52);
               })
               {
                  do
                  {
                     super(initState,name);
                     continue loop1;
                  }
                  while(!_loc4_);
                  
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
         }
         loop0:
         do
         {
            super.init();
            while(true)
            {
               while(_loc1_ || _loc2_)
               {
                  this.§-,§();
                  while(_loc1_)
                  {
                     if(_loc1_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(!_loc1_);
         
      }
      
      protected function §-,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         loop0:
         while(true)
         {
            this.§5!M§ = new §6"§(this);
            while(true)
            {
               while(_loc1_)
               {
                  continue loop0;
                  §5!M§.init(§>!^§.§8'§.Views.View_LevelLoad[0]);
                  while(_loc2_ && _loc1_)
                  {
                  }
                  if(_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               super.activate();
            }
            addr95:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               smLoadStateStep = LOAD_STATE_STEP_1;
               loop3:
               while(_loc1_ || this)
               {
                  loop4:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        this.§2t§();
                        while(_loc1_)
                        {
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 return;
                              }
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                     continue loop3;
                  }
                  §§goto(addr95);
               }
            }
         }
      }
      
      protected function §2t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            loop0:
            while(LevelManager.§var§ != null)
            {
               if(!_loc2_)
               {
                  while(true)
                  {
                  }
                  addr94:
               }
               do
               {
                  §5!M§.setText("LOADING " + LevelManager.§var§.replace("-"," - "),"TextField_LevelLoading");
                  while(!(_loc2_ && _loc1_))
                  {
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     §§goto(addr51);
                  }
                  continue loop0;
               }
               while(!_loc1_);
               
               break;
            }
            return;
         }
         §§goto(addr94);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || superReturn)
         {
         }
         if(!_loc4_)
         {
         }
         loop0:
         while(true)
         {
            addr40:
            addr52:
            while(true)
            {
               continue loop0;
            }
            §§push(super.run(deltaTime));
            if(_loc4_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var superReturn:* = §§pop();
            if(_loc4_)
            {
               loop3:
               while(true)
               {
                  §§push(superReturn);
                  do
                  {
                     if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(smLoadStateStep);
                           loop6:
                           while(true)
                           {
                              loop7:
                              for(§§push(LOAD_STATE_STEP_1); §§pop() != §§pop(); )
                              {
                                 §§push(smLoadStateStep);
                                 if(_loc3_)
                                 {
                                    continue loop6;
                                 }
                                 if(_loc3_)
                                 {
                                    break loop5;
                                 }
                                 §§push(LOAD_STATE_STEP_2);
                                 if(_loc3_ && superReturn)
                                 {
                                    continue;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    loop22:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             continue loop5;
                                          }
                                          loop23:
                                          while(true)
                                          {
                                             addr258:
                                             addr97:
                                             loop16:
                                             while(true)
                                             {
                                                loop17:
                                                for(§§push(this.isReady()); !§§pop(); )
                                                {
                                                   §§push(this.hasError());
                                                   if(!(_loc3_ && superReturn))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               while(_loc3_ && this)
                                                               {
                                                                  break loop17;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  if(!(_loc3_ && superReturn))
                                                                  {
                                                                     this.onLevelLoadError();
                                                                     addr134:
                                                                     if(_loc4_ || deltaTime)
                                                                     {
                                                                        break loop16;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        break loop16;
                                                                        §§goto(addr134);
                                                                     }
                                                                     addr264:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || deltaTime)
                                                                     {
                                                                        §]!B§.§>F§.clearLevel();
                                                                        while(_loc4_ || deltaTime)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        addr282:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr328:
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  addr308:
                                                               }
                                                               while(true)
                                                               {
                                                                  this.initLevelLoad();
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     addr267:
                                                                     while(true)
                                                                     {
                                                                        smLoadStateStep = LOAD_STATE_STEP_2;
                                                                        §§goto(addr264);
                                                                        addr195:
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr174:
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         addr166:
                                                      }
                                                      break loop16;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   addr215:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && deltaTime))
                                                      {
                                                         this.onLevelLoadReady();
                                                         break;
                                                      }
                                                      continue loop22;
                                                   }
                                                   §§goto(addr195);
                                                }
                                                continue loop23;
                                             }
                                             while(true)
                                             {
                                                if(mNextState.length <= 0)
                                                {
                                                   return StateBase.STATE_STATUS_RUNNING;
                                                }
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc3_ && superReturn))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  return StateBase.STATE_STATUS_COMPLETED;
                                                               }
                                                               break loop7;
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr134);
                                             }
                                             §§goto(addr267);
                                          }
                                       }
                                       §§goto(addr282);
                                    }
                                 }
                                 §§goto(addr97);
                              }
                              while(true)
                              {
                                 §§goto(addr308);
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr328);
                  }
                  while(_loc3_);
                  
                  return §§pop();
               }
            }
            §§goto(addr257);
         }
      }
      
      protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
      }
      
      public function isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         return false;
      }
      
      public function hasError() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
      }
      
      public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
      }
      
      protected function initLevelMain(levelData:LevelModel) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            while(true)
            {
               while(_loc3_)
               {
                  §]!B§.§]!R§(levelData);
                  loop2:
                  while(!(_loc2_ && levelData))
                  {
                     while(!(_loc3_ || levelData))
                     {
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
   }
}
