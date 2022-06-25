package §_-ad§
{
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-bm§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   
   public class §_-gC§ extends §_-nG§
   {
      
      public static const §_-09Z§:Boolean = false;
      
      public static var §_-lc§:int;
      
      public static const §_-z0§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-0F5§:Number = -1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-09Z§ = false;
            while(true)
            {
               §_-lc§ = §_-z0§;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     §_-z0§ = 0;
                     loop3:
                     do
                     {
                        LOAD_STATE_STEP_1 = 1;
                        while(true)
                        {
                           LOAD_STATE_STEP_2 = 2;
                           while(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 §_-0F5§ = -1;
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      private var §_-ha§:Number = 0;
      
      public function §_-gC§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
         }
         do
         {
            this.§_-mR§();
         }
         while(!(_loc2_ || this));
         
      }
      
      protected function §_-mR§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-s0§ = new §_-5q§(this);
            do
            {
               §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelLoad[0]);
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            while(true)
            {
               §_-lc§ = LOAD_STATE_STEP_1;
               while(!_loc1_)
               {
                  this.§_-yc§();
                  if(!_loc1_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function §_-yc§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(LevelManager.§_-HM§ != null)
            {
               if(!_loc2_)
               {
                  addr34:
                  §_-s0§.setText("LOADING " + LevelManager.§_-HM§.replace("-"," - "),"TextField_LevelLoading");
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(§_-lc§);
                     loop2:
                     while(true)
                     {
                        §§push(LOAD_STATE_STEP_1);
                        loop3:
                        while(§§pop() != §§pop())
                        {
                           §§push(§_-lc§);
                           if(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(LOAD_STATE_STEP_2);
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.isReady());
                                          loop5:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(this.hasError());
                                                if(_loc3_ || param1)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr89:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               this.onLevelLoadError();
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §_-lc§ = LOAD_STATE_STEP_2;
                                                                     addr167:
                                                                     this.initLevelLoad();
                                                                  }
                                                               }
                                                               addr172:
                                                               §§push(_loc2_);
                                                               break loop1;
                                                               addr100:
                                                            }
                                                            break loop3;
                                                         }
                                                         addr146:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break loop5;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            break loop5;
                                                         }
                                                      }
                                                      addr89:
                                                   }
                                                   break;
                                                }
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                this.onLevelLoadReady();
                                             }
                                             §§goto(addr146);
                                          }
                                          addr56:
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr167);
                                                }
                                                addr165:
                                             }
                                             §§goto(addr31);
                                          }
                                       }
                                    }
                                    while(mNextState.length > 0)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                return §_-nG§.STATE_STATUS_COMPLETED;
                                             }
                                             §§goto(addr89);
                                          }
                                          §§goto(addr100);
                                       }
                                       else
                                       {
                                          §§goto(addr56);
                                       }
                                    }
                                 }
                                 continue loop0;
                                 addr31:
                                 return §_-nG§.STATE_STATUS_RUNNING;
                              }
                              break loop1;
                           }
                           continue loop2;
                        }
                        addr162:
                        while(true)
                        {
                           § in§.§_-Dc§.clearLevel();
                           §§goto(addr165);
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr172);
            }
         }
         §§goto(addr162);
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function hasError() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      public function onLevelLoadError() : void
      {
      }
      
      protected function initLevelMain(param1:§_-bm§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            § in§.§_-s8§(param1);
         }
      }
   }
}
