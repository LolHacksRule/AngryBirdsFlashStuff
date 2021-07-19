package §0![§
{
   import §"v§.§3!w§;
   import §"v§.§9"§;
   import §%c§.§=!X§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   
   public class §0",§ extends §5y§
   {
      
      public static const §&!U§:Boolean = false;
      
      public static var §7""§:int;
      
      public static const §#!F§:int = 0;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §`!j§:Number = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&!U§ = false;
            while(true)
            {
               §7""§ = §#!F§;
               while(!(_loc2_ && §0",§))
               {
                  LOAD_STATE_STEP_2 = 2;
                  loop4:
                  for(; _loc1_; §`!j§ = -1,if(!_loc2_)
                  {
                     return;
                  })
                  {
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr82:
                        while(true)
                        {
                           §#!F§ = 0;
                        }
                     }
                     while(true)
                     {
                        LOAD_STATE_STEP_1 = 1;
                        break loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      private var §<^§:Number = 0;
      
      public function §0",§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
         do
         {
            this.initLoadingView();
         }
         while(_loc2_);
         
      }
      
      protected function initLoadingView() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§?E§ = new §'s§(this);
         }
         do
         {
            §?E§.init(§`7§.§>"?§.Views.View_LevelLoad[0]);
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
         }
         while(true)
         {
            §7""§ = LOAD_STATE_STEP_1;
            while(!_loc2_)
            {
               this.§'d§();
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      protected function §'d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§3!w§.§%n§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc1_ || _loc1_)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              §?E§.setText("LOADING " + §3!w§.§%n§.replace("-"," - "),"TextField_LevelLoading");
                           }
                           else
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§?E§));
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 addr96:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop4;
                                 }
                              }
                              addr97:
                           }
                        }
                        break;
                     }
                     return;
                     addr52:
                  }
                  §§goto(addr96);
               }
            }
         }
         §§goto(addr97);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(§7""§);
                     loop2:
                     while(!_loc3_)
                     {
                        §§push(LOAD_STATE_STEP_1);
                        loop3:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(§7""§);
                              if(_loc4_)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           if(_loc4_)
                           {
                              §=!X§.§!'§.clearLevel();
                              addr173:
                              loop12:
                              while(true)
                              {
                                 this.initLevelLoad();
                                 loop8:
                                 while(true)
                                 {
                                    §7""§ = LOAD_STATE_STEP_2;
                                    loop9:
                                    while(true)
                                    {
                                       addr38:
                                       loop11:
                                       while(mNextState.length > 0)
                                       {
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             addr52:
                                             if(_loc3_ && _loc2_)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                            addr96:
                                                            addr126:
                                                         }
                                                         this.onLevelLoadError();
                                                         while(_loc4_ || _loc3_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(this.isReady());
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(this.hasError());
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  continue;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  this.onLevelLoadReady();
                                                               }
                                                            }
                                                            continue loop11;
                                                            §§goto(addr96);
                                                         }
                                                         addr96:
                                                         continue loop1;
                                                      }
                                                      continue loop12;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop11;
                                                   }
                                                }
                                                §§push(_loc2_);
                                             }
                                             else
                                             {
                                                addr178:
                                             }
                                             if(_loc4_)
                                             {
                                                return §5y§.STATE_STATUS_COMPLETED;
                                             }
                                             continue loop8;
                                             break loop3;
                                          }
                                          §§goto(addr96);
                                       }
                                       return §5y§.STATE_STATUS_RUNNING;
                                    }
                                 }
                              }
                              addr173:
                           }
                           §§goto(addr173);
                        }
                        return §§pop();
                     }
                     continue loop0;
                  }
               }
               §§goto(addr178);
            }
         }
         §§goto(addr173);
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
      
      protected function initLevelMain(param1:§9"§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §=!X§.loadLevel(param1);
         }
      }
   }
}
